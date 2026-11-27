#!/usr/bin/env python3
"""caps_manifest.py — platform permission manifests from a program's capabilities.

The Resid compiler checks that every function names, in `@requires`, every
capability it reaches, transitively (E0219). So the `@requires` on `main`
is exactly what the whole program can touch, proven, not declared on
trust. This tool type-checks the program, reads that list, and writes what
each platform wants to hear about it:

  macOS    an entitlements plist (App Sandbox on, plus what the capabilities need)
  Windows  the <Capabilities> element of an AppxManifest
  Android  <uses-permission> lines

A capability a sandboxed platform has no honest entitlement for (reading
any path, running processes, raw devices) is reported, not papered over:
the fix is in the program, e.g. files the user picks arrive as grants
through the shell's dialog (docs/rsp.md, `Dialog`) and need no
`filesystem` at all.

    tools/caps_manifest.py PROGRAM.resid [--residc PATH] [--platform macos|windows|android|all]
    tools/caps_manifest.py --self-test
"""

import argparse
import re
import subprocess
import sys

# capability (family, mode) -> per-platform needs. mode None means read-write.
MAP = {
    "display": {"macos": [], "windows": [], "android": []},
    # Being readable by screen readers needs no store permission anywhere;
    # the platforms' accessibility frameworks serve every app.
    "accessibility": {"macos": [], "windows": [], "android": []},
    "clock": {"macos": [], "windows": [], "android": []},
    "args": {"macos": [], "windows": [], "android": []},
    "environment": {"macos": [], "windows": [], "android": []},
    "terminal": {"macos": [], "windows": [], "android": []},
    "declassify": {"macos": [], "windows": [], "android": []},
    ("network", "readonly"): {"macos": ["com.apple.security.network.client"], "windows": ["internetClient"],
                              "android": ["android.permission.INTERNET"]},
    ("network", None): {"macos": ["com.apple.security.network.client", "com.apple.security.network.server"],
                        "windows": ["internetClientServer"], "android": ["android.permission.INTERNET"]},
}
NO_HONEST_ENTITLEMENT = {
    "filesystem": "reads or writes any path; a sandbox grants only files the user picks. Take files through the "
                  "shell's Dialog (they arrive as descriptors) and drop `filesystem`.",
    "process": "starts other programs, which App Sandbox and the stores forbid.",
    "device": "opens kernel devices directly; no store app may.",
    "provision": "provisions attestation keys; platform-specific, not a store entitlement.",
}


def _ident(ch):
    return ch.isalnum() or ch == "_"


def _string_end(source, i, kind):
    """The index just past the string literal whose opening quote is at `i`.
    `kind` is "" (plain or byte), "r" (no escapes) or "f" (holes, which are
    expressions and may hold strings of their own: f"{g("a}")}")."""
    n = len(source)
    j = i + 1
    while j < n:
        ch = source[j]
        if ch == "\\" and kind != "r":
            j += 2
        elif ch == '"':
            return j + 1
        elif kind == "f" and source.startswith("{{", j):
            j += 2
        elif kind == "f" and ch == "{":
            j = _hole_end(source, j + 1)
        else:
            j += 1
    return n


def _hole_end(source, j):
    """The index just past the `}` closing an f-string hole whose text starts at `j`."""
    n = len(source)
    depth = 1
    while j < n:
        k = _literal_at(source, j)
        if k is not None:
            j = k
            continue
        ch = source[j]
        if ch == "{":
            depth += 1
        elif ch == "}":
            depth -= 1
            if depth == 0:
                return j + 1
        j += 1
    return n


def _literal_at(source, i):
    """If a string or character literal starts at `i`, the index just past
    it; otherwise None."""
    n = len(source)
    c = source[i]
    if c == '"':
        return _string_end(source, i, "")
    if c in "frb" and i + 1 < n and source[i + 1] == '"' and (i == 0 or not _ident(source[i - 1])):
        return _string_end(source, i + 1, "r" if c == "r" else "f" if c == "f" else "")
    if c == "'":
        if source.startswith("\\", i + 1):
            k = source.find("'", i + 3)
            if 0 <= k <= i + 6:
                return k + 1
        elif i + 2 < n and source[i + 2] == "'":
            return i + 3
    return None


def code_only(source):
    """`source` with comments and string and character literals blanked (same
    length, newlines kept), so a `@requires` or an `Int main()` in any of
    them is not taken for code."""
    out = []
    i, n = 0, len(source)
    while i < n:
        if source.startswith("//", i):
            j = source.find("\n", i)
            j = n if j < 0 else j
        elif source.startswith("/*", i):
            j = source.find("*/", i + 2)
            j = n if j < 0 else j + 2
        else:
            j = _literal_at(source, i)
            if j is None:
                out.append(source[i])
                i += 1
                continue
        out.append("".join(ch if ch == "\n" else " " for ch in source[i:j]))
        i = j
    return "".join(out)


_MAIN = re.compile(r"(?<![\w.])((?:(?:pub|export)\s+)*)Int\s+main\s*\(\s*\)")


def _open_of(code, close):
    """The index of the `(` matching the `)` at `close`, or -1."""
    depth = 0
    for j in range(close, -1, -1):
        if code[j] == ")":
            depth += 1
        elif code[j] == "(":
            depth -= 1
            if depth == 0:
                return j
    return -1


def _attributes_before(code, end):
    """The attributes written just before index `end`, nearest last, as
    (name, argument text or None) pairs, and the index where they start."""
    attrs = []
    i = end
    while True:
        j = i
        while j > 0 and code[j - 1].isspace():
            j -= 1
        args = None
        k = j
        if k > 0 and code[k - 1] == ")":
            o = _open_of(code, k - 1)
            if o < 0:
                break
            args = code[o + 1:k - 1]
            k = o
            while k > 0 and code[k - 1].isspace():
                k -= 1
        n = k
        while n > 0 and _ident(code[n - 1]):
            n -= 1
        if n == k or n == 0 or code[n - 1] != "@":
            break
        attrs.append((code[n:k], args))
        i = n - 1
    attrs.reverse()
    return attrs, i


def _caps_list(text):
    """`display, clock(readonly)` as (family, mode) pairs; ValueError on
    anything else."""
    parts, depth, cur = [], 0, ""
    for ch in text:
        if ch == "," and depth == 0:
            parts.append(cur)
            cur = ""
            continue
        depth += (ch == "(") - (ch == ")")
        cur += ch
    parts.append(cur)
    caps = []
    for part in parts:
        if not part.strip() and len(parts) == 1:
            continue
        m = re.fullmatch(r"\s*(\w+)\s*(?:\(\s*(\w+)\s*\))?\s*", part)
        if not m:
            raise ValueError(f"@requires on main does not parse: {part.strip()!r}")
        caps.append((m.group(1), m.group(2)))
    return caps


def _main_definitions(code):
    """The matches of `Int main()` in `code` (comments and literals blanked)
    that are definitions at the top level: brace depth 0 and a body `{`
    next. A declaration inside a behavior (`Int main();`), or anything
    nested in braces, is not the program's main (R5-7)."""
    depth = [0] * (len(code) + 1)
    d = 0
    for i, ch in enumerate(code):
        depth[i] = d
        if ch == "{":
            d += 1
        elif ch == "}":
            d = max(d - 1, 0)
    depth[len(code)] = d
    found = []
    for m in _MAIN.finditer(code):
        rest = code[m.end():].lstrip()
        if depth[m.start()] == 0 and rest.startswith("{"):
            found.append(m)
    return found


def requires_of_main(source):
    """The capabilities on `main`, as (family, mode) pairs, mode None for
    read-write. Raises ValueError when there is no `main`, or when what is
    written before it looks like attributes but does not parse: an empty
    list must mean no capabilities, never "could not read them"."""
    code = code_only(source)
    mains = _main_definitions(code)
    if not mains:
        raise ValueError("no `Int main() { ... }` definition found")
    if len(mains) > 1:
        raise ValueError(f"{len(mains)} `Int main()` definitions found; a program has one")
    m = mains[0]
    attrs, start = _attributes_before(code, m.start())
    # whatever stands between the previous item and the attributes read
    prev = max(code.rfind(";", 0, start), code.rfind("}", 0, start), code.rfind("{", 0, start))
    gap = code[prev + 1:start]
    if "@" in gap or gap.strip().endswith(")"):
        raise ValueError("the attributes before `Int main()` do not parse: " + " ".join(gap.split())[:80])
    caps = []
    for name, args in attrs:
        if name == "requires":
            if args is None:
                raise ValueError("@requires on main has no capability list")
            caps += _caps_list(args)
    return caps


def plan(caps):
    """Per-platform entitlement lists and the problems that have no entitlement."""
    out = {"macos": ["com.apple.security.app-sandbox"], "windows": [], "android": []}
    problems = []
    for fam, mode in caps:
        if fam in NO_HONEST_ENTITLEMENT:
            problems.append(f"{fam}{'(' + mode + ')' if mode else ''}: {NO_HONEST_ENTITLEMENT[fam]}")
            continue
        if fam.startswith("native_"):
            continue  # native modules run sandboxed inside the program; no platform permission
        need = MAP.get((fam, mode)) or MAP.get((fam, None)) or MAP.get(fam)
        if need is None:
            problems.append(f"{fam}: unknown capability family")
            continue
        for p in out:
            out[p] += [e for e in need[p] if e not in out[p]]
    return out, problems


def macos_plist(ents):
    body = "".join(f"    <key>{e}</key>\n    <true/>\n" for e in ents)
    return ('<?xml version="1.0" encoding="UTF-8"?>\n'
            '<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">\n'
            f'<plist version="1.0">\n<dict>\n{body}</dict>\n</plist>\n')


def windows_caps(caps):
    body = "".join(f'    <Capability Name="{c}"/>\n' for c in caps)
    return f"<Capabilities>\n{body}</Capabilities>\n"


def android_perms(perms):
    return "".join(f'<uses-permission android:name="{p}"/>\n' for p in perms)


def self_test():
    src = "import \"x\";\n@needs(App(M))\n@requires(display, clock(readonly), network(readonly))\nInt main() { return 0; }\n"
    caps = requires_of_main(src)
    assert caps == [("display", None), ("clock", "readonly"), ("network", "readonly")], caps
    out, problems = plan(caps)
    assert out["macos"] == ["com.apple.security.app-sandbox", "com.apple.security.network.client"], out
    assert out["windows"] == ["internetClient"] and out["android"] == ["android.permission.INTERNET"], out
    assert problems == []
    _, problems = plan(requires_of_main("@requires(display, filesystem(readonly))\nInt main() { return 0; }"))
    assert len(problems) == 1 and problems[0].startswith("filesystem(readonly)"), problems
    assert plan(requires_of_main("Int main() { return 0; }"))[0]["windows"] == []
    # a main, or its @requires, in a comment or a string is not the program's
    fooled = ("// @requires(display) Int main() { return 0; }\n"
              "Str s() { return \"@requires(display) Int main()\"; }\n"
              "/* @requires(clock(readonly))\nInt main() */\n"
              "@requires(display, filesystem)\nInt main() { return 0; }\n")
    assert requires_of_main(fooled) == [("display", None), ("filesystem", None)], requires_of_main(fooled)
    # an f-string's hole holds strings of its own; a raw string has no
    # escapes; a character literal may be a quote (R3-5)
    for trick in ('Str s() { return f"{g("@requires(filesystem) Int main()")} {{"; }\n',
                  'Str s() { return f"{ {"a}": 1}["a}"] }@requires(process) Int main()"; }\n',
                  'Str s() { return r"C:\\"; } Str t() { return "@requires(device) Int main()"; }\n',
                  "Bool q(Byte c) { return c == '\"'; } Str t() { return \"@requires(device) Int main()\"; }\n",
                  "Bool q(Byte c) { return c == '\\''; } Str t() { return \"@requires(device) Int main()\"; }\n"):
        got = requires_of_main(trick + "@requires(display)\nInt main() { return 0; }\n")
        assert got == [("display", None)], (trick, got)
    # modifiers, a space before the list, nested attributes in any order (R4-9)
    for src, want in (("@requires(display, filesystem)\npub Int main() { return 0; }", [("display", None), ("filesystem", None)]),
                      ("@requires (display, clock ( readonly ))\nInt main() { return 0; }", [("display", None), ("clock", "readonly")]),
                      ("@requires(display)\n@needs(App(Foo(M)))\nInt main() { return 0; }", [("display", None)]),
                      ("@needs(App(Pair(Foo(M), N)))\n@requires(display, network(readonly))\n\npub  Int  main ( ) { return 0; }",
                       [("display", None), ("network", "readonly")]),
                      ("Int f() { return 1; }\nInt main() { return 0; }", [])):
        got = requires_of_main(src)
        assert got == want, (src, got)
    # a main declared in a behavior is not the program's: only a top-level
    # definition with a body counts, and there must be exactly one (R5-7)
    decl = ("behavior Runner(R) {\n    @requires(display)\n    Int main();\n}\n"
            "@requires(display, filesystem)\nInt main() { return 0; }\n")
    assert requires_of_main(decl) == [("display", None), ("filesystem", None)], requires_of_main(decl)
    nested = "Int f() { if (true) { Int main() { return 1; } } return 0; }\n@requires(device)\nInt main() { return 0; }\n"
    assert requires_of_main(nested) == [("device", None)], requires_of_main(nested)
    for bad in ("behavior Runner(R) {\n    @requires(display)\n    Int main();\n}\n",
                "@requires(display)\nInt main() { return 0; }\n@requires(filesystem)\nInt main() { return 1; }\n"):
        try:
            got = requires_of_main(bad)
        except ValueError:
            continue
        raise AssertionError(("accepted", bad, got))
    # attributes that do not parse are an error, never "no capabilities"
    for bad in ("@requires(display, network(x(y)))\nInt main() { return 0; }",
                "@requires(display\nInt main() { return 0; }",
                "@ requires(display)\nInt main() { return 0; }",
                "@requires(display) junk\nInt main() { return 0; }",
                "@requires\nInt main() { return 0; }"):
        try:
            got = requires_of_main(bad)
        except ValueError:
            continue
        raise AssertionError(("accepted", bad, got))
    print("caps_manifest: self-test passed")
    return 0


def main():
    ap = argparse.ArgumentParser(description=__doc__.split("\n\n")[0])
    ap.add_argument("program", nargs="?")
    ap.add_argument("--residc", default="")
    ap.add_argument("--platform", default="all", choices=["macos", "windows", "android", "all"])
    ap.add_argument("--self-test", action="store_true")
    a = ap.parse_args()
    if a.self_test:
        return self_test()
    if not a.program:
        ap.error("a program is required")
    if a.residc:
        # The list is only proven once the compiler accepts the program.
        r = subprocess.run([a.residc, a.program, "--profile", "check"], capture_output=True, text=True)
        if r.returncode != 0:
            sys.stderr.write(r.stdout + r.stderr)
            print("caps_manifest: the program does not type-check; its capabilities are not proven", file=sys.stderr)
            return 1
    try:
        caps = requires_of_main(open(a.program, encoding="utf-8").read())
    except ValueError as e:
        print(f"caps_manifest: {e}", file=sys.stderr)
        return 1
    out, problems = plan(caps)
    proof = "compiler-proven" if a.residc else "not type-checked: pass --residc to prove it"
    print(f"# capabilities on main ({proof}): " + (", ".join(f + (f"({m})" if m else "") for f, m in caps) or "none"))
    if a.platform in ("macos", "all"):
        print("\n# macOS entitlements\n" + macos_plist(out["macos"]), end="")
    if a.platform in ("windows", "all"):
        print("\n# Windows AppxManifest\n" + windows_caps(out["windows"]), end="")
    if a.platform in ("android", "all"):
        print("\n# Android manifest\n" + (android_perms(out["android"]) or "<!-- no permissions -->\n"), end="")
    for p in problems:
        print(f"caps_manifest: no store entitlement for {p}", file=sys.stderr)
    return 2 if problems else 0


if __name__ == "__main__":
    sys.exit(main())

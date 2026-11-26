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


def code_only(source):
    """`source` with comments and string literals blanked (same length), so
    a `@requires` or an `Int main()` in either is not taken for code."""
    out = []
    i, n = 0, len(source)
    while i < n:
        c = source[i]
        if source.startswith("//", i):
            j = source.find("\n", i)
            j = n if j < 0 else j
            out.append(" " * (j - i))
            i = j
        elif source.startswith("/*", i):
            j = source.find("*/", i + 2)
            j = n if j < 0 else j + 2
            out.append("".join(ch if ch == "\n" else " " for ch in source[i:j]))
            i = j
        elif c == '"':
            j = i + 1
            while j < n and source[j] != '"':
                j += 2 if source[j] == "\\" else 1
            j = min(j + 1, n)
            out.append('"' + " " * (j - i - 2) + '"' if j - i >= 2 else " " * (j - i))
            i = j
        else:
            out.append(c)
            i += 1
    return "".join(out)


def requires_of_main(source):
    """The capabilities on `main`, as (family, mode) pairs, mode None for read-write."""
    source = code_only(source)
    m = re.search(r"((?:@\w+\([^)]*(?:\([^)]*\)[^)]*)*\)\s*)*)Int\s+main\s*\(\s*\)", source)
    if not m:
        raise ValueError("no `Int main()` found")
    req = re.search(r"@requires\(((?:[^()]|\([^)]*\))*)\)", m.group(1))
    if not req:
        return []
    caps = []
    for part in re.findall(r"\w+(?:\(\w+\))?", req.group(1)):
        fam, _, mode = part.partition("(")
        caps.append((fam, mode.rstrip(")") or None))
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
    caps = requires_of_main(open(a.program, encoding="utf-8").read())
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

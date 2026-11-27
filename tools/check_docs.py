#!/usr/bin/env python3
"""Check every ```resid block in docs/ against the library.

A block that defines `main()` is a program: it is written to a temporary
directory, its relative imports made absolute against docs/, and
type-checked with `residc --profile check`. It is not run, since it opens
a window.

Any other block lists the library's interface. Each line in it that is a
function signature (`pub Int f(...)`, with no body) must match a function
in src/ or native/ in its return and parameter types (parameter names may
differ); when the line gives `@requires(...)`, the set must be the
function's own. Each `type` or `behavior` it declares must exist under
that name, and a `type` written out in full must have the code's body
(fields, variants, order; comments and spacing aside). A body containing
`...` is marked abbreviated and only its name is checked. A signature the
code no longer has is a document that lies, and fails the check.

Usage: tools/check_docs.py [residc]
"""
import os, re, shutil, subprocess, sys, tempfile

if any(a in ("-h", "--help") for a in sys.argv[1:]):
    print(__doc__.strip())
    sys.exit(0)

root = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
residc = sys.argv[1] if len(sys.argv) > 1 else os.environ.get("RESIDC", os.path.expanduser("~/.resid/bin/residc"))
fence = re.compile(r"^```resid[^\n]*\n(.*?)^```\s*$", re.M | re.S)
sig = re.compile(r"^(pub\s+)?[A-Z][\w()., ]*\s+[a-z_]\w*\s*\(.*\)$")


def squash(s):
    return re.sub(r"\s+", "", s)


def split_top(s):
    """`s` split at the commas outside parentheses."""
    out, depth, cur = [], 0, ""
    for ch in s:
        depth += (ch == "(") - (ch == ")")
        if ch == "," and depth == 0:
            out.append(cur)
            cur = ""
        else:
            cur += ch
    return out + [cur] if cur.strip() else out


def shape(head):
    """A signature without its annotations, `pub` and parameter names:
    `pub Int f(Int a, Str b = "")` and `Int f(Int x, Str y)` are the
    same function to a reader."""
    head = re.sub(r"^(\s*@\w+(\([^()]*(\([^()]*\)[^()]*)*\))?\s*)+", "", head.strip())
    head = re.sub(r"^pub\s+", "", head)
    m = re.match(r"^(.*?\b[a-z_]\w*)\s*\((.*)\)$", head, re.S)
    if not m:
        return squash(head)
    params = [re.sub(r"\s+[a-z_]\w*\s*(=.*)?$", "", p.strip(), flags=re.S) for p in split_top(m.group(2))]
    return squash(m.group(1)) + "(" + ",".join(squash(p) for p in params) + ")"


sources = []
for base in ("src", "native"):
    for dirpath, _, files in os.walk(os.path.join(root, base)):
        sources += [os.path.join(dirpath, f) for f in files if f.endswith(".resid")]
text = "\n".join(open(p).read() for p in sources)
# Every function head in the code, up to its opening brace, and every type
# and behavior name.
heads = {shape(m.group(1)) for m in re.finditer(r"^([^\n/@][^\n{;]*\))\s*\{", text, re.M)}
names = set(re.findall(r"^(?:pub\s+)?(?:type|behavior)\s+([A-Z]\w*)", text, re.M))


def requires_of(attrs):
    """The capability set an attribute text gives, or None without @requires."""
    m = re.search(r"@requires\s*\(((?:[^()]|\([^()]*\))*)\)", attrs)
    if not m:
        return None
    return frozenset(squash(c) for c in split_top(m.group(1)) if c.strip())


# Each function's @requires set, by its shape: the attribute lines just
# above its head (or on the line itself).
caps = {}
for src_path in sources:
    lines = open(src_path).read().splitlines()
    for i, line in enumerate(lines):
        m = re.match(r"^((?:@\w+(?:\((?:[^()]|\([^()]*\))*\))?\s*)*)([^\n/@][^{;]*\))\s*\{", line)
        if not m:
            continue
        attrs, j = m.group(1), i - 1
        while j >= 0 and lines[j].lstrip().startswith("@"):
            attrs = lines[j] + " " + attrs
            j -= 1
        caps.setdefault(shape(m.group(2)), set()).add(requires_of(attrs) or frozenset())


def strip_comments(t):
    return re.sub(r"//[^\n]*", "", t)


def type_decls(t):
    """Every `type Name... = body;` in `t`, by name, squashed (no `pub`)."""
    out = {}
    for m in re.finditer(r"^\s*(?:pub\s+)?type\s+([A-Z]\w*)", t, re.M):
        start, depth, j = m.start(), 0, m.end()
        while j < len(t):
            ch = t[j]
            depth += (ch in "({") - (ch in ")}")
            if ch == ";" and depth == 0:
                break
            j += 1
        decl = re.sub(r"^\s*pub\s+", "", t[start:j + 1])
        out.setdefault(m.group(1), set()).add(squash(decl))
    return out


code_types = type_decls(strip_comments(text))

failed, checked = [], 0
for name in sorted(os.listdir(os.path.join(root, "docs"))):
    if not name.endswith(".md"):
        continue
    path = os.path.join(root, "docs", name)
    doc = open(path).read()
    for m in fence.finditer(doc):
        body = m.group(1)
        where = f"docs/{name}:{doc[:m.start()].count(chr(10)) + 1}"
        if re.search(r"\bmain\s*\(\)", body) and "{ ... }" not in body:
            # written outside docs/, its imports resolved against docs/
            docs = os.path.join(root, "docs")
            prog = re.sub(r'^(\s*import\s+")([^"/][^"]*)"',
                          lambda i: i.group(1) + os.path.normpath(os.path.join(docs, i.group(2))) + '"', body, flags=re.M)
            tmp = tempfile.mkdtemp(prefix="doccheck-")
            src = os.path.join(tmp, f"doc_{checked}.resid")
            open(src, "w").write(prog)
            try:
                c = subprocess.run([residc, src, "--profile", "check"], capture_output=True, text=True, timeout=600, cwd=tmp)
            finally:
                shutil.rmtree(tmp, ignore_errors=True)
            checked += 1
            if c.returncode != 0:
                failed.append(f"{where}: does not compile: {(c.stdout + c.stderr).strip()[-400:]}")
            continue
        for tname, decls in type_decls(strip_comments(body)).items():
            for decl in decls:
                if "..." in decl or tname not in code_types:
                    continue
                checked += 1
                if decl not in code_types[tname]:
                    failed.append(f"{where}: type {tname} is not the code's: {decl[:120]}")
        for line in body.splitlines():
            code = re.sub(r"//.*", "", line).strip()
            given = requires_of(code)
            code = re.sub(r"^(@\w+(\([^()]*(\([^()]*\)[^()]*)*\))?\s*)+", "", code)
            if "..." in code:
                continue
            t = re.match(r"^(?:pub\s+)?(?:type|behavior)\s+([A-Z]\w*)", code)
            if t:
                checked += 1
                if t.group(1) not in names:
                    failed.append(f"{where}: no type or behavior {t.group(1)}")
            elif sig.match(code) and "=" not in code:
                checked += 1
                if shape(code) not in heads:
                    failed.append(f"{where}: no function {code}")
                elif given is not None and given not in caps.get(shape(code), set()):
                    failed.append(f"{where}: {code} does not require {sorted(given)} in the code")

for f in failed:
    print("FAIL", f)
print(f"docs: {checked - len(failed)} of {checked} checks passed")
sys.exit(1 if failed else 0)

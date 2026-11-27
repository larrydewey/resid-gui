#!/usr/bin/env python3
"""resid_lens.py — the residual lens: which parts of a window the compiler folded.

Resid reduces every computation it can prove. For a resid-gui program that
means `view`: whatever part of the widget tree does not depend on the model
is built at compile time, and only the rest is built while the program
runs. This tool shows which is which, on a real frame:

  1. compiles the program with `--dump-reduced`, the compiler's own record
     of the program after reduction, and finds the App instance's `view`;
  2. reads that reduced `view` and labels every widget constructor in it,
     numbered in pre-order exactly as the semantics tree numbers widgets:
       folded    the whole subtree is a constant the compiler built
       residual  it uses the model (names which variables), or it comes
                 from a call the compiler left for run time (names it);
     a widget below a residual call has no fixed number, so the numbering
     stops there and those widgets are reported as built by that call;
  3. runs the compiled program under tools/rsp_shell.py, takes a frame
     and the semantics tree (with each widget's box);
  4. draws the lens: folded widgets hatched blue, residual ones outlined
     orange, with the reason beside the frame.

    tools/resid_lens.py PROGRAM.resid [--residc PATH] [--scale 2] [--out lens.png]
                        [--step ACTION ...]   (rsp_shell steps to run first)

It prints the same labels as text. The analysis reads the compiler's
output, so it is as exact as the reducer is: nothing here guesses which
calls fold.
"""

import argparse
import json
import os
import re
import subprocess
import sys
import shutil
import tempfile
import atexit

WIDGETS = {
    "Text": [], "Button": [], "Checkbox": [], "TextInput": [], "Slider": [], "Bitmap": [], "Spacer": [],
    "Row": [0], "Column": [0], "Stack": [0], "Rows": [2],
    "Padding": [1], "Align": [2], "Scroll": [1], "Themed": [1],
}
# constructors and helpers that build values without computing anything the
# reducer could have left behind
PURE = set(WIDGETS) | {"Clicked", "Toggled", "Submitted", "Changed", "Custom", "rgb", "Rect", "Color",
                       "Light", "Dark", "FollowSystem", "SoftCorners", "SquareCorners", "RoundCorners",
                       "StandardContrast", "HighContrast"}


# ─── A small reader for the reduced Resid the compiler prints ───────────────

TOKEN = re.compile(r'''\s*(?:(f"(?:\\.|[^"\\])*")|("(?:\\.|[^"\\])*")|(\d+)|([A-Za-z_][A-Za-z_0-9]*)|(==|!=|<=|>=|&&|\|\||[-+*/%<>!.,()\[\]{}?:=]))''')


def tokens(src):
    out, i = [], 0
    while i < len(src):
        m = TOKEN.match(src, i)
        if not m or m.end() == i:
            if src[i:].strip() == "":
                break
            raise ValueError(f"cannot read near: {src[i:i + 30]!r}")
        kind = ["fstr", "str", "num", "id", "op"][[g is not None for g in m.groups()].index(True)]
        out.append((kind, m.group(m.lastindex)))
        i = m.end()
    return out


class Expr:
    """A parsed expression: kind is call, list, lit, fstr, id, op or if."""

    def __init__(self, kind, name="", args=None, text=""):
        self.kind, self.name, self.args, self.text = kind, name, args or [], text


class Parser:
    def __init__(self, toks):
        self.t, self.i = toks, 0

    def peek(self, v=None):
        if self.i >= len(self.t):
            return None
        return self.t[self.i] if v is None else (self.t[self.i][1] == v)

    def eat(self, v=None):
        tok = self.t[self.i]
        if v is not None and tok[1] != v:
            raise ValueError(f"expected {v!r}, got {tok[1]!r}")
        self.i += 1
        return tok

    def expr(self):
        left = self.unary()
        parts = [left]
        while self.peek() and self.peek()[0] == "op" and self.peek()[1] in ("+", "-", "*", "/", "%", "==", "!=", "<", ">", "<=", ">=", "&&", "||"):
            self.eat()
            parts.append(self.unary())
        return parts[0] if len(parts) == 1 else Expr("op", args=parts)

    def unary(self):
        if self.peek("!") or self.peek("-"):
            self.eat()
            return Expr("op", args=[self.unary()])
        return self.postfix(self.atom())

    def postfix(self, e):
        while self.peek("."):
            self.eat(".")
            name = self.eat()[1]
            if self.peek("("):
                e = Expr("call", name="." + name, args=[e] + self.args("(", ")"))
            else:
                e = Expr("op", args=[e], text="." + name)
        return e

    def args(self, open_, close):
        self.eat(open_)
        out = []
        while not self.peek(close):
            out.append(self.expr())
            if self.peek(","):
                self.eat(",")
        self.eat(close)
        return out

    def atom(self):
        kind, v = self.eat()
        if kind == "num":
            return Expr("lit", text=v)
        if kind == "str":
            return Expr("lit", text=v)
        if kind == "fstr":
            holes = re.findall(r"\{([^{}:]+)", v)
            return Expr("fstr", text=v, args=[Parser(tokens(h)).expr() for h in holes])
        if v == "(":
            e = self.expr()
            self.eat(")")
            return e
        if v == "[":
            self.i -= 1
            return Expr("list", args=self.args("[", "]"))
        if v == "if":
            self.eat("(")
            c = self.expr()
            self.eat(")")
            self.eat("{")
            a = self.expr()
            self.eat("}")
            self.eat("else")
            self.eat("{")
            b = self.expr()
            self.eat("}")
            return Expr("if", args=[c, a, b])
        if kind == "id":
            if v in ("true", "false"):
                return Expr("lit", text=v)
            if self.peek("("):
                return Expr("call", name=v, args=self.args("(", ")"))
            if self.peek("{") and v[:1].isupper():
                self.eat("{")
                depth = 1
                while depth:
                    tok = self.eat()[1]
                    depth += {"{": 1, "}": -1}.get(tok, 0)
                return Expr("lit", text=v + "{...}")
            return Expr("id", name=v)
        raise ValueError(f"unexpected {v!r}")


def free(e, dyn):
    """The dynamic names an expression uses, and the residual calls it makes."""
    names, calls = set(), set()
    if e.kind == "id" and e.name in dyn:
        names.add(e.name)
    if e.kind == "call" and e.name not in PURE:
        calls.add(e.name.lstrip("."))
    for a in e.args:
        n, c = free(a, dyn)
        names |= n
        calls |= c
    return names, calls


# ─── The reduced program ────────────────────────────────────────────────────

def scratch():
    """A temporary directory, removed when the tool exits."""
    d = tempfile.mkdtemp(prefix="resid-lens-")
    atexit.register(shutil.rmtree, d, True)
    return d


def reduced(program, residc):
    out = scratch()
    dump = os.path.join(out, "reduced.txt")
    r = subprocess.run([residc, program, "-o", os.path.join(out, "prog"), "--dump-reduced", dump], capture_output=True, text=True)
    if r.returncode != 0 or not os.path.exists(dump):
        sys.stderr.write(r.stdout[-2000:] + r.stderr[-2000:])
        raise SystemExit("resid_lens: the program does not compile")
    return open(dump, encoding="utf-8").read(), os.path.join(out, "prog")


def view_of(src):
    m = re.search(r"App\([^)]*\)\s*=\s*\{[^}]*\.view\s*=\s*(\w+)", src)
    if not m:
        raise SystemExit("resid_lens: no App instance with a view in the reduced program")
    name = m.group(1)
    f = re.search(r"Widget\s+" + re.escape(name) + r"\s*\(([^)]*)\)\s*\{", src)
    if not f:
        raise SystemExit(f"resid_lens: cannot find {name} in the reduced program")
    params = [p.split()[-1] for p in f.group(1).split(",") if p.strip()]
    i, depth = f.end(), 1
    while depth:
        depth += {"{": 1, "}": -1}.get(src[i], 0)
        i += 1
    return name, params, src[f.end():i - 1]


def body_expr(body, params):
    """The returned expression, and the names that vary at run time: the
    parameters and every local bound from them or from a residual call."""
    dyn = set(params)
    stmts = [s.strip() for s in body.split(";") if s.strip()]
    ret = None
    for s in stmts:
        if s.startswith("return "):
            ret = s[len("return "):]
            continue
        m = re.match(r"[A-Za-z_][\w()]*\s+(\w+)\s*=\s*(.*)", s, re.S)
        if m:
            n, c = free(Parser(tokens(m.group(2))).expr(), dyn)
            if n or c:
                dyn.add(m.group(1))
    if ret is None:
        raise SystemExit("resid_lens: the view has no return")
    return Parser(tokens(ret)).expr(), dyn


def label(e, dyn):
    """Labels for every widget in pre-order: (id, constructor, verdict, reason)."""
    out = []
    state = {"next": 0, "lost": None}

    def walk(x):
        if state["lost"]:
            return
        if x.kind == "if":
            names, calls = free(x.args[0], dyn)
            if names or calls:
                state["lost"] = "a widget chosen at run time by `if`"
                return
            walk(x.args[1])
            return
        if x.kind != "call" or x.name not in WIDGETS:
            names, calls = free(x, dyn)
            state["lost"] = (f"widgets built by {', '.join(sorted(calls))}(...) at run time" if calls
                             else "widgets that depend on " + ", ".join(sorted(names)))
            return
        names, calls = free(x, dyn)
        wid = state["next"]
        state["next"] += 1
        if not names and not calls:
            out.append((wid, x.name, "folded", "a constant the compiler built"))
        else:
            own = [a for k, a in enumerate(x.args) if k not in WIDGETS[x.name]]
            on, oc = set(), set()
            for a in own:
                n2, c2 = free(a, dyn)
                on |= n2
                oc |= c2
            why = []
            if on:
                why.append("uses " + ", ".join(sorted(on)))
            if oc:
                why.append("calls " + ", ".join(sorted(oc)) + "(...)")
            if not why:
                why.append("rebuilt because a child is residual")
            out.append((wid, x.name, "residual", "; ".join(why)))
        for k in WIDGETS[x.name]:
            if k >= len(x.args):
                continue
            a = x.args[k]
            for child in (a.args if a.kind == "list" else [a]):
                walk(child)

    walk(e)
    return out, state["lost"]


# ─── Drawing ────────────────────────────────────────────────────────────────

def draw(frame, tree, labels, lost, out, title):
    from PIL import Image, ImageDraw
    img = Image.open(frame).convert("RGBA")
    scale = tree["scale"]
    by_id = {n["id"]: n for n in tree["nodes"]}
    over = Image.new("RGBA", img.size, (0, 0, 0, 0))
    d = ImageDraw.Draw(over)
    for wid, ctor, verdict, why in labels:
        n = by_id.get(wid)
        if not n:
            continue
        x, y, w, h = n["x"], n["y"], n["w"], n["h"]  # device pixels
        if verdict == "folded":
            d.rectangle([x, y, x + w - 1, y + h - 1], fill=(36, 87, 230, 30), outline=(36, 87, 230, 255), width=scale)
            for k in range(-h, w, 6 * scale):
                d.line([(x + max(k, 0), y + max(-k, 0)), (x + min(k + h, w), y + min(h, w - k))], fill=(36, 87, 230, 70), width=scale)
        else:
            d.rectangle([x, y, x + w - 1, y + h - 1], fill=(252, 235, 221, 70), outline=(180, 83, 15, 255), width=2 * scale)
    img = Image.alpha_composite(img, over)
    panel_w = 360 * scale // 2
    canvas = Image.new("RGB", (img.width + panel_w, max(img.height, 110 + 32 * len(labels))), (18, 20, 24))
    canvas.paste(img.convert("RGB"), (0, 0))
    t = ImageDraw.Draw(canvas)
    px = img.width + 12
    t.text((px, 10), f"Residual lens: {title}", fill=(230, 232, 235))
    t.text((px, 28), "blue: folded at compile time", fill=(157, 184, 255))
    t.text((px, 44), "orange: built at run time", fill=(240, 168, 104))
    yy = 70
    for wid, ctor, verdict, why in labels:
        has = wid in by_id
        line = f"#{wid} {ctor}: {verdict}" + ("" if has else " (no box)")
        t.text((px, yy), line, fill=(157, 184, 255) if verdict == "folded" else (240, 168, 104))
        t.text((px + 10, yy + 13), why[:52], fill=(154, 162, 173))
        yy += 32
    if lost:
        t.text((px, yy), "after that: " + lost[:48], fill=(154, 162, 173))
    canvas.save(out)


def main():
    ap = argparse.ArgumentParser(description=__doc__.split("\n\n")[0])
    ap.add_argument("program")
    ap.add_argument("--residc", default=os.path.expanduser("~/.resid/bin/residc"))
    ap.add_argument("--scale", type=int, default=2)
    ap.add_argument("--out", default="lens.png")
    ap.add_argument("--step", action="append", default=[])
    ap.add_argument("--text-only", action="store_true")
    a = ap.parse_args()
    src, binary = reduced(a.program, a.residc)
    name, params, body = view_of(src)
    expr, dyn = body_expr(body, params)
    labels, lost = label(expr, dyn)
    print(f"{name}({', '.join(params)}) after reduction:")
    for wid, ctor, verdict, why in labels:
        print(f"  #{wid:<3} {ctor:<10} {verdict:<8} {why}")
    if lost:
        print(f"  then: {lost}")
    if a.text_only:
        return 0
    work = scratch()
    shell = os.path.join(os.path.dirname(os.path.abspath(__file__)), "rsp_shell.py")
    steps = sum([["--step", s] for s in a.step + ["shot:frame", "tree:tree", "close"]], [])
    r = subprocess.run([sys.executable, "-I", shell, binary, "--scale", str(a.scale), "--out", work] + steps)
    if r.returncode != 0:
        raise SystemExit("resid_lens: the program did not run under the reference shell")
    tree = json.load(open(os.path.join(work, "tree.json")))
    draw(os.path.join(work, "frame.png"), tree, labels, lost, a.out, name)
    print(f"lens: {a.out}")
    return 0


if __name__ == "__main__":
    sys.exit(main())

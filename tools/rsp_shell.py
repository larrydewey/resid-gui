#!/usr/bin/env python3
"""rsp_shell.py — a headless reference shell for the Resid Surface Protocol.

It is written from docs/rsp.md alone, in a language other than Resid, to
show the protocol is implementable by a shell author who never reads the
core. It does what a macOS or Windows shell does, minus the window:

  * starts the core program with RSP_SOCKET naming its end of a socket pair,
  * answers Hello and Window, takes the buffers' descriptors (checking
    each is as large as its Attach says),
  * on every Present, copies the buffer out (saved as a PNG when asked),
    releases it and paces the next frame,
  * keeps the semantics tree and prints what a screen reader would say,
  * drives a script: click a node by its label, act on it as an assistive
    tool, type text, wait for the tree to say something, take screenshots,
    ask to close.

Everything the core sends is checked as the spec requires; a malformed
message ends the session.

    tools/rsp_shell.py CORE [--size 320x120] [--scale 2] [--out DIR]
                       [--step ACTION ...]

--theme sets the platform's appearance hints the shell reports.

Actions: wait:TEXT  click:LABEL  assist:LABEL  type:TEXT  key:CODE
         shot:NAME  tree:NAME (the semantics tree as JSON)  speak  close
         run:COMMAND (runs while the shell keeps serving the window)
"""

import argparse
import os
import socket
import struct
import subprocess
import sys
import time

MAX_MESSAGE = 4 * 1024 * 1024
MAX_STRING = 65536
MAX_BYTES = 1024 * 1024
MAX_WORDS = 16384
MAX_BUFFERS = 8          # attached at once; the core uses two
MAX_NODES = 65536        # semantics nodes kept
MAX_FDS = 16             # descriptors waiting for their Attach

TO_SHELL = {1: ("Hello", "is"), 2: ("Window", "siiiii"), 3: ("Attach", "iiii"), 4: ("Present", "ia"),
            5: ("Detach", "i"), 6: ("Cursor", "i"), 7: ("TextInputState", "iiiiiisii"), 8: ("SemReset", ""),
            9: ("SemPut", "iiiiiiiiiss"), 10: ("SemRemove", "i"), 11: ("SemCommit", ""), 12: ("ClipboardSet", "sb"),
            13: ("ClipboardGet", "s"), 14: ("MenuItem", "iiiss"), 15: ("MenuCommit", ""), 16: ("Dialog", "iiss"),
            17: ("Bye", "")}
FROM_SHELL = {"Welcome": (129, "iis"), "Configure": (130, "iiiiiiii"), "FrameDone": (131, ""), "Release": (132, "i"),
              "Pointer": (133, "iiiiiii"), "ScrollBy": (134, "iii"), "Key": (135, "iii"), "TextCommit": (136, "s"),
              "Preedit": (137, "si"), "Lifecycle": (138, "i"), "A11yAction": (139, "ii"),
              "ClipboardData": (140, "sb"), "DialogResult": (141, "ii"), "MenuActivated": (142, "i")}
ROLES = ["group", "text", "button", "checkbox", "text field", "slider", "image", "scroll area", "list", "password field"]


class ProtocolError(Exception):
    pass


def encode(name, *fields):
    op, schema = FROM_SHELL[name]
    body = b""
    for kind, v in zip(schema, fields):
        if kind == "i":
            body += struct.pack("<i", v)
        elif kind in "sb":
            raw = v.encode("utf-8") if kind == "s" else bytes(v)
            body += struct.pack("<I", len(raw)) + raw + b"\0" * ((-len(raw)) % 4)
        else:
            body += struct.pack("<I", len(v)) + b"".join(struct.pack("<i", w) for w in v)
    return struct.pack("<II", 8 + len(body), op) + body


def decode(msg):
    """One whole message from the core: (name, fields), strictly."""
    size, op = struct.unpack_from("<II", msg, 0)
    if size != len(msg):
        raise ProtocolError("size does not match the message")
    if op not in TO_SHELL:
        raise ProtocolError(f"unknown or wrong-direction opcode {op}")
    name, schema = TO_SHELL[op]
    at, out = 8, []
    for kind in schema:
        if at + 4 > len(msg):
            raise ProtocolError("message ends inside a field")
        (w,) = struct.unpack_from("<I", msg, at)
        if kind == "i":
            out.append(struct.unpack_from("<i", msg, at)[0])
            at += 4
        elif kind == "a":
            if w > MAX_WORDS or at + 4 + 4 * w > len(msg):
                raise ProtocolError("word array too long")
            out.append(list(struct.unpack_from(f"<{w}i", msg, at + 4)))
            at += 4 + 4 * w
        else:
            if w > (MAX_STRING if kind == "s" else MAX_BYTES):
                raise ProtocolError("field too long")
            pad = (-w) % 4
            if at + 4 + w + pad > len(msg):
                raise ProtocolError("field overruns the message")
            raw = msg[at + 4:at + 4 + w]
            if any(msg[at + 4 + w:at + 4 + w + pad]):
                raise ProtocolError("padding is not zero")
            if kind == "s":
                try:
                    raw = raw.decode("utf-8", errors="strict")
                except UnicodeDecodeError:
                    raise ProtocolError("string is not valid UTF-8")
            out.append(raw)
            at += 4 + w + pad
    if at != len(msg):
        raise ProtocolError("bytes after the last field")
    if name == "Present" and len(out[1]) % 4:
        raise ProtocolError("damage is not whole rectangles")
    return name, out


def printable(text):
    """`text` safe to print on a terminal: control characters (escape
    sequences included) shown as \\xNN, never sent."""
    return "".join(c if c.isprintable() else f"\\x{ord(c):02x}" for c in text)


class Shell:
    def __init__(self, core, size, scale, out_dir, theme=0):
        self.size, self.scale, self.out_dir, self.theme = size, scale, out_dir, theme
        mine, theirs = socket.socketpair(socket.AF_UNIX, socket.SOCK_STREAM)
        env = dict(os.environ, RSP_SOCKET=str(theirs.fileno()))
        for k in ("WAYLAND_DISPLAY", "WAYLAND_SOCKET", "DISPLAY"):
            env.pop(k, None)
        self.proc = subprocess.Popen([core], env=env, pass_fds=[theirs.fileno()])
        theirs.close()
        self.sock, self.buf, self.fds = mine, b"", []
        self.buffers, self.tree, self.pending, self.gone = {}, {}, {}, set()
        self.fresh = 0
        self.presents, self.last_frame, self.bye, self.title = 0, None, False, ""
        self.dims = (0, 0)

    # ─── transport ───
    def send(self, name, *fields):
        self.sock.sendall(encode(name, *fields))

    def pump(self, timeout):
        """Read and handle whatever arrives within `timeout` seconds."""
        self.sock.settimeout(timeout)
        try:
            data, fds, _, _ = socket.recv_fds(self.sock, 65536, 4)
        except socket.timeout:
            return
        if not data:
            for fd in fds:
                os.close(fd)
            self.bye = True
            return
        self.fds.extend(fds)
        while len(self.fds) > MAX_FDS:
            os.close(self.fds.pop(0))
        self.buf += data
        while len(self.buf) >= 8:
            size, op = struct.unpack_from("<II", self.buf, 0)
            if size < 8 or size % 4 or size > MAX_MESSAGE or op >> 16:
                raise ProtocolError("corrupt stream")
            if len(self.buf) < size:
                break
            msg, self.buf = self.buf[:size], self.buf[size:]
            try:
                self.handle(*decode(msg))
            except (struct.error, ValueError, IndexError, KeyError, TypeError, OSError) as e:
                # whatever the core sent, the shell reports it, never a traceback
                raise ProtocolError(f"bad message from the core: {e}") from None

    # ─── messages ───
    def handle(self, name, f):
        if name == "Hello":
            if f[0] != 1:
                raise ProtocolError(f"core speaks version {f[0]}")
            self.send("Welcome", 1, 1, "python-reference")
        elif name == "Window":
            self.title = f[0]
            w, h = self.size or (f[1], f[2])
            self.send("Configure", w * self.scale, h * self.scale, self.scale, 0, 0, 0, 0, self.theme)
        elif name == "Attach":
            if not self.fds:
                raise ProtocolError("Attach without a descriptor")
            fd = self.fds.pop(0)
            bid, w, h, stride = f
            if w < 1 or h < 1 or stride < 4 * w or stride * h > 256 * 1024 * 1024:
                os.close(fd)
                raise ProtocolError("impossible buffer")
            # The buffer is the core's memory, and the core may shrink it at
            # any time: a mapping would then fault (SIGBUS) on the next read.
            # Keep the descriptor and copy the pixels out with pread, which
            # comes back short instead.
            if os.fstat(fd).st_size < stride * h:
                os.close(fd)
                raise ProtocolError("buffer smaller than its Attach says")
            old = self.buffers.pop(bid, None)
            if old:
                os.close(old[0])
            if len(self.buffers) >= MAX_BUFFERS:
                os.close(fd)
                raise ProtocolError("too many buffers attached")
            self.buffers[bid] = (fd, w, h, stride)
        elif name == "Detach":
            entry = self.buffers.pop(f[0], None)
            if entry:
                os.close(entry[0])
        elif name == "Present":
            if f[0] not in self.buffers:
                raise ProtocolError("Present of a buffer never attached")
            fd, w, h, stride = self.buffers[f[0]]
            pixels = os.pread(fd, stride * h, 0)
            if len(pixels) < stride * h:
                raise ProtocolError("buffer shrank under the shell")
            self.last_frame = (pixels, w, h, stride)
            self.presents += 1
            self.send("Release", f[0])
            self.send("FrameDone")
        elif name == "SemPut":
            # A node already in the tree is an update and adds nothing; only
            # new ids count against the cap, each once however often it is put.
            if f[0] not in self.pending and f[0] not in self.tree:
                if len(self.tree) + self.fresh >= MAX_NODES:
                    raise ProtocolError("too many semantics nodes")
                self.fresh += 1
            self.pending[f[0]] = dict(id=f[0], parent=f[1], role=f[2], flags=f[3], x=f[4], y=f[5], w=f[6], h=f[7],
                                      actions=f[8], label=f[9], value=f[10])
        elif name == "SemRemove":
            # Only a node in the tree can go: removing anything else is a
            # no-op at the commit, so it is not kept (the set stays within
            # MAX_NODES however many removes arrive).
            if f[0] in self.tree:
                self.gone.add(f[0])
        elif name == "SemCommit":
            for i in self.gone:
                self.tree.pop(i, None)
            self.tree.update(self.pending)
            self.pending, self.gone, self.fresh = {}, set(), 0
        elif name == "Bye":
            self.bye = True

    # ─── what a screen reader would say ───
    def speech(self):
        lines = []
        for n in sorted(self.tree.values(), key=lambda n: n["id"]):
            role = ROLES[n["role"]] if 0 <= n["role"] < len(ROLES) else "group"
            parts = [role]
            if n["label"]:
                parts.append(f'"{printable(n["label"])}"')
            if n["value"]:
                parts.append(f'= {printable(n["value"])}')
            if n["role"] == 3:
                parts.append("checked" if n["flags"] & 1 else "not checked")
            if n["flags"] & 2:
                parts.append("focused")
            if n["flags"] & 16:
                parts.append("off screen")
            lines.append(" ".join(parts))
        return lines

    def says(self, text):
        return any(text in n["label"] or text in n["value"] for n in self.tree.values())

    def node(self, label):
        for n in sorted(self.tree.values(), key=lambda n: n["id"]):
            if n["label"] == label or n["value"] == label:
                return n
        raise ProtocolError(f"no node labelled {label!r}")

    def wait(self, cond, what, seconds=10):
        end = time.time() + seconds
        while not cond():
            if time.time() > end:
                raise ProtocolError(f"timed out waiting for {what}")
            if self.bye:
                raise ProtocolError(f"core closed while waiting for {what}")
            self.pump(0.1)

    def shot(self, name):
        from PIL import Image
        self.wait(lambda: self.last_frame is not None, "a frame")
        # let the frames settle: pump until a quiet 300 ms
        last = -1
        while last != self.presents:
            last = self.presents
            self.pump(0.3)
        data, w, h, stride = self.last_frame
        img = Image.frombuffer("RGBA", (w, h), data, "raw", "BGRA", stride, 1)
        path = os.path.join(self.out_dir, f"{name}.png")
        img.convert("RGB").save(path)
        print(f"shot: {path} ({w}x{h})")

    def run(self, steps):
        self.wait(lambda: self.presents > 0 and self.tree, "the first frame and tree")
        for step in steps:
            verb, _, arg = step.partition(":")
            if verb == "wait":
                self.wait(lambda: self.says(arg), repr(arg))
            elif verb in ("click", "assist"):
                self.wait(lambda: any(n["label"] == arg or n["value"] == arg for n in self.tree.values()), repr(arg))
                n = self.node(arg)
                if verb == "click":
                    x, y = n["x"] + n["w"] // 2, n["y"] + n["h"] // 2
                    self.send("Pointer", 0, x, y, 0, 0, 0, 0)
                    self.send("Pointer", 1, x, y, 1, 0, 0, 0)
                    self.send("Pointer", 2, x, y, 1, 0, 0, 0)
                else:
                    self.send("A11yAction", n["id"], 2 if n["role"] in (4, 9) else 1)
            elif verb == "type":
                self.send("TextCommit", arg)
            elif verb == "key":
                self.send("Key", int(arg), 1, 0)
                self.send("Key", int(arg), 0, 0)
            elif verb == "shot":
                self.shot(arg)
            elif verb == "run":
                # a command run while the shell keeps serving the window
                proc = subprocess.Popen(arg, shell=True)
                while proc.poll() is None:
                    self.pump(0.05)
                if proc.returncode != 0:
                    raise ProtocolError(f"step command failed ({proc.returncode}): {arg}")
            elif verb == "tree":
                import json
                self.wait(lambda: not self.pending, "a committed tree")
                path = os.path.join(self.out_dir, f"{arg}.json")
                with open(path, "w") as fh:
                    json.dump({"scale": self.scale, "nodes": sorted(self.tree.values(), key=lambda n: n["id"])}, fh)
                print(f"tree: {path}")
            elif verb == "speak":
                self.wait(lambda: not self.pending, "a committed tree")
                self.pump(0.3)
                print("screen reader:")
                for line in self.speech():
                    print("  " + line)
            elif verb == "close":
                self.send("Lifecycle", 3)
                self.wait(lambda: self.bye, "Bye")
            else:
                raise ProtocolError(f"unknown step {step!r}")
            self.pump(0.05)


def self_test():
    """A core that lies, without a core: messages handed to the shell."""
    sh = Shell.__new__(Shell)
    sh.size, sh.scale, sh.out_dir, sh.theme = None, 1, ".", 0
    sh.sock, sh.buf, sh.fds = None, b"", []
    sh.buffers, sh.tree, sh.pending, sh.gone = {}, {}, {}, set()
    sh.fresh = 0
    sh.presents, sh.last_frame, sh.bye, sh.title = 0, None, False, ""
    sent = []
    sh.send = lambda name, *fields: sent.append(name)

    def refused(name, fields, why):
        try:
            sh.handle(name, fields)
        except ProtocolError as e:
            assert why in str(e), e
            return
        raise AssertionError(f"{name} {fields} was accepted")

    # a 4 x 4 buffer (64 bytes) whose memory is 16 bytes: refused, where a
    # mapping would fault on the first Present
    small = os.memfd_create("rsp-self-test")
    os.ftruncate(small, 16)
    sh.fds.append(small)
    refused("Attach", [1, 4, 4, 16], "smaller than its Attach")
    # an honest one, then the core shrinks it: the Present is refused
    fd = os.memfd_create("rsp-self-test")
    os.ftruncate(fd, 64)
    sh.fds.append(fd)
    sh.handle("Attach", [2, 4, 4, 16])
    sh.handle("Present", [2, []])
    assert sh.presents == 1 and len(sh.last_frame[0]) == 64
    os.ftruncate(fd, 8)
    refused("Present", [2, []], "shrank")
    # a second Attach of the same id replaces the first, closing it
    fd2 = os.memfd_create("rsp-self-test")
    os.ftruncate(fd2, 64)
    sh.fds.append(fd2)
    sh.handle("Attach", [2, 4, 4, 16])
    try:
        os.fstat(fd)
        raise AssertionError("the replaced buffer's descriptor is still open")
    except OSError:
        pass
    # a label that is a terminal escape is spoken, not obeyed
    sh.handle("SemPut", [1, -1, 2, 0, 0, 0, 10, 10, 1, "\x1b[2Jok\x9b", ""])
    sh.handle("SemCommit", [])
    assert sh.speech() == ['button "\\x1b[2Jok\\x9b"'], sh.speech()
    # a full tree re-put is an update, not twice as many nodes (R3-8)
    sh.tree, sh.pending, sh.gone, sh.fresh = {}, {}, set(), 0
    for i in range(MAX_NODES):
        sh.handle("SemPut", [i, -1, 0, 0, 0, 0, 1, 1, 0, "", ""])
    sh.handle("SemCommit", [])
    for i in range(MAX_NODES):
        sh.handle("SemPut", [i, -1, 0, 0, 0, 0, 1, 1, 0, "x", ""])
    sh.handle("SemCommit", [])
    assert len(sh.tree) == MAX_NODES and sh.tree[0]["label"] == "x"
    refused("SemPut", [MAX_NODES, -1, 0, 0, 0, 0, 1, 1, 0, "", ""], "too many")
    # removes of nodes that are not there are not kept (R3-8)
    for i in range(MAX_NODES, 4 * MAX_NODES):
        sh.handle("SemRemove", [i])
    assert len(sh.gone) == 0, len(sh.gone)
    sh.handle("SemRemove", [5])
    sh.handle("SemCommit", [])
    assert len(sh.tree) == MAX_NODES - 1 and 5 not in sh.tree
    print("rsp_shell: self-test passed")
    return 0


def main():
    if sys.argv[1:] == ["--self-test"]:
        return self_test()
    ap = argparse.ArgumentParser(description=__doc__.split("\n\n")[0])
    ap.add_argument("core")
    ap.add_argument("--size", default="")
    ap.add_argument("--scale", type=int, default=1)
    ap.add_argument("--out", default=".")
    ap.add_argument("--theme", type=int, default=0, help="Configure theme bits: 1 dark, 2 reduced motion, 4 high contrast")
    ap.add_argument("--step", action="append", default=[])
    a = ap.parse_args()
    size = tuple(int(v) for v in a.size.split("x")) if a.size else None
    sh = Shell(a.core, size, a.scale, a.out, a.theme)
    try:
        sh.run(a.step)
    except ProtocolError as e:
        print(f"rsp_shell: {e}", file=sys.stderr)
        sh.proc.kill()
        return 1
    code = sh.proc.wait(timeout=10)
    print(f"core exited {code} after {sh.presents} presents; title {sh.title!r}")
    return code


if __name__ == "__main__":
    sys.exit(main())

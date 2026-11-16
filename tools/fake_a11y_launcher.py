#!/usr/bin/env python3
"""fake_a11y_launcher.py — answer org.a11y.Bus.GetAddress on a session bus,
as at-spi-bus-launcher does, with a given accessibility-bus address. For
testing the runtime's discovery path where no real launcher runs.

    tools/fake_a11y_launcher.py SESSION_SOCKET_PATH A11Y_ADDRESS
"""
import os
import socket
import struct
import sys


def pad(b, n):
    return b + b"\0" * ((-len(b)) % n)


def s(x):
    x = x.encode()
    return struct.pack("<I", len(x)) + x + b"\0"


def message(kind, serial, fields, sig="", body=b""):
    fs = b""
    for code, t, val in fields:
        fs = pad(fs, 8)
        f = bytes([code, 1]) + t.encode() + b"\0"
        f = pad(f, 4) + (struct.pack("<I", val) if t == "u" else (bytes([len(val)]) + val.encode() + b"\0" if t == "g" else s(val)))
        fs += f
    if sig:
        fs = pad(fs, 8)
        fs += bytes([8, 1]) + b"g\0" + bytes([len(sig)]) + sig.encode() + b"\0"
    head = b"l" + bytes([kind, 0, 1]) + struct.pack("<III", len(body), serial, len(fs)) + fs
    return pad(head, 8) + body


def read_messages(sock, buf):
    while True:
        while len(buf) >= 16:
            blen, _, flen = struct.unpack_from("<III", buf, 4)
            size = ((16 + flen + 7) // 8) * 8 + blen
            if len(buf) < size:
                break
            m, buf = buf[:size], buf[size:]
            yield m
        data = sock.recv(65536)
        if not data:
            return
        buf += data


def fields_of(m):
    flen = struct.unpack_from("<I", m, 12)[0]
    out, p = {}, 16
    while p < 16 + flen:
        p = ((p + 7) // 8) * 8
        code, siglen = m[p], m[p + 1]
        t = chr(m[p + 2])
        v = p + 4
        if t == "u":
            out[code] = struct.unpack_from("<I", m, v)[0]
            p = v + 4
        elif t in "so":
            n = struct.unpack_from("<I", m, v)[0]
            out[code] = m[v + 4:v + 4 + n].decode()
            p = v + 4 + n + 1
        elif t == "g":
            n = m[v]
            out[code] = m[v + 1:v + 1 + n].decode()
            p = v + 1 + n + 1
        else:
            break
    return out


def main():
    path, addr = sys.argv[1:3]
    sock = socket.socket(socket.AF_UNIX)
    sock.connect(path)
    sock.sendall(b"\0AUTH EXTERNAL " + str(os.getuid()).encode().hex().encode() + b"\r\n")
    assert sock.recv(256).startswith(b"OK")
    sock.sendall(b"BEGIN\r\n")
    dbus = [(1, "o", "/org/freedesktop/DBus"), (2, "s", "org.freedesktop.DBus"), (6, "s", "org.freedesktop.DBus")]
    sock.sendall(message(1, 1, dbus + [(3, "s", "Hello")]))
    sock.sendall(message(1, 2, dbus + [(3, "s", "RequestName")], "su", pad(s("org.a11y.Bus"), 4) + struct.pack("<I", 4)))
    serial = 10
    print("ready", flush=True)
    for m in read_messages(sock, b""):
        f = fields_of(m)
        if m[1] == 1 and f.get(3) == "GetAddress":
            serial += 1
            sock.sendall(message(2, serial, [(5, "u", struct.unpack_from("<I", m, 8)[0]), (6, "s", f.get(7, ""))], "s", s(addr)))


if __name__ == "__main__":
    main()

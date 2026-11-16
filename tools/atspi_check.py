#!/usr/bin/env python3
"""atspi_check.py — act as a screen reader against a resid-gui program on
the accessibility bus, using GLib's gdbus (an implementation independent
of resid-gui's own D-Bus code).

It finds the program among the bus's names by asking each for its
application's ToolkitName, walks application -> window -> widgets reading
roles and names, presses the button labelled LABEL through the Action
interface, and waits until some widget's name contains EXPECT.

    tools/atspi_check.py ADDRESS LABEL EXPECT
"""

import re
import subprocess
import sys
import time

ROOT = "/org/a11y/atspi/accessible/root"


def gdbus(addr, dest, path, method, *args):
    r = subprocess.run(["gdbus", "call", "--address", addr, "--dest", dest, "--object-path", path, "--method", method, *args],
                       capture_output=True, text=True, timeout=10)
    if r.returncode != 0:
        raise RuntimeError(r.stderr.strip())
    return r.stdout.strip()


def prop(addr, dest, path, iface, name):
    out = gdbus(addr, dest, path, "org.freedesktop.DBus.Properties.Get", iface, name)
    m = re.search(r"<'(.*)'>", out) or re.search(r"<(.*)>", out)
    return m.group(1) if m else out


def children(addr, dest, path):
    out = gdbus(addr, dest, path, "org.a11y.atspi.Accessible.GetChildren")
    # gdbus annotates only the first element's type: match the paths
    return re.findall(r"'(/org/a11y/atspi/accessible/[^']+)'", out)


def find_app(addr):
    names = re.findall(r"'(:[0-9.]+)'", gdbus(addr, "org.freedesktop.DBus", "/org/freedesktop/DBus", "org.freedesktop.DBus.ListNames"))
    for n in names:
        try:
            if prop(addr, n, ROOT, "org.a11y.atspi.Application", "ToolkitName") == "resid-gui":
                return n
        except Exception:
            continue
    return None


def main():
    addr, label, expect = sys.argv[1:4]
    app = None
    for _ in range(50):
        app = find_app(addr)
        if app:
            break
        time.sleep(0.1)
    if not app:
        print("atspi_check: no resid-gui program on the bus")
        return 1
    print(f"found {app}")
    frame = children(addr, app, ROOT)
    print(f"application -> {frame}")
    nodes = children(addr, app, frame[0])
    target = None
    for p in nodes:
        role = gdbus(addr, app, p, "org.a11y.atspi.Accessible.GetRoleName")
        name = prop(addr, app, p, "org.a11y.atspi.Accessible", "Name")
        print(f"  {p.rsplit('/', 1)[1]:>3}  {role:<28} {name}")
        if name == label:
            target = p
        for q in children(addr, app, p):
            r2 = gdbus(addr, app, q, "org.a11y.atspi.Accessible.GetRoleName")
            n2 = prop(addr, app, q, "org.a11y.atspi.Accessible", "Name")
            print(f"  {q.rsplit('/', 1)[1]:>3}    {r2:<26} {n2}")
            if n2 == label:
                target = q
    if not target:
        print(f"atspi_check: no widget named {label!r}")
        return 1
    print(f"DoAction on {label!r}: {gdbus(addr, app, target, 'org.a11y.atspi.Action.DoAction', '0')}")
    for _ in range(50):
        for p in children(addr, app, frame[0]):
            if expect in prop(addr, app, p, "org.a11y.atspi.Accessible", "Name"):
                print(f"the tree now says {expect!r}")
                return 0
        time.sleep(0.1)
    print(f"atspi_check: the tree never said {expect!r}")
    return 1


if __name__ == "__main__":
    sys.exit(main())

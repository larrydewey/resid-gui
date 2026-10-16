#!/usr/bin/env python3
"""Regenerate the keysym tables in src/backend/keysym.resid.

Reads libxkbcommon's keysym header, whose comments give each keysym's
Unicode character, and rewrites the bodies of `legacy_table` (keysym
numbers below the Unicode range) and `keysym_table` (names) in place.
Control characters (Return, Tab, BackSpace, ...) are left out: those keys
type nothing, and the library handles them by key code.

    tools/gen_keysyms.py [path/to/xkbcommon-keysyms.h]
"""
import re
import sys
from pathlib import Path

HEADER = sys.argv[1] if len(sys.argv) > 1 else '/usr/include/xkbcommon/xkbcommon-keysyms.h'
TARGET = Path(__file__).resolve().parent.parent / 'src/backend/keysym.resid'
DEF = re.compile(r'#define XKB_KEY_(\w+)\s+0x([0-9a-fA-F]+)\s+/\*\s*(?:\(\s*)?U\+([0-9A-Fa-f]+)')

def printable(u):
    return u >= 32 and not (127 <= u < 160)

def wrap(entries):
    lines, cur = [], '        '
    for e in entries:
        if len(cur) + len(e) + 2 > 110:
            lines.append(cur.rstrip())
            cur = '        '
        cur += e + ', '
    lines.append(cur.rstrip().rstrip(','))
    return '\n'.join(lines)

def replace_body(src, fn, body):
    start = src.index(fn)
    open_at = src.index('return {\n', start) + len('return {\n')
    close_at = src.index('\n    };\n}', open_at)
    return src[:open_at] + body + src[close_at:]

names, legacy = {}, {}
for line in open(HEADER):
    m = DEF.match(line)
    if not m:
        continue
    name, ks, u = m.group(1), int(m.group(2), 16), int(m.group(3), 16)
    if not printable(u):
        continue
    if len(name) > 1:
        names.setdefault(name, u)
    if 255 < ks < 0xff00:
        legacy.setdefault(ks, u)
keypad = {'KP_Space': 32, 'KP_Multiply': 42, 'KP_Add': 43, 'KP_Separator': 44, 'KP_Subtract': 45,
          'KP_Decimal': 46, 'KP_Divide': 47, 'KP_Equal': 61}
keypad.update({f'KP_{d}': 48 + d for d in range(10)})
for k, v in keypad.items():
    names.setdefault(k, v)

src = TARGET.read_text()
src = replace_body(src, 'Map(Int, Int) legacy_table()', wrap([f'{k}: {v}' for k, v in sorted(legacy.items())]))
src = replace_body(src, 'pub Map(Str, Int) keysym_table()',
                   wrap([f'"{k}": {v}' for k, v in sorted(names.items(), key=lambda kv: (kv[1], kv[0]))]))
TARGET.write_text(src)
print(f'{len(names)} names, {len(legacy)} legacy keysyms')

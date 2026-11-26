# The Resid Surface Protocol (RSP), version 1

RSP is how a resid-gui program (the **core**) talks to a per-platform host
program (the **shell**) on platforms where Resid cannot speak the window
system itself. On Linux the core speaks Wayland or X11 directly and needs
no shell. Elsewhere a shell, written in the platform's own language,
implements this document. `src/rsp/wire.resid` is the reference codec and
is the authority where this text and it disagree.

A shell is a window server for one app. It shows the frames the core
draws, and reports input, input-method edits, accessibility actions and
platform services back. **It makes no decision an app could observe**:
layout, painting, focus, text editing and hit testing are the core's.

## 1. Transport

| Platform | Channel | Descriptors |
|---|---|---|
| macOS, Windows, Android, Linux (testing) | The shell starts the core as a child process and passes one end of a connected stream socket in `RSP_SOCKET` (a descriptor number). Windows uses AF_UNIX (Windows 10 1803+). | `SCM_RIGHTS` on Unix; on Windows the shell duplicates handles into the child |
| iOS | In-process: two byte rings, same bytes as a socket | buffer pointers by id |
| Web | `postMessage` between the page and the core's worker | `SharedArrayBuffer` by id |

The core reaches a shell only under the `display` capability. Both sides
treat everything they receive as untrusted.

## 2. Framing

Every message is

```
word 0   size     total bytes, header included; a multiple of 4, 8 to 4 MiB
word 1   opcode   low 16 bits; the high 16 bits are zero
...      fields
```

All words are little-endian. Fields are one of four kinds:

| Kind | Encoding | Limit |
|---|---|---|
| `i` | signed 32-bit integer | |
| `s` | byte length, UTF-8 bytes, zero padding to a word | 64 KiB, strict UTF-8 (no overlong forms, surrogates, or code points above U+10FFFF) |
| `b` | byte length, bytes, zero padding to a word | 1 MiB |
| `a` | word count, then that many signed 32-bit integers | 16384 words |

Each opcode has one fixed schema. A receiver **must** refuse, and close
the connection over, a message that:

- has a size that is not a multiple of 4, is under 8 or is over 4 MiB, or
  has non-zero high opcode bits;
- has an unknown opcode, or an opcode for the other direction;
- has a field that runs past the message or past its limit, has non-zero
  padding, or has invalid UTF-8;
- has bytes left over after its last field.

Unknown opcodes are an error rather than ignored: a peer must not send
what the agreed version does not have.

## 3. Messages to the shell (opcodes 1–17)

| Op | Name | Schema | Fields |
|---|---|---|---|
| 1 | `Hello` | `is` | version, app id (reverse DNS) |
| 2 | `Window` | `siiiii` | title, width, height (logical px), resizable (0/1), min width, min height |
| 3 | `Attach` | `iiii` | buffer id, width, height (device px), stride (bytes). The buffer's descriptor rides beside it. Pixels are BGRA, premultiplied, rows top to bottom. |
| 4 | `Present` | `ia` | buffer id, damage: device-pixel rectangles as x, y, w, h quadruples |
| 5 | `Detach` | `i` | buffer id: the core will not use it again |
| 6 | `Cursor` | `i` | shape: 0 default, 1 pointer, 2 text, 3 grab |
| 7 | `TextInputState` | `iiiiiisii` | active (0/1), kind (0 plain, 1 password, 2 number, 3 email), caret x, y, w, h (logical px), surrounding text, selection start, selection end (code points) |
| 8 | `SemReset` | | discard the pending semantics tree |
| 9 | `SemPut` | `iiiiiiiiiss` | id, parent (-1 top), role, flags, x, y, w, h, actions, label, value |
| 10 | `SemRemove` | `i` | id |
| 11 | `SemCommit` | | apply the puts and removes since the last commit, atomically |
| 12 | `ClipboardSet` | `sb` | MIME type, bytes |
| 13 | `ClipboardGet` | `s` | MIME type; answered by `ClipboardData` |
| 14 | `MenuItem` | `iiiss` | id, parent (0 top), flags, label, shortcut (e.g. `Primary+N`) |
| 15 | `MenuCommit` | | replace the menu with the items since the last commit |
| 16 | `Dialog` | `iiss` | request id, kind (0 open, 1 save, 2 alert), title, filter (`*.png;*.jpg`) |
| 17 | `Bye` | | the core is finished; the shell closes the window and waits for the core to exit |

Semantics roles: 1 text, 2 button, 3 checkbox, 4 text field, 5 slider,
6 image, 7 scroll area, 8 list. Flags: 1 checked, 2 focused, 4 editable,
8 disabled, 16 off screen (scrolled out of view or outside the window: in
the tree, not shown; its only action is scroll, which brings it into
view). Actions: 1 activate, 2 focus, 4 set value, 8 scroll.
`src/ui/semantics.resid` defines them.

## 4. Messages from the shell (opcodes 129–142)

| Op | Name | Schema | Fields |
|---|---|---|---|
| 129 | `Welcome` | `iis` | version, platform (1 Linux, 2 macOS, 3 Windows, 4 Android, 5 iOS, 6 web), shell name |
| 130 | `Configure` | `iiiiiiii` | width, height (device px), scale (device px per logical px, ≥ 1), safe-area insets top, right, bottom, left (device px), theme bits (1 dark, 2 reduced motion, 4 high contrast) |
| 131 | `FrameDone` | | a good moment to present the next frame |
| 132 | `Release` | `i` | buffer id: the shell no longer reads it |
| 133 | `Pointer` | `iiiiiii` | kind (0 move, 1 down, 2 up, 3 leave), x, y (device px), button (1 primary, 2 middle, 3 secondary), pointer id, device (0 mouse, 1 touch, 2 pen), pressure (0–1000) |
| 134 | `Scroll` | `iii` | dx, dy (device px; positive dy scrolls content up), phase (0 none, 1 begin, 2 update, 3 end, 4 momentum) |
| 135 | `Key` | `iii` | evdev key code, down (1) or up (0), modifier bits (1 Shift, 2 Ctrl, 4 Alt, 8 Super) |
| 136 | `TextCommit` | `s` | text an input method, layout or dead key produced |
| 137 | `Preedit` | `si` | uncommitted composition text, cursor (code points) |
| 138 | `Lifecycle` | `i` | 0 visible, 1 hidden, 2 suspended, 3 close requested |
| 139 | `A11yAction` | `ii` | semantics node id, action bit |
| 140 | `ClipboardData` | `sb` | MIME type, bytes (empty when the clipboard holds none of that type) |
| 141 | `DialogResult` | `ii` | request id, status (0 ok, 1 cancelled). On ok for open or save, the chosen file's descriptor rides beside it: the app gets that file, never a path. |
| 142 | `MenuActivated` | `i` | menu item id |

Key codes are Linux evdev codes on every platform; each shell maps its
own. **Text never comes from key codes**: a shell sends `TextCommit` for
what a key types, so layouts, dead keys and input methods are the
platform's.

## 5. Sequence

```
core  → Hello(1, "dev.resid.todo")
shell → Welcome(1, platform, name)
core  → Window(title, w, h, resizable, min_w, min_h)
shell → Configure(w, h, scale, insets…, theme)
core  → Attach(0, w, h, stride) + fd     Attach(1, …) + fd
core  → Present(0, [whole window])
shell → FrameDone   Release(0) …
        input, Configure on resize (the core Detaches and re-Attaches), …
shell → Lifecycle(close requested)
core  → Bye
```

The core never writes a buffer between `Present` and its `Release`.
After a `Configure` that changes the size or scale, the core attaches new
buffers before presenting again.

## 6. What a shell must not do

- Interpret or modify pixels, the semantics tree or the menu beyond
  showing them.
- Send a path. Files cross only as descriptors in `DialogResult`.
- Trust the core: buffer sizes, strides, damage rectangles and node
  bounds are checked before they reach a platform API.

## 7. Versioning

`Hello` and `Welcome` carry the version. A peer that cannot speak the
other's version closes the connection. A later version adds opcodes and
never changes an existing schema.

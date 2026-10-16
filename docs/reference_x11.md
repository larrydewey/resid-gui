# `src/x11/` — the X11 backend

The X Window System protocol spoken directly in Resid: no Xlib, no XCB,
no generated bindings. Frames go through MIT-SHM when the server offers
`ShmAttachFd` (MIT-SHM 1.2) and through `PutImage` otherwise.

| Module | Purpose |
|---|---|
| `wire.resid` | little-endian encoding and bounds-checked decoding; UTF-8 |
| `setup.resid` | the setup request and reply: ids, screen 0's root, visual, depth and size |
| `requests.resid` | one encoder per request the client sends |
| `events.resid` | framing replies, errors and events; decoding events |
| `stream.resid` | framing requests (what the fake server in tests/ reads) |
| `connect.resid` | connecting, the handshake, round trips |
| `x11.resid` | the `X11` state and its `Backend(X11)` instance |

## Starting

```resid
@requires(display) pub Session x11_open()
@requires(display) pub Session x11_handshake(Int fd)
@requires(display) pub X11 x11_start(WindowOptions opts)
@requires(display) pub X11 x11_start_on(Session s, WindowOptions opts)
```

`x11_start_on` interns `WM_PROTOCOLS`, `WM_DELETE_WINDOW`, `_NET_WM_NAME`
and `UTF8_STRING`; queries MIT-SHM and its version; creates the window
(child of the root, the root's depth and visual, no background so exposes
do not flash) selecting keys, buttons, motion, exposure, structure and
focus; sets `WM_NAME`, `_NET_WM_NAME`, `WM_CLASS`, `WM_PROTOCOLS` (so the
close button sends a message instead of killing the connection) and, for
a fixed-size window, `WM_NORMAL_HINTS`; creates a GC without graphics
exposures; maps the window; and attaches two segments.

Only depth-24 screens stored at 32 bits per pixel are accepted, which is
every TrueColor X server in practice.

`x11_open` connects with `resid_disp_connect_x11` and authenticates with
the `MIT-MAGIC-COOKIE-1` that `resid_disp_x11_auth` finds for `$DISPLAY`
in `$XAUTHORITY` (else `~/.Xauthority`): the runtime reads that one file
for the `display` grant, so the program needs no filesystem or
environment authority. With no cookie the setup carries none, which
Xwayland, Xephyr, Xnest and servers started without `-auth` accept.
`x11_handshake_auth(fd, cookie)` takes a cookie directly.

The keyboard layout comes from `GetKeyboardMapping` over the setup's key
code range (`src/x11/keyboard.resid`): group 1's two levels and XKB's
third and fourth, with the core rule that a letter with no second keysym
has its capital there. A key whose keysym names a function key (Escape,
BackSpace, Return, the arrows, ...) is reported as that key's evdev code.
When the layout changes the server sends `MappingNotify`; the backend asks
for the mapping again and holds key events back until the reply arrives,
so keys typed right after a switch decode under the new layout.

## Requests

`CreateWindow`, `MapWindow`, `DestroyWindow`, `CreateGC`, `FreeGC`,
`InternAtom`, `ChangeProperty` (8- and 32-bit), `QueryExtension`,
`GetKeyboardMapping`,
`PutImage`, `NoOperation`, and MIT-SHM's `QueryVersion`, `AttachFd`,
`Detach` and `PutImage`. Each test checks the fields at their protocol
offsets and that the length field matches the bytes.

## Events

`x_take` frames the receive buffer (32 bytes, or 32 plus the reply's
length; a reply over 1 MB is refused). `x_decode_event` handles
`KeyPress`/`KeyRelease` (keycode minus 8 is the evdev code),
`ButtonPress`/`ButtonRelease` (4 to 7 are wheel notches), `MotionNotify`,
`FocusIn`/`FocusOut`, `Expose` (redrawn on the next present),
`ConfigureNotify` (new segments at the new size, then `Resized`),
`ClientMessage` with `WM_DELETE_WINDOW` (`Closed`), `DestroyNotify` and
`ShmCompletion`. Errors are printed to stderr and the connection goes on.

## Testing

`tests/fake_server.resid` runs `x11_handshake`, `x11_start_on` and
`x11_present` against a scripted server over a socket pair and checks
every request it receives.

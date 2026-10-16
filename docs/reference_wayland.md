# `src/wayland/` — the Wayland backend

The Wayland protocol spoken directly in Resid: no libwayland, no
generated bindings. One xdg-shell toplevel, frames through `wl_shm`.

| Module | Purpose |
|---|---|
| `wire.resid` | message framing, words, strings, arrays; bounds-checked reads |
| `protocol.resid` | one encoder per request the client sends |
| `wayland.resid` | the `Wl` state, the dispatcher and the `Backend(Wl)` instance |

## Starting

```resid
@requires(display, clock(readonly)) pub Wl wl_start(WindowOptions opts)
@requires(display, clock(readonly)) pub Wl wl_start_on(Int fd, WindowOptions opts)
```

`wl_start` connects to `$XDG_RUNTIME_DIR/$WAYLAND_DISPLAY` (through
`resid_disp_connect_wayland`, which also honours `WAYLAND_SOCKET`), asks for the registry and a sync, and binds
`wl_compositor` (up to version 6, for `preferred_buffer_scale`), `wl_shm`,
`xdg_wm_base`, `wl_seat` (up to 5) and, when offered,
`wp_cursor_shape_manager_v1`. It creates the surface, xdg surface and
toplevel, sets the title and app id (and equal minimum and maximum sizes
for a fixed-size window), commits, and waits for the first configure.

With no compositor to connect to, `wl_start` fails with an empty `err`
and `gui_run` moves on to the X11 backend.

## Frames

Two buffers, each in its own pool over its own shared-memory handle. A
present rasterizes the damage (plus that buffer's stale rectangles), then
sends `attach`, one `damage_buffer` per rectangle, `frame` and `commit`.
`wl_ready` is false while the frame callback is outstanding or both
buffers are held, so the client draws at the compositor's pace and never
writes a buffer the compositor is reading.

A configure with a new size (resizable windows only) and
`preferred_buffer_scale` both replace the buffers; the loop sees the new
device size and repaints everything.

## Input

`wl_pointer` enter, motion, button (272 left, 274 middle, 273 right become
1, 2, 3) and axis (one `Wheel` notch per event); the cursor is set to the
default shape on enter when the cursor-shape protocol is there.
`wl_keyboard` keymap, key, modifiers (Shift, Caps Lock, Ctrl, Alt, Num
Lock, AltGr), enter and leave (`Focused`, `Blurred`) and repeat info: a
held key repeats at the compositor's rate after its delay, on the
monotonic clock. The keymap arrives as XKB text in a descriptor, read once
with `resid_disp_fd_read` and parsed by `src/backend/xkb.resid` (key
codes, and each key's first group's four levels); until it arrives, and
if it does not parse, keys type the US layout. A new keymap event (a
layout switch, or a tool such as `wtype` uploading its own) replaces it.
A key whose keysym names a function key is reported as that key's evdev
code, and a key that types text inserts it whatever its code. `xdg_wm_base.ping` is answered,
`xdg_toplevel.close` is `Closed`, and `wl_display.error` ends the
connection with its message.

## Testing

`tests/fake_compositor.resid` runs `wl_start_on`, `wl_present` and
`wl_pump` against a scripted compositor over a socket pair: four globals,
a configure on the first commit, two pool descriptors, a frame request,
then a pointer click, a key and a close.

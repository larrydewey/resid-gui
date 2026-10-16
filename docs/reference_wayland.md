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
`resid_disp_connect`), asks for the registry and a sync, and binds
`wl_compositor` (up to version 6, for `preferred_buffer_scale`), `wl_shm`,
`xdg_wm_base`, `wl_seat` (up to 5) and, when offered,
`wp_cursor_shape_manager_v1`. It creates the surface, xdg surface and
toplevel, sets the title and app id (and equal minimum and maximum sizes
for a fixed-size window), commits, and waits for the first configure.

`resid_disp_connect` falls back to the X11 socket when no compositor
answers, and does not say which it returned. An X server closes a
connection whose first byte is not a byte-order mark, so a peer that hangs
up before announcing any global is taken to be X11, and `gui_run` moves on
to the X11 backend.

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
`wl_keyboard` key, modifiers (Shift, Caps Lock, Ctrl, Alt), enter and
leave (`Focused`, `Blurred`) and repeat info: a held key repeats at the
compositor's rate after its delay, on the monotonic clock. The keymap's
descriptor is closed unread and keys are typed through the US layout (see
the README's open items). `xdg_wm_base.ping` is answered,
`xdg_toplevel.close` is `Closed`, and `wl_display.error` ends the
connection with its message.

## Testing

`tests/fake_compositor.resid` runs `wl_start_on`, `wl_present` and
`wl_pump` against a scripted compositor over a socket pair: four globals,
a configure on the first commit, two pool descriptors, a frame request,
then a pointer click, a key and a close.

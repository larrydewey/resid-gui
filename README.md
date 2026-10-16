# resid-gui

A GUI library for [Resid](https://github.com/larrydewey/Resid), shaped like
the language: values and pure functions, no ambient authority, compile-time
reduction of whatever is static, and native code only where it is the right
tool.

A program states that it touches the display (and reads the clock, for
timers) and nothing else:

```resid
import "../src/gui.resid";

Int counter_init() { return 0; }

Int counter_update(Int m, Event e) {
    return match (e) {
        AppMsg(msg) => match (msg) { Clicked => m + 1, _ => m },
        _ => m
    };
}

Widget counter_view(Int m) {
    return Column([Text(f"count: {m}"), Button("+1", Clicked)]);
}

App(Int) = { .init = counter_init, .update = counter_update, .view = counter_view };

@requires(display, clock(readonly))
Int main() {
    return gui_run(WindowOptions { .title = "Counter", .width = 320, .height = 120, .resizable = true });
}
```

`src/app.resid` declares the types; a program adds one instance of
`App(M)` and calls `gui_run`. The library turns that value into pixels on a
real window: a native Wayland toplevel when a compositor is running, an X11
window otherwise.

## Status

Both backends run on real servers: Wayland (tested on Hyprland, with
pointer, keyboard, resizing and buffer scale 2) and X11 (tested on
Xwayland, with MIT-SHM, pointer, keyboard and resizing). The suite is
green:

```sh
tests/run.sh     # every test file under src/ and tests/, then every example
```

It includes a fake X server and a fake Wayland compositor that drive the
real backends over socket pairs, golden images compared by SHA-256, and
real calls into both native modules.

Text is the built-in 8x16 bitmap font, or any TrueType font through the
optional native font module; images (PNG, JPEG, BMP, GIF, TGA) decode
through the native image module. Both run sandboxed, once, at start-up
(docs/reference_native.md).

Keys type what the server's layout says they type: the Wayland backend
reads the compositor's XKB keymap (`src/backend/xkb.resid`) and the X11
backend asks for the keyboard mapping, both down to a `Keymap` with four
levels per key (plain, Shift, AltGr, AltGr with Shift), Caps Lock and the
keypad's Num Lock. The X11 backend authenticates with the
`MIT-MAGIC-COOKIE-1` the session's authority file holds for `$DISPLAY`,
and each backend connects to its own protocol's socket.

These need four `display` builtins from Resid's `display-builtins` branch
(`resid_disp_connect_wayland`, `resid_disp_connect_x11`,
`resid_disp_fd_read`, `resid_disp_x11_auth`), which also fixes
`resid_disp_recv_fd` handing back the wrong descriptor. Until that branch
is merged and installed, build with its compiler:
`RESIDC=../resid.worktrees/display/build/boot/residc tests/run.sh`.

Speed: a whole 2700x2200 frame of 800 draw ops rasterizes in about 70 ms
and copies into shared memory in about 30 ms, and an ordinary frame
redraws only its damaged rectangles, typically well under a millisecond
(`bench/raster_bench.resid`).

| Layer | What it is |
|---|---|
| `src/app.resid` | `App(M)`, `Event`, `Msg`, `Widget`, `WindowOptions` |
| `src/gui.resid` | `gui_run` and the loop, written once against `Backend(B)` |
| `src/backend/` | the `Backend(B)` behavior, shared-buffer slots, keymaps (US, XKB, keysyms) |
| `src/wayland/` | Wayland: wire codec, requests, the xdg-shell toplevel |
| `src/x11/` | X11: wire codec, setup, requests, events, MIT-SHM |
| `src/gfx/` | canvas, display lists, the rasterizer, the bitmap font, PNG |
| `src/ui/` | layout, painting, hit testing, focus, damage, timers |
| `native/` | the optional `font` (stb_truetype) and `image` (stb_image) modules |

## Both backends are spoken on the wire

A Resid program links no client library: there is no `libwayland` and no
`libX11`. Each backend is hand-written encoders for the requests a
self-rendering window needs and bounds-checked decoders for what the server
sends back.

**Wayland** binds `wl_compositor`, `wl_shm`, `xdg_wm_base`, `wl_seat` and
(when offered) the cursor-shape protocol, opens one xdg-shell toplevel,
paces frames with frame callbacks, and draws into two `wl_shm` buffers,
never writing one the compositor still holds.

**X11** creates a window under the root, sets the properties a window
manager reads (title, class, `WM_DELETE_WINDOW`, size hints), and presents
through two MIT-SHM segments attached with `ShmAttachFd`, each busy until
its `ShmCompletion`. Without MIT-SHM it falls back to `PutImage`.

## Native code only for assets

`stb_truetype` and `stb_image` are compiled freestanding: they reference
nothing but their own symbols, LLVM intrinsics and `mem*`, so the maths
and memory they need are defined in the modules themselves. Each call is a
fresh, seccomp-confined process (about 2 ms) that can only compute and
answer; the answer is checked in Resid (every glyph box inside the atlas,
every image size within what arrived) before a pixel is drawn. They run
once per font scale or image, never per frame or per glyph, and a program
that does not import them needs neither them nor their capabilities.

## Rendering

CPU, in pure Resid, straight into the shared buffer the window server
reads. There is no GPU path: a GPU needs a device context that outlives a
call, and a native module is a fresh process every time.

Frames are display lists. `paint(Widget, Rect, UiState) -> List(DrawOp)`
is pure, so:

- **Damage** is value comparison. The previous and next frame's lists are
  diffed op by op; the rectangles that differ, and only those, are
  rasterized into the buffer about to be shown (plus whatever that buffer
  missed while the other was on screen).
- **HiDPI** is a scale applied at rasterization: the program works in
  logical pixels, the buffer is `scale` times larger.
- **Reduction** applies: a `view` of a model known at compile time folds to
  a literal display list.

## Security

- Every function that reaches a display builtin or the clock declares
  `@requires`. A GUI program needs `display` and `clock(readonly)`, nothing
  more; one that loads fonts or images adds `filesystem(readonly)` and
  `native_font` or `native_image`.
- Font and image bytes are untrusted input to native code. The process
  boundary contains a crash, and the Resid side validates the answer.
- Everything the server sends is untrusted input. Every decoder
  bounds-checks; a reply longer than 1 MB, a Wayland message over 4096
  bytes or a string that overruns its message is refused, and a corrupt
  stream ends the connection rather than an out-of-range read.
- No new mutable value type: pixels are lists updated in place through
  linearity (spec §4, §45).

## Layout

```
src/app.resid    the program-facing types
src/gui.resid    gui_run and the loop
src/backend/     Backend(B), shared-buffer slots, the keymap
src/wayland/     Wayland
src/x11/         X11
src/gfx/         pixels: canvas, rasterizer, font, images, PNG
src/ui/          layout, painting, input, damage, timers
tests/           fake X server, fake compositor, golden images
examples/        counter, todo, gallery, fonts, image viewer, connect probe
docs/            a Learn chapter and a reference page per layer
native/          the font and image modules: C, their .ll artifacts, Resid bindings
```

## Building

The Resid toolchain lives in the sibling checkout:

```sh
../resid/install.sh          # residc + stage2 + lib + keys into ~/.resid
~/.resid/bin/residc examples/todo.resid -o todo && ./todo
```

The examples that use a native module say so on their first line:

```sh
~/.resid/bin/residc examples/fonts.resid -native font=native/font/font.ll -o fonts
./fonts /usr/share/fonts/noto/NotoSans-Regular.ttf
```

`@link` is refused in Resid's own `lib/`, so this repository is where the
native modules live; `native/build.sh` rebuilds them and `resid.toml` pins
their hashes. Runtime and compiler additions go into the Resid
repository; this one only ever adds to them.

## License

Same as Resid.

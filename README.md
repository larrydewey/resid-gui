# resid-gui

A GUI library for [Resid](https://github.com/larrydewey/Resid), shaped like
the language: values and pure functions, no ambient authority, compile-time
reduction of whatever is static, and native code only where it is the right
tool.

A program states that it touches the display and nothing else:

```resid
Int counter_init() { return 0; }

Int counter_update(Int m, Event e) {
    return match (e) {
        AppMsg(Clicked) => m + 1,
        _ => m
    };
}

Widget counter_view(Int m) {
    return Column([Text(f"count: {m}"), Button("+1", Clicked)]);
}

App(Int) = { .init = counter_init, .update = counter_update, .view = counter_view };

@requires(display)
Int main() {
    return gui_run(WindowOptions { .title = "Counter", .width = 320, .height = 120 });
}
```

`src/gui.resid` declares the whole interface; a program adds one instance of
`App(M)` and calls `gui_run`. The library turns that value into pixels on a
real window.

## Status: G2 started

The `display` capability landed in the Resid runtime (phase G1), so
`@requires(display)` compiles and the Unix-socket transport with descriptor
passing and the shared-memory handle are available. The X11 backend is under
construction: `src/x11/` holds the wire codec, the connection setup, the
request set, stream framing and the connection state, all pure and tested
against recorded byte sequences; `tests/fake_server.resid` runs a real
client against a fake server over a socket pair — handshake, window, shared
segment, one presented frame. `src/gui.resid` still does not compile: it
calls `gui_run_x11`, which arrives with the backend. The phases are sequenced in
[PLAN-gui.md](https://github.com/larrydewey/Resid/blob/master/PLAN-gui.md) in
the Resid repository; each ends with a green test suite plus a commit.

```sh
tests/run.sh     # every test file under src/
```

| Layer | What it is | Phase |
|---|---|---|
| `src/backend/` | the `Backend(B)` behavior: frame events in, frames out | G2 |
| `src/x11/` | the X11 wire codec and setup handshake, spoken directly in Resid | G2 |
| `src/gfx/` | `Canvas(W, H)`, a linear builder over ARGB32 pixels | G3 |
| `src/ui/` | widgets, constraint layout, hit testing, focus, the loop | G5 |
| `src/gui.resid` | `App(M)`, `Event`, `Widget`, `gui_run` — the interface | G1 |
| `packages/` | optional native modules for fonts and images (`resid-gui-font`, `resid-gui-image`) | G4, G6 |

## The display backend is X11 first, Wayland second

Both are spoken directly on the wire in Resid: a Resid program links no
client library, so there is no `libX11` and no `libwayland`. Only the
backend differs; `src/gfx/` and `src/ui/` are backend-agnostic.

**X11 (v1)** is the target. The protocol is a small fixed set of requests for
a client that renders everything itself, and Xlibre ships the server, the
`Xfbdev` framebuffer server and `Xnest` for testing. There are no object
ids, no reference counting, no handshake state machine and no XML to
generate. Frames go up through MIT-SHM, which is why the display capability
also needs Unix sockets with descriptor passing.

**Wayland (v2)** is a second implementation of `Backend(Wl)`. It buys
compositor isolation, a frame callback for pacing and a text-input protocol
for IME; it costs a generated binding layer and a shm-pool dance. The
runtime support both backends share — the `display` family, Unix sockets,
shared-memory `Surface` handles — lives in the Resid repository
(`runtime/rt/unix.resid`), not here.

## Rendering

CPU, in pure Resid, into a shared-memory buffer. There is no GPU path in
v1: a GPU needs a device context that outlives a call, and a native module
is a fresh process every time.

Frames are display lists. `paint(Widget, Layout) -> List(DrawOp)` is a pure
function, so:

- **Damage** is value equality. The previous and next frame's lists are
  diffed per box and only the changed rectangles are rasterized and
  uploaded.
- **Reduction** applies. A `view` whose model is known at compile time folds
  to a literal display list at compile time. This is a tested property, not
  an aspiration.

## Native modules, only for asset preparation

Two optional packages, `resid-gui-font` (stb_truetype) and `resid-gui-image`
(stb_image), each pinned by SHA-256. A call costs about 2 ms because it is a
fresh process, so they run once per asset and their results are cached as
Resid values. They never run per frame or per glyph.

The core library works without either: an 8×16 bitmap font ships as a Resid
literal, and a program then needs nothing but `display`.

## Security

- Every function that reaches a display builtin declares `@requires`.
- Compositor and server data is untrusted input: every decoder
  bounds-checks sizes, ids and opcodes, and a malformed message ends the
  connection with an error rather than an out-of-range access.
- Font and image bytes are untrusted input to native code. The process
  boundary contains a crash; the Resid caller validates the decoded size
  and format before use.
- No new mutable value type: mutable pixels are a linear builder, legal and
  unobservable through linearity (spec §4, §45).

## Layout

```
src/gui.resid  the program-facing interface: App, Event, Widget, gui_run
src/backend/   the Backend behavior, shared by every backend
src/x11/       X11: wire codec, auth, connection, MIT-SHM
src/gfx/       Canvas, paths, display lists, rasterization
src/ui/        widgets, layout, hit testing, focus
tests/         the suite, plus a fake server that injects scripted input
examples/      counter, todo, and a font/image demo
packages/      resid-gui-font, resid-gui-image (the native modules)
```

## Building

The Resid toolchain lives in the sibling checkout:

```sh
../resid/install.sh          # residc + stage2 + lib + keys into ~/.resid
```

Tests run once the phases land:

```sh
tests/run.sh
```

`@link` is refused outside a package, so this repository is where the native
modules live. The runtime and compiler additions it needs go into the Resid
repository; this one only ever adds to them.

## License

Same as Resid.

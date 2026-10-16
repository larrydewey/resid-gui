# `src/gui.resid`, `src/app.resid`, `src/backend/` — the interface and the loop

## `app.resid`: the types a program uses

```resid
type Msg = Clicked | Toggled | Changed(Str) | Submitted | Custom(Int);

type Event = PointerMoved(Int, Int) | PointerDown(Int, Int, Int) | PointerUp(Int, Int, Int)
           | Wheel(Int, Int) | KeyDown(Int, Str) | KeyUp(Int) | Resized(Int, Int)
           | Focused | Blurred | Closed | FrameTick
           | AppMsg(Msg) | TextEdited(Msg, Str, Int) | SliderSet(Msg, Int);

type Widget = Text(Str) | Button(Str, Msg) | Checkbox(Str, Bool, Msg) | TextInput(Str, Int, Msg)
            | Row(List(Widget)) | Column(List(Widget)) | Stack(List(Widget))
            | Padding(Int, Widget) | Align(Int, Int, Widget) | Scroll(Int, Widget)
            | Bitmap(Int, Int, List(Int)) | Slider(Int, Msg) | Spacer;

behavior App(M) {
    M init();
    M update(M m, Event e);
    Widget view(M m);
}

type WindowOptions = { Str title; Int width; Int height; Bool resizable; };

pub Bool msg_eq(Msg a, Msg b)
```

The meaning of each event and widget is in
[learn_first_window.md](learn_first_window.md).

## `gui.resid`: running a program

```resid
@needs(App(M))
@requires(display, clock(readonly))
pub Int gui_run(WindowOptions opts)

@needs(App(M))
@requires(display, clock(readonly))
pub Int gui_run_x11(WindowOptions opts)

@needs(App(M))
@requires(display, clock(readonly))
pub Int gui_run_with(WindowOptions opts, List(Font) fonts)

@needs(App(M))
@requires(display, clock(readonly))
pub Int gui_run_model(WindowOptions opts, M m0, List(Font) fonts)

@needs(App(M), Backend(B))
@requires(display, clock(readonly))
pub Int gui_run_on(B b, M m0, List(Font) fonts)

pub Font pick_font(List(Font) fs, Int scale)
```

`gui_run` opens a Wayland toplevel when a compositor is reachable and an
X11 window otherwise, runs the program until the window closes, and
returns 0 (1 when no display could be opened, with the reason on
stderr). `gui_run_x11` skips Wayland, which is how the X11 backend is
tried on a Wayland desktop (Xwayland). `gui_run_with` draws text in
TrueType atlases (one per scale, from native/font); `gui_run_model` starts
from a model the program built instead of `init()`; `gui_run_on` runs the
loop over a backend the caller opened.

`width` and `height` are logical pixels; the window's device size is
`scale` times larger, where the scale is the compositor's preferred buffer
scale (Wayland) or follows the screen's DPI (X11: 2 from 144 DPI).

### The loop

Each turn of `gui_loop`:

1. `render` paints the current view (`paint`), diffs it against the last
   frame (`damage_rects`) and adds the changed rectangles, in device
   pixels, to the pending damage. A new size or scale damages everything.
2. When there is pending damage and the backend is ready (a free buffer,
   no frame callback outstanding) it presents: the backend rasterizes
   just those rectangles into its shared buffer.
3. `be_pump` waits for input until the blink timer is due.
4. Each event goes through `ui_event` (hit testing, focus, presses, text
   editing) and then, with the widget events it produced, through
   `update`; the view is refreshed after each.
5. When the timer is due the caret flips and `FrameTick` is sent.

`Closed` ends the loop after `update` has seen it. There is no frame
buffer in the loop: a frame is its display list, and pixels exist only in
the backend's shared buffers.

## `backend/backend.resid`: the backend contract

```resid
type Pumped(B) = { B b; List(Event) events; };

behavior Backend(B) {
    Pumped(B) be_pump(B b, Int ms);
    Bool be_alive(B b);
    Int be_width(B b);
    Int be_height(B b);
    Int be_scale(B b);
    Bool be_ready(B b);
    B be_present(B b, Frame fr, List(Rect) damage);
    Bool be_close(B b);
}
```

`Frame` (gfx/raster.resid) is `{ List(DrawOp) ops; Int scale; Font font; }`.
Sizes and pointer coordinates are device pixels here; the loop converts.
`X11` (src/x11/x11.resid) and `Wl` (src/wayland/wayland.resid) are the two
instances.

Both present through two shared-memory buffers, tracked as `Slot`s:

```resid
pub type Slot = { Int handle; Bool busy; List(Rect) stale; };
pub Slot slot_new(Int handle, Int w, Int h)
pub Slot slot_sent(Slot s)
pub Slot slot_released(Slot s)
pub Slot slot_dirty(Slot s, List(Rect) rs)
pub List(Rect) slot_need(Slot s, List(Rect) damage, Rect bounds)
@requires(display) pub Bool slot_paint(Slot s, Int stride, Frame fr, List(Rect) rs)
```

A buffer the server is reading is `busy` until it says otherwise (X11
`ShmCompletion`, Wayland `wl_buffer.release`). While one buffer is on
screen, what the other presents becomes `stale` in it, so the next present
into it redraws the damage plus what it missed.

## `backend/keymap.resid`

```resid
pub type Mods = { Bool shift; Bool caps; Bool ctrl; Bool alt; };
pub Str key_text(Int code, Mods m)
pub Int key_enter() ... key_delete()
```

Evdev codes to text under the US layout. Ctrl or Alt held types nothing.

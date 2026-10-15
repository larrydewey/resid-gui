# `src/gui.resid` — Application Interface

The public entry point of the GUI library.

## Types

```resid
type Event = PointerMoved(Int, Int)
           | PointerDown(Int, Int, Int)
           | PointerUp(Int, Int, Int)
           | Wheel(Int, Int)
           | KeyDown(Int, Str)
           | KeyUp(Int)
           | Resized(Int, Int)
           | Focused | Blurred
           | Closed
           | FrameTick
           | AppMsg(Msg)

type Msg = Clicked | Toggled | Changed(Str) | Submitted | Focused | Blurred

type Widget = Text(Str)
            | Button(Str, Msg)
            | Checkbox(Str, Bool, Msg)
            | TextInput(Str, Int, Msg)
            | Row(List(Widget))
            | Column(List(Widget))
            | Stack(List(Widget))
            | Padding(Int, Widget)
            | Align(Int, Int, Widget)
            | Scroll(Widget)
            | Bitmap(Int, Int, Str)
            | Slider(Int, Msg)
            | Spacer

type WindowOptions = { Str title; Int width; Int height; Bool resizable; }

behavior App(M) {
    M init();
    M update(M m, Event e);
    Widget view(M m);
}
```

## Functions

```resid
@needs(App(M))
@requires(display)
pub Int gui_run(WindowOptions opts)

@needs(App(M))
@requires(display)
pub Int gui_run_x11(WindowOptions opts)  // alias
```

`gui_run` opens a connection to the X server, creates a window, and runs the event loop until `Closed` is received. It calls `init()`, then repeatedly:
1. Waits for an event (with timer polling)
2. Decodes the event
3. Calls `update(model, event)`
4. Calls `view(new_model)` → widget tree
5. Lays out, paints, diffs display list (damage tracking)
6. Rasterizes changed regions
7. Presents via MIT-SHM double buffer
8. Repeats

Returns `0` on clean close, `1` on connection failure.

## Internal (not for direct use)

```resid
@requires(display)
Int gui_send_seq(Int fd, List(List(Int)) seq, Int handle, Int i)

@requires(display)
Int gui_event_loop(Int fd)

@needs(App(M))
@requires(display)
Int gui_render_frame(Int fd, Int handle, Conn c, M model, Int width, Int height, List(DrawOp) ops)

@needs(App(M))
@requires(display)
M gui_run_loop(Session s, Conn c, M model, Int width, Int height,
               Int front_handle, Int back_handle, Int front_idx,
               Timer blink_timer, List(DrawOp) prev_ops, List(Int) buf)
```
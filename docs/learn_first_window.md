# Your First Window

A minimal Resid GUI program opens a window, handles input, and draws something.

## The Shape of a GUI Program

Every Resid GUI program has three pure functions wrapped in an `App(M)`:

```resid
behavior App(M) {
    M init();              // initial model
    M update(M m, Event e); // fold an event into a new model
    Widget view(M m);      // render the model to a widget tree
}
```

- **Model `M`** is any type — an `Int`, a `Record`, a custom sum type. It holds all mutable state.
- **`init`** returns the starting model (no arguments).
- **`update`** is a pure fold: `(model, event) -> new_model`. No side effects.
- **`view`** is pure: `model -> Widget`. Equal models produce equal widgets.

The library calls `init` once, then loops: wait for event → `update` → `view` → rasterize → present.

## The `Event` Type

```resid
type Event = PointerMoved(Int, Int)
           | PointerDown(Int, Int, Int)   // x, y, button
           | PointerUp(Int, Int, Int)
           | Wheel(Int, Int)
           | KeyDown(Int, Str)            // keysym, text
           | KeyUp(Int)
           | Resized(Int, Int)
           | Focused | Blurred
           | Closed
           | FrameTick
           | AppMsg(Msg)
```

`Msg` is your application's message type:

```resid
type Msg = Clicked | Toggled | Changed(Str) | Submitted | Focused | Blurred
```

Widgets carry `Msg` values directly (e.g. `Button("OK", Clicked)`), so `update` matches on them.

## The `Widget` Type

```resid
type Widget = Text(Str)
            | Button(Str, Msg)
            | Checkbox(Str, Bool, Msg)
            | TextInput(Str, Int, Msg)  // text, cursor, msg
            | Row(List(Widget))
            | Column(List(Widget))
            | Stack(List(Widget))
            | Padding(Int, Widget)
            | Align(Int, Int, Widget)
            | Scroll(Widget)
            | Bitmap(Int, Int, Str)
            | Slider(Int, Msg)
            | Spacer
```

Layout is constraint-based (min/max width/height). `view` returns a widget tree; the library lays it out, paints it, and diffs the display list for damage tracking.

## A Complete Example: Click Counter

```resid
Int counter_init() { return 0; }

Int counter_update(Int m, Event e) {
    return match (e) {
        AppMsg(Clicked) => m + 1,
        _ => m
    };
}

Widget counter_view(Int m) {
    return Column([
        Text(f"count: {m}"),
        Button("+1", Clicked)
    ]);
}

App(Int) = { .init = counter_init, .update = counter_update, .view = counter_view };

@requires(display)
Int main() {
    return gui_run(WindowOptions {
        .title = "Counter",
        .width = 320,
        .height = 120,
        .resizable = true
    });
}
```

Save as `counter.resid`, compile with:

```
~/.resid/bin/residc counter.resid -o counter
```

Run under Xwayland:

```
DISPLAY=:99 ./counter
```

Click the button — the count increments.

## Capabilities

The `@requires(display)` on `main` grants the `display` capability. This is the only authority the program needs. The library's internal functions that touch the X11 connection also declare `@requires(display)`.

No `filesystem`, `network`, or `native_*` capabilities are required unless you load fonts or images from disk (see the native packages section).

## Next Steps

- Add `TextInput` for editable fields
- Use `Row` / `Column` / `Stack` for layouts
- Handle `KeyDown` / `KeyUp` for keyboard shortcuts
- Try the `examples/todo.resid` for a larger example
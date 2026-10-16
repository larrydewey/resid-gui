# Your First Window

A resid-gui program is three pure functions and one call. The library owns
the window, the event loop and the pixels; the program owns its model.

## The shape of a GUI program

```resid
behavior App(M) {
    M init();                  // the starting model
    M update(M m, Event e);    // fold one event into the next model
    Widget view(M m);          // what the model looks like
}
```

- The **model** `M` is any type: an `Int`, a record, a sum type. It is all
  of the program's state.
- **`update`** is a pure fold. It never touches the screen.
- **`view`** is pure. Equal models give equal widget trees, equal display
  lists and therefore identical pixels, which is what lets the library
  redraw only what changed.

`gui_run` calls `init` once, then loops: present the damaged pixels, wait
for input, fold every event through `update`, call `view` again and diff
the new display list against the last one.

## A click counter

```resid
import "../src/gui.resid";

Int counter_init() { return 0; }

Int counter_step(Int m, Msg msg) {
    return match (msg) {
        Custom(n) => if (n == 1) { m + 1 } else { 0 },
        _ => m
    };
}

Int counter_update(Int m, Event e) {
    return match (e) { AppMsg(msg) => counter_step(m, msg), _ => m };
}

Widget counter_view(Int m) {
    return Padding(8, Column([
        Text(f"count: {m}"),
        Row([Button("+1", Custom(1)), Button("reset", Custom(2))])
    ]));
}

App(Int) = { .init = counter_init, .update = counter_update, .view = counter_view };

@requires(display, clock(readonly))
Int main() {
    return gui_run(WindowOptions { .title = "Counter", .width = 240, .height = 90, .resizable = true });
}
```

Build and run it:

```bash
~/.resid/bin/residc examples/counter.resid -o counter && ./counter
```

On a Wayland desktop the window is a native Wayland toplevel. Without a
compositor (or with `WAYLAND_DISPLAY` set to something that does not
exist) it opens on the X server `DISPLAY` names instead:

```bash
WAYLAND_DISPLAY= ./counter
```

## Events

```resid
type Event = PointerMoved(Int, Int) | PointerDown(Int, Int, Int) | PointerUp(Int, Int, Int)
           | Wheel(Int, Int) | KeyDown(Int, Str) | KeyUp(Int) | Resized(Int, Int)
           | Focused | Blurred | Closed | FrameTick
           | AppMsg(Msg) | TextEdited(Msg, Str, Int) | SliderSet(Msg, Int);
```

Coordinates are logical pixels. Buttons are 1 (left), 2 (middle) and
3 (right). `Wheel(dx, dy)` is one notch per event, with a positive `dy`
meaning down. Key codes are Linux evdev codes (`KEY_A` is 30) on both
backends, and the `Str` is the text the key types under the US layout.
`FrameTick` arrives every 500 ms (it also blinks the caret). `Closed` is
the last event `update` sees.

The last three are widget events, raised by the library:

| Event | When |
|---|---|
| `AppMsg(m)` | a `Button` or `Checkbox` was clicked, or Enter was pressed in a focused `TextInput` |
| `TextEdited(m, text, caret)` | a focused `TextInput` was edited or its caret moved |
| `SliderSet(m, value)` | a `Slider` was clicked or dragged to `value` (0 to 100) |

`m` is the widget's own message, so `Custom(n)` tells many widgets apart:

```resid
type Msg = Clicked | Toggled | Changed(Str) | Submitted | Custom(Int);
```

## Widgets

| Widget | Meaning |
|---|---|
| `Text(s)` | one line of text |
| `Button(label, m)` | raises `AppMsg(m)` when clicked |
| `Checkbox(label, checked, m)` | raises `AppMsg(m)` when clicked; the model flips `checked` |
| `TextInput(text, caret, m)` | an editable line; the model keeps `text` and `caret` from `TextEdited` |
| `Slider(value, m)` | 0 to 100; the model keeps `value` from `SliderSet` |
| `Row(xs)` / `Column(xs)` | children side by side or stacked, at their natural size |
| `Spacer` | stretches to take what a `Row` or `Column` has left |
| `Stack(xs)` | children drawn over each other |
| `Padding(n, w)` | `n` pixels around `w` |
| `Align(ax, ay, w)` | `w` placed at `ax`/`ay` percent of the free space |
| `Scroll(offset, w)` | `w` shifted up by `offset` and clipped; move `offset` on `Wheel` |
| `Bitmap(w, h, px)` | a `w` x `h` image, four bytes per pixel, blue-green-red-alpha |

Text inputs, sliders, scroll areas and aligned boxes stretch along a row
or column; everything else keeps its natural size along the axis and
fills the box across it. Tab moves focus between text inputs and Escape
clears it.

The model owns every piece of state the program cares about, including a
text input's caret and a scroll offset. The library keeps only what
belongs to the widgets themselves: which input has focus, which control is
held down, and the caret's blink phase.

## Starting from loaded data

`init()` takes nothing. A program whose first model depends on what `main`
read (a file, the arguments) builds that model itself and passes it:

```resid
@needs(App(M))
@requires(display, clock(readonly))
pub Int gui_run_model(WindowOptions opts, M m0, List(Font) fonts)
```

## Fonts and images

Text uses a built-in 8x16 bitmap font unless the program brings a TrueType
font, and `Bitmap` shows pixels the program has. Both can come from files
through the optional native modules (docs/reference_native.md):

```resid
List(Font) fonts = fonts_from_ttf(filesystem.read_bytes(path), 16);   // native_font
Result(Image, Str) img = image_from_bytes(filesystem.read_bytes(png)); // native_image
return gui_run_with(opts, fonts);
```

`examples/fonts.resid` and `examples/image_viewer.resid` do exactly this.

## Capabilities

`gui_run` needs `display`, to reach the window server, and
`clock(readonly)`, to time the caret and `FrameTick`. Nothing else:
there is no filesystem, network or environment access, and the program
links no native code unless it imports a native module.

## Next steps

- `examples/todo.resid`: a list with a text input, checkboxes and scrolling
- `examples/gallery.resid`: every widget once
- `examples/fonts.resid`: every widget in a TrueType font
- `examples/image_viewer.resid`: an image file, zoomed with the wheel

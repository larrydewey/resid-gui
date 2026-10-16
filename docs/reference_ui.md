# `src/ui/` — layout, painting, input, damage

Everything here is pure: widget trees in, display lists, rectangles and
events out.

| Module | Purpose |
|---|---|
| `layout.resid` | preferred sizes and child boxes, shared by painting and hit testing |
| `paint.resid` | `paint(Widget, Rect, UiState) -> List(DrawOp)` |
| `state.resid` | `UiState`: focus, pressed control, caret phase, selection anchor, Shift and Ctrl |
| `input.resid` | hit testing and the widget events (`AppMsg`, `TextEdited`, `SliderSet`) |
| `damage.resid` | display-list diff to damaged rectangles |
| `timer.resid` | periodic deadlines |
| `hidpi.resid` | scale from DPI |
| `textlayout.resid` | caret and wrapping helpers for the 8-pixel font |

## Layout

```resid
pub type Size = { Int w; Int h; };
pub Size pref_size(Widget w)
pub Bool stretches_x(Widget w)
pub Bool stretches_y(Widget w)
pub List(Widget) children(Widget w)
pub List(Rect) child_rects(Widget w, Rect r)
pub Rect align_rect(Size s, Rect r, Int ax, Int ay)
pub Int node_count(Widget w)
pub Rect row_rect(Rect r, Int offset, Int row_h, Int i)
pub type RowSpan = { Int first; Int last; };
pub RowSpan rows_in_view(Rect r, Int offset, Int row_h, Int n)
```

A `Row` gives each child its preferred width plus an equal share of the
leftover for children that stretch; a `Column` does the same with
heights. Across the axis a child gets the whole box. A `Spacer` stretches
only along its container's axis. Children are 4 pixels apart; a line of
controls is 24 pixels (28 for buttons and inputs).

Widgets are numbered in pre-order (`node_count`); focus and presses name
widgets by that number.

A `Rows(offset, row_h, rows)` stretches both ways and wants no size of its
own. Row `i` is `row_rect(r, offset, row_h, i)`; `rows_in_view` names the
rows that overlap the box, and only those are painted and hit-tested. The
rows out of view are still numbered, so a widget's number never depends on
the scroll offset.

## Painting

```resid
pub List(DrawOp) paint(Widget w, Rect r, UiState ui)
pub List(DrawOp) paint_widget(Widget w, Rect r)          // no focus, nothing pressed
pub Int slider_value_at(Rect r, Int x)
pub Int input_scroll(Int caret, Int cols)
pub Int count_nodes(List(Widget) xs, Int i, Int end, Int acc)
```

A focused input gets a blue border and, in the caret's on phase, a caret;
its selection, from the anchor to the caret, is shaded under the text. A
held button or checkbox is drawn pressed. A `Scroll` and a `Rows` clip
their children with `OpClipPush`/`OpClipPop`.

## Input

```resid
type UiState = { Int focus; Int pressed; Bool caret_on; Int anchor; Bool shift; Bool ctrl; };
type UiStep = { UiState ui; List(Event) out; };
type Edited = { List(Event) out; Int anchor; };
pub UiStep ui_event(UiState ui, Widget root, Rect area, Event e)
pub Found hit(Widget w, Rect r, Int x, Int y)
pub Found find(Widget w, Rect r, Int target)
pub Edited edit_sel(Str s, Int k, Int a, Msg m, Int code, Str text, Bool shift, Bool ctrl)
pub List(Event) edit(Str s, Int k, Msg m, Int code, Str text)  // nothing selected
pub Int next_input(List(Int) ids, Int cur)
pub Int prev_input(List(Int) ids, Int cur)
```

`ui_event` passes the raw event on first, then any widget events:

- primary button down on a button or checkbox presses it; up over the same
  widget raises `AppMsg(m)`;
- down on a text input focuses it and moves the caret under the pointer
  (`TextEdited`), anchoring a selection there, so dragging selects; with
  Shift held it extends the selection instead. Down on a slider sets it,
  and dragging keeps setting it (`SliderSet`); down anywhere else clears
  focus;
- with an input focused: printable keys replace the selection or insert
  at the caret; Backspace and Delete erase the selection or one
  character; Left, Right, Home and End move the caret, extending the
  selection with Shift and collapsing it without; Ctrl+A selects
  everything; Enter raises `AppMsg(m)`, Escape clears focus; Tab moves to
  the next input and Shift+Tab to the previous one.

Key events carry no modifiers, so `ui_event` follows the Shift and Ctrl
keys going down and up (`KeyDown` and `KeyUp` of their codes), and forgets
them when the window loses focus. The program owns the text and the
caret; the library owns the selection's anchor, which a new focus drops.

## Damage

```resid
pub List(Rect) damage_rects(List(DrawOp) old, List(DrawOp) now)
pub Rect damage(List(DrawOp) old, List(DrawOp) now)
pub Bool draw_lists_equal(List(DrawOp) a, List(DrawOp) b)
```

The two lists are matched from both ends: the ops they share at the start
and at the end are unchanged even when an op appeared or vanished between
them (a caret blinking off, a checkbox mark, a new row) and shifted the
rest. In the middle, ops are compared position by position when both
middles are the same length, each differing pair contributing both bounds;
otherwise every op there is damage. A changed clip contributes both
rectangles. Nearby
rectangles merge (`rects_add` in gfx/color.resid), distant ones stay
apart, and past 16 they collapse to their bounding box.

## Timers

```resid
pub type Timer = { Int id; Int period; Int next; Bool on; };
pub Timer timer_start(Int id, Int period, Int now)
pub Bool timer_due(Timer t, Int now)
pub Int timer_wait(Timer t, Int now)
pub Timer timer_reset(Timer t, Int now)
```

Milliseconds from any fixed origin; the loop reads the monotonic clock.

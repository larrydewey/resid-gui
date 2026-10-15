# `src/ui/` — Widgets, Layout, Event Loop

Widgets, constraint-based layout, focus, damage tracking, double buffering, timers.

## Modules

| Module | Purpose |
|--------|---------|
| `paint.resid` | `paint_widget(Widget, Rect) -> List(DrawOp)` — recursive widget painter |
| `layout.resid` | `layout(Widget, Constraints) -> LayoutNode` — constraint-based layout |
| `focus.resid` | `FocusState` + `focus_next/prev/current/contains` |
| `damage.resid` | `draw_op_equal`, `draw_lists_equal`, `changed_ops` — display list diff |
| `buffers.resid` | `DoubleBuffer` type + `buffer_swap` |
| `timer.resid` | `Timer` type + `timer_new/due/reset/next_due` |
| `textlayout.resid` | `hit_caret`, `wrap_text`, `caret_x_pos`, `str_prefix/suffix` |
| `input.resid` | (stub) event-to-widget hit testing |

## Types

```resid
// layout.resid
type Constraints = { Int minw; Int maxw; Int minh; Int maxh; }
type LayoutNode = { Widget widget; Rect rect; List(LayoutNode) children; }

// focus.resid
type FocusState = { List(Widget) order; Int current; }

// buffers.resid
type DoubleBuffer = { Int front; Int back; Int count; }

// timer.resid
type Timer = { Int id; Int period; Int next; Bool on; }

// paint.resid uses DrawOp from gfx/draw.resid
```

## Functions

```resid
// paint.resid
pub List(DrawOp) paint_widget(Widget w, Rect r)

// layout.resid
pub LayoutNode layout(Widget w, Constraints c)
pub Constraints constraints_all(Int minw, Int maxw, Int minh, Int maxh)
pub List(Widget) widget_order(LayoutNode l)
pub Bool contains(Rect r, Int x, Int y)

// focus.resid
pub FocusState focus_new(List(Widget) order)
pub FocusState focus_next(FocusState f)
pub FocusState focus_prev(FocusState f)
pub Widget focus_current(FocusState f)
pub Bool focus_contains(FocusState f, Widget w, Int i)
pub Bool widget_equal(Widget a, Widget b)  // structural equality

// damage.resid
pub Bool draw_op_equal(DrawOp a, DrawOp b)
pub Bool draw_lists_equal(List(DrawOp) a, List(DrawOp) b)
pub Int first_changed_op(List(DrawOp) old, List(DrawOp) now, Int i)
pub List(Int) changed_ops(List(DrawOp) old, List(DrawOp) now)

// buffers.resid
pub DoubleBuffer buffer_new()
pub DoubleBuffer buffer_swap(DoubleBuffer b)

// timer.resid
pub Timer timer_new(Int id, Int period)
pub Timer timer_reset(Timer t, Int now)
pub Bool timer_due(Timer t, Int now)
pub Int timer_next_due(List(Timer) xs, Int i, Int best)
pub Timer timer_enabled(Timer t, Bool on)

// textlayout.resid
pub Int hit_caret(Str s, Int x)
pub List(Str) wrap_text(Str s, Int width)
pub Int caret_x_pos(Str s, Int idx)
pub Int text_advance(Str s)
```

## Integration (gui.resid)

The event loop in `gui.resid` composes these:

```resid
// Damage tracking
prev_ops = paint_widget(view(model), rect)
new_ops  = paint_widget(view(new_model), rect)
if (!draw_lists_equal(prev_ops, new_ops)) {
    changed = changed_ops(prev_ops, new_ops)
    // rasterize only changed regions
}

// Double buffering
front_handle, back_handle = two shm segments
present(front_handle)
swap(front_handle, back_handle)

// Timers
blink_timer = timer_new(0, 500)  // 500ms caret blink
poll_timeout = timer_next_due([blink_timer], 0, 16)
if (timer_due(blink_timer, now)) { ... }
```
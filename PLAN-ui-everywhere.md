# resid-gui Everywhere — Design Plan

**Status: in progress** (2026-11-15). U0 done; U2 done with the
reference shell in Python rather than Resid (§11); the core of U3 (the
semantics tree and assistive actions) and the hot-restart part of U8 are
done. §11 records what shipped and what each was checked against. This plan
turns resid-gui from a Linux GUI library into a UI framework you write
once and run on every platform. It takes Flutter's *goal*, not its
design: no Flutter widgets, API or look. Read `README.md`,
`../Resid/PLAN-gui.md` (what G0–G8 shipped and why),
`../Resid/PLAN-macos.md` and `../Resid/PLAN-native-modules.md` first.

**Goal**: one Resid program, unchanged, opens the same app on Linux,
macOS and Windows, and later on Android, iOS and the web. The app has
one design language of its own but follows each platform's *behaviors*,
and it keeps every guarantee resid-gui has today: values and pure
functions, no ambient authority, compile-time reduction of whatever is
static, and untrusted input checked before use.

---

## 0. Decisions (asked 2026-11-15)

| Question | Decision | Consequence |
|---|---|---|
| Platform order | **Desktop first**: Linux (shipped), then macOS, then Windows. Mobile and web after. | macOS waits on `../Resid/PLAN-macos.md`. Windows needs a Resid target that no plan covers yet (§7). |
| Look and feel | **Our own design language, the platform's behaviors.** | One visual theme everywhere. Scroll physics, modifier keys, text selection, window controls, menus and dialogs follow the host (§5). |
| Hosting | **Thin host shells**: a small per-platform program (Swift, C#/C++, Kotlin, JS) hosts the Resid core over a narrow, specified protocol. | The Resid side stays pure and libc-free where the OS allows. Each shell is part of the trusted base and is kept small (§2). Linux needs no shell. |
| App model | **Elm plus components**: one model, `update` and `view`, plus reusable components that keep local state as values. | Design spike in U5 (§4). |
| Where the code lives | **Evolve resid-gui** into a portable core and per-platform embedders. | The Wayland and X11 code becomes the Linux embedder. No new repository. |
| Rendering | **CPU first, then GPU and accelerators** behind one display-list interface. | Every new platform starts by showing a CPU-rasterized buffer (§3). |
| Accelerators (GPU, NPU/TPU) | **Both roles**: pluggable rendering backends, and a separate compute capability apps can call. | Two separate pieces of work: `Renderer(R)` and an `accel` capability (§3.3). |
| Text shaping, input methods, accessibility | **In the core design from day one**, implemented progressively. | The embedder protocol carries semantics and text input from v1 (§2.3, §2.4). |
| Audience | **Both, staged**: Resid's own tools first, then third-party developers. | Dogfood apps decide the early widget set (§6, U8). |

## 1. The architecture

Everything above the embedder line is pure, portable Resid. Everything
below it is per platform.

```
            app: App(M) + components
                     │ view
                     ▼
   Widget ──layout──► LayoutTree ──paint──► DrawList ─┐
                          │                           ├─► Frame
                          └──semantics──► SemTree ────┘
   ─────────────────────────── embedder line ────────────────────────────
   Linux:    Resid speaks Wayland/X11 directly (today's backends)
   macOS:    Swift shell (AppKit)            ┐
   Windows:  C#/C++ shell (Win32)            │ Resid Surface Protocol
   Android:  Kotlin shell (later)            │ (§2), the same messages
   iOS:      Swift shell, in-process (later) │ everywhere
   Web:      JS shell, wasm core (later)     ┘
```

The line already exists in code: `src/backend/backend.resid` declares
`Backend(B)`, and `gui.resid`'s loop is written once against it. This
plan widens that behavior (semantics, text input, platform services) and
adds one more instance, the **shell client**, which speaks the protocol
below. Every non-Linux platform is then a shell, not a new Resid backend.

What a frame becomes, which already works this way:

- `paint` is pure, so a frame is a value and damage is a value diff.
- Compile-time reduction folds static screens to literal display lists.
- The knowledge graph can answer "why did this redraw?" because every
  repaint traces back to a model change through pure functions. This is
  for U8 tooling.

## 2. The Resid Surface Protocol (RSP)

A shell is a tiny window server for one app. RSP is specified the way
resid-gui already treats Wayland and X11: a binary wire format with
length-prefixed messages, versioned, with every field bounds-checked on
receipt. **Messages from the shell are untrusted input** to the Resid side,
exactly as Wayland events are today. The Resid side is untrusted input to
the shell.

### 2.1 Transport

| Platform | Transport | Pixels |
|---|---|---|
| macOS, Windows, Android | The shell starts the Resid program as a child process and hands it a connected socket (Unix socket; AF_UNIX on Windows 10+) | Shared memory passed as a descriptor, as with `wl_shm` today |
| iOS | In-process: iOS forbids spawning. The Resid core is a static library, and the "socket" is a pair of in-memory ring buffers with the same message bytes | A buffer both sides map |
| Web | wasm core in a worker; messages over `postMessage` | `SharedArrayBuffer` |

The Resid program connects with the existing `display` capability. Today
`resid_disp_connect_*` finds a compositor; it would also take the shell's
socket from an environment variable, like `WAYLAND_SOCKET`. A program
that never declared `display` cannot reach a shell.

### 2.2 Messages, v1

From the core to the shell:

- `hello(version, app_id)`; `window(title, w, h, resizable, min/max)`
- `attach(buffer_fd, w, h, stride)`; `present(buffer, damage_rects)`
- `cursor(shape)`; `text_input(state)` (§2.4); `semantics(diff)` (§2.3)
- `clipboard_set(mime, bytes)`; `clipboard_get(mime)`
- `menu(model)`: the macOS menu bar, Windows menus, and context menus
  where the platform draws them
- `dialog(kind, options)`: open/save file, alert. A file the user picks is
  **granted to the app**: the shell returns an open descriptor, never a
  path the app could reuse (§5.2)

From the shell to the core:

- `configure(w, h, scale, insets, theme_hints)`; `frame_done`; `release(buffer)`
- `pointer(kind, x, y, buttons, pressure, pointer_id)`: mouse, touch and
  pen are one stream
- `scroll(dx, dy, phase, momentum)`: phases let the core follow platform
  physics (§5.1)
- `key(code, down, modifiers)`; `text(commit)`; `preedit(text, cursor)`
- `lifecycle(state)`: visible, hidden, suspended, close requested
- `a11y_action(node, action)`: the screen reader activating a node
- `clipboard_data`, `dialog_result(fd | cancelled)`, `menu_activated(id)`

Keys use one code space: today's evdev codes, which each shell maps
to. Text never comes from codes: it comes from `text`/`preedit`, so input
methods, dead keys and layouts belong to the platform.

### 2.3 The semantics tree

Accessibility is designed in now, not added on later. Next to `paint`, the
core runs a pure `semantics(Widget, LayoutTree) -> SemTree`: role,
label, value, state (checked, focused, disabled), bounds, actions and
reading order for every widget. Like the display list it is a value, so
updates are diffs. Each embedder maps it to the platform's accessibility
API:

| Platform | Accessibility API |
|---|---|
| Linux | AT-SPI over D-Bus, spoken in Resid like Wayland is (a D-Bus wire client, §7) |
| macOS | NSAccessibility, in the shell |
| Windows | UI Automation, in the shell |
| Android, iOS, web | AccessibilityNodeInfo, UIAccessibility, ARIA in a hidden DOM |

The tree also drives automated UI tests and the U8 inspector.

### 2.4 Text input

The core owns the text and the caret. The platform owns *how* text is
typed. The core sends `text_input(state)`: whether an editable field has
focus, its surrounding text, selection, caret rectangle (where the input
method places its candidate window) and kind (plain, password, number,
email). The shell answers with `preedit` and `text` commits. On Linux the
same model maps to Wayland's `text-input-v3` and, under X11, to IBus over
D-Bus.

## 3. Rendering

### 3.1 CPU first, everywhere

Every embedder starts with today's pure-Resid rasterizer writing into a
shared buffer the shell shows: a `CALayer`/`IOSurface` on macOS, a DIB
section or DXGI swap chain on Windows. Showing a buffer is the one thing
every platform can do, so a new platform shows correct pixels on day one.
Measured today (`../Resid/PLAN-gui.md` §7.1): a full 1080p frame is about
2 ms, and an ordinary frame redraws only its damage.

### 3.2 `Renderer(R)`: the pluggable backend

The rasterizer moves behind a behavior:

```resid
behavior Renderer(R) {
    R rd_draw(R r, Frame fr, List(Rect) damage);   // damage is a hint
    Bool rd_supports(R r, DrawOpKind k);
}
```

Instances, in order:

1. `CpuRaster`: today's code.
2. GPU, two possible routes, chosen per platform when we get there:
   - **The shell renders**: the core sends the display list itself over RSP
     and the shell draws it with Metal or Direct3D. This is the natural
     route on shell platforms, since the shell already holds the device.
   - **Resid renders**: a `gpu` capability with Vulkan/DRM ioctls spoken
     in Resid (`../Resid/PLAN-gui.md` §8). This is the Linux route, where
     there is no shell.
3. Other accelerators through the same interface where they fit.

### 3.3 NPU/TPU: two roles, kept apart

- **Rendering.** NPUs are poor rasterizers. Where they do help is
  per-pixel ML work: upscaling, blur, background removal. These become
  optional `DrawOp`s (`OpEffect(kind, rect)`) that a renderer can run on an
  accelerator and that `CpuRaster` runs slowly but correctly. The output
  is the same either way, which keeps golden-image tests meaningful.
- **Compute for apps.** A new `accel` capability for tensor work: on
  Linux the kernel's `/dev/accel` and DRM; on shells CoreML, DirectML or
  NNAPI. It sits in Resid core, beside `device`, with the same
  confinement rules. This is a separate plan in `../Resid` once the
  rendering interface has settled. It is listed here so the widget model
  and the capability names leave room for it.

## 4. The app model: Elm plus components

`App(M)` stays the entry point. Components are for state that the app
should not have to carry: a text field's undo history, a list's scroll
position, a dropdown's open state.

The existing `UiState` (focus, caret, selection) is already framework-
owned local state. Components generalize it. The constraint is that
Resid has no dynamic types and no closures in the widget tree, because
closures can't be compared and equality powers damage. Two candidate
designs, settled by a U5 spike:

- **(A) Compile-time composition (preferred).** A component is a behavior
  `Component(S, P)` with `init(P) -> S`, `update(S, P, Event) -> (S,
  List(Msg))` and `view(S, P) -> Widget`. Behaviors are instantiated at
  compile time, so a component's state type is known statically and the
  framework stores it in a generated sum type. Reduction then folds what
  is static.
- **(B) Keyed state store.** State held by the framework under the
  widget's key path, as serialized bytes (`resid-serial`). Fully dynamic,
  but it pays an encode and decode per event.

Either way, components are keyed (`Keyed(k, w)`) so state follows a
widget when lists reorder, and a component's messages bubble to `update`
as values.

## 5. Our look, the platform's behaviors

### 5.1 Behaviors we follow per platform

- Scroll physics: momentum curves and overscroll (macOS and iOS bounce;
  Windows and Linux clamp), driven by `scroll` phases from the shell.
- The primary modifier (Cmd vs Ctrl), standard shortcuts, word-movement
  keys.
- Text selection: double and triple click, and touch handles on mobile.
- Window chrome: native title bars through the shell; client-side
  decorations on Wayland when the compositor asks for them.
- Menus: the macOS global menu bar, native context menus where expected.
- Dialogs: native file pickers and alerts (§5.2).
- Theme hints: light/dark, accent color, reduced motion, text scale. Our
  design language reads them and does not copy the platform's look.

These live in one place, a pure `Platform` value (`MacBehaviors`,
`WinBehaviors`, …) reported in `hello`/`configure` and passed to
layout and input. They can be tested on any host, and a developer can
preview another platform's behavior on Linux.

### 5.2 Capabilities become platform permissions

This is where Resid gets ahead of other cross-platform frameworks:

- The compiler knows every capability an app reaches transitively. A
  build step turns `@requires(...)` into the macOS entitlements, the
  Windows package manifest, and later the Android manifest and iOS
  `Info.plist`. The store listing then matches the code.
- Files arrive as **grants**: a file the user picks in a native dialog
  comes back as a descriptor bound to that one file. An app can edit a
  document it was handed without `filesystem` at all, which matches how
  the macOS sandbox and Android's storage access already work.

### 5.3 The design language

One theme, our own: type scale, spacing, color tokens, motion curves and
focus rings, defined as Resid values so a theme is data and folds at
compile time. It is not a copy of Material, Cupertino or Fluent. Design
work happens in U5, with the dogfood apps as its first test.

## 6. Widgets and features to reach "real app" level

In addition to what ships today (Text, Button, Checkbox, TextInput, Slider,
Row, Column, Stack, Padding, Align, Scroll, Rows, Bitmap, Spacer):

- **Text**: multi-line editing, rich text runs, bidi (UAX #9), line
  breaking (UAX #14), OpenType shaping (GSUB/GPOS) in pure Resid, font
  fallback chains, and system fonts through the shell or `filesystem`.
  `../Resid/PLAN-gui.md` §8 promised text runs a script/direction field
  from v1, but `OpText` has none yet; U0 adds it.
- **Layout**: flex weights, wrap, grid, horizontal and 2-D scrolling,
  overlays and popovers, safe-area insets.
- **Interaction**: gestures (tap, drag, pinch, long press), drag and drop,
  context menus, tooltips, keyboard focus traversal beyond tree order.
- **Motion**: animations as pure functions of time,
  `animate(from, to, curve, t0, now)`. The loop's existing timers drive
  them, and `reduced motion` turns them into instant changes.
- **Navigation**: stacks of screens, tabs, dialogs, sheets.
- **Multiple windows**: one `Backend` value per window, with one RSP
  connection carrying several surfaces.

## 7. What Resid core needs

None of these live here, but each is a precondition:

| Need | For | Status |
|---|---|---|
| macOS target with `display` allowed for RSP (sockets and shared memory only) | U6 | `PLAN-macos.md` refuses `display` on macOS this release. RSP needs no Cocoa in Resid, only a socket, which makes lifting the refusal small. |
| Windows target | U7 | No plan exists. This is a compiler and runtime project the size of `PLAN-macos.md` (kernel32/ntdll instead of libSystem). |
| A D-Bus wire client, under `display` or a new family | U3 (AT-SPI), U4 (IBus) | Not started. Pure protocol work, like X11. |
| `gpu` and `accel` capabilities | U9, U10 | Sketched in `PLAN-gui.md` §8 only. |
| Native modules without fork | iOS | Native modules spawn a process per call, which iOS forbids. iOS would need pure-Resid font and image decoders, or the shell doing that work. |
| wasm32 target and a browser runtime | Web | Not planned. |

## 8. Phases

Each phase ends with its tests green, documentation, and a commit, as in
`PLAN-gui.md`.

| Phase | Work | Exit criterion |
|---|---|---|
| U0 | This plan reviewed; RSP v1 written as a spec (`docs/rsp.md`) with every message, field and limit; `SemTree` and `text_input` types defined | spec reviewed; types compile |
| U1 | Core/embedder split: `src/core/` (app, widgets, layout, paint, semantics) and `src/embed/linux/` (today's Wayland and X11). No behavior change | `tests/run.sh` green; goldens unchanged byte for byte |
| U2 | RSP client as a `Backend(B)` instance, and a **reference shell in Resid** that runs on Linux and forwards to Wayland/X11, plus a fake shell for tests (like the fake X server) | every example runs through the reference shell with identical goldens; hostile-shell tests (oversized, truncated, out-of-order messages) all end in a clean error |
| U3 | Semantics tree for every widget; AT-SPI on Linux | Orca reads and operates the counter, todo and gallery examples |
| U4 | Text: bidi, line breaking, shaping, fallback; text input over `text-input-v3` and IBus | Arabic, Hebrew and Devanagari goldens; an IBus/fcitx input method types CJK into `TextInput` |
| U5 | Components (spike A vs B, then build one); `Platform` behaviors; design language v1; widgets from §6 needed by the dogfood apps | the spike's numbers recorded here; the gallery runs under each `Platform` value |
| U6 | macOS shell (Swift, AppKit; CPU buffer through `IOSurface`), entitlements from capabilities | the examples and one dogfood app run unchanged on macOS arm64 and x86_64; VoiceOver works |
| U7 | Windows: Resid target (separate plan in `../Resid`), then the shell (Win32, DXGI, UI Automation) | the same apps run unchanged on Windows; Narrator works |
| U8 | Tooling: hot restart that keeps state (serialize `M`, recompile, resume), inspector over `SemTree` and the knowledge graph ("why did this redraw?"); dogfood apps: `resid-why` viewer, debugger UI, registry client | a model survives a code change across a restart; the dogfood apps are used day to day |
| U9 | `Renderer(R)`; GPU through the shell on macOS (Metal) and Windows (D3D), and through `gpu` on Linux (Vulkan) | GPU output equals the CPU goldens within a stated tolerance; a 4K frame at 120 Hz |
| U10 | Accelerators: `OpEffect` on NPU where present; `accel` capability plan in `../Resid` | effects equal on CPU and NPU; `accel` plan approved |
| Later | Android (Kotlin shell, child process), web (wasm core, JS shell), iOS (in-process, no native modules) | each a plan of its own once desktop is stable |

U1 and U2 are the ones to start with: after them, every new platform is
"write a shell", and U3 and U4 can proceed on Linux in parallel with the
macOS port in `../Resid`.

## 9. Risks

- **Shells grow.** Every feature that is "easier in Swift" makes the
  trusted base larger and the platforms drift apart. Rule: a shell only
  translates RSP; it decides nothing an app could observe. Each shell has
  a line budget recorded here.
- **Text is huge.** OpenType shaping and bidi in pure Resid are each
  months of work. U4 can ship with shaping for a stated set of scripts and
  grow from there.
- **CPU rendering on large, fast screens.** 4K at 120 Hz with animations
  will exceed the CPU budget before U9. Damage tracking hides it for
  ordinary UIs. Animations are where it will show.
- **Windows has no Resid target.** U7 is gated on a compiler and runtime
  port that is not planned yet.
- **Component design.** If neither spike design fits Resid's type system
  cleanly, apps keep nested Elm with helper sugar, which is workable but
  verbose.

## 10. Security checklist (every phase)

- No new ambient authority: RSP is reached only under `display`; files
  come in as grants; `gpu` and `accel` are capabilities like any other.
- Everything from a shell is untrusted: sizes, ids, rectangles, text and
  descriptors are bounds-checked, and a malformed message ends the
  connection with an error. U2's hostile shell tests this the way
  `tests/evil.sh` tests the font module.
- The shell treats the core as untrusted too: buffer sizes, damage
  rectangles and semantics trees are validated before the shell touches
  platform APIs.
- Generated permission manifests are checked against the compiler's
  capability set in CI, so a manifest can never claim less than the code
  uses.

## 11. Progress

| Item | What shipped | Checked by |
|---|---|---|
| U0 | `docs/rsp.md` (RSP v1); `src/rsp/wire.resid`, a bounds-checked codec for all 31 messages; the `OpText` direction field is **not** done yet | round trips of every message; hostile input (overruns, invalid UTF-8, non-zero padding, wrong direction, unknown opcodes) |
| U2 | `src/rsp/client.resid`, `Backend(Rsp)`; `gui_run` prefers a shell when `RSP_SOCKET` names one; `tools/rsp_shell.py`, a headless reference shell written from the spec alone | `tests/fake_shell.resid`: a counter driven by pointer and by screen reader through the whole loop, and a hostile shell; the compiled counter under the Python shell, frames read back from the shared buffers |
| U3 core | `src/ui/semantics.resid` (`semantics`, `sem_diff`); `Assist(node, action)` events; `be_semantics` on every backend (a no-op on Wayland and X11 until AT-SPI) | 5 tests; the Python shell's screen-reader readout |
| U8 part | `src/dev/timeline.resid` (event log as Resid expressions, `replay`, `models`, `test_source`); `src/dev/hot.resid` (`gui_run_dev`); `examples/dev_counter.resid` | 5 tests; three clicks, restart: count 3; rebuilt with "+1" adding 10, the same log: count 30 |
| U5 part (visual pass) | `src/gfx/shapes.resid` (antialiased rounded fills, `OpRound`); `src/ui/theme.resid` (light and dark themes with the mockups' tokens; light in use); widgets restyled; `src/gfx/ttf.resid` + `src/gfx/fontfile.resid`, TrueType (`glyf`) rasterized in pure Resid into the native module's atlas format; `examples/tasks.resid` | shapes and TrueType unit tests; goldens regenerated and inspected; `tests/ttf_fonts.resid`: 4 installed fonts, 300 corrupted fonts never crash; the to-do example under the Python shell |
| §5.2 part | `tools/caps_manifest.py`: macOS, Windows and Android manifests from `main`'s capabilities | self-test; reports `filesystem` as having no store entitlement |

Changes in Resid (branch `ccr-dabcdde2-4pf7mc`):

- `rt_disp_send` passes `MSG_NOSIGNAL`. Before, a window server or shell
  that went away killed the program with SIGPIPE (found by the hostile
  shell test, exit 141). Conformance case `display_peer_gone`.
- `resid_disp_connect_rsp()`: the descriptor `RSP_SOCKET` names, under
  `display`.

Deviations from this plan, on purpose:

- **The reference shell is Python, not Resid.** A shell must map the
  buffers the core passes, and Resid has no builtin that maps a received
  descriptor. Python also shows that the spec stands on its own: its
  author needs nothing from the core.
- **Hot restart replays events instead of serializing the model.** It
  needs no `Serial(M)` instance and recomputes the state with the new
  code. The cost: timers (`FrameTick`) are not logged, and a change to
  what an event means changes the restored state.
- **TrueType in pure Resid instead of the native module.** Native
  modules fork per call (impossible on iOS) and their committed IR needs
  a matching LLVM. CFF outlines (`.otf`, e.g. Inter) are refused for now.
- **U1's directory split is not done.** The seam it aims for is
  `Backend(B)`, which already exists; moving files would only churn
  imports.

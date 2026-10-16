# `native/` — the font and image modules

Two optional native modules (Resid spec §47) for the work Resid has no
library for: rasterizing TrueType outlines (`stb_truetype`) and decoding
PNG, JPEG, BMP, GIF and TGA (`stb_image`). Both are C compiled to
freestanding LLVM IR. Each call runs in a fresh, seccomp-confined copy of
the program that can do nothing but compute and answer, and the answer is
checked in Resid before it is used. Nothing here runs per frame: a program
makes its atlases and decodes its images once, at start-up.

| Path | What it is |
|---|---|
| `native/build.sh` | rebuilds both `.ll` artifacts and checks they reference only their own symbols, intrinsics and `mem*` |
| `native/font/font.c`, `font.ll` | `font_atlas`: a TrueType file to a glyph atlas |
| `native/font/font.resid` | the `@link` binding, `font_from_ttf`, `fonts_from_ttf` |
| `native/image/image.c`, `image.ll` | `image_decode`: an encoded image to pixels |
| `native/image/image.resid` | the `@link` binding, `image_from_bytes` |

The artifacts are committed and pinned by SHA-256 in `resid.toml`.
`native/build.sh` prints the hashes after a rebuild.

## Building a program that uses them

```bash
residc examples/fonts.resid -native font=native/font/font.ll -o fonts
residc examples/image_viewer.resid -native image=native/image/image.ll -o viewer
```

The program grants the module's family, plus whatever it needs to get the
bytes:

```resid
@requires(display, clock(readonly), args, filesystem(readonly), native_font)
Int main() { ... }
```

## Fonts

```resid
@requires(native_font) pub Result(Font, Str) font_from_ttf(List(Int) ttf, Int px, Int scale)
@requires(native_font) pub List(Font) fonts_from_ttf(List(Int) ttf, Int px)
```

`px` is the line height in logical pixels; the atlas is rasterized at
`px * scale` device pixels so text is sharp at that scale.
`fonts_from_ttf` makes scales 1 and 2, which `gui_run_with` picks from as
the window's scale changes (a scale with no atlas of its own uses one that
divides it, with pixels repeated).

The atlas holds the 95 printable ASCII characters (others draw as `?`),
their advances and bitmap boxes, and up to 1024 kerning pairs. The
module refuses files that are not fonts (status 1), sizes outside 4 to
256 pixels (2) and atlases that would not fit its 1 MB answer (3);
`font_parse` turns each into an `Err`, and checks every glyph's box lies
inside the atlas before anything is drawn.

Text is drawn with each pixel's coverage blended over what is under it.
Layout, painting, hit testing and caret placement all measure with the
same font, so proportional text and the caret agree.

## Images

```resid
@requires(native_image) pub Result(Image, Str) image_from_bytes(List(Int) data)
```

Up to 16 MB of encoded data and 4096 pixels a side, with the decoded
pixels within the 16 MB answer. The result is an `Image` (blue, green,
red, alpha bytes, straight alpha) to show with `Bitmap(im.w, im.h,
im.px)`; transparent pixels blend over the window.

## The stack

A call carries 16 MB fixed-size values inline (the font file in, the
decoded image out). Make these calls on the main thread, in `main` or
what it calls directly, not in a `spawn` region or a `test` block, whose
stacks are smaller. That is why `tests/native.resid` is a program that
`tests/run.sh` runs rather than a test file.

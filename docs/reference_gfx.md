# `src/gfx/` — pixels

Pure Resid 2D graphics in device pixels, four bytes per pixel in
blue-green-red-alpha order (ARGB32 little-endian, what both window
servers read).

| Module | Purpose |
|---|---|
| `color.resid` | `Color`, `Rect`, rectangle algebra and rectangle lists |
| `canvas.resid` | `Canvas`: a pixel list written in place |
| `draw.resid` | `DrawOp`, the display-list instruction |
| `raster.resid` | display list to pixels, by region, at a scale |
| `text.resid` | text drawn into a canvas, bitmap or atlas |
| `font.resid` | `Font`: the built-in bitmap font or a glyph atlas; metrics |
| `image.resid` | `Image`, alpha-blended blitting, the native decoder's answer |
| `png.resid` | a PNG encoder for golden-image tests |

## Types

```resid
pub type Color = { Int b; Int g; Int r; Int a; };
pub type Rect = { Int x; Int y; Int w; Int h; };
pub type Canvas = { Int w; Int h; List(Int) px; };
pub type DrawOp = OpFill(Rect, Color) | OpText(Int, Int, Str, Color)
                | OpImage(Int, Int, Int, Int, List(Int)) | OpClipPush(Rect) | OpClipPop;
pub type Image = { Int w; Int h; List(Int) px; };
pub type Font = { Int scale; Int px; Int ascent; Int line; List(Int) glyphs; Map(Int, Int) kern;
                  Int aw; Int ah; List(Int) atlas; };
pub type Frame = { List(DrawOp) ops; Int scale; Font font; };
pub type Png = { List(Int) bytes; };
```

## Rectangles

```resid
pub Rect rect_intersect(Rect a, Rect b)
pub Rect rect_union(Rect a, Rect b)
pub Bool rect_is_empty(Rect r)
pub Bool rect_contains(Rect r, Int x, Int y)
pub List(Rect) rects_add(List(Rect) xs, Rect r)       // merge what touches
pub List(Rect) rects_merge(List(Rect) xs, List(Rect) ys)
pub List(Rect) rects_clip(List(Rect) xs, Rect c)
```

## Canvas

```resid
pub Canvas canvas_new(Int w, Int h)
pub Canvas fill_rect(Canvas c, Rect r, Color col)
pub Canvas fill_rect_clip(Canvas c, Rect r, Color col, Rect clip)
pub Canvas set_pixel_clip(Canvas c, Int x, Int y, Color col, Rect clip)
pub Color pixel_at(Canvas c, Int x, Int y)
pub List(Int) canvas_rows(Canvas c, Int y0, Int y1)
```

Writes thread the pixel list through tail calls and replace elements with
`with`, which the compiler does in place when the old list is dead, so a
fill costs its area and not the canvas.

## Rasterizing

```resid
pub Canvas raster_frame_rect(Frame fr, Rect r, Color bg)
pub Canvas raster_rect(List(DrawOp) ops, Rect r, Color bg, Int scale)
pub Canvas raster_region_scaled(Canvas c, List(DrawOp) ops, Rect region, Color bg, Int scale)
pub Canvas raster_region(Canvas c, List(DrawOp) ops, Rect region, Color bg)
pub Canvas rasterize_frame(List(DrawOp) ops, Int w, Int h)
pub Color background()
```

Ops are logical pixels; `scale` device pixels make one logical pixel, so
at scale 2 a fill doubles and each font pixel is a 2x2 block.
`raster_rect` draws only device rectangle `r` into a canvas of its own
(pixel (0, 0) is device (`r.x`, `r.y`)), which is what a backend uploads.
Every op is clipped to the region and to the clip stack.

## Fonts

```resid
pub Font font_builtin()
pub Result(Font, Str) font_parse(List(Int) answer, Int scale)
pub Int text_width_in(Font f, Str s)          // logical pixels
pub Int text_height_in(Font f)
pub Int index_at_x(Font f, Str s, Int x)      // the caret position nearest x
pub Canvas render_text_font(Canvas c, Int x, Int y, Str s, Color col, Rect clip, Int scale, Font f)
pub Canvas blend_pixel_clip(Canvas c, Int x, Int y, Color col, Int a, Rect clip)
```

An atlas's metrics are device pixels at the scale it was made for; the
`_in` measures divide them into logical pixels for layout. `font_parse`
checks the native module's answer (docs/reference_native.md).

## Images

```resid
pub Canvas blit_clip(Canvas c, Image im, Int x, Int y, Rect clip)
pub Canvas blit_scaled(Canvas c, Image im, Int x, Int y, Rect clip, Int k)
pub Result(Image, Str) image_parse(List(Int) answer)
```

Pixels are laid over the canvas by their alpha.

## PNG

```resid
pub Png canvas_to_png(Canvas c)
pub Int crc32(List(Int) data)
pub Bool png_equal(Png a, Png b)
```

8-bit RGBA, filter 0, stored deflate blocks: exact pixels, so a golden
test compares hashes. `tests/golden.resid` holds the hashes;
`tests/golden.sh` regenerates them and writes the images to
`tests/golden/`.

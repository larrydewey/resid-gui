# `src/gfx/` — Graphics Primitives

Pure Resid 2D graphics: canvas, draw operations, rasterization, text, fonts, images.

## Modules

| Module | Purpose |
|--------|---------|
| `color.resid` | `Color`, `Rect`, premultiplied ARGB32 helpers |
| `canvas.resid` | `Canvas(W, H)` linear builder over `List(Int)` pixels |
| `draw.resid` | `DrawOp` sum type: `OpFill`, `OpText`, `OpClipPush`, `OpClipPop` |
| `raster.resid` | `rasterize_ops(ops, w, h) -> List(Int)` pixels |
| `font.resid` | Built-in 8×16 bitmap font + `FontAtlas` native unpacking |
| `text.resid` | `render_text`, `render_glyph`, `draw_bits` |
| `image.resid` | `Image` type, `blit_at`, native `DecodedImage` unpacking |
| `png.resid` | `canvas_to_png` encoder (for golden-image tests) |

## Core Types

```resid
// color.resid
type Color = { Int r; Int g; Int b; Int a; }  // 0-255, premultiplied
type Rect  = { Int x; Int y; Int w; Int h; }

// canvas.resid
type Canvas = { Int w; Int h; List(Int) px; }  // ARGB32, stride = w*4

// draw.resid
type DrawOp = OpFill(Rect, Color)
            | OpText(Int x, Int y, Str text, Color)
            | OpClipPush(Rect)
            | OpClipPop

// font.resid
type Glyph = { List(Int) rows; }  // 16 rows of 8-bit bitmaps
type FontAtlas = { Int w; Int h; Int glyph_count;
                   List(Int) advances; List(Int) lsbs;
                   List(Int) x0s; List(Int) y0s; List(Int) x1s;
                   Int kerning_count; List(Int) kern_g1; List(Int) kern_g2; List(Int) kern_adv;
                   List(Int) atlas; }  // alpha pixels (w*h)

// image.resid
type Image = { Int w; Int h; List(Int) px; }  // premultiplied BGRA
type DecodedImage = { Int w; Int h; Int channels; List(Int) pixels; }
```

## Functions

```resid
// canvas.resid
pub Canvas canvas_new(Int w, Int h)
pub Canvas fill_rect(Canvas c, Rect r, Color col)
pub List(Int) canvas_fill(Int val, Int n, List(Int) acc)
pub List(Int) set_byte(List(Int) px, Int i, Int val)
pub Canvas finish(Canvas c)

// raster.resid
pub List(Int) rasterize_ops(List(DrawOp) ops, Int w, Int h)

// font.resid
pub List(Int) font_data()
pub List(Int) glyph_rows(Int code)  // 16 bytes
pub Glyph glyph_for(Int code)
pub Int text_width(Str s)
pub Int text_height()
pub FontAtlas unpack_font_atlas(Bytes(4194304) packed, Int len)

// text.resid
pub Canvas render_text(Canvas c, Int x0, Int y0, Str s, Color col, Int i, Int cx)
Canvas render_glyph(Canvas c, Int x0, Int y0, Int code, Color col, Int row)
Canvas draw_bits(Canvas c, Int x, Int y, Int bits, Color col, Int bit)

// image.resid
pub Image image_new(Int w, Int h)
pub Canvas blit_image(Canvas c, Image im, Int x0, Int y0, Int i, Int j)
pub Canvas blit_at(Canvas c, Image im, Int x0, Int y0)
pub DecodedImage unpack_image(Bytes(16777216) packed, Int len)
pub Image decoded_to_image(DecodedImage d)

// png.resid
pub Png canvas_to_png(Canvas c)
pub Bool png_equal(Png a, Png b)
```

## Native Font / Image (Optional)

```resid
// Requires @requires(native_font) and -native font_atlas=font.ll
@link("font_atlas") Bytes(4194304) font_atlas_native(Bytes(16777216) font, Int font_len, Str(4096) chars, Int px_size) {}

// Requires @requires(native_image) and -native image_decode=image.ll
@link("image_decode") Bytes(16777216) image_decode_native(Bytes(16777216) data, Int len) {}
```

Results are unpacked with `unpack_font_atlas` / `unpack_image` into structured values.
/* font.c - the resid-gui-font native module: a TrueType font to a glyph
 * atlas, with stb_truetype (public domain), compiled freestanding.
 *
 * Resid binding (spec §47):
 *
 *   @link("font") Bytes(1048576) font_atlas(Bytes(16777216) font, Int len, Int px) {}
 *
 * which is, in C, font_atlas(font, cap, len, px, out, ocap). The module
 * references nothing but its own symbols, LLVM intrinsics and mem*: no C
 * library, so the maths stb_truetype asks for is defined here, and memory
 * comes from a bump allocator over a static arena (a call is a fresh
 * process, so nothing is ever freed).
 *
 * The answer, all integers 32-bit little-endian:
 *
 *   0    magic "RGF1"
 *   4    status: 0 ok, 1 not a font, 2 px out of range, 3 atlas too big
 *   8    ascent, in pixels, from the top of a line to the baseline
 *   12   line height in pixels (ascent - descent + line gap)
 *   16   atlas width, 20 atlas height
 *   24   glyph count (95: the printable ASCII characters 32 to 126)
 *   28   kerning pair count (at most KERN_MAX)
 *   32   95 glyph records of 7 words: advance, x offset and y offset of the
 *        bitmap from the pen (y from the top of the line), bitmap width
 *        and height, and its x and y in the atlas
 *   ...  KERN_MAX kerning records of 4 bytes: first and second character,
 *        then the adjustment as a signed 16-bit value
 *   ...  the atlas, one coverage byte (0 to 255) per pixel, row by row
 */

#include <stdint.h>
#include <stddef.h>

#define OUT_CAP     1048576
#define GLYPHS      95
#define KERN_MAX    1024
#define HEADER      32
#define RECORD      28
#define ATLAS_AT    (HEADER + GLYPHS * RECORD + KERN_MAX * 4)
#define ATLAS_W     512
#define ARENA       (8 * 1024 * 1024)

void *memcpy(void *d, const void *s, size_t n);
void *memset(void *d, int c, size_t n);

/* ---- freestanding helpers stb_truetype needs ------------------------ */

static unsigned char arena[ARENA];
static size_t arena_used;

static void *bump(size_t n) {
    n = (n + 15) & ~(size_t)15;
    if (n > ARENA - arena_used) return 0;
    void *p = &arena[arena_used];
    arena_used += n;
    return p;
}

/* A hostile font can make any of these NaN or huge, and converting such a
 * double to an integer is undefined in C: every conversion goes through
 * toi, which maps NaN to 0 and clamps to +-2^31 (a coordinate that large
 * fails the module's own size checks). */
static int64_t toi(double x) {
    if (x != x) return 0;
    if (x > 2147483647.0) return 2147483647;
    if (x < -2147483648.0) return -2147483648LL;
    return (int64_t)x;
}
static double ffloor(double x) { double t = (double)toi(x); return t > x ? t - 1 : t; }
static double fceil(double x) { double t = (double)toi(x); return t < x ? t + 1 : t; }
static int ifloor(double x) { return (int)toi(ffloor(x)); }
static int iceil(double x) { return (int)toi(fceil(x)); }
static double ffabs(double x) { return x < 0 ? -x : x; }
static double fsqrt(double x) { return __builtin_sqrt(x); }
static double ffmod(double x, double y) { return x - (double)toi(x / y) * y; }

/* exp and log by range reduction and series: used only by the cubic
 * solver of signed-distance fields, which this module never asks for, but
 * stb_truetype must still link. */
static double fexp(double x) {
    int k = (int)toi(x / 0.6931471805599453);
    double r = x - k * 0.6931471805599453, term = 1, sum = 1;
    for (int i = 1; i < 20; i++) { term *= r / i; sum += term; }
    while (k > 0) { sum *= 2; k--; }
    while (k < 0) { sum /= 2; k++; }
    return sum;
}
static double flog(double x) {
    if (x <= 0) return -1e300;
    int k = 0;
    while (x > 2) { x /= 2; k++; }
    while (x < 0.5) { x *= 2; k--; }
    double y = (x - 1) / (x + 1), y2 = y * y, term = y, sum = 0;
    for (int i = 1; i < 40; i += 2) { sum += term / i; term *= y2; }
    return 2 * sum + k * 0.6931471805599453;
}
static double fpow(double x, double y) { return x <= 0 ? 0 : fexp(y * flog(x)); }
static double fcos(double x) {
    x = ffmod(x, 6.283185307179586);
    double term = 1, sum = 1, x2 = x * x;
    for (int i = 1; i < 20; i++) { term *= -x2 / ((2 * i - 1) * (2 * i)); sum += term; }
    return sum;
}
static double facos(double x) {
    /* Newton's method on cos(t) = x from the middle of [0, pi]. */
    if (x >= 1) return 0;
    if (x <= -1) return 3.141592653589793;
    double t = 1.5707963267948966;
    for (int i = 0; i < 30; i++) {
        double s = fsqrt(1 - fcos(t) * fcos(t));
        if (s < 1e-12) break;
        t += (fcos(t) - x) / s;
    }
    return t;
}
static size_t fstrlen(const char *s) { size_t n = 0; while (s[n]) n++; return n; }

#define STBTT_ifloor(x)     ifloor(x)
#define STBTT_iceil(x)      iceil(x)
#define STBTT_sqrt(x)       fsqrt(x)
#define STBTT_pow(x, y)     fpow(x, y)
#define STBTT_fmod(x, y)    ffmod(x, y)
#define STBTT_cos(x)        fcos(x)
#define STBTT_acos(x)       facos(x)
#define STBTT_fabs(x)       ffabs(x)
#define STBTT_malloc(x, u)  ((void)(u), bump(x))
#define STBTT_free(x, u)    ((void)(u), (void)(x))
#define STBTT_assert(x)     ((void)0)
#define STBTT_strlen(x)     fstrlen(x)
#define STBTT_memcpy        memcpy
#define STBTT_memset        memset
#define STBTT_STATIC
#define STB_TRUETYPE_IMPLEMENTATION
#include "../../vendor/stb_truetype.h"

/* ---- the module ---------------------------------------------------- */

static void put32(uint8_t *out, int64_t at, int32_t v) {
    out[at] = (uint8_t)v; out[at + 1] = (uint8_t)(v >> 8);
    out[at + 2] = (uint8_t)(v >> 16); out[at + 3] = (uint8_t)(v >> 24);
}

static void fail(uint8_t *out, int32_t status) {
    put32(out, 0, 0x31464752);
    put32(out, 4, status);
}

void font_atlas(const uint8_t *font, int64_t cap, int64_t len, int64_t px, uint8_t *out, int64_t ocap) {
    if (ocap < ATLAS_AT) return;
    if (px < 4 || px > 256) { fail(out, 2); return; }
    if (len <= 0 || len > cap) { fail(out, 1); return; }
    stbtt_fontinfo info;
    stbtt__lo = font;
    stbtt__hi = font + len;
    int off = stbtt_GetFontOffsetForIndex(font, 0);
    if (off < 0 || off >= len || !stbtt_InitFont(&info, font, off)) { fail(out, 1); return; }
    float scale = stbtt_ScaleForPixelHeight(&info, (float)px);
    int ascent, descent, gap;
    stbtt_GetFontVMetrics(&info, &ascent, &descent, &gap);
    if (!(scale > 0 && scale < 65536)) { fail(out, 1); return; }
    int asc = iceil(ascent * scale);
    int line = asc + iceil(-descent * scale) + (int)toi(gap * scale);

    /* Pack the glyphs left to right in rows ATLAS_W wide. */
    int64_t room = (ocap < OUT_CAP ? ocap : OUT_CAP) - ATLAS_AT;
    int x = 0, y = 0, row = 0;
    for (int i = 0; i < GLYPHS; i++) {
        int c = 32 + i, adv, lsb, x0, y0, x1, y1;
        stbtt_GetCodepointHMetrics(&info, c, &adv, &lsb);
        stbtt_GetCodepointBitmapBox(&info, c, scale, scale, &x0, &y0, &x1, &y1);
        int w = x1 - x0, h = y1 - y0;
        if (w < 0) w = 0;
        if (h < 0) h = 0;
        if (w > ATLAS_W) { fail(out, 3); return; }
        if (x + w > ATLAS_W) { x = 0; y += row + 1; row = 0; }
        if ((int64_t)(y + h) * ATLAS_W > room) { fail(out, 3); return; }
        int64_t r = HEADER + (int64_t)i * RECORD;
        put32(out, r, (int32_t)iceil(adv * scale));
        put32(out, r + 4, x0);
        put32(out, r + 8, asc + y0);
        put32(out, r + 12, w);
        put32(out, r + 16, h);
        put32(out, r + 20, x);
        put32(out, r + 24, y);
        if (w > 0 && h > 0)
            stbtt_MakeCodepointBitmap(&info, out + ATLAS_AT + (int64_t)y * ATLAS_W + x, w, h, ATLAS_W, scale, scale, c);
        x += w + 1;
        if (h > row) row = h;
    }
    int atlas_h = y + row + 1;

    int kerns = 0;
    for (int a = 32; a <= 126; a++)
        for (int b = 32; b <= 126 && kerns < KERN_MAX; b++) {
            int k = (int)toi(stbtt_GetCodepointKernAdvance(&info, a, b) * scale);
            if (k == 0) continue;
            int64_t at = HEADER + GLYPHS * RECORD + (int64_t)kerns * 4;
            out[at] = (uint8_t)a; out[at + 1] = (uint8_t)b;
            out[at + 2] = (uint8_t)k; out[at + 3] = (uint8_t)(k >> 8);
            kerns++;
        }

    put32(out, 0, 0x31464752);
    put32(out, 4, 0);
    put32(out, 8, asc);
    put32(out, 12, line);
    put32(out, 16, ATLAS_W);
    put32(out, 20, atlas_h);
    put32(out, 24, GLYPHS);
    put32(out, 28, kerns);
}

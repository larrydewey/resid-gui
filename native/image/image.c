/* image.c - the resid-gui-image native module: PNG, JPEG, BMP, GIF and TGA
 * bytes to pixels, with stb_image (public domain), compiled freestanding.
 *
 * Resid binding (spec §47):
 *
 *   @link("image") Bytes(16777216) image_decode(Bytes(16777216) data, Int len) {}
 *
 * which is, in C, image_decode(data, cap, len, out, ocap). Like the font
 * module it references only its own symbols, LLVM intrinsics and mem*;
 * memory is a bump allocator over a static arena, since a call is a fresh
 * process and nothing outlives it.
 *
 * The answer, integers 32-bit little-endian:
 *
 *   0    magic "RGI1"
 *   4    status: 0 ok, 1 not an image stb_image can read, 2 too large
 *   8    width, 12 height
 *   16   width * height pixels, four bytes each: blue, green, red, alpha
 *        (straight, not premultiplied)
 */

#include <stdint.h>
#include <stddef.h>

#define HEADER  16
#define ARENA   (96 * 1024 * 1024)

void *memcpy(void *d, const void *s, size_t n);
void *memset(void *d, int c, size_t n);
void *memmove(void *d, const void *s, size_t n);

static unsigned char arena[ARENA];
static size_t arena_used;

/* Every block remembers its size just before it, so a reallocation knows
 * how much to copy. */
static void *bump(size_t n) {
    size_t need = ((n + 15) & ~(size_t)15) + 16;
    if (need > ARENA - arena_used) return 0;
    unsigned char *p = &arena[arena_used];
    arena_used += need;
    *(size_t *)p = n;
    return p + 16;
}

static void *rebump(void *old, size_t n) {
    void *p = bump(n);
    if (p && old) {
        size_t had = *(size_t *)((unsigned char *)old - 16);
        memcpy(p, old, had < n ? had : n);
    }
    return p;
}

static int iabs(int x) { return x < 0 ? -x : x; }

#define STBI_NO_STDIO
#define STBI_NO_SIMD
#define STBI_NO_HDR
#define STBI_NO_LINEAR
#define STBI_NO_PSD
#define STBI_NO_PIC
#define STBI_NO_PNM
#define STBI_NO_THREAD_LOCALS
#define STBI_NO_FAILURE_STRINGS
#define STBI_ASSERT(x)              ((void)0)
#define STBI_MALLOC(n)              bump(n)
#define STBI_REALLOC(p, n)          rebump(p, n)
#define STBI_FREE(p)                ((void)(p))
#define STBI_MAX_DIMENSIONS         4096
#define abs(x)                      iabs(x)
#define STB_IMAGE_STATIC
#define STB_IMAGE_IMPLEMENTATION
#include "../../vendor/stb_image.h"

static void put32(uint8_t *out, int64_t at, int32_t v) {
    out[at] = (uint8_t)v; out[at + 1] = (uint8_t)(v >> 8);
    out[at + 2] = (uint8_t)(v >> 16); out[at + 3] = (uint8_t)(v >> 24);
}

void image_decode(const uint8_t *data, int64_t cap, int64_t len, uint8_t *out, int64_t ocap) {
    if (ocap < HEADER) return;
    put32(out, 0, 0x31494752);
    put32(out, 4, 1);
    if (len <= 0 || len > cap || len > 0x7fffffff) return;
    int w, h, n;
    if (!stbi_info_from_memory(data, (int)len, &w, &h, &n)) return;
    if (w <= 0 || h <= 0 || (int64_t)w * h * 4 > ocap - HEADER) { put32(out, 4, 2); return; }
    unsigned char *px = stbi_load_from_memory(data, (int)len, &w, &h, &n, 4);
    if (!px) return;
    if ((int64_t)w * h * 4 > ocap - HEADER) { put32(out, 4, 2); return; }
    for (int64_t i = 0; i < (int64_t)w * h; i++) {
        out[HEADER + i * 4] = px[i * 4 + 2];
        out[HEADER + i * 4 + 1] = px[i * 4 + 1];
        out[HEADER + i * 4 + 2] = px[i * 4];
        out[HEADER + i * 4 + 3] = px[i * 4 + 3];
    }
    put32(out, 4, 0);
    put32(out, 8, w);
    put32(out, 12, h);
}

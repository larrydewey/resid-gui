/* font.c - native module for font operations using stb_truetype
 *
 * This provides font atlas generation and glyph metrics as a native module.
 * Uses stb_truetype.h (public domain) compiled freestanding.
 */

#define STB_TRUETYPE_IMPLEMENTATION
#define STBTT_malloc(x, u)   0
#define STBTT_free(x, u)     0
#define STBTT_assert(x)      (void)0
#define STBTT_ifloor(x)      ((int)floorf(x))
#define STBTT_iceil(x)       ((int)ceilf(x))
#define STBTT_sqrt(x)        sqrtf(x)
#define STBTT_pow(x, y)      powf(x, y)
#define STBTT_fmod(x, y)     fmodf(x, y)
#define STBTT_cos(x)         cosf(x)
#define STBTT_acos(x)        acosf(x)
#define STBTT_strlen(x)      strlen(x)
#define STBTT_memcpy         memcpy
#define STBTT_memset         memset

#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#include <math.h>
#include "stb_truetype.h"

// Maximum atlas size
#define MAX_ATLAS_W 2048
#define MAX_ATLAS_H 2048
#define MAX_GLYPHS 256

// Result structure for the font atlas
// Packed as: [w][h][atlas_data...][glyph_count][glyph0_adv][glyph0_lsb][glyph0_x0][glyph0_y0][glyph0_x1][glyph0_y1]...[kerning_count][kerning0_g1][kerning0_g2][kerning0_adv]...
struct FontResult {
    int w;
    int h;
    int glyph_count;
    int glyph_adv[MAX_GLYPHS];
    int glyph_lsb[MAX_GLYPHS];
    int glyph_x0[MAX_GLYPHS];
    int glyph_y0[MAX_GLYPHS];
    int glyph_x1[MAX_GLYPHS];
    int glyph_y1[MAX_GLYPHS];
    int kerning_count;
    int kerning_g1[128];
    int kerning_g2[128];
    int kerning_adv[128];
    unsigned char atlas[MAX_ATLAS_W * MAX_ATLAS_H];
};

// Bump allocator for stb_truetype
static unsigned char alloc_buffer[1024 * 1024];
static size_t alloc_offset = 0;

void* stbtt_malloc(void* userdata, size_t size) {
    (void)userdata;
    if (alloc_offset + size > sizeof(alloc_buffer)) return 0;
    void* ptr = &alloc_buffer[alloc_offset];
    alloc_offset += size;
    return ptr;
}

void stbtt_free(void* userdata, void* ptr) {
    (void)userdata;
    (void)ptr;
}

// font_atlas - Generate a font atlas from TTF data
// Input: font_data (bytes of TTF), font_len, chars (string of characters to include), px_size
// Output: packed FontResult structure as bytes
struct FontResult font_atlas_impl(const unsigned char* font_data, int font_len, const char* chars, int px_size) {
    struct FontResult result = {0};
    result.w = MAX_ATLAS_W;
    result.h = MAX_ATLAS_H;
    
    stbtt_fontinfo font;
    if (!stbtt_InitFont(&font, font_data, stbtt_GetFontOffsetForIndex(font_data, 0))) {
        return result; // Return empty on failure
    }
    
    float scale = stbtt_ScaleForPixelHeight(&font, px_size);
    int ascent, descent, line_gap;
    stbtt_GetFontVMetrics(&font, &ascent, &descent, &line_gap);
    ascent = (int)(ascent * scale);
    descent = (int)(descent * scale);
    
    // Pack glyphs into atlas
    int x = 0, y = 0, row_h = 0;
    int chars_len = strlen(chars);
    int glyph_map[128] = {0}; // map from codepoint to glyph index + 1
    
    // First pass: measure all glyphs
    struct {
        int w, h;
        int adv, lsb;
        int x0, y0, x1, y1;
        int codepoint;
    } glyphs[256];
    int glyph_count = 0;
    
    for (int i = 0; i < chars_len && glyph_count < 256; i++) {
        unsigned char c = chars[i];
        if (c < 32 || c > 126) continue;
        if (glyph_map[c]) continue; // Already processed
        
        int adv, lsb;
        stbtt_GetCodepointHMetrics(&font, c, &adv, &lsb);
        int x0, y0, x1, y1;
        stbtt_GetCodepointBitmapBox(&font, c, scale, scale, &x0, &y0, &x1, &y1);
        int gw = x1 - x0;
        int gh = y1 - y0;
        
        if (gw > 0 && gh > 0) {
            glyphs[glyph_count].codepoint = c;
            glyphs[glyph_count].adv = (int)(adv * scale);
            glyphs[glyph_count].lsb = (int)(lsb * scale);
            glyphs[glyph_count].x0 = x0;
            glyphs[glyph_count].y0 = y0;
            glyphs[glyph_count].x1 = x1;
            glyphs[glyph_count].y1 = y1;
            glyphs[glyph_count].w = gw;
            glyphs[glyph_count].h = gh;
            glyph_map[c] = glyph_count + 1;
            glyph_count++;
        }
    }
    
    // Second pass: pack into atlas and rasterize
    for (int i = 0; i < glyph_count; i++) {
        if (x + glyphs[i].w >= MAX_ATLAS_W) {
            x = 0;
            y += row_h;
            row_h = 0;
        }
        if (y + glyphs[i].h >= MAX_ATLAS_H) {
            break; // Atlas full
        }
        
        // Rasterize glyph
        unsigned char* dst = &result.atlas[y * MAX_ATLAS_W + x];
        stbtt_MakeCodepointBitmap(&font, dst, glyphs[i].w, glyphs[i].h, MAX_ATLAS_W, scale, scale, glyphs[i].codepoint);
        
        // Store glyph metrics (atlas coordinates)
        result.glyph_adv[i] = glyphs[i].adv;
        result.glyph_lsb[i] = glyphs[i].lsb;
        result.glyph_x0[i] = x;
        result.glyph_y0[i] = y;
        result.glyph_x1[i] = x + glyphs[i].w;
        result.glyph_y1[i] = y + glyphs[i].h;
        
        x += glyphs[i].w + 1;
        if (glyphs[i].h > row_h) row_h = glyphs[i].h;
    }
    
    result.glyph_count = glyph_count;
    
    // Third pass: collect kerning pairs
    int kern_count = 0;
    for (int i = 0; i < glyph_count && kern_count < 128; i++) {
        for (int j = 0; j < glyph_count && kern_count < 128; j++) {
            int kern = stbtt_GetCodepointKernAdvance(&font, glyphs[i].codepoint, glyphs[j].codepoint);
            if (kern != 0) {
                result.kerning_g1[kern_count] = glyphs[i].codepoint;
                result.kerning_g2[kern_count] = glyphs[j].codepoint;
                result.kerning_adv[kern_count] = (int)(kern * scale);
                kern_count++;
            }
        }
    }
    result.kerning_count = kern_count;
    
    return result;
}

// Entry point for native module
// Takes font data as bytes, length, character string, pixel size
// Returns packed FontResult as bytes
unsigned char* font_atlas(const unsigned char* font_data, int font_len, const char* chars, int px_size,
                          unsigned char* out_data, int* out_len) {
    static struct FontResult result;
    result = font_atlas_impl(font_data, font_len, chars, px_size);
    
    // Pack result into flat byte array
    // [w][h][glyph_count][adv0][lsb0][x00][y00][x10][y10]...[kern_count][g1][g2][adv]...[atlas...]
    int offset = 0;
    out_data[offset++] = result.w & 0xFF;
    out_data[offset++] = (result.w >> 8) & 0xFF;
    out_data[offset++] = (result.w >> 16) & 0xFF;
    out_data[offset++] = (result.w >> 24) & 0xFF;
    out_data[offset++] = result.h & 0xFF;
    out_data[offset++] = (result.h >> 8) & 0xFF;
    out_data[offset++] = (result.h >> 16) & 0xFF;
    out_data[offset++] = (result.h >> 24) & 0xFF;
    out_data[offset++] = result.glyph_count & 0xFF;
    out_data[offset++] = (result.glyph_count >> 8) & 0xFF;
    out_data[offset++] = (result.glyph_count >> 16) & 0xFF;
    out_data[offset++] = (result.glyph_count >> 24) & 0xFF;
    
    for (int i = 0; i < result.glyph_count; i++) {
        int vals[5] = {result.glyph_adv[i], result.glyph_lsb[i], result.glyph_x0[i], result.glyph_y0[i], result.glyph_x1[i]};
        for (int v = 0; v < 5; v++) {
            out_data[offset++] = vals[v] & 0xFF;
            out_data[offset++] = (vals[v] >> 8) & 0xFF;
            out_data[offset++] = (vals[v] >> 16) & 0xFF;
            out_data[offset++] = (vals[v] >> 24) & 0xFF;
        }
    }
    
    out_data[offset++] = result.kerning_count & 0xFF;
    out_data[offset++] = (result.kerning_count >> 8) & 0xFF;
    out_data[offset++] = (result.kerning_count >> 16) & 0xFF;
    out_data[offset++] = (result.kerning_count >> 24) & 0xFF;
    
    for (int i = 0; i < result.kerning_count; i++) {
        int vals[3] = {result.kerning_g1[i], result.kerning_g2[i], result.kerning_adv[i]};
        for (int v = 0; v < 3; v++) {
            out_data[offset++] = vals[v] & 0xFF;
            out_data[offset++] = (vals[v] >> 8) & 0xFF;
            out_data[offset++] = (vals[v] >> 16) & 0xFF;
            out_data[offset++] = (vals[v] >> 24) & 0xFF;
        }
    }
    
    // Copy atlas data
    int atlas_size = result.w * result.h;
    for (int i = 0; i < atlas_size; i++) {
        out_data[offset++] = result.atlas[i];
    }
    
    *out_len = offset;
    return out_data;
}
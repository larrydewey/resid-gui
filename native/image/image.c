/* image.c - native module for image operations using stb_image
 *
 * This provides image decoding (PNG, JPEG, BMP, etc.) as a native module.
 * Uses stb_image.h (public domain) compiled freestanding.
 */

#define STB_IMAGE_IMPLEMENTATION
#define STBI_NO_STDIO
#define STBI_NO_SIMD
#define STBI_MALLOC(sz)    stbi_malloc(sz)
#define STBI_REALLOC(ptr, newsz)  stbi_realloc(ptr, newsz)
#define STBI_FREE(ptr)     stbi_free(ptr)
#define STBI_ASSERT(x)     (void)0

#include <stdint.h>
#include <stdbool.h>
#include <string.h>

// Bump allocator for stb_image - MUST be defined before stb_image.h
static unsigned char alloc_buffer[2048 * 2048 * 4 + 1024];
static size_t alloc_offset = 0;

void* stbi_malloc(size_t sz) {
    if (alloc_offset + sz > sizeof(alloc_buffer)) return 0;
    void* ptr = &alloc_buffer[alloc_offset];
    alloc_offset += sz;
    return ptr;
}

void stbi_free(void* ptr) {
    (void)ptr;
}

void* stbi_realloc(void* ptr, size_t newsz) {
    if (alloc_offset + newsz > sizeof(alloc_buffer)) return 0;
    void* newptr = &alloc_buffer[alloc_offset];
    (void)ptr;
    alloc_offset += newsz;
    return newptr;
}

#include "stb_image.h"

// Result structure for decoded image
struct ImageResult {
    int w;
    int h;
    int channels; // 4 for RGBA
    unsigned char pixels[2048 * 2048 * 4];
};

// image_decode - Decode image from bytes
// Input: data (bytes of image), len
// Output: packed ImageResult as bytes [w][h][channels][pixels...]
struct ImageResult image_decode_impl(const unsigned char* data, int len) {
    struct ImageResult result = {0};
    
    int w, h, channels;
    unsigned char* pixels = stbi_load_from_memory(data, len, &w, &h, &channels, 4); // Force 4 channels (RGBA)
    
    if (!pixels) {
        return result; // Return empty on failure
    }
    
    result.w = w;
    result.h = h;
    result.channels = 4;
    
    // Convert to premultiplied BGRA (matching Canvas format)
    for (int y = 0; y < h; y++) {
        for (int x = 0; x < w; x++) {
            int src_idx = (y * w + x) * 4;
            int dst_idx = (y * w + x) * 4;
            unsigned char r = pixels[src_idx + 0];
            unsigned char g = pixels[src_idx + 1];
            unsigned char b = pixels[src_idx + 2];
            unsigned char a = pixels[src_idx + 3];
            
            // Premultiply alpha and convert to BGRA
            result.pixels[dst_idx + 0] = (b * a) / 255;  // B
            result.pixels[dst_idx + 1] = (g * a) / 255;  // G
            result.pixels[dst_idx + 2] = (r * a) / 255;  // R
            result.pixels[dst_idx + 3] = a;               // A
        }
    }
    
    // stb_image allocated with our bump allocator, no free needed
    
    return result;
}

// Entry point for native module
// Takes image data as bytes, length
// Returns packed ImageResult as bytes
unsigned char* image_decode(const unsigned char* data, int len,
                            unsigned char* out_data, int* out_len) {
    static struct ImageResult result;
    result = image_decode_impl(data, len);
    
    // Pack result into flat byte array
    // [w][h][channels][pixels...]
    int offset = 0;
    out_data[offset++] = result.w & 0xFF;
    out_data[offset++] = (result.w >> 8) & 0xFF;
    out_data[offset++] = (result.w >> 16) & 0xFF;
    out_data[offset++] = (result.w >> 24) & 0xFF;
    out_data[offset++] = result.h & 0xFF;
    out_data[offset++] = (result.h >> 8) & 0xFF;
    out_data[offset++] = (result.h >> 16) & 0xFF;
    out_data[offset++] = (result.h >> 24) & 0xFF;
    out_data[offset++] = result.channels & 0xFF;
    out_data[offset++] = (result.channels >> 8) & 0xFF;
    out_data[offset++] = (result.channels >> 16) & 0xFF;
    out_data[offset++] = (result.channels >> 24) & 0xFF;
    
    // Copy pixel data
    int pixel_count = result.w * result.h * result.channels;
    for (int i = 0; i < pixel_count; i++) {
        out_data[offset++] = result.pixels[i];
    }
    
    *out_len = offset;
    return out_data;
}
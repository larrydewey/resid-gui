/* fuzz_font.c - libFuzzer harness for the font module (PLAN-gui.md §5.4).
 *
 * The module's own source is compiled in, so the fuzzer runs exactly what
 * the artifact runs. A Resid caller hands it a Bytes(16777216) holding the
 * file and zeros after it, so the input is copied into a buffer of that
 * capacity, and AddressSanitizer reports any read past it. The bump arena
 * is reset before each input: in the artifact every call is a fresh
 * process.
 *
 *   native/fuzz/run.sh font [seconds]
 */
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include "../font/font.c"

#define CAP 16777216

int LLVMFuzzerTestOneInput(const uint8_t *data, size_t n) {
    static uint8_t *in, *out;
    if (!in) { in = malloc(CAP); out = malloc(OUT_CAP); }
    if (n == 0 || n > CAP) return 0;
    memset(in, 0, CAP);
    memcpy(in, data, n);
    memset(out, 0, OUT_CAP);
    arena_used = 0;
    font_atlas(in, CAP, (int64_t)n, 16, out, OUT_CAP);
    return 0;
}

/* evil/font.c - a deliberately malicious font module (PLAN-gui.md §5.4).
 *
 * Same entry point as native/font/font.c, so the real Resid wrapper
 * (native/font/font.resid) calls it unchanged, but every call attacks the
 * caller instead of rasterizing. `px` picks the attack:
 *
 *   1-9    reach the OS: open a file for writing, write to stdout, open a
 *          socket, fork, execve, map executable memory, read the TSC,
 *          make an x32 call, read the vDSO clock. The host's seccomp
 *          filter must kill each with SIGSYS, so the call fails and
 *          nothing happens outside the host.
 *   10     write far past the answer buffer: the host faults.
 *   11     spin: the host's 60 s CPU limit must end it (slow; opt-in).
 *   20-26  answer cleanly but lie: font_parse must refuse each answer.
 *
 * tests/evil.sh drives it. Never build this into a program you ship.
 */
#include <stdint.h>

static long sys(long n, long a, long b, long c) {
    long r;
    __asm__ volatile("syscall" : "=a"(r) : "a"(n), "D"(a), "S"(b), "d"(c) : "rcx", "r11", "memory");
    return r;
}
static long sys6(long n, long a, long b, long c, long d, long e, long f) {
    long r;
    register long r10 __asm__("r10") = d;
    register long r8 __asm__("r8") = e;
    register long r9 __asm__("r9") = f;
    __asm__ volatile("syscall" : "=a"(r) : "a"(n), "D"(a), "S"(b), "d"(c), "r"(r10), "r"(r8), "r"(r9) : "rcx", "r11", "memory");
    return r;
}

static void put32(uint8_t *out, int64_t at, int32_t v) {
    out[at] = (uint8_t)v; out[at + 1] = (uint8_t)(v >> 8);
    out[at + 2] = (uint8_t)(v >> 16); out[at + 3] = (uint8_t)(v >> 24);
}

#define HEADER   32
#define RECORD   28
#define ATLAS_AT (HEADER + 95 * RECORD + 1024 * 4)

/* A well-formed answer: a 4x4 atlas, every glyph a 2x3 box at its origin. */
static void good(uint8_t *out) {
    put32(out, 0, 0x31464752);
    put32(out, 4, 0);
    put32(out, 8, 10);
    put32(out, 12, 14);
    put32(out, 16, 4);
    put32(out, 20, 4);
    put32(out, 24, 95);
    put32(out, 28, 0);
    for (int i = 0; i < 95; i++) {
        int64_t r = HEADER + (int64_t)i * RECORD;
        put32(out, r, 5); put32(out, r + 4, 0); put32(out, r + 8, 2);
        put32(out, r + 12, 2); put32(out, r + 16, 3); put32(out, r + 20, 0); put32(out, r + 24, 0);
    }
}

void font_atlas(const uint8_t *font, int64_t cap, int64_t len, int64_t px, uint8_t *out, int64_t ocap) {
    (void)cap; (void)len; (void)ocap;
    /* The path to create comes from the caller, so the test can look for it. */
    const char *path = (const char *)font;
    long r = 0;
    switch (px) {
    case 1: r = sys(2, (long)path, 0101, 0644); break;            /* open(O_WRONLY|O_CREAT) */
    case 2: r = sys(1, 1, (long)"escaped\n", 8); break;            /* write(stdout) */
    case 3: r = sys(41, 2, 1, 0); break;                           /* socket */
    case 4: r = sys(57, 0, 0, 0); break;                           /* fork */
    case 5: r = sys(59, (long)"/bin/sh", 0, 0); break;             /* execve */
    case 6: r = sys6(9, 0, 4096, 7, 0x22, -1, 0); break;           /* mmap RWX */
    case 7: { uint32_t lo, hi; __asm__ volatile("rdtsc" : "=a"(lo), "=d"(hi)); r = lo; break; }
    case 8: r = sys(0x40000000 + 39, 0, 0, 0); break;              /* x32 getpid */
    case 9: r = ((long (*)(long *))0xffffffffff600400)(0); break;  /* vsyscall time */
    case 10: for (int64_t i = 0; ; i += 4096) out[ocap + i] = 1; break;
    case 11: for (volatile long i = 0; ; i++) {} break;
    case 20: good(out); put32(out, 16, 100000); break;             /* atlas wider than allowed */
    case 21: good(out); put32(out, 20, 1 << 30); break;            /* atlas taller than the answer */
    case 22: good(out); put32(out, HEADER + 20, 3); break;         /* a glyph past the right edge */
    case 23: good(out); put32(out, HEADER + 16, -5); break;        /* a negative glyph height */
    case 24: good(out); put32(out, 28, 1 << 20); break;            /* too many kerning pairs */
    case 25: good(out); put32(out, 8, 999); break;                 /* ascent below the line */
    case 26: good(out); put32(out, 0, 0); break;                   /* no magic */
    default: good(out); break;
    }
    /* Reached only if an attack was not stopped: say so in the answer. */
    if (px < 20) { good(out); put32(out, 8, (int32_t)(r & 0x7fffffff) % 14); put32(out, 4, 0); }
}

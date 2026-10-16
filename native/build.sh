#!/bin/sh
# native/build.sh — the native modules' artifacts from their C sources:
# freestanding LLVM IR text for x86-64 Linux (Resid spec §47.3). The
# artifact may reference only its own symbols, LLVM intrinsics and
# memcpy/memmove/memset; the check below fails the build otherwise.
# -fwrapv makes signed overflow wrap: decoders fed hostile input overflow
# int arithmetic (native/fuzz finds it in minutes), and that must be a
# wrong pixel, never undefined behavior the optimizer may exploit.
set -e
cd "$(dirname "$0")"
for m in ${MODULES:-font image}; do
    clang -S -emit-llvm -O2 -ffreestanding -fno-builtin -fno-stack-protector -fno-exceptions -fno-math-errno -fwrapv \
        -fno-unwind-tables -fno-asynchronous-unwind-tables -fvisibility=hidden \
        -target x86_64-pc-linux-gnu -o "$m/$m.ll" "$m/$m.c"
    # The entry point must stay visible; everything else is internal.
    sed -i 's/^define hidden /define /' "$m/$m.ll"
    bad=$(grep '^declare' "$m/$m.ll" | grep -v -E '@llvm\.|@(memcpy|memmove|memset)\(' || true)
    if [ -n "$bad" ]; then
        echo "$m: the artifact references outside symbols:" >&2
        echo "$bad" >&2
        exit 1
    fi
    echo "$m/$m.ll $(sha256sum "$m/$m.ll" | cut -d' ' -f1)"
done

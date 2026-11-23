#!/bin/sh
# bench/crossing/run.sh — a real frame's command stream handed to a fake GPU
# driver process over a shared ring, three runs.
#
#   bench/crossing/run.sh            (RESIDC=<path> to choose the compiler)
#
# x86-64 Linux with at least three CPUs: the two sides are pinned to CPUs 0
# and 2. Close other programs first; plug a laptop in.
set -e
HERE=$(cd "$(dirname "$0")" && pwd)
RESIDC=${RESIDC:-$HOME/.resid/bin/residc}
[ -x "$RESIDC" ] || { echo "residc not found at $RESIDC; run ../resid/install.sh or set RESIDC" >&2; exit 1; }
[ "$(nproc)" -ge 3 ] || { echo "needs at least three CPUs" >&2; exit 1; }
OUT=$(mktemp -d)
trap 'rm -rf "$OUT"' EXIT
cd "$HERE"
"$RESIDC" runtime/rt/gpubench.resid --runtime-internals -o "$OUT/gpubench" > "$OUT/build.log" 2>&1 || { cat "$OUT/build.log"; exit 1; }
uname -srm; grep -m1 'model name' /proc/cpuinfo || true
for i in 1 2 3; do
    echo "--- run $i"
    "$OUT/gpubench"
done

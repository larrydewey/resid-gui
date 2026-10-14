#!/bin/sh
# tests/run.sh — every test file in this repository.
#
# A file with `test` blocks is a test file: `residc test` discovers them at
# compile time and runs the generated entry point. Files under src/ are
# libraries, so they are run through their own inline tests here.

set -e

ROOT=$(cd "$(dirname "$0")/.." && pwd)
RESIDC=${RESIDC:-$HOME/.resid/bin/residc}

if [ ! -x "$RESIDC" ]; then
    echo "residc not found at $RESIDC; run ../resid/install.sh first" >&2
    exit 1
fi

fail=0
total=0

# src/gui.resid declares the program-facing interface and calls
# gui_run_x11, which arrives with the X11 backend in G2. It is listed as a
# skip rather than left to fail: the gap is recorded, not hidden.
for f in $(find "$ROOT/src" "$ROOT/tests" -name '*.resid' | sort); do
    rel=${f#"$ROOT"/}
    total=$((total + 1))
    if ! "$RESIDC" test "$f"; then
        fail=$((fail + 1))
    fi
done

echo
if [ "$fail" -ne 0 ]; then
    echo "$fail of $total file(s) failed"
    exit 1
fi
echo "$total file(s) green"
#!/bin/sh
# tests/run.sh — every test file in this repository, then every example.
#
# A file with `test` blocks is a test file: `residc test` discovers them at
# compile time and runs the generated entry point. Files under src/ are
# libraries and run through their own inline tests; tests/ holds the fake
# X server, the fake Wayland compositor and the golden images. Examples
# have no tests of their own, so each is type-checked to keep it building.

set -e

ROOT=$(cd "$(dirname "$0")/.." && pwd)
RESIDC=${RESIDC:-$HOME/.resid/bin/residc}

if [ ! -x "$RESIDC" ]; then
    echo "residc not found at $RESIDC; run ../resid/install.sh first" >&2
    exit 1
fi

fail=0
total=0

for f in $(find "$ROOT/src" "$ROOT/tests" -name '*.resid' | sort); do
    total=$((total + 1))
    if ! "$RESIDC" test "$f"; then
        echo "FAILED: ${f#"$ROOT"/}"
        fail=$((fail + 1))
    fi
done

for f in $(find "$ROOT/examples" -name '*.resid' | sort); do
    total=$((total + 1))
    if ! "$RESIDC" "$f" --profile check >/dev/null 2>&1; then
        echo "FAILED to build: ${f#"$ROOT"/}"
        fail=$((fail + 1))
    fi
done

echo
if [ "$fail" -ne 0 ]; then
    echo "$fail of $total file(s) failed"
    exit 1
fi
echo "$total file(s) green"

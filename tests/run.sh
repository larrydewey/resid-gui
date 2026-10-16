#!/bin/sh
# tests/run.sh — every test file in this repository, every test program,
# then every example.
#
# A file with `test` blocks is a test file: `residc test` discovers them at
# compile time and runs the generated entry point. Files under src/ are
# libraries and run through their own inline tests; tests/ holds the fake
# X server, the fake Wayland compositor and the golden images. A file in
# tests/ with a `main` is a test program (the native modules need the main
# thread's stack): it is built, run, and must exit 0. Examples have no
# tests of their own, so each is type-checked to keep it building.
#
# A first line `// residc-args: ...` gives a file extra compiler arguments,
# such as the -native artifacts it links.

set -e

ROOT=$(cd "$(dirname "$0")/.." && pwd)
RESIDC=${RESIDC:-$HOME/.resid/bin/residc}

if [ ! -x "$RESIDC" ]; then
    echo "residc not found at $RESIDC; run ../resid/install.sh first" >&2
    exit 1
fi

# The extra arguments a file asks for, with native paths made absolute.
extra() {
    sed -n '1s|^// residc-args: *||p' "$1" | sed "s|=native/|=$ROOT/native/|g"
}

fail=0
total=0
OUT=$(mktemp -d)
trap 'rm -rf "$OUT"' EXIT

for f in $(find "$ROOT/src" "$ROOT/tests" -name '*.resid' | sort); do
    total=$((total + 1))
    rel=${f#"$ROOT"/}
    if grep -q '^Int main()' "$f"; then
        # shellcheck disable=SC2046
        if ! "$RESIDC" "$f" -o "$OUT/prog" $(extra "$f") >/dev/null || ! "$OUT/prog"; then
            echo "FAILED: $rel"
            fail=$((fail + 1))
        fi
    else
        # shellcheck disable=SC2046
        if ! "$RESIDC" test "$f" $(extra "$f"); then
            echo "FAILED: $rel"
            fail=$((fail + 1))
        fi
    fi
done

for f in $(find "$ROOT/examples" -name '*.resid' | sort); do
    total=$((total + 1))
    # shellcheck disable=SC2046
    if ! "$RESIDC" "$f" --profile check $(extra "$f") >/dev/null 2>&1; then
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

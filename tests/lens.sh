#!/bin/sh
# tests/lens.sh — the residual lens labels the counter as the reducer left
# it: the button row folded at compile time, the count built at run time.
set -e
ROOT=$(cd "$(dirname "$0")/.." && pwd)
RESIDC=${RESIDC:-$HOME/.resid/bin/residc}
OUT=$(python3 -I "$ROOT/tools/resid_lens.py" "$ROOT/examples/counter.resid" --residc "$RESIDC" --text-only)
echo "$OUT"
echo "$OUT" | grep -q "#2   Text       residual uses m"
echo "$OUT" | grep -q "#3   Row        folded"
echo "$OUT" | grep -q "#6   Button     folded"
echo "lens: ok"

#!/bin/sh
# tests/golden.sh — print the golden hashes and write the golden PNGs to
# tests/golden/ for inspection. Run after a deliberate rendering change and
# copy the hashes into tests/golden.resid.
set -e
ROOT=$(cd "$(dirname "$0")/.." && pwd)
RESIDC=${RESIDC:-$HOME/.resid/bin/residc}
OUT=$(mktemp -d)
cat > "$OUT/gen.resid" <<EOR
import "$ROOT/tests/golden.resid";
@requires(filesystem)
Int main() {
    Png a = golden_png(widgets(), 200, 200, 1);
    Png b = golden_png(widgets(), 200, 200, 2);
    _ = filesystem.write_bytes("$ROOT/tests/golden/widgets-1x.png", a.bytes);
    _ = filesystem.write_bytes("$ROOT/tests/golden/widgets-2x.png", b.bytes);
    println(f"scale 1: {golden_hash(a)}");
    println(f"scale 2: {golden_hash(b)}");
    return 0;
}
EOR
"$RESIDC" "$OUT/gen.resid" -o "$OUT/gen" | grep -E "^error" && exit 1 || true
"$OUT/gen"
rm -rf "$OUT"

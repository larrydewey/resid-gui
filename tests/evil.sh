#!/bin/sh
# tests/evil.sh — the malicious font module (native/evil/font.c) against
# the real wrapper (PLAN-gui.md §5.4).
#
# Attacks 1-10 try to reach the OS or corrupt memory: the native host must
# die, the wrapper (which calls the module in a spawn region) must turn
# that into an `Err`, and the attack must leave no trace (no file created,
# nothing on stdout but the refusal). Attacks 20-26 answer cleanly with
# lies: font_parse must refuse each one. Attack 11 spins until the host's
# 60 s CPU limit; it runs only with EVIL_SLOW=1.
set -e
ulimit -c 0
ROOT=$(cd "$(dirname "$0")/.." && pwd)
RESIDC=${RESIDC:-$HOME/.resid/bin/residc}
OUT=$(mktemp -d)
trap 'rm -rf "$OUT"' EXIT
cd "$ROOT/native"
clang -S -emit-llvm -O2 -ffreestanding -fno-builtin -fno-stack-protector -fno-exceptions -fwrapv \
    -fno-unwind-tables -fno-asynchronous-unwind-tables -fvisibility=hidden \
    -target x86_64-pc-linux-gnu -o "$OUT/evil.ll" evil/font.c
sed -i 's/^define hidden /define /' "$OUT/evil.ll"
"$RESIDC" evil/probe.resid -native font="$OUT/evil.ll" -o "$OUT/probe" >/dev/null

fail=0
attacks="1 2 3 4 5 6 7 8 9 10"
[ -n "$EVIL_SLOW" ] && attacks="$attacks 11"
for a in $attacks; do
    path="$OUT/escaped-$a"
    set +e
    "$OUT/probe" "$a" "$path" >"$OUT/stdout" 2>"$OUT/stderr"
    code=$?
    set -e
    said=$(cat "$OUT/stdout")
    if [ "$code" -ne 0 ] || [ "$said" != "refused: font: the font module failed" ]; then
        echo "FAILED: attack $a was not an Err (exit $code): $said $(cat "$OUT/stderr")"
        fail=1
    elif [ -e "$path" ]; then
        echo "FAILED: attack $a left a trace"
        fail=1
    else
        echo "ok: attack $a stopped: $said"
    fi
done
for a in 20 21 22 23 24 25 26; do
    said=$("$OUT/probe" "$a" "$OUT/x" 2>&1 || true)
    case "$said" in
        refused:*) echo "ok: lie $a $said" ;;
        *) echo "FAILED: lie $a: $said"; fail=1 ;;
    esac
done
exit $fail

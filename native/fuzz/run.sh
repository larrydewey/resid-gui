#!/bin/sh
# native/fuzz/run.sh — fuzz a native module's C source with libFuzzer,
# AddressSanitizer and UndefinedBehaviorSanitizer (PLAN-gui.md §5.4), with
# -fwrapv as native/build.sh builds the artifacts.
#
#   native/fuzz/run.sh font|image [seconds] [libFuzzer flags...]
#
# Seeds are generated into a scratch corpus (a system TrueType font; small
# PNG, JPEG, GIF, BMP and TGA files from ImageMagick). A crash leaves its
# input as crash-* in the current directory and exits nonzero; pass
# -fork=1 -ignore_crashes=1 to keep going and collect every crash.
set -e
m=${1:?usage: run.sh font|image [seconds]}
secs=${2:-60}
shift; [ $# -gt 0 ] && shift
here=$(cd "$(dirname "$0")" && pwd)
work=${FUZZ_WORK:-$(mktemp -d)}
mkdir -p "$work/corpus-$m"
clang -g -O1 -fwrapv -fsanitize=fuzzer,address,undefined -fno-sanitize-recover=undefined \
    -o "$work/fuzz_$m" "$here/fuzz_$m.c"
if [ "$m" = font ]; then
    for f in /usr/share/fonts/noto/NotoSans-Regular.ttf /usr/share/fonts/TTF/DejaVuSans.ttf /usr/share/fonts/truetype/dejavu/DejaVuSans.ttf; do
        [ -f "$f" ] && cp "$f" "$work/corpus-$m/"
    done
else
    for e in png jpg gif bmp tga; do
        magick -size 7x5 gradient:red-blue "$work/corpus-$m/seed.$e" 2>/dev/null || true
    done
fi
"$work/fuzz_$m" -max_total_time="$secs" -rss_limit_mb=4096 -max_len=1048576 -timeout=20 "$@" "$work/corpus-$m"

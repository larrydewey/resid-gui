#!/bin/sh
# tests/atspi.sh — the AT-SPI bridge against a real dbus-daemon.
#
# A private bus stands in for the accessibility bus (AT_SPI_BUS_ADDRESS
# names it, as at-spi-bus-launcher's clients are told). The counter
# example runs under the reference RSP shell; while it runs,
# tools/atspi_check.py, using GLib's gdbus, finds it on the bus, walks its
# tree, presses "+1" through the Action interface and waits for the label
# to say "count: 1". Skipped when dbus-daemon or gdbus is missing: it
# then exits 77, which tests/run.sh counts as skipped, not as passed.
set -e
ROOT=$(cd "$(dirname "$0")/.." && pwd)
RESIDC=${RESIDC:-$HOME/.resid/bin/residc}
command -v dbus-daemon >/dev/null && command -v gdbus >/dev/null || { echo "atspi: skipped (no dbus-daemon or gdbus)"; exit 77; }
DIR=$(mktemp -d)
trap 'kill $(cat "$DIR/pid" 2>/dev/null) 2>/dev/null; rm -rf "$DIR"' EXIT
unset AT_SPI_BUS_ADDRESS DBUS_SESSION_BUS_ADDRESS
cat > "$DIR/bus.conf" <<EOC
<!DOCTYPE busconfig PUBLIC "-//freedesktop//DTD D-BUS Bus Configuration 1.0//EN" "http://www.freedesktop.org/standards/dbus/1.0/busconfig.dtd">
<busconfig><type>accessibility</type><listen>unix:path=$DIR/bus</listen><auth>EXTERNAL</auth>
<policy context="default"><allow send_destination="*" eavesdrop="true"/><allow eavesdrop="true"/><allow own="*"/></policy></busconfig>
EOC
dbus-daemon --config-file="$DIR/bus.conf" --fork --print-pid > "$DIR/pid"
ADDR="unix:path=$DIR/bus"
"$RESIDC" "$ROOT/examples/counter.resid" -o "$DIR/counter" >/dev/null
AT_SPI_BUS_ADDRESS="$ADDR" python3 -I "$ROOT/tools/rsp_shell.py" "$DIR/counter" --scale 1 --out "$DIR" \
    --step "run:python3 -I '$ROOT/tools/atspi_check.py' '$ADDR' +1 'count: 1'" --step "wait:count: 1" --step close
echo "atspi: found through AT_SPI_BUS_ADDRESS"

# The desktop path: no AT_SPI_BUS_ADDRESS; the runtime asks the session bus
# (org.a11y.Bus.GetAddress, answered here as at-spi-bus-launcher would).
sed "s|<type>accessibility</type>|<type>session</type>|; s|$DIR/bus|$DIR/session|" "$DIR/bus.conf" > "$DIR/session.conf"
dbus-daemon --config-file="$DIR/session.conf" --fork --print-pid >> "$DIR/pid"
python3 -I "$ROOT/tools/fake_a11y_launcher.py" "$DIR/session" "$ADDR" > "$DIR/launcher.log" &
LAUNCHER=$!
# at most 10 s, and only while the launcher lives
tries=0
until grep -q ready "$DIR/launcher.log" 2>/dev/null; do
    if ! kill -0 "$LAUNCHER" 2>/dev/null || [ "$tries" -ge 100 ]; then
        echo "atspi: the fake launcher did not start" >&2
        cat "$DIR/launcher.log" >&2
        exit 1
    fi
    tries=$((tries + 1))
    sleep 0.1
done
env -u AT_SPI_BUS_ADDRESS DBUS_SESSION_BUS_ADDRESS="unix:path=$DIR/session" python3 -I "$ROOT/tools/rsp_shell.py" "$DIR/counter" --scale 1 --out "$DIR" \
    --step "run:python3 -I '$ROOT/tools/atspi_check.py' '$ADDR' -1 'count: -1'" --step "wait:count: -1" --step close
kill $LAUNCHER 2>/dev/null || true
echo "atspi: found through the session bus"
echo "atspi: ok"

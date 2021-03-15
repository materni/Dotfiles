#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar -rq DP-3 &
polybar -rq eDP-1-1 &
polybar -rq HDMI-0 &

echo "Polybar launched..."

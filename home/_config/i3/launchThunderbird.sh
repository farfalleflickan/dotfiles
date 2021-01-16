#!/usr/bin/env bash

# Terminate already running bar instances
killall -q thunderbird

# Wait until the processes have been shut down
while pgrep -u $UID -x thunderbird >/dev/null; do sleep 1; done

thunderbird &
echo "Done"

#!/bin/bash

killall -q polybar

while pgrep -u $UID -x polibar >/dev/null; do sleep 1; done

polybar top &



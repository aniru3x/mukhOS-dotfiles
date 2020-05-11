#!/usr/bin/env sh

## Add this to your wm startup file.

# Terminate already running bar instances
kill $(pidof polybar)

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch bars
polybar child-battery -c ~/.config/polybar/config.ini &
polybar child-bspwm -c ~/.config/polybar/config.ini &
polybar child-date -c ~/.config/polybar/config.ini &
polybar child-filesystem-home -c ~/.config/polybar/config.ini &
polybar child-filesystem-root -c ~/.config/polybar/config.ini &
polybar child-temperature -c ~/.config/polybar/config.ini &
polybar child-cpu -c ~/.config/polybar/config.ini &
polybar child-pulseaudio -c ~/.config/polybar/config.ini &

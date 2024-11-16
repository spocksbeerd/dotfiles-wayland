#!/bin/bash

idle_daemon=hypridle

killall swayidle
killall hypridle

if [ "$idle_daemon" = "swayidle" ]; then
    swayidle -w \
        timeout 300 "lockscreen.sh && hyprctl dispatch dpms off" \
        timeout 600 "systemctl suspend" \
        before-sleep "lockscreen.sh" \
        after-resume "hyprctl dispatch dpms on" &
else
    hypridle
fi

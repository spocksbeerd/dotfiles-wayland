#!/bin/bash

swayidle -w \
    timeout 300 "lockscreen.sh && hyprctl dispatch dpms off" \
    timeout 600 "systemctl suspend" \
    before-sleep "lockscreen.sh" \
    after-resume "hyprctl dispatch dpms on" &

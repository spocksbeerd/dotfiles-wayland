#!/bin/bash

current_brightness=$(brightnessctl get)

if [ "$current_brightness" -le 63 ]; then
    brightnessctl set 25%
elif [ "$current_brightness" -le 127 ]; then
    brightnessctl set 50%
elif [ "$current_brightness" -le 190 ]; then
    brightnessctl set 75%
elif [ "$current_brightness" -le 230 ]; then
    brightnessctl set 100%
elif [ "$current_brightness" -le 255 ]; then
    brightnessctl set 5%
fi

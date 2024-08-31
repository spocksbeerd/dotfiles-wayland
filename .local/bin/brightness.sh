#!/bin/bash

current_brightness=$(brightnessctl get)

if [ "$current_brightness" -le 230 ]; then
    brightnessctl set 25%
elif [ "$current_brightness" -le 465 ]; then
    brightnessctl set 50%
elif [ "$current_brightness" -le 700 ]; then
    brightnessctl set 75%
elif [ "$current_brightness" -le 930 ]; then
    brightnessctl set 100%
elif [ "$current_brightness" -le 1000 ]; then
    brightnessctl set 5%
fi

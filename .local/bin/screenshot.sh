#!/bin/bash

screenshot_path=~/pictures/screenshots/$(date +%Y-%m-%d_%H-%m-%s).png

case "$1" in 
    fullscreen)
        grim "$screenshot_path"
    ;;

    selection)
        if pgrep -x "slurp" > /dev/null
        then
            exit 0
        else
            grim -g "$(slurp)" "$screenshot_path"
        fi
    ;;
esac

if [[ $? -eq 0 ]]; then
    dunstify -u low "Screenshot saved" -t 1000
    paplay "$HOME/.local/share/sfx/screenshot.mp3"
    wl-copy < "$screenshot_path"
fi

#!/bin/bash

case "$1" in 
    fullscreen)
        grim -t jpeg ~/pictures/screenshots/$(date +%Y-%m-%d_%H-%m-%s).jpg
        dunstify -u low "Screenshot saved" -t 1000
    ;;

    selection)
        if ! pgrep -x "slurp" > /dev/null
        then
            grim -t jpeg -g "$(slurp)" ~/pictures/screenshots/$(date +%Y-%m-%d_%H-%m-%s).jpg
        fi
    ;;
esac

paplay "$HOME/.local/share/sfx/screenshot.mp3"

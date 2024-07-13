#!/bin/bash

case "$1" in 
    fullscreen)
        grim -t jpeg ~/pictures/screenshots/$(date +%Y-%m-%d_%H-%m-%s).jpg
    ;;

    selection)
        if ! pgrep -x "slurp" > /dev/null
        then
            grim -t jpeg -g "$(slurp)" ~/pictures/screenshots/$(date +%Y-%m-%d_%H-%m-%s).jpg
        fi
    ;;
esac

paplay "$HOME/.local/share/sfx/screenshot.mp3"

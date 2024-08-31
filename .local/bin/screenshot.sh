#!/bin/bash

if pgrep -x "slurp" > /dev/null
then
    exit 0
fi

screenshot_path=~/pictures/screenshots/$(date +%Y-%m-%d_%H-%M-%S-%3N).png

usage() {
    echo "Usage: screenshot.sh [option]"
    echo "Options:"
    echo "  --fullscreen    Take a screenshot of the entire screen"
    echo "  --selection     Take a screenshot of the selected area"
    echo "  --help          Show this menu"
    exit 1
}

quality_of_life() {
    dunstify -u low "Screenshot saved" -t 1000
    paplay "$HOME/.local/share/sfx/screenshot.mp3"
    wl-copy < "$screenshot_path"
}

case "$1" in 
    --fullscreen)
        grim "$screenshot_path"
        quality_of_life
        ;;
    --selection)
        grim -g "$(slurp -w 1 -b "#00000080" -c "#98971A")" "$screenshot_path"
        if [[ $? -eq 0 ]]; then
            quality_of_life
        fi
        ;;
    --help)
        usage
        ;;
    *)
        echo "Invalid option: \"$1\"" >&2
        usage
        ;;
esac

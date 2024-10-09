#!/bin/bash

usage() {
    echo "Usage: clipboard.sh [option]"
    echo "Options:"
    echo "  --show      Open the clipboard in a rofi menu"
    echo "  --clear     Clear the clipboard"
    echo "  --help      Show this menu"
}

case "$1" in 
    --show)
        cliphist list | rofi -dmenu -config "$XDG_CONFIG_HOME/rofi/clipboard.rasi" | cliphist decode | wl-copy
        ;;
    --clear)
        wl-copy ""
        rm "$XDG_CACHE_HOME/cliphist/db"
        dunstify -u low "Clipboard cleared" -t 1000
        ;;
    --help)
        usage
        ;;
    *)
        echo "Invalid option: \"$1\"" >&2
        usage
        exit 1
        ;;
esac

#!/bin/bash

case "$1" in 
    show)
        cliphist list | rofi -dmenu -config "$XDG_CONFIG_HOME/rofi/config_for_clipboard.rasi" | cliphist decode | wl-copy
    ;;

    clear)
        cliphist wipe
        rm "$XDG_CACHE_HOME/cliphist/db"
        dunstify -u low "Clipboard cleared" -t 1000
    ;;
esac

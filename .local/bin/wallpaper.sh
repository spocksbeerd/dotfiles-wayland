#!/bin/bash

wallpaper=$(ls "$HOME/pictures/wallpapers" | rofi -dmenu -config "$XDG_CONFIG_HOME/rofi/generic_menu.rasi")

if [ "$wallpaper" = "" ]; then
    exit 1
fi

pkill swaybg
swaybg -i "$HOME/pictures/wallpapers/$wallpaper" &
echo "\$wallpaper = ~/pictures/wallpapers/$wallpaper" > "$HOME/.config/hypr/wallpaper.conf"

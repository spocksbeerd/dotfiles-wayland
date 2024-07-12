#!/bin/bash

cliphist list | rofi -dmenu -config "$XDG_CONFIG_HOME/rofi/config_for_clipboard.rasi" | cliphist decode | wl-copy

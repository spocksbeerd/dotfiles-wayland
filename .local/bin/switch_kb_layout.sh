#!/bin/bash

kb_name=$(hyprctl devices -j | jq -r ".keyboards[] | select(.main == true) | .name" )
hyprctl switchxkblayout "$kb_name" next > /dev/null
layout=$(hyprctl devices -j | jq -r ".keyboards[] | select(.main == true) | .active_keymap")
dunstify -u low -r 1000 "$layout" -t 1000

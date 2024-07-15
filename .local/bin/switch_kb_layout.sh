#!/bin/bash

hyprctl switchxkblayout at-translated-set-2-keyboard next > /dev/null
layout=$(hyprctl devices | awk '/at-translated-set-2-keyboard/,/^Keyboard at /{if ($0 ~ /active keymap:/) {sub(/^[^:]*: /, "", $0); print; exit}}')
dunstify -u low -r 1000 "$layout" -t 1000

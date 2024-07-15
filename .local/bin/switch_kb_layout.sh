#!/bin/bash

kb_name=$(hyprctl devices | awk '/Keyboard at /{getline; keyboard=$0} /main: yes/{print keyboard; exit}' | awk '{print $1}')
hyprctl switchxkblayout "$kb_name" next > /dev/null
layout=$(hyprctl devices | awk "/${kb_name}/,/^Keyboard at /{if (\$0 ~ /active keymap:/) {sub(/^[^:]*: /, \"\", \$0); print; exit}}")
dunstify -u low -r 1000 "$layout" -t 1000

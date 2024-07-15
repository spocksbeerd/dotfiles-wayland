#!/bin/bash

kb_name=$(hyprctl devices | awk '/Keyboard at /{getline; keyboard=$0} /main: yes/{print keyboard; exit}' | awk '{print $1}')
hyprctl switchxkblayout "$kb_name" next > /dev/null
layout=$(hyprctl devices | grep -B 1 "main: yes" | head -n 1 | grep -oP '(?<=active keymap: ).*')
dunstify -u low -r 1000 "$layout" -t 1000

#!/bin/bash

if pgrep -x "slurp" > /dev/null
then
    exit 0
fi

output=$(slurp -d -w 1 -b "#00000080" -c "#A7C080" -f "width: %w
height: %h")

if [[ ! $? -eq 0 ]]; then
    exit 1
fi

dunstify -u low "$output" -t 2000
wl-copy "$output"

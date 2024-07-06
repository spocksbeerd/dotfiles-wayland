#!/bin/bash

if ! pgrep -x "slurp" > /dev/null
then
    grim -t jpeg -g "$(slurp)" ~/pictures/screenshots/$(date +%Y-%m-%d_%H-%m-%s).jpg
fi

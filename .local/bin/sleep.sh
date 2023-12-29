#!/bin/bash

swayidle -w timeout 300 'swaylock -f -c 282828' \
            timeout 1800 'systemctl suspend' \
            before-sleep 'swaylock -f -c 282828' &

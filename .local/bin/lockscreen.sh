#!/bin/bash

if ! pgrep -x "swaylock" > /dev/null
then
    swaylock
fi

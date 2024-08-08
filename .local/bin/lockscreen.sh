#!/bin/bash

lockscreen=swaylock

if ! pgrep -x "$lockscreen" > /dev/null
then
    "$lockscreen"
fi

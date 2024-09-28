#!/bin/bash

if ! command -v pamixer &> /dev/null; then
    . "volume_fallback.sh" "$1"
    exit
fi

usage() {
    echo "Usage: volume.sh [option]"
    echo "Options:"
    echo "  --up       Set the sound volume one step higher"
    echo "  --down     Set the sound volume one step lower"
    echo "  --mute     Toggle the mute state"
    echo "  --help     Show this menu"
}

STEP=5

unmute() {
    pamixer --unmute
}

toggle_mute() {
    pamixer --toggle-mute
    is_mute="$(pamixer --get-mute)"

    if [ "$is_mute" = "true" ];
    then
        dunstify -u low -r 2345 "Volume: muted" -t 2000
    else
        notify
    fi
}

increase() {
    pamixer --increase "$STEP"
}

decrease() {
    pamixer --decrease "$STEP"
}

notify() {
    volume="$(pamixer --get-volume)"
    dunstify -u low -r 2345 -h int:value:"$volume" "Volume: $volume%" -t 2000 
}

case "$1" in
    --up)
        unmute
        increase
        notify
        ;;
    --down)
        unmute
        decrease
        notify
        ;;
    --mute)
        toggle_mute
        ;;
    --help)
        usage
        ;;
    *)
        echo "Invalid option: \"$1\"" >&2
        usage
        exit 1
        ;;
esac

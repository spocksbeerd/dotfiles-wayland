#!/bin/bash

file=~/.cache/counter

usage() {
    echo "Usage: counter [option]"
    echo "Options:"
    echo "  --start     Start the counter"
    echo "  --reveal    Reveal the counter"
    echo "  --clear     Clear the counter"
    echo "  --help      Show this menu"
}

reveal() {
    echo
    cat $file
    echo
    cal -3
}

case "$1" in
    --start)
        echo $(date +"%B %d, %H:%M") > $file
        reveal
        ;;
    --reveal)
        if [ -e "$file" ];
        then
            reveal
        else
            echo "There is no counter set yet."
        fi
        ;;
    --clear)
        rm $file
        echo "Counter cleared."
        ;;
    --help)
        usage
        ;;
    *)
        echo "Invalid option: \"$1\"" >&2
        echo
        usage
        exit 1
        ;;
esac

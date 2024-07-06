#!/bin/bash

get_zoom_factor() {
    hyprctl getoption cursor:zoom_factor | awk -F ":" '/float/ {print $2}'
}

SCALE=0.2
MAX_ZOOM=5.0
MIN_ZOOM=1.0

case $1 in
    in)
        current_zoom="$(get_zoom_factor)" #String
        new_zoom=`echo $current_zoom + $SCALE | bc -l` #String + float -> float
        if (( $(echo "$new_zoom <= $MAX_ZOOM" | bc -l) )); then #compare float and float
            hyprctl keyword cursor:zoom_factor "$new_zoom"
        fi
	;;

    out)
        current_zoom="$(get_zoom_factor)" #String
        new_zoom=`echo $current_zoom - $SCALE | bc -l` #String - float -> float
        if (( $(echo "$new_zoom >= $MIN_ZOOM" | bc -l) )); then #compare float and float
            hyprctl keyword cursor:zoom_factor "$new_zoom"
        fi
	;;
    
    reset)
        hyprctl keyword cursor:zoom_factor 1
    ;;
esac

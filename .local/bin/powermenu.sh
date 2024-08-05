#!/bin/bash

option=$(printf "  Restart\n  Shutdown\n󰖔  Suspend\n󰍃  Logout\n  Lock" | rofi -dmenu -config "$XDG_CONFIG_HOME/rofi/power_menu.rasi")

case "$option" in
	"  Restart") reboot ;;
	"  Shutdown") shutdown now ;;
	"󰖔  Suspend") systemctl suspend ;;
    "󰍃  Logout") pkill -KILL -u "$USER" ;;
	"  Lock") lockscreen.sh ;;
	*) exit 1 ;;
esac

#!/bin/bash

option=$(printf "  Restart\n  Shutdown\n󰒲  Suspend\n  Lock" | rofi -dmenu)

case "$option" in
	"  Restart") reboot ;;
	"  Shutdown") shutdown now ;;
	"󰒲  Suspend") systemctl suspend ;;
	"  Lock") waylock ;;
	*) exit 1 ;;
esac

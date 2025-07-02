#!/bin/bash


selection=$(echo "Sleep
Log out
Reboot
Shutdown
Shutdown Now" | rofi -dmenu -i -p "power" -lines 4 -theme $HOME/.config/rofi/themes/hyprpwrm.rasi)

if [[ $selection == "Shutdown" ]]; then
	shutdown +2
	hyprctl notify 3 120000 "rgb(ff0000)" "Shutdown scheduled"
elif [[ $selection == "Reboot" ]]; then
	reboot
elif [[ $selection == "Shutdown Now" ]]; then
	shutdown now
elif [[ $selection == "Log out" ]]; then
	loginctl terminate-user $USER
elif [[ $selection == "Sleep" ]]; then
	systemctl suspend
else
	shutdown -c
	hyprctl dismissnotify
fi

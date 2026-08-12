#!/bin/bash


selection=$(echo "Sleep
Log out
Reboot
Shutdown
Exit waybar" | rofi -dmenu -i -p "power" -lines 4 -theme $HOME/.config/rofi/themes/hyprpwrm.rasi 2> /dev/null)

if [[ $selection == "Reboot" ]]; then
	systemctl reboot
elif [[ $selection == "Shutdown" ]]; then
  systemctl poweroff
elif [[ $selection == "Log out" ]]; then
	loginctl terminate-user $USER
elif [[ $selection == "Sleep" ]]; then
	systemctl suspend
elif [[ $selection == "Exit waybar" ]]; then
	killall waybar
fi

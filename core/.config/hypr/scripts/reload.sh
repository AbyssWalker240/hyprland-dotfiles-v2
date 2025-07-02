#!/bin/bash

dunstify "Reloading configs..." -r 241 -i /dev/null
killall dunst
pkill -SIGUSR2 waybar
pkill -SIGUSR1 kitty
hyprctl reload
$HOME/.config/waybar/scripts/cyclewall -n
dunstify "Configs reloaded" -r 241 -i /dev/null

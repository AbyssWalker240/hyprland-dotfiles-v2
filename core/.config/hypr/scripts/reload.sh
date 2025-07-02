#!/bin/bash

killall dunst
pkill -SIGUSR2 waybar
pkill -SIGUSR1 kitty
hyprctl reload
$HOME/.config/waybar/scripts/cyclewall -n
dunstify "Reloading configs..." -i /dev/null

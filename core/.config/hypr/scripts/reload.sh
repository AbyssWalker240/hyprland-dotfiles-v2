#!/bin/bash

killall dunst
pkill -SIGUSR2 waybar
hyprctl reload
$HOME/.config/waybar/scripts/cyclewall -n
dunstify "Reloading configs..." -i /dev/null

#!/bin/bash

killall dunst &> /dev/null
pkill -SIGUSR2 waybar
hyprctl reload
dunstify "Reloading configs..." -i /dev/null

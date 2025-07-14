#!/bin/bash

ffplay -nodisp -autoexit -volume 40 \
  $HOME/.local/share/dotswap-assets/windowsxp.mp3 &> /dev/null & \
  dunstify "Reloading configs..." -r 241 -i /dev/null
killall dunst
killall waybar
waybar &> /dev/null & pkill -SIGUSR1 kitty
hyprctl reload &> /dev/null
$HOME/.config/hypr/scripts/cyclewallv2.sh --default
dunstify "Configs reloaded" -r 241 -i /dev/null

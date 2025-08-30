#!/usr/bin/env bash

OPTIONS="Change Wallpaper
Calculator
Network
Kill Process
Power Options"

selection="$(echo "$OPTIONS" | rofi -dmenu -i -p "utilities" \
  -theme $HOME/.config/rofi/themes/hyprmed.rasi 2> /dev/null)"

case $selection in
  "Change Wallpaper")
    $HOME/.config/hypr/scripts/cyclewallv2.sh
    ;;
  "Calculator")
    $HOME/.local/bin/scripts/rofi-utils/calc/calc.sh
    ;;
  "Network")
    $HOME/.config/waybar/scripts/impala.sh
    ;;
  "Kill Process")
    $HOME/.local/bin/scripts/rofi-utils/killmenu.sh
    ;;
  "Power Options")
    $HOME/.config/hypr/scripts/powerMenu.sh
    ;;
esac

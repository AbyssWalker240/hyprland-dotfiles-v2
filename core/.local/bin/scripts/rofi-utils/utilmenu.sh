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
    $HOME/.local/bin/scripts/hyprland-utils/cyclewallv2.sh
    ;;
  "Calculator")
    $HOME/.local/bin/scripts/rofi-utils/calc/calc.sh
    ;;
  "Network")
    $HOME/.local/bin/scripts/waybar-utils/impala.sh
    ;;
  "Kill Process")
    $HOME/.local/bin/scripts/rofi-utils/killmenu.sh
    ;;
  "Power Options")
    $HOME/.local/bin/scripts/rofi-utils/powerMenu.sh
    ;;
esac

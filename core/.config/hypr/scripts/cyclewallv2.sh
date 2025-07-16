#!/usr/bin/env bash

walls="$(ls $HOME/Pictures/Wallpapers)"

if [ "$1" == "--default" ]; then
  selection="$(echo "$walls" | head -n 1)"
else
  selection="$(echo "$walls" | rofi -dmenu -i -p "wallpaper" \
    -theme $HOME/.config/rofi/themes/hyprsubaru.rasi 2> /dev/null)"
fi

[[ -z "$selection" ]] && exit 1

swww img -t center \
--transition-duration 1 --transition-fps 120 \
"$HOME/Pictures/Wallpapers/${selection}"

#!/bin/bash

OUTDIR=$HOME/Pictures/hyprshots

selection=$(echo "Entire Screen
Window
Region" | rofi -dmenu -i -p "screenshot" -lines 4 -theme $HOME/.config/rofi/themes/hyprmed.rasi)

if [[ $selection == "Entire Screen" ]]; then
	hyprshot -m output -t 3000 -o $OUTDIR
elif [[ $selection == "Window" ]]; then
	hyprshot -m window -t 3000 -o $OUTDIR
elif [[ $selection == "Region" ]]; then
	hyprshot -m region -t 3000 -o $OUTDIR
fi

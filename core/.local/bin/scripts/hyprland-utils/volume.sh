#!/bin/bash

if [[ "$1" = "up" ]]; then
  wpctl set-volume @DEFAULT_SINK@ 5%+
elif [[ "$1" = "down" ]]; then
  wpctl set-volume @DEFAULT_SINK@ 5%-
else
  echo "Invalid argument, please pass 'up' or 'down'"
  # exit 1
fi

currentVolume=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print $2}')
currentVolume=$(echo "scale=0; $currentVolume * 100 / 1" | bc)

dunstify -r 240 Volume "${currentVolume}%" -i /dev/null


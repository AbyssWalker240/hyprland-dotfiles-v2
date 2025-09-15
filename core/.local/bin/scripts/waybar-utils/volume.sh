#!/usr/bin/env bash

currentVolume=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print $2}')
currentVolume=$(echo "scale=0; $currentVolume * 100 / 1" | bc)

case "$1" in
  *)
    echo "$currentVolume"
    ;;
esac

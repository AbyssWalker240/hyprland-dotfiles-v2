#!/usr/bin/env bash

case "$1" in
  "up")
    playerctl -p spotify volume 0.05+
    ;;
  "down")
    playerctl -p spotify volume 0.05-
    ;;
  *)
    echo "Invalid arg" && exit 1
    ;;
esac

VOLUME="$(awk -v n="$(playerctl -p spotify volume)" 'BEGIN { printf "%.0f%%\n", n * 100 }')"

dunstify -r 240 "Spotify Volume" "${VOLUME}" -i /dev/null

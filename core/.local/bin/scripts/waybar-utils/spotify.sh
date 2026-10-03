#!/usr/bin/env bash

if ! playerctl -p spotify,spotify_player status > /dev/null; then
  exit 1
fi

TITLE="$(playerctl -p spotify metadata title)"
ARTIST="$(playerctl -p spotify metadata artist)"

VOLUME="$(awk -v n="$(playerctl -p spotify volume)" 'BEGIN { printf "%.0f%%\n", n * 100 }')"

STATUS="$(playerctl -p spotify status)"

function playpause() {
  if [ "$STATUS" = "Paused" ]; then
    echo -e " \uf04b "
  else
    echo -e " \uf04c "
  fi
}

case "$1" in
  "title")
    echo "$TITLE"
    ;;
  "artist")
    echo " - $ARTIST"
    ;;
  "playpause")
    playpause
    ;;
  "prev")
    echo -e " \uf048 "
    ;;
  "next")
    echo -e " \uf051 "
    ;;
  "icon")
    echo -e " \uf1bc "
    ;;
  "vol-icon")
    echo -e " \uf028 "
    ;;
  "vol")
    echo "$VOLUME"
    ;;
  "sep")
    echo "|"
    ;;
  *)
    exit 1
    ;;
esac

#!/usr/bin/env bash

if ! playerctl -p spotify,spotify_player status > /dev/null; then
  exit 1
fi

TITLE="$(playerctl -p spotify,spotify_player metadata title)"
ARTIST="$(playerctl -p spotify,spotify_player metadata artist)"

STATUS="$(playerctl -p spotify,spotify_player status)"

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
  "sep")
    echo "|"
    ;;
  *)
    exit 1
    ;;
esac

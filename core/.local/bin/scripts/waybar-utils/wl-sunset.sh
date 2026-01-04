#!/usr/bin/env bash

CACHEFILE="${HOME}/.cache/waybar-wlsunset.state"

if ! [ -f "$CACHEFILE" ]; then
  echo "Off" > "$CACHEFILE"
fi

cache="$(cat $CACHEFILE)"

case "$1" in
  "toggle")
    if [ "$cache" = "Off" ]; then
      echo "On" | tee "$CACHEFILE"
      killall wlsunset &> /dev/null
      setsid wlsunset &> /dev/null < /dev/null &
    fi
    if [ "$cache" = "On" ]; then
      echo "Auto" | tee "$CACHEFILE"
      killall wlsunset &> /dev/null
      setsid wlsunset -l 43.4 -L -83.9 &> /dev/null < /dev/null &
    fi
    if [ "$cache" = "Auto" ]; then
      echo "Off" | tee "$CACHEFILE"
      killall wlsunset &> /dev/null
    fi
    ;;
  "query")
    echo "$cache"
    ;;
  "init")
    if [ "$cache" = "On" ]; then
      killall wlsunset &> /dev/null
      setsid wlsunset &> /dev/null < /dev/null &
    fi
    if [ "$cache" = "Auto" ]; then
      killall wlsunset &> /dev/null
      setsid wlsunset -l 43.4 -L -83.9 &> /dev/null < /dev/null &
    fi
    if [ "$cache" = "Off" ]; then
      killall wlsunset &> /dev/null
    fi
    ;;
  *)
    exit 1
    ;;
esac

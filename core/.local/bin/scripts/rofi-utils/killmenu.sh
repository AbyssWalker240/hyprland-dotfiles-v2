#!/usr/bin/env bash

selection="$(ps -a -o comm --no-headers | sort -u | rofi -dmenu -i \
  -p "kill process" 2> /dev/null)"

[ -z "$selection" ] && exit

killall "$selection"

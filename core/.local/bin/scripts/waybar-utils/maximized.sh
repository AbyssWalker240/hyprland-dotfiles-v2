#!/usr/bin/env bash

output="0"

fullscreenstate="$(hyprctl activewindow -j | jq -c '.fullscreen')"

[ "$fullscreenstate" = "1" ] && echo "[Maximized]"

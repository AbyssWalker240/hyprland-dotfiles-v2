#!/bin/bash


wpctl set-volume @DEFAULT_SINK@ 5%-

currentVolume=$(wpctl get-volume @DEFAULT_AUDIO_SINK@)


hyprctl dismissnotify
hyprctl notify 1 5000 0 $currentVolume

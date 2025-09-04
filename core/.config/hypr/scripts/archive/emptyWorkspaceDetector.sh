#/usr/bin/env bash

while true; do
  hyprctl activeworkspace | awk '$1 == "windows:" {print $2}'
  sleep 0.1
  # test output and display desktop widget
done

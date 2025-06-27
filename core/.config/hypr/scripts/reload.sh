#!/bin/bash

pkill -SIGUSR2 waybar
hyprctl reload

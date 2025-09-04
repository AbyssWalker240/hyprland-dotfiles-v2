#!/bin/bash


searchTerm=$(rofi -dmenu -p "web search" -theme "/home/rosetta/.config/rofi/themes/hyprsearch.rasi")

if [[ $searchTerm == "" ]]; then
	echo "close"
else
	firefox --search "$searchTerm"
fi

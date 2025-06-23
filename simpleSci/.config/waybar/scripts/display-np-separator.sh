#!/bin/bash

if display=$(playerctl -p spotify,spotify_player status); then
	echo "$1"
else
	exit
fi

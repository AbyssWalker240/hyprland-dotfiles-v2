#!/bin/bash

title=$(playerctl -p spotify,spotify_player metadata title)
artist=$(playerctl -p spotify,spotify_player metadata artist)

echo "$title - $artist"

#!/bin/python

import subprocess
import os
import sys

#  Decide if script will advance wallpaper or simply set it (to be run in hyprland.conf to keep last set wallpaper)
advance = 1
if(len(sys.argv) > 1):
    if(sys.argv[1] == "-n"):
        advance = 0

#  Get list of files in wallpaper directory and count them
pathList = os.listdir("/home/rosetta/Pictures/Wallpapers")
pathList.sort()

amount = 0
for i in pathList:
    amount += 1

#  Advance wallpaper index and reset when out of range (or create cache file if not already existing)
try:
    with open("/home/rosetta/.cache/currentWallpaper.conf", "r+") as f:
        try:
            index = int(f.read())
        except:
            index = 1

        index += advance
    
        if(index > amount):
            index = 1
    
        f.seek(0)
        f.write(str(index))
        f.truncate()
        
except FileNotFoundError:

    with open("/home/rosetta/.cache/currentWallpaper.conf", "w") as f:
        index = 1
        f.write(str(index))

#  Adjust because arrays start at zero
index -= 1

#  Execute the wallpaper change and notify user
wallPath = "/home/rosetta/Pictures/Wallpapers/"+pathList[index]

hyprArg = "DP-3,"+wallPath

subprocess.run(["hyprctl","hyprpaper","reload",hyprArg])

print(F"Wallpaper has been set to wall {index+1}: '{pathList[index]}'")

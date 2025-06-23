#!/bin/bash

BGI=5
BGO=20

SGI=0
SGO=0

if [ $GS == 1 ]; then
	echo "Big Gaps"
	echo "$BGI"
	echo "$BGO"
	GS=0
elif [ $GS == 0 ]; then
	echo "Small Gaps"
	echo "$SGI"
	echo "$SGO"
	GS=1
else
	echo "Uh oh!"
fi

export GS

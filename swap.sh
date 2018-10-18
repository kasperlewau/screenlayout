#!/bin/bash

office=`xrandr | grep "^DP-1-1 connected"`
home=`xrandr | grep "^DP-1 connected"`

if [ ! -z "$office" ]; then
	./office.sh
elif [ ! -z "$home" ]; then
	./home.sh
else
	./mobile.sh
fi

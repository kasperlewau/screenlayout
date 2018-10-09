#!/bin/bash
xrandr | grep "DP-1-1 connected"
if [[ $? == 0 ]]; then
	xrandr --output eDP-1 --mode 1920x1080 --pos 5120x360 --rotate normal --output DP-2 --off --output DP-1 --off --output DP-1-3 --off --output DP-1-2 --mode 2560x1440 --pos 0x0 --rotate normal --output DP-1-1 --primary --mode 2560x1440 --pos 2560x0 --rotate normal
else
	xrandr --output eDP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DP-2 --off --output DP-1 --off --output DP-1-3 --off --output DP-1-2 --off --output DP-1-1 --off
fi



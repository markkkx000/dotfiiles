#!/bin/bash

network_icon=$(/home/mark/Documents/Scripts/network.sh)
battery_icon=$(/home/mark/Documents/Scripts/battery.sh)

### --- Output Both --- ###
echo -e "<span font='16' rise='2000'>$network_icon</span>  $battery_icon"

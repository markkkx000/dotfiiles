#!/bin/bash

battery_path="/sys/class/power_supply/BAT0"

if [ -d "$battery_path" ]; then
    battery_percentage=$(cat "$battery_path"/capacity)
    charging_status=$(cat "$battery_path"/status)
    # charging_status="Not Charging" # for debugging

    if [ "$battery_percentage" -ge 80 ]; then
        battery_icon=""
    elif [ "$battery_percentage" -ge 60 ]; then
        battery_icon=""
    elif [ "$battery_percentage" -ge 40 ]; then
        battery_icon=""
    elif [ "$battery_percentage" -ge 20 ]; then
        battery_icon="<span color='orange'></span>"
    else
        battery_icon="<span color='red'></span>"
    fi

    if [[ "$charging_status" == "Charging" ]]; then
        battery_icon="${battery_icon} <span font='10' rise='4500'></span>"
    else
        battery_icon="${battery_icon}      "
    fi

    echo "$battery_icon"
else
    echo "Battery not found"
fi

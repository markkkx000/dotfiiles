#!/bin/bash

# Get first wireless and ethernet interface names
WIFI_IFACE=$(ip link | awk -F: '/^[0-9]+: (wl|wlp)/ {print $2}' | head -n1 | tr -d ' ')
ETH_IFACE=$(ip link | awk -F: '/^[0-9]+: (en|eth)/ {print $2}' | head -n1 | tr -d ' ')

# Read their operational state
WIFI_STATE=$(cat /sys/class/net/$WIFI_IFACE/operstate 2>/dev/null)
ETH_STATE=$(cat /sys/class/net/$ETH_IFACE/operstate 2>/dev/null)

# Font Awesome icons
WIFI_ICON="" # 
ETH_ICON=""  # 
WARN_ICON="" # 

if [ "$ETH_STATE" = "up" ]; then
    network_icon="$ETH_ICON"
elif [ "$WIFI_STATE" = "up" ]; then
    network_icon="$WIFI_ICON"
else
    network_icon="$WARN_ICON"
fi

echo "$network_icon"

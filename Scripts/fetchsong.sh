#!/bin/bash

# Font Awesome music icon (unicode)
icon=$'' # Font Awesome:  (music note)

# Get metadata using playerctl
title=$(playerctl metadata title 2>/dev/null)
artist=$(playerctl metadata artist 2>/dev/null)
status=$(playerctl status 2>/dev/null)

# If nothing is playing or no player is active
if [[ -z "$title" || -z "$artist" || "$status" != "Playing" ]]; then
    echo ""
else
    echo "$icon   $artist – $title"
fi

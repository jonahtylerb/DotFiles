#!/bin/bash

# Get current time and day
HOUR=$(date +%H)
MINUTE=$(date +%M)
DAY=$(date +%u) # 1 (Monday) to 7 (Sunday)

# Convert current time to minutes since midnight
CURRENT_MINUTES=$((10#$HOUR * 60 + 10#$MINUTE))

# Time window: 5:00 (300) to 7:20 (440)
if [ "$DAY" -ge 1 ] && [ "$DAY" -le 5 ] && [ "$CURRENT_MINUTES" -ge 300 ] && [ "$CURRENT_MINUTES" -le 440 ]; then
  xdg-open "https://stream.jw.org"
else
  kitty --hold fastfetch &
fi

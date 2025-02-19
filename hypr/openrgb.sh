#!/bin/bash

# Define work hours (24-hour format)
WORK_START=6
WORK_END=17

# Get current hour and day of week
CURRENT_HOUR=$(date +%H)
CURRENT_DAY=$(date +%u) # 1=Monday, 7=Sunday

# Remove leading zero from hour
CURRENT_HOUR=$((10#$CURRENT_HOUR))

# Check if current time is Monday–Friday and within work hours
if [ "$CURRENT_DAY" -ge 1 ] && [ "$CURRENT_DAY" -le 5 ] &&
  [ "$CURRENT_HOUR" -ge "$WORK_START" ] && [ "$CURRENT_HOUR" -lt "$WORK_END" ]; then
  openrgb --profile Work
else
  openrgb --profile Chil
fi

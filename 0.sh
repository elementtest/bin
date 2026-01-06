#!/bin/bash
# script to simple save a time stamp
# if you use the script again it will update the time stamp
# PURPOSE: to track how much time i spend studying instead of writing it down

FILE="$HOME/.way-to-record-study-time"

# Show previous timestamp if exists
if [ -f "$FILE" ]; then
    echo "Previous timestamp: $(cat $FILE)"
else
    echo "No previous timestamp found."
fi

# Save new timestamp
NOW=$(date '+%Y-%m-%d %H:%M')
echo "$NOW" > "$FILE"
echo "Current timestamp saved: $NOW"


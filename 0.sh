#!/bin/bash

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


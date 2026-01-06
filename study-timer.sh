#!/bin/bash
# basic script to keep track of when i started studying.  
# the time stamp will be saved INSIDE THE FILE
# only one time stamp will be saved every time it's executed

# --- STUDY TIMER SCRIPT ---
# Previous timestamp will be stored in this variable:
LAST_TIMESTAMP="2026-01-06 22:28"

# File of this script
SCRIPT="$0"

# Extract previous timestamp from the script itself
PREV=$(grep '^LAST_TIMESTAMP=' "$SCRIPT" | cut -d'"' -f2)

if [ -n "$PREV" ]; then
    echo "Previous timestamp: $PREV"
else
    echo "No previous timestamp found."
fi

# Get current timestamp
NOW=$(date '+%Y-%m-%d %H:%M')
echo "Current timestamp saved: $NOW"

# Replace the old LAST_TIMESTAMP in this script with the new one
# This uses sed to edit the script in-place
sed -i "s/^LAST_TIMESTAMP=\".*\"/LAST_TIMESTAMP=\"$NOW\"/" "$SCRIPT"


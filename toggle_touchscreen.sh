#!/bin/bash

# Set the touchscreen device ID
TOUCHSCREEN_ID="ELAN25B6:00 04F3:0732"

# Check if the touchscreen is enabled or disabled
STATUS=$(xinput list-props "$TOUCHSCREEN_ID" | grep "Device Enabled" | awk '{print $4}')

if [ "$STATUS" -eq 1 ]; then
    # Touchscreen is currently enabled, disable it
    xinput disable "$TOUCHSCREEN_ID"
    echo "Touchscreen disabled."
else
    # Touchscreen is currently disabled, enable it
    xinput enable "$TOUCHSCREEN_ID"
    echo "Touchscreen enabled."
fi


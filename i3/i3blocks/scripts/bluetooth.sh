#!/usr/bin/env bash
status=$(echo "show" | bluetoothctl 2> /dev/null | grep "Powered: yes" | wc -l)

if [[ $BLOCK_BUTTON -eq 1 ]]; then
    if [[ $status -eq 0 ]]; then
        echo "power on" | bluetoothctl > /dev/null 2>&1 
        echo ""
    else 
        echo "power off" | bluetoothctl > /dev/null 2>&1
        echo "<span color='#686868'></span>"
    fi
    exit 0
fi
if [[ $BLOCK_BUTTON -eq 3 ]]; then
    meta=$(blueman-manager > /dev/null 2>&1 &)
fi
if [[ $status -eq 0 ]]; then
    echo "<span color='#686868'></span>"
else 
    echo ""
fi

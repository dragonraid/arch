#!/usr/bin/env bash
STEP=5
if [[ $BLOCK_BUTTON -eq 4 ]]; then
    xbacklight -dec $STEP
elif [[ $BLOCK_BUTTON -eq 5 ]]; then
    xbacklight -inc $STEP
fi
printf "%.0f%%\n" $(xbacklight -get)

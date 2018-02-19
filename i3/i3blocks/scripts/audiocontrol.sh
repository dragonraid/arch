#!/usr/bin/env bash
muted=$(amixer get Master | grep 'Front Left: Playback' | awk '{print $6}' | tr -d '[]')
level=$(amixer get Master | grep 'Front Left: Playback' | awk '{print $5}' | tr -d '[]%')

if [[ $muted == "off" ]]; then
    icon=
elif [[ $level -le 30 ]]; then
    icon=
else
    icon=
fi

if [[ $BLOCK_BUTTON -eq 1 ]]; then
    /etc/nixos/nixos.d/pulseaudio/pamv.sh
    # mute
    # set icon to mute
elif [[ $BLOCK_BUTTON -eq 4 ]]; then
    /etc/nixos/nixos.d/pulseaudio/padv.sh
    # volume down
elif [[ $BLOCK_BUTTON -eq 5 ]]; then
    /etc/nixos/nixos.d/pulseaudio/paiv.sh
    # volume up
fi

echo "$icon $level%"

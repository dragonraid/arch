#!/usr/bin/env bash
enabled=$(nmcli radio wifi)
connected=$(nmcli networking connectivity check)

if [[ $enabled == "enabled" ]] && [[ $connected == "full" ]]; then
    echo 
else
    echo 
fi

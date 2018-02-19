#!/usr/bin/env bash
if [[ ! -z "$BLOCK_BUTTON"  ]]; then
    xkb-switch -n
fi
xkblayout-state print %s | awk '{print $0}'

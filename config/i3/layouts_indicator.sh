#!/bin/bash
LAYOUT=$(xset -q | awk 'NR==2 {print $NF}')
[[ "$LAYOUT" = "00000000" ]] && echo "US" || echo "AR"











#!/bin/bash

LAYOUT=$(xset -q|grep LED| awk '{ print $10 }')
[[ "$LAYOUT" = "00000000" ]] && echo "us" || echo "ar"












#!/usr/bin/env bash

theme=${1:-$i3config/rofi_Monokai.rasi}
rofi -show window \
    -config $theme \
    -fullscreen \
    -padding 200 \
    -columns 2 \
    -modi "window,run,ssh"


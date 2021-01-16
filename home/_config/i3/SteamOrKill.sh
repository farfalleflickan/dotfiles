#!/bin/bash
winID=$(xdotool getactivewindow)
winClass=$(xprop -id $winID WM_CLASS)
if [[ $winClass = *"Steam"* ]]; then
    xdotool windowunmap $(xdotool getactivewindow)
    exit
elif [[ $winClass = *"Thunderbird"* ]]; then
    i3-msg kill
    thunderbird --headless & 
    exit
else
    i3-msg kill
    exit;
fi

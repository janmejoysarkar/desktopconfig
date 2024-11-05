#!/bin/bash
$HOME/.config/i3/i3_monitor.sh
dunst &
picom &
dropbox &
xset s noblank & #disables screensaver screenblanking
xset s off & #disables screensaver
xset dpms 600 600 600 &
blueman-applet &
notify-send 'Hello' $USER &


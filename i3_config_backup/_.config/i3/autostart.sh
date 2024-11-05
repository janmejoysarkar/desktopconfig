#!/bin/bash
dunst &
/home/janmejoyarch/scripts/dropbox.py start &
nitrogen --restore &
xset s 540 &
xset dpms 600 600 600 &
picom &
notify-send 'Hello' $USER &


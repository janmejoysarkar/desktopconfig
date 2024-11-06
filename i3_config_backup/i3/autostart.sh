#!/bin/bash
dunst &
/home/janmejoyarch/dropbox.py start &
nitrogen --restore &
xset s 540 &
xset dpms 600 600 600 &
picom &
solaar &
notify-send 'Hello' $USER &


#!/bin/bash
state=$(xrandr --verbose | grep -i gamma | head -n1 | cut -d':' -f4)
if [ $state == "1.0" ]
then
	xrandr --output `xrandr --listactivemonitors | tail -1 | awk '{print $4}'` --brightness 0.75 --gamma 1:0.6:0.5
	echo "❨"
else
	xrandr --output `xrandr --listactivemonitors | tail -1 | awk '{print $4}'` --gamma 1:1:1
	echo "⦿"
fi

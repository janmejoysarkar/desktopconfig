#!/bin/bash

#watch -n5 -t "date -u +'%F %H:%M:%S UTC' && date +'%F %H:%M:%S IST' && "

world_clock () {
	echo `TZ=UTC date +'%Y-%m-%d | %H:%M:%S'` 'UTC: SUIT'
	echo `TZ=Asia/Kolkata date +'%Y-%m-%d | %H:%M:%S'` 'IST: Udaipur'
	echo `TZ=MST date +'%Y-%m-%d | %H:%M:%S'` 'MST: Dunn'
}
while :
do
	clear
	world_clock; sleep 5
done



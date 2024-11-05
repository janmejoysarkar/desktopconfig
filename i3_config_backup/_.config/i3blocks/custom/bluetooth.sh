#!/bin/bash

BT=$(rfkill | grep -m 2 ideapad_bluetooth | cut -d" " -f5)

if [ "$BT" = "unblocked" ]
then
	echo "🔵"
else
	echo " "
fi

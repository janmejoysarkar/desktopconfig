#!/bin/bash

var="$(cat /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode)"

if [[ $var -eq 0 ]] #disabled
then
	echo '♥ '
elif [[ $var -eq 1 ]]	#enabled
then
	echo '❣ '
fi

#!/bin/bash

Threshold=80

Usage=$( df / | grep / | awk '{print $5}' | sed s'/%//g')

if [ $Usage -gt $Threshold ]; then
	echo "Alert: Disk Usage is above $Threshold% - CUrrently at $Usage"
else
	echo "Disk usage is normal: $Usage"
fi

#!/bin/bash

THRESHOLD=80

USAGE=$(df -h / | grep -v Filesystem | awk '{print $5}' | cut -d'%' -f1)

if [ $USAGE -gt $THRESHOLD ];then
	echo "WARNING: DISK CAPACITY IS $USAGE% !!"
else
	echo "DISK CAPACITY HAS NOT PROBLEM : $USAGE%"
fi




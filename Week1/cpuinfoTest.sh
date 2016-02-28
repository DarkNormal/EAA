#!/bin/bash

cpuCnt=`more '/proc/cpuinfo' | grep 'processor' | wc -l`;

if [ $cpuCnt -lt '2' ]
	then
	printf "Required: 2 \nCurrent: $cpuCnt\n"
	else
	printf "Current: $cpuCnt"
fi

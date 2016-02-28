#!/bin/bash

totalProc=`ps -ef | wc -l`
rootProc=`ps -U root -u root u | wc -l`
echo $totalProc "  " $rootProc
nonRootProc=$(($totalProc - $rootProc))
if [[ "$nonRootProc" -gt "$1" ]]
	then
	if ! [ -d "$HOME/EAA/Week2/logs" ]
		then
		mkdir $HOME/EAA/Week2/logs
	fi
	echo "$(date) Max number of non-root ($nonRootProc) processes exceeded" >> $HOME/EAA/Week2/logs/log.txt;
	else
	echo "limit not exceeded $nonRootProc"
fi


#!/bin/bash

if [[ $USER == "eaauser" || $USER == "root" ]]; then
	echo "Authorized access"
	logDir=$HOME/eaa/logs
	totalCnt=`ps -ef | wc -l`
	rootCnt=`ps -U root -u root u | wc -l`
	nonRootCnt=$(($totalCnt - $rootCnt))

	if [[ "$nonRootCnt" -gt "$1" ]]; then
		if [[ -d "$logDir" ]]; then
			echo "$(date) Max number of non-root ($1) processes exceeded" >> $HOME/eaa/logs/wk2.logs
		else
			mkdir $logDir
		fi
	fi
else
	echo "Unauthorized access"
fi
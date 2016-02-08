#!/bin/bash

if [ $USER == "eaauser" ]; then

read var

if ! [ -d "$HOME/eaa/logs" ]; then	
	mkdir $HOME/eaa/logs
fi
echo "$(date) $var" >> $HOME/eaa/logs/diary.txt

fi

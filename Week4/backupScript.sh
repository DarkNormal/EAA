#!/bin/bash

if [ $1 == true]; then
if ! [ -d "$HOME/EAA/backups" ]; then
	mkdir $HOME/EAA/backups
fi


tar czf Week4Backup.tar.gz $HOME/EAA/Week4

mv Week4Backup.tar.gz $HOME/EAA/backups

else



fi

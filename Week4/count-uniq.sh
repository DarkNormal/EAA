#!/bin/bash

cd $1

file * -b | cut -c 1-12 |sort |  uniq -c >> $HOME/Week4/binDirectoryLog.txt


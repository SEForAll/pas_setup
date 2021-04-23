#!/usr/bin/env bash

while read u
do 
	passwd -d $u
	passwd -e $u
done
exit 0

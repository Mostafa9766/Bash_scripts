#!/bin/bash
# script called mybackup using for utility to create a backup of only files in your home directory.

#x=$(ls ~ -F | grep -v "/")
x=$(ls ~)
for item in $x
do
	if [ -f ~/$item ];then 
		tar cvf $item-archive.tar $item
		echo "$item"
	else
		2>/dev/null
	fi
	
done 


#!/bin/bash

#if [ $# -eq 0 ]; then
#	ls 
#else 
#	ls $1
#fi
#if [[ -d "${!#}" && "$#" -eq 2 ]]; then
path=""
option=""
for item in $*
do 
	if [[ "$#" -eq 1 ]]; then
		ls $1
	elif [[ -d "${!#}" && "$#" -gt 1 ]]; then
                if [ -d $item ];then
			path=$item 
		#	echo "$option"
			ls $option $path 
		else
			option=$item" "$option
		fi
	fi
done











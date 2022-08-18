#!/bin/bash

#a. It copies a file to another

if [ -f $1 ];then
	if [ -d $2 ];then
		echo "error"
	else       
		cp $1 $2
	fi
fi

#if [[ -f "${!#}"  ||  -d "${!#}" ]] && [[ "$#" -eq 2 ]]; then
#if [[ -d "${!#}" && "$#" -eq 2 ]]; then
#if [[ -f "${!#}"  ||  -d "${!#}" ]] && [[ "$#" -eq 2 ]]; then
#	cp ${@:1:$#-1} ${!#}

#	echo "${!#}"
#	echo "$#"
#	echo "${@:1:$#-1} ${!#}"
	
#else
#	if [[ -d "${!#}" && "$#" -eq 2 ]]; then
#elif [[ -d "${!#}"  &&  -f "${@:1:$#-1}" ]] ; then
#	 cp ${@:1:$#-1} ${!#}
#else 
#	echo "Error"
#fi



#echo "$#"
#echo "$*"
#echo "$(($#-1)) "no of argument
#echo "${!#}"
#echo "${@: -1}"

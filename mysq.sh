#!/bin/bash
#a function called mysq that calculate square if its argument.
mysq(){
	
	local sqr=$(("$1"*"$1"))
	echo "$sqr"
	return $sqr
}


sqr=$(mysq 9)
echo " square = $sqr"





#echo "array elements : ${elements[@]}"
#echo "index : ${!elements[@]}"
#echo "no of elements : ${#elements[@]}"



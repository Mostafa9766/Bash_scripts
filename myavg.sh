#!/bin/bash
# script called myavg that calculate average of all numbers entered by a user. Note: use arrays
sum=""
read -p "enter elements u want in array " -a elements
for item in ${elements[@]}
do 
	sum=$(($sum+$item))
done
echo "$sum"
avg=$(($sum/${#elements[@]}))
echo "average = $avg"

#echo "array elements : ${elements[@]}"
#echo "index : ${!elements[@]}"
#echo "no of elements : ${#elements[@]}"



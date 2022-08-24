#!/bin/bash
#a script called myarr that ask a user how many elements he wants to enter in an array, fill the array and then print it.

read -p "enter no of elements u want in array " n
typeset elements[$(($n-1))]
read -p "enter elements u want in array " -a elements

echo "array elements : ${elements[@]}"
echo "index : ${!elements[@]}"
echo "no of elements : ${#elements[@]}"



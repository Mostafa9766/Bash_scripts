#!/bin/bash 

shopt -s extglob
export LC COLLATE=C
read -p "enter any character : " x

case $x in
+([a-z]))
echo "lower case"
;;
+([A-Z]))
echo "upper case"
;;
+([a-zA-Z]))
echo "MIXED"
;;
+([0-9]))
echo "Number"
;;
*)
echo " Nothing "
;;
esac                                        	

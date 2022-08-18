#!/bin/bash

x=$(ls ~)
#echo $x

for item in $x
do 
	sudo chmod +x /home/mostafa/$item 

done
echo "all files and directory in home directore have excute permission"
ls -l ~


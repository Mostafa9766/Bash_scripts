#!/bin/bash
#a. It asks the user about his/her logname.
read -p "Please Enter your login name is " login_name
echo "your login name is $login_name"

#b. It print full info about files and directories in his/her home directory
echo "your full info about files and directories in your home directory"
ls -la  /home/$login_name

#c. Copy his/her files and directories as much as you can in /tmp directory.
cp -r  /home/$login_name /tmp  2>/dev/null
echo " Done now a copy from files in /tmp directory "

#d. Gets his current processes status.
echo "your current processes status"
ps aux |grep "$login_name"



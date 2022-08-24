#!/bin/bash

# a script called chkmail to check for new mails every 10 seconds. Note: mails are saved in /var/mail/usernam.

#Store no of mails in old_mails, new mails are saved in /var/mail/usernam so we can assign it in code manualy but if we want make it reusable take login name from user  

old_mails=$(grep "Message-Id" /var/mail/mostafa |wc -l)
#to check for new mails every 10 seconds> while true and sleep 10s before 
while [ true ]
do
	#body=$(cat /var/mail/mostafa)
	new_mails=$(grep "Message-Id" /var/mail/mostafa |wc -l)
	if [[ new_mails -gt old_mails ]];then
		no_mails=$(($new_mails-$old_mails))
		echo "You have $no_mails new mail in /var/mail/mostafa"

	else 
		echo "There is no new mail"
	fi
	old_mails=$new_mails
	sleep 10

done


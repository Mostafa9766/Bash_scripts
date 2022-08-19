#!/bin/bash

# script called mymail using for utility to send a mail to all users in the system.
#Note: mail body in a file called mtemplate.

# Input email subject. 
read -p "Enter your mail subject : " mail_subject


# Input email body.
echo "Enter the body of mail : "
cat > mtemplate				  # using cat command for multiline input
body=$(cat mtemplate)     # storing the content of file in a variable

#remove last message body. 
rm mtemplate
#get all users in the system.
#users=$(awk -F: "{print $0}" /etc/passwd) can't use awk here cut is better
users=$(cut -d: -f1 /etc/passwd)


#send mail to all users in the system
for item in $users
do
	mail -s "$mail_subject" $item <<< "$body"
	echo "mail has been sent to $item"
done


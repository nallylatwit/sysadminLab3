#/bin/bash

echo "Please enter your first name: "
read fname
reg1="^[A-Z][a-z\-]+"
if [[ ! "$fname" =~ $reg1  ]]; then
	echo "First name must begin with capital letter, and must only contain letters and hyphens."
	exit 1
fi

echo "Please enter your last name: "
read lname
if [[ ! "$lname" =~ $reg1 ]]; then
	echo "Last name must begin with capital letter, and must only contain letters and hyphens."
	exit 1
fi

echo "Please enter your zipcode: "
read zipcode
reg2="[0-9]{5}"
if [[ ! "$zipcode" =~ $reg2 ]]; then
	echo "Zipcode must be a 5-digit number"
	exit 1
fi

echo "Please enter your email address: "
read email
reg3="[A-Za-z0-9\-\.]@[A-Za-z0-9\-\.]"
if [[ ! "$email" =~ $reg3 ]]; then
	echo "Email must be in format: USER@DOMAIN, where both user and domain can only contain letters, numbers, hyphens, and periods."
	exit 1
fi

echo "Validated!"
exit 0

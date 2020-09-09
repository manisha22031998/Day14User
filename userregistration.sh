#! /bin/bash

echo "     USER REGISTRATION SYSTEM     "
Firstname="^[A-Z]+[a-z]*$"
read -p "Enter First Name: " enter_Firstname
if [[ $enter_Firstname =~ $Firstname ]]
then
	echo valid
else
	echo invalid
fi

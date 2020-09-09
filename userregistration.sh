#! /bin/bash

echo "     USER REGISTRATION SYSTEM     "
#patterns
Firstname="^[A-Z]+[a-z]*$"
Lastname="^[A-Z]+[a-z]*$"
#user input
read -p "Enter First Name: " enter_Firstname
read -p "Enter First Name: " enter_Lastname
#Validation Check
if [[ $enter_Firstname =~ $Firstname ]]
then
	echo "FirstName: $enter_Firstname"
else
	echo Invalid First Name
fi
if [[ $enter_Lastname =~ $Lastname ]]
then
        echo "LastName: $enter_Lastname"
else
        echo Invalid Last Name
fi


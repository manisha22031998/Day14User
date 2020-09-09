#! /bin/bash

echo "     USER REGISTRATION SYSTEM     "
#patterns
Firstname="^[A-Z]+[a-z]*$"
Lastname="^[A-Z]+[a-z]*$"
email="^[a-z]+[0-9]*([._-+][0-9a-z]+)*@[0-9a-z]+[.][a-z]{2,4}([.][a-z]{2})*$"
#user input
read -p "Enter First Name: " enter_Firstname
read -p "Enter First Name: " enter_Lastname
read -p "Enter EMAIL ID: " enter_email
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
if [[ $enter_email =~ $email ]]
then
        echo "Email Id: $enter_email"
else
        echo Invalid Email Id
fi

#! /bin/bash

echo "     USER REGISTRATION SYSTEM     "
#patterns
Firstname="^[A-Z]+[a-z]*$"
Lastname="^[A-Z]+[a-z]*$"
email="^[a-z]+[0-9]*([_.+-][0-9a-z]+)*@[0-9a-z]+[.][a-z]{2,4}([.][a-z]{2})*$"
phno="^([91])+ ([0-9]{10})*$"
#user input
read -p "Enter First Name: " enter_Firstname
read -p "Enter First Name: " enter_Lastname
read -p "Enter EMAIL ID: " enter_email
read -p "Enter Mobile Number: " enter_phno
read -p "Enter PASSWORD: " enter_pwd
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
if [[ $enter_phno =~ $phno ]]
then
        echo "Mobile Number: $enter_phno"
else
        echo Invalid Mobile Number
fi
if [[ $enter_pwd =~ [[:alnum:]] && $enter_pwd =~ [[:upper:]] && $enter_pwd =~ [[:lower:]] && $enter_pwd =~ [[:punct:]] && $enter_pwd =~ [[:digit:]] && ${#enter_pwd} -ge 8 ]]
then
        echo "Password Saved"
else
        echo Invalid Password
fi
echo "   -- DONE --    "

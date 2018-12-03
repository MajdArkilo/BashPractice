#! /bin/bash

#echo "Testing my script"

#echo $BASH
#echo $BASH_VERSION
#echo $HOME

#value=10

#echo This value is the number value: $value

#echo "My name is: "
#read name1 name2
#echo "Entered name is: $name1 $name2"

read -p "Username: " username
read -sp "Password: " password
echo
echo "The user name is: $username"
echo "The password is:  $password"

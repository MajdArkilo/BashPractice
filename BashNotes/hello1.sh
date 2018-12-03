#! /bin/bash

#echo "Enter name : "
#read name1 name2 name3
#echo "Entered name : $name1, $name2, $name3"

# to enter input on the same line

#read -p "username : " user_var
#read -sp "password : " pass_var
#echo
#echo "username : $user_var"
#echo "password : $pass_var"

#  -a = read an array
#echo "Enter names: "
#read -a names
#echo "Names : ${names[0]}, ${names[1]}"

echo "Enter name : "
read
echo "Name : $REPLY"

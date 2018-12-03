#! /bin/bash

## /* #3 R E A D   U S E R   I N P U T */

#! /bin/bash

#echo "Enter name : "
#read name1 name2 name3
#echo "Entered name : $name1, $name2, $name3"

# to enter input on the same line

# read -p "username : " user_var
# read -sp "password : " pass_var
# echo
# echo "username : $user_var"
# echo "password : $pass_var"
#
# #  -a = read an array
# echo "Enter names: "
# read -a names
# echo "Names : ${names[0]}, ${names[1]}"
#
# echo "Enter name : "
# read
# echo "Name : $REPLY"



# /* _______________________________________ */

#4 Pass arguments to a Bash Script

#echo $1 $2 $3 '> echo $1 $2 $3'

# Passing arguments as an array. Stores argument as an array
#args=("$@")
#echo "1. With arrays : "${args[0]} ${args[1]} ${args[2]}
#echo "2. Print all arguments at once: " $@

#To know how many arguments your printing do : $#
#echo "3. Number of arguments : "$#

# /* _______________________________________ */

#5 C O N D I T I O N A L S

#      Interger comparisons
#count=10
#if [ $count > 9 ]
#then
#  echo "condition is true"
#fi

# count=10
# if (($count > 9))
# then
#   echo "condition is true"
# fi

#     String comparisons

# word=abc
# To compare 2 strings, you can use : "==" or "=".
#Stick to == to avoid confusion

# Returns true
# if [ $word == "abc" ]
# then
#   echo "condition is true"
# fi

# Return true
# if [ $word != "abcfas" ]
# then
#   echo "condition is true"
# fi

# When using angle brackets using pararenthesis double square
# brackets [[ ]] when dealing with strings
# word=a
# if [[ $word > "y" ]]
# then
#   echo "condition is true"
# else
#   echo "condition is false"
# fi

# word=b
# if [[ $word == "b" ]]
# then
#   echo "condition B is true"
# elif [[ $word == "a" ]];
# then
#   echo "condition A is true"
# else
#   echo "condition is false"
# fi

# /* _______________________________________ */

#6     F I L E   T E S T   O P E R A T O R

#The \c keeps the cursor on the same line.
#Need to have the -e to enable \c
# echo -e "Enter the name of the file : \c"
# read file_name

# To check if FILE EXIST make sure to add "-e" to the conditional
# if [ -e $file_name ]
# then
#   echo "$file_name FOUND"
# else
#   echo "$file_name is NOT FOUND"
# fi

# To check if the file exist AND if it is a regular file or not,
# add "-f" to the
# if [ -f $file_name ]
# then
#   echo "$file_name FOUND"
# else
#   echo "$file_name is NOT FOUND"
# fi

#To check the if DIRECTORY exist, use "-d"
# if [ -d $file_name ]
# then
#   echo "$file_name FOUND"
# else
#   echo "$file_name is NOT FOUND"
# fi

# #To check if the file is EMPTY, use "-s"
# if [ -s $file_name ]
# then
#   echo "$file_name NOT EMPTY"
# else
#   echo "$file_name is EMPTY"
# fi


# /* _______________________________________ */

#7 APPEND OUTPUT TO THE END OF TEXT FILE

# echo -e "Enter the name of the file : \c"
# read file_name
#
# if [ -f $file_name ]
# then
#   # Use "-w" to check if the file has write permission
#   # If the file has the write permission
#   if [ -w $file_name ]
#   then
#     echo "Type some text data. To quit, press ctrl+d."
#     # To APPEND text to the file use do double ">>"
#     # WARNING: if you use single ">", you will overwrite the file!
#     # "chmod -w" will REMOVE the write permission the file.
#     # "chmod +w" will GIVE the write permission the file.
#     cat >> $file_name
#   else
#     echo "The file does not have write permission."
#   fi
# else
#   echo "$file_name does NOT exist"
# fi


# /* _______________________________________ */
# 8 LOGICAL "AND" OPERATOR

# age=25
#
# if [ "$age" -gt 18 ] && [ "$age" -lt 30 ]
# then
#   echo "Success"
# else
#   echo "Age not valid"
# fi

# If you want to use 1 square bracket, use the "-a" (AND)
# between the conditionals :
# age=250
#
# if [ "$age" -gt 18 -a "$age" -lt 30 ]
# then
#   echo "Success"
# else
#   echo "Age not valid"
# fi

# If you want to use && in 1 square bracket, have to have
# double square brackets

# age=250
#
# if [[ "$age" -gt 18 && "$age" -lt 30 ]]
# then
#   echo "Success"
# else
#   echo "Age not valid"
# fi


# /* _______________________________________ */
# 8 LOGICAL "OR" OPERATOR

# age=25
#
# if [ "$age" -gt 18 ] || [ "$age" -lt 30 ]
# then
#   echo "Success"
# else
#   echo "Age not valid"
# fi

# If you want to use "-o", you need to have ONE (single) square bracket, not two!
# age=250
#
# if [ "$age" -gt 18 -o "$age" -lt 30 ]
# then
#   echo "Success"
# else
#   echo "Age not valid"
# fi


# If you want to use "||", you need to have DOUBLE square bracket, not one!
# age=250
#
# if [[ "$age" -gt 18 || "$age" -lt 30 ]]
# then
#   echo "Success"
# else
#   echo "Age not valid"
# fi

# /* _______________________________________ */
# 9 Perform arithmetic operations

# num1=100
# num2=20
#
# #METHOD 1 to perform arithmetic operations
# # echo "Addition       : "$(( num1 + num2 ))
# # echo "Subtraction    : "$(( num1 - num2 ))
# # echo "Division       : "$(( num1 / num2 ))
# # echo "Multiplication : "$(( num1 * num2 ))
# # echo "Modulo         : "$(( num1 % num2 ))
#
# #METHOD 2: Using expr
# echo "Addition       : "$(expr $num1 + $num2 )
# echo "Subtraction    : "$(expr $num1 - $num2 )
# echo "Division       : "$(expr $num1 / $num2 )
# #Using expr on multiplication? make sure to do : "\*"
# echo "Multiplication : "$(expr $num1 \* $num2 )
# echo "Modulo         : "$(expr $num1 % $num2 )

## /* _______________________________________ */
## 11 Floating point math operations
## Bash doesnt support floating point numbers

## Have to use basic calculator function (bc)

# num1=100.56
# num2=20
#
# echo "100.56+5" | bc
# echo "100.56-5" | bc
# echo "100.56*5" | bc
# # Issue with division, so always use "scale=2" (2 is the number of decimal places. Can increase to preference)
# echo "scale=2;100.56/5" | bc
# echo "100.56%5" | bc
#
# echo "$num1+$num2" | bc
# echo "$num1-$num2" | bc

## how to do sq rt?
# num3=47
# ## Cant use bc alone. Have to include math library (-l) where then
# # sqrt function exist
# echo "scale=2;sqrt($num3)" | bc -l
#
# ## How to do x^y?
# echo "scale=2;3^3" | bc -l

## /* _______________________________________ */
## 12 The case statement
##
# vehicle=$1
# case $vehicle in
#   "car" )
#     echo "Rent of $vehicle is 100" ;;
#   "van" )
#     echo "Rent of $vehicle is 80" ;;
#   "bike" )
#     echo "Rent of $vehicle is 50 " ;;
#   "truck" )
#     echo "Rent of $vehicle is 150 " ;;
#     ## * = wildcard. Matches any text
#     * )
#     echo "Unknown vehicle" ;;
# esac

## /* _______________________________________ */
## 13 The case statement example
## http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_07_03.html
echo -e "Enter some character : \c"
read value

case $value in
  [a-z] )
    echo "User entered $value a to z" ;;
  [A-Z] )
  ## JUST IN CASE! If you enter K and get the answer
  ## a to z instead of A to Z, use the hack in terminal
  ## LANG=C. Means your setting the LANG environment to C.
    echo "User entered $value A to Z" ;;
  [0-9] )
    echo "User entered $value 0 to 9" ;;
    ## ? is a pattern that expects 1 letter character
  ? )
    echo "User entered $value special character" ;;
    ## * = awaits for more than 1 character. If user enters
    ## a string for instance, this block of code executes
    * )
    echo "Unknown input" ;;
esac


#!/bin/bash

## https://tuxthink.blogspot.com/2012/05/creating-triangle-of-characters-in.html

#Script to create a triangle in the terminal using the character chosen by the user
cols=`tput cols`
start=$((cols/2))
echo "How many rows do you want"
read rows
echo "What character do you want to use"
read char

tput clear
for((i=0;i<rows;i++))
do
cols=$((start-i))
tput cup $i $cols
for((j=0;j<=i;j++))
do
printf "$char "
done
done
echo""

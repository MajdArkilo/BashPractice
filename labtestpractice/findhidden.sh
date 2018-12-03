#!/bin/bash

##https://askubuntu.com/questions/468901/how-to-show-only-hidden-files-in-terminal

# Using find and awk,
#
# find . -type f | awk -F"/" '$NF ~ /^\..*$/ {print $NF}'
# Explanation:
#
# find . -type f --> List all the files in the current directory along with it's path like,
#
# ./foo.html
# ./bar.html
# ./.foo1
# awk -F"/" '$NF ~ /^\..*$/ {print $NF}'
#
# / as field separator awk checks for the last field staring with a dot or not. If it starts with a dot, then it prints the last field of that corresponding line.

find . -type f | awk -F"/" '$NF ~ /^\..*$/ {print $NF}'


# OLD CODE
# if [ -z $1 ]; then
#   path=$(pwd)
#   #echo "path is empty" $path
# else
#   path=$1
#   #echo "path is not empty" $path
# fi
# cd $path
# for prince in $( ls -a ); do
#   if [ -f $prince ];then
#     case $prince in
#       .?*) echo $prince;;
#     esac
#   fi
# done

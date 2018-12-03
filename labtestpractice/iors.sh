#!/bin/bash

## http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_07_03.html

## iors.sh - determine if its first argument is a string or a number

args=("$@")
#
value=${args[0]}

case $value in
  [0-9]* )
    echo "User entered $value is a NUMBER" ;;
    ## ? is a pattern that expects 1 letter character
  ? )
    echo "User entered $value SPECIAL CHARACTER" ;;
    ## * = awaits for more than 1 character. If user enters
    ## a string for instance, this block of code executes
    * )
    echo "Input is a STRING" ;;
esac

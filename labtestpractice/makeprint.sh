#!/bin/bash

## makeprint.sh - replace all non-printable characters in stdin and copy to stdout


read -p "Enter a word with special characters : " variable
echo $variable | tr -s '=;:`"<>,./?!@*#$%^&(){}[]' ' '

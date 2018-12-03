#!/bin/bash

# https://superuser.com/questions/233616/list-files-bigger-than-filesize-specified

read -p "Enter the size of a file MB only : " var
find . -maxdepth 1 -type f -size +$((var))M

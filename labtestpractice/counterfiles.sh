#!/bin/bash
## countfiles.sh - count the number of files in a directory


if [ -z $1 ]; then
  path=$(pwd)
  #echo "path is empty" $path
else
  path=$1
  #echo "path is not empty" $path
fi
cd $path
counter=0
for prince in $( ls ); do
  if [ -f $prince ];then
    counter=$(($counter+1))
  fi
done
echo $counter

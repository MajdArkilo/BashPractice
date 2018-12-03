#!/bin/bash



# OLD CODE
if [ -z $1 ]; then
  path=$(pwd)
  #echo "path is empty" $path
else
  path=$1
  #echo "path is not empty" $path
fi
cd $path
for prince in $( ls -a ); do
  if [ -f $prince ];then
    case $prince in
      .?*) echo $prince;;
    esac
  fi
done

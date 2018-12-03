#!/bin/bash
if [ -z $1 ]; then
  path=$(pwd)
  #echo "path is empty" $path
else
  path=$1
  #echo "path is not empty" $path
fi
cd $path
for prince in $( ls ); do
  # Using -r (recursively) will remove all the empty folders, including empty folder in the folder
  # NOT having -r will only remove the empty file if
  # there is NOTHING (cant have empty folder or empty file!)
    [ -z "`find $prince -type f`" ] && rm -r $prince

done

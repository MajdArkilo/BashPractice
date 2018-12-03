#!/bin/bash

## rmempty.sh - remove all empty files in a directory

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
  if [ ! -s $prince ]; then
    rm -rf $prince
    echo $prince
  fi
done

target=$(pwd)

## https://stackoverflow.com/questions/20458412/bash-script-find-file-by-user-input
# if [ ! "$(ls -A $target)" ]; then
#     echo -e "Directory $target is empty"
#     exit 0
# fi
#
# found=0
# while read line; do
#     found=$[found+1]
#     echo -e "Found: $line"
# done < <(find "$target" -iname "*$1*" )
#
# if [[ "$found" == "0" ]]; then
#     echo -e "No match for '$1'"
# else
#     echo -e "Total: $found elements"
#
# fi

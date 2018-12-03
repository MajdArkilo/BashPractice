#!/bin/bash

## rpncalc.sh - do a RPC calculator of the command line arguments
## http://infinityquest.com/bash/creating-a-simple-rpn-calculator-in-bash/


# simple RPN command line (integer) calculator
#
# takes the arguments and computes with them
# of the form a b op
# allow the use of x instead of *
#
# error check our argument counts:
# if [ \( $# -lt 3 \) -o \( $(($# % 2)) -eq 0 \) ]
# then
#    echo "usage: calc number number op [ number op ] ..."
#    echo "use x or '*' for multiplication"
#    exit 1
# fi
#
# ANS=$(($1 ${3//x/*} $2))
# shift 3
# while [ $# -gt 0 ]
# do
#    ANS=$((ANS ${2//x/*} $1))
#    shift 2
# done
# echo $ANS

## http://www.math.bas.bg/bantchev/place/rpn/rpn.bash.html

IFS=$' \t'
set -f
while read -r -a tks; do
  ((n = ${#tks[*]}))
  if [ $n -eq 0 ]; then continue; fi
  ((i = 0))
  while :; do
    tk=${tks[i]}
    if [[ $tk =~ ^[-+]?(\.[0-9]+|[0-9]+(\.[0-9]*)?)$ ]]; then
      ((++i))
    elif [[ $tk =~ ^[-+*/%]$ ]]; then
      if [ $i -lt 2 ]; then break; fi
      tks[i-2]=$(echo '6k' ${tks[*]:i-2:3} 'p' | dc)
      tks[i]=
      ((--i))
      tks[i]=
      ((n -= 2))
      tks=(${tks[*]})
    else
      break
    fi
    if [ $i -eq $n ]; then break; fi
  done
  if [ $i -eq $n -a $n -eq 1 ]; then
    echo ${tks}
  else
    echo 'error'
  fi
done

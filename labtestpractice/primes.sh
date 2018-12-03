#!/bin/bash

## primes.sh - print out all prime numbers from 2 to the first argument

## https://technicalworldforyou.blogspot.com/2011/10/finding-prime-number-using-shell-script.html
## https://www.youtube.com/watch?v=DYIkvHlaxQQ


prime_1=0
echo "enter the range"
read n
echo " Primenumber between 1 to $n is:"
echo "1"
echo "2"
for((i=3;i<=n;))
do
  for((j=i-1;j>=2;))
  do
    if [  `expr $i % $j` -ne 0 ] ; then
    prime_1=1
    else
    prime_1=0
    break
    fi
j=`expr $j - 1`
done
if [ $prime_1 -eq 1 ] ; then
echo $i
fi
i=`expr $i + 1`
done

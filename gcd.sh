#!/bin/bash

echo "Enter first number"
read n1

echo "Enter the second number"
read n2

gcd=0

if test $n1 -gt $n2
then
	i=1
	while test $i -le $n1
	do
		a=`expr $n1 % $i`
		b=`expr $n2 % $i`
		if test $a -eq 0 -a $b -eq 0
		then
			if test $gcd -lt $i
			then
				gcd=$i
			fi
		fi
		i=`expr $i + 1`
	done
fi

if test $n2 -gt $n1
then
	i=1
	while test $i -le $n2
	do
		a=`expr $n1 % $i`
		b=`expr $n2 % $i`
		if test $a -eq 0 -a $b -eq 0
		then
			if test $gcd -lt $i
			then
				gcd=$i
			fi
		fi
		i=`expr $i + 1`
	done
fi

echo GCD of $n1 and $n2 = $gcd

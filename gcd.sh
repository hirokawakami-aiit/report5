#!/bin/bash

echo "Enter first number"
read n1

usage()
{
	  echo $n1
}

  if [ -z $n1 ]; then
	  usage
	  exit
  else
	  expr $n1 + 1 >/dev/null 2>&1
  fi
  
  if [ $? -ne 1 -a $? -ne 0 ]; then
	  echo "must be numeric"
	  exit
  elif [ $n1 -lt 0 ]; then
	  echo "must be more than 0"
	  exit
  fi


echo "Enter the second number"
read n2

usage()
{
	echo $n2
}
  if [ -z $n2 ]; then
	  usage
	  exit
  else
	  expr $n2 + 1 >/dev/null 2>&1
  fi
  
  if [ $? -ne 1 -a $? -ne 0 ]; then
	  echo "must be numeric"
	  exit
  elif [ $n2 -lt 0 ]; then
	  echo "must be more than 0"
	  exit
  fi

  
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

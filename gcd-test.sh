#!/bin/bash

result=$(./gcd.sh)
if [ $result = "must be numeric" ] ; then
	echo "OK"
	exit 0
else
	echo "NG"
	exit 1
fi

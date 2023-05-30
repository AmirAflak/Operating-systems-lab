#!/bin/bash

# Assign the arguments to named variables
num1=$1
num2=$2

# Compare the two numbers and print the result
if [ $num1 -gt $num2 ]; then
    echo "$num1 is greater than $num2"
elif [ $num1 -lt $num2 ]; then
    echo "$num2 is greater than $num1"
else
    echo "$num1 and $num2 are equal"
fi

exit 0


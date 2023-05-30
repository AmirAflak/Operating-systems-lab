#!/bin/bash
read -p "Enter the first number: " num1
read -p "Enter the operation (+,-,*,/): " op
read -p "Enter the second number: " num2

case "$op" in
  "+")
    result=$(echo "$num1 + $num2" | bc -l)
    ;;
  "-")
    result=$(echo "$num1 - $num2" | bc -l)
    ;;
  "*")
    result=$(echo "$num1 * $num2" | bc -l)
    ;;
  "/")
    result=$(echo "$num1 / $num2" | bc -l)
    ;;
esac

echo "Result: $result"

#!/bin/bash

echo "Welcome to my calculator!"

read -p "Enter your first number: " num1
read -p "Enter your second number: " num2

echo "Choose an operation:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"

read choice

case $choice in
   1)
      result=$((num1 + num2))
      echo "The sum of $num1 and $num2 is: $result"
      ;;
   2)
      result=$((num1 - num2))
      echo "The difference between $num1 and $num2 is: $result"
      ;;
   3)
      result=$((num1 * num2))
      echo "The product of $num1 and $num2 is: $result"
      ;;
   4)
      if [ $num2 -eq 0 ]; then
         echo "Error: Division by zero is not allowed."
      else
         result=$(echo "scale=2; $num1 / $num2" | bc)
         echo "The quotient of $num1 and $num2 is: $result"
      fi
      ;;
   *)
      echo "Invalid input. Please try again."
      ;;
esac

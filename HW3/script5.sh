#!/bin/bash

# Initialize variables
input=""
reverse=""
sum=0

# Loop until user enters 'q' to quit
while true; do
  # Prompt user for input
  read -p "Enter a number (or 'q' to quit): " input
  
  # Check if input is 'q'
  if [[ "$input" == "q" ]]; then
    break
  fi
  
  # Reverse the input using 'rev' command
  reverse="$(echo $input | rev)"
  
  # Print the reversed input
  echo "Reversed input: $reverse"
  
  # Calculate the sum of the digits
  for (( i=0; i<${#input}; i++ )); do
    digit=${input:i:1}
    sum=$((sum + digit))
  done
done

# Print the final sum
echo "Sum of all entered digits: $sum"

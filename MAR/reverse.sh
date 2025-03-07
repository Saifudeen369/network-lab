#!/bin/bash

# Get user input for the number
echo "Enter a number:"
read num

# Initialize a variable to store the reversed number
reverse=0

# Loop to reverse the number
while [ $num -gt 0 ]; do
  # Get the last digit of the number
  digit=$((num % 10))
  
  # Add the last digit to the reversed number
  reverse=$((reverse * 10 + digit))
  
  # Remove the last digit from the original number
  num=$((num / 10))
done

# Display the reversed number
echo "Reversed number: $reverse"


#!/bin/bash

# Get user input for the string
echo "Enter a string:"
read str

# Reverse the string
reversed_str=$(echo $str | rev)

# Display the reversed string
echo "Reversed string: $reversed_str"

# Compare the original string with the reversed string
if [ "$str" == "$reversed_str" ]; then
  echo "The string is a palindrome."
else
  echo "The string is not a palindrome."
fi


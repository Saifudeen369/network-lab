#!/bin/bash

# Read the number of terms from the user
echo "Enter the number of terms in Fibonacci series:"
read n

# Initialize the first two terms of the Fibonacci sequence
a=0
b=1

echo "Fibonacci series up to $n terms:"

# Loop to print the Fibonacci series
for (( i=0; i<n; i++ ))
do
  # Print the current term
  echo -n "$a "

  # Update the terms for the next iteration
  temp=$a
  a=$b
  b=$((temp + b))
done

echo


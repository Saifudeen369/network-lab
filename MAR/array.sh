#!/bin/bash

# Input the number of elements
echo "Enter the number of elements in the array:"
read n  # This takes the number of elements the user wants to enter

# Initialize an empty array
array=()

# Input elements using a loop
echo "Enter $n elements:"
for ((i=0; i<n; i++)); do
  read element  # Read user input into 'element'
  array+=("$element")  # Add the input element to the array
done

# Display the entire array
echo "The elements in the array are: ${array[@]}"


#!/bin/bash

# Get the user input for the range
echo "Enter the start number:"
read start
echo "Enter the end number:"
read end

# Loop through the numbers in the specified range
echo "Prime numbers between $start and $end:"

for (( num=start; num<=end; num++ ))
do
  is_prime=1
  for (( i=2; i<num; i++ ))
  do
    if (( num % i == 0 )); then
      is_prime=0
      break
    fi
  done

  if (( is_prime == 1 && num > 1 )); then
    echo -n "$num "
  fi
done

echo


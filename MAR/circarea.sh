#!/bin/bash

# Function to calculate the area of the circle
calculate_area() {
  local radius=$1
  local area=$(echo "scale=2; 3.14159 * $radius * $radius" | bc)
  echo "The area of the circle with radius $radius is: $area"
}

# Get the radius from the user
echo "Enter the radius of the circle:"
read radius

# Call the function to calculate and display the area
calculate_area $radius


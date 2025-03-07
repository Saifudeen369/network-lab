#!/bin/bash

# Function to validate password strength
validate_password() {
  local password=$1

  # Check if the password is at least 8 characters long
  if [[ ${#password} -lt 8 ]]; then
    echo "Password should be at least 8 characters long."
    return 1
  fi

  # Check if the password contains at least one uppercase letter
  if [[ ! "$password" =~ [A-Z] ]]; then
    echo "Password should contain at least one uppercase letter."
    return 1
  fi

  # Check if the password contains at least one lowercase letter
  if [[ ! "$password" =~ [a-z] ]]; then
    echo "Password should contain at least one lowercase letter."
    return 1
  fi

  # Check if the password contains at least one digit
  if [[ ! "$password" =~ [0-9] ]]; then
    echo "Password should contain at least one digit."
    return 1
  fi

    # Check if the password contains at least one special character
  if [[ ! "$password" =~ [[:punct:]] ]]; then
    echo "Password should contain at least one special character (e.g., @, #, $, %, etc.)."
    return 1
  fi

  # If all checks pass, password is strong
  echo "Password is strong."
  return 0
}

# Get user input for password
echo "Enter a password to validate:"
read -s password

# Call the function to validate the password
validate_password "$password"


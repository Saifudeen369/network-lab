echo "Enter the second number:"
read num2

# Get the operation to perform
echo "Choose an operation:+,-,*,/,% "
read choice

# Perform the operation using a switch (case) statement
case $choice in
  +)
    result=$((num1 + num2))
    echo "Result: $num1 + $num2 = $result"
    ;;
  -)
    result=$((num1 - num2))
    echo "Result: $num1 - $num2 = $result"
    ;;
  *)
    result=$((num1 * num2))
    echo "Result: $num1 * $num2 = $result"
    ;;
  /)
    if [ $num2 -eq 0 ]; then
      echo "Error: Division by zero is not allowed."
    else
      result=$((num1 / num2))
      echo "Result: $num1 / $num2 = $result"
    fi
    ;;
  %)
    result=$((num1 % num2))
    echo "Result: $num1 % $num2 = $result"
    ;;

  *)
    echo "Invalid choice. Please choose a valid operation."
    ;;
esac


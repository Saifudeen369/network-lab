
echo "Enter the number of elements in the array:"
read n  


array=()


echo "Enter $n elements:"
for ((i=0; i<n; i++)); do
  read element  
  array+=("$element") 
done


echo "The elements in the array are: ${array[@]}"


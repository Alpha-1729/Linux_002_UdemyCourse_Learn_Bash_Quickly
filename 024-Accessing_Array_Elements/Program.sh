#!/bin/bash
# Accessing Array Elements

:'
>>>>
>>>>
>>>>
>>>>
'

# Creating an array in bash.
files=("f1.txt" "f2.txt" "f3.txt" "f4.txt" "f5.txt")

# Prnting the first element of the array.
echo ${files[0]}

# Printing all the element of the array.
echo ${files[*]}
# OR
echo ${files[@]}

# Print the number of elements in the array.
echo ${#files[@]}

# Updating the elements in the array.
files[0]="a.txt"

echo "Hello World"
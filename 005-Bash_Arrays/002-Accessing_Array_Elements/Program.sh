#!/bin/bash
# Accessing Array Elements

: '
>>>>
>>>>
>>>>
>>>>
'

# Creating an array in bash with file names.
files=("f1.txt" "f2.txt" "f3.txt" "f4.txt" "f5.txt")

# Printing the first element of the array.
echo ${files[0]}

# Printing all the elements of the array.
echo ${files[*]}
# OR
echo ${files[@]}

# Printing the number of elements in the array.
echo ${#files[@]}

# Updating the first element of the array.
files[0]="a.txt"

echo "Hello World"

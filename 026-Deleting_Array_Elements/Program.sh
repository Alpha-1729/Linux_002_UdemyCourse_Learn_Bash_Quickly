#!/bin/bash
# Deleting Array Elements

:'
>>>> unset command is used to delete the variable.
>>>>
>>>>
>>>>
'

# Creating an array of numbers.
num=(1 2 3 4 5)
echo ${num[*]}

# Deleting an element at a particular index.
# Remove the element at the third index.
unset num[2]
echo ${num[*]}

# Remove the whole array variable.
unset num
echo ${num[*]}  # Nothing will be printed, because the array is deleted.

echo "Hello World"
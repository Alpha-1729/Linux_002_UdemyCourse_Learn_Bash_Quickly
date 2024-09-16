#!/bin/bash
# Deleting Array Elements

: '
>>>> The `unset` command is used to delete a variable or array element.
>>>>
>>>>
>>>>
'

# Creating an array of numbers.
num=(1 2 3 4 5)
echo ${num[*]}

# Deleting the element at index 2 (third element).
unset num[2]
echo ${num[*]}

# Removing the entire array.
unset num
echo ${num[*]}  # Nothing will be printed because the array is deleted.

echo "Hello World"

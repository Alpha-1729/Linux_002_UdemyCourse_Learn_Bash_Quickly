#!/bin/bash
# Bash Challenge Sorting An Array

: '
>>>> You are given an array like (1 2 3 5 4). You need to sort the array.
>>>> You are only allowed to add and delete elements from the array.
>>>>
>>>>
'

# Given array with elements.
num=(1 2 3 5 4)
echo "Before sorting the array num:"
echo ${num[@]}

# Remove the element at index 3 (value 5) and add it to the end to sort the array.
unset num[3]
num+=(5)

echo "After sorting the array num:"
echo ${num[@]}

echo "Hello World"

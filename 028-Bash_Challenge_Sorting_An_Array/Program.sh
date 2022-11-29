#!/bin/bash
# Bash Challenge Sorting An Array

:'
>>>> You are given an array like (1 2 3 5 4). You need to sort the array.
>>>>
>>>>
>>>>
'

num=(1 2 3 5 4)
echo "Before sorting the array num: "
echo ${num[@]}

unset num[3]
num+=(5)

echo "After sorting array num: "
echo ${num[@]}

echo "Hello World"
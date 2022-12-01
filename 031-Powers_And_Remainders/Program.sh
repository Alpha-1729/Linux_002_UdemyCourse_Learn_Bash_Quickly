#!/bin/bash
# Powers And Remainders

:'
>>>>
>>>>
>>>>
>>>>
'
# Powers
a=$1
b=$2
result=$(($a ** $b))
echo "$1^$2=$result"

# Remainders.
a=$1
b=$2
remainder=$(($a % $b))
echo "Remainder is: $remainder"

echo "Hello World"
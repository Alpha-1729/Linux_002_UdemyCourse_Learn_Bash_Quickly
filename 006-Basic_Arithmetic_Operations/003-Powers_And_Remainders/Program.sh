#!/bin/bash
# Powers And Remainders

: '
>>>>
>>>>
>>>>
>>>>
'

# Power calculation
a=$1
b=$2
result=$(($a ** $b))
echo "$1^$2 = $result"

# Remainder calculation
a=$1
b=$2
remainder=$(($a % $b))
echo "Remainder of $a divided by $b is: $remainder"

echo "Hello World"

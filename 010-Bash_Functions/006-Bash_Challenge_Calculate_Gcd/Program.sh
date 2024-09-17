#!/bin/bash
# Bash Challenge Calculate Gcd

:'
>>>> Create a script named gcd.sh that will calculate the greatest common divisor of two numbers: num1 and num2 (passed as script arguments).
    In mathematics, the greatest common divisor of two or more integers, which are not all zero, is the largest positive integer that divides each of the integers.
    In your script, create a function named common_divisor that tests whether a number evenly divides num1 and num2.
>>>>
>>>>
>>>>
'

num1=$1
num2=$2
gcd=1

function common_divisor() {
    x=$1
    # Check if x divides both num1 and num2 without leaving a remainder.
    if [ $(($num1 % $x)) -eq 0 ] && [ $(($num2 % $x)) -eq 0 ]; then
        return 1
    else
        return 0
    fi
}

# Loop through numbers from 1 to the smaller of num1 and num2.
for ((i=1;i<=$num1 && i<=$num2;i++)); do
    common_divisor $i
    # If common_divisor returns 1, update gcd.
    if [ $? -eq 1 ]; then 
        gcd=$i
    fi
done

echo "The gcd of $num1 and $num2 is: $gcd"

echo "Hello World"

#!/bin/bash
# Multiplication And Division

: '
>>>> Convert gigabyte to megabyte using arithmetic expressions.
>>>>
>>>>
>>>>
'

# Multiplication example to convert GB to MB.
GIGA=$1
MEGA=$(($GIGA * 1024))

echo "$GIGA GB is equal to $MEGA MB"

# Integer division example.
# Output will be the result of integer division.
echo "$((5 / 2))"  # Output will be 2.

# Float division example using bc (basic calculator).
# -l (--mathlib) defines the standard math library and enables floating-point operations.
echo "5 / 2" | bc -l  # Output will be 2.50000

# Example of multiplication with floats.
echo "2.5 * 3" | bc -l

# Example of subtraction with floats.
echo "4.1 - 0.5" | bc -l

echo "Hello World"


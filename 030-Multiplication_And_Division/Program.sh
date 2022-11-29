#!/bin/bash
# Multiplication And Division

:'
>>>> Convert giga byte to megabyte.
>>>>
>>>>
>>>>
'

# Multiplication example.
GIGA=$1
MEGA=$(($GIGA * 1024))

echo "$GIGA GB is equal to $MEGA MB"

# Other example.
# Output will be like integer division.
echo "$((5 / 2))"     # Output will be 2.

# Output will be float division.
# bc -> basic calculator.
# -l(--mathlib) -> Define the standard math library.
echo "5 / 2" | bc -l   # Output will be 2.50000

echo "2.5 * 3" | bc -l

echo "4.1 - 0.5" | bc -l

echo "Hello World"
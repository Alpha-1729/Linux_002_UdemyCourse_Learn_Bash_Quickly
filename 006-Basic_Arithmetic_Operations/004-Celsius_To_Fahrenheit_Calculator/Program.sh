#!/bin/bash
# Celsius To Fahrenheit Calculator

: '
>>>>
>>>>
>>>>
>>>>
'

# Example: Division with scale
echo "scale=2; 3/2" | bc -l  # scale=2 limits output to two decimal places.

# Convert Celsius to Fahrenheit
C=$1
F=$(echo "scale=2; $C * (9/5) + 32" | bc -l)  # scale=2 limits output to two decimal places.
echo "$C degree Celsius is equal to $F degree Fahrenheit."

echo "Hello World"


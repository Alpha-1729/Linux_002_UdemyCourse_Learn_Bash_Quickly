#!/bin/bash
# Celsius To Fahrenheit Calculator

:'
>>>>
>>>>
>>>>
>>>>
'

C=$1
F=$(echo "scale=2; $C * (9/5) + 32" | bc -l)   # scale=2; -> To limit output to two digit.
echo "$C degree Celsius is equal to $F degree Fahrenheit."

echo "Hello World"
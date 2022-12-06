#!/bin/bash
# Using Break And Continue In Loops

:'
>>>>
>>>>
>>>>
>>>>
'

# Break
# Print number till 3.
for ((i=0; i<=10;i++)); do
    echo $i
    if [ $i -eq 3 ]; then
        break
    fi
done

# Continue
# Printing the odd numbers below 10;
for ((i=0;i<=10;i++)); do
    if [ $(($i % 2)) -eq 0 ]; then
        continue
    fi
    echo $i
done

echo "Hello World"
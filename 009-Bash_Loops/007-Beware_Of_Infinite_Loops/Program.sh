#!/bin/bash
# Beware Of Infinite Loops

:'
>>>>
>>>>
>>>>
>>>>
'

# Infinite for loops.
for((;;)); do
    echo "Hello"
done

# Infinite while loops.
while [ true ]; do
    echo "Hello"
done

echo "Hello World"

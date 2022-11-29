#!/bin/bash
# Addition And Subtraction

:'
>>>> Arithmetic expression should be enclosed in parenthesis.
>>>>
>>>>
>>>>
'

# Getting the file size in bytes.
# du -> Disk User
# Output will be file size and the file name.
du -b fileName

# Get the first value from the output.
du -b fileName | cut -f1

# Get the second value from the output.
du -b fileName | cut -f2

# Addition example.
fileSize1=$(du -b $1 | cut -f1)
fileSize2=$(du -b $2 | cut -f1)

echo "File size of $1 is : $fileSize1 bytes"
echo "File size of $2 is : $fileSize2 bytes"

total=$(($fileSize1 + $fileSize2))

echo "Total size is: $total bytes"
echo "Hello World"
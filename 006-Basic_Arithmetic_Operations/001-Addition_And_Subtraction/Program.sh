#!/bin/bash
# Addition And Subtraction

: '
>>>> Arithmetic expressions should be enclosed in double parentheses for evaluation.
>>>>
>>>>
>>>>
'

# Getting the file size in bytes.
# 'du' -> Disk Usage command returns the file size in bytes.
# Output will be the file size and the file name.
du -b fileName

# Get the first value from the output (file size).
du -b fileName | cut -f1

# Get the second value from the output (file name).
du -b fileName | cut -f2

# Example: Getting file sizes and performing addition.

# Get the size of the first file in bytes.
fileSize1=$(du -b $1 | cut -f1)

# Get the size of the second file in bytes.
fileSize2=$(du -b $2 | cut -f1)

echo "File size of $1 is: $fileSize1 bytes"
echo "File size of $2 is: $fileSize2 bytes"

# Perform the addition of both file sizes.
total=$(($fileSize1 + $fileSize2))

echo "Total size is: $total bytes"
echo "Hello World"

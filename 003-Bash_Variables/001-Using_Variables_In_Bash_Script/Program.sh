#!/bin/bash
# Using Variables In Bash Script

: '
>>>>
>>>>
>>>>
>>>>
'

echo "What's your name, stranger?"
read name

# Use double quotes when using variable names to ensure correct variable expansion.
# Without double quotes, the variable may not be expanded correctly.
echo "Hello $name!"

echo "Hello World"

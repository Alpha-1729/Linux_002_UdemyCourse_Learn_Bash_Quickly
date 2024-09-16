#!/bin/bash
# Bash Challenge Print Calendar Of Given Year

: '
>>>>
>>>>
>>>>
>>>>
'

# -n is used to avoid a new line after the prompt.
echo -n "Enter the year:"
read year
echo "Calendar of $year"
cal $year

echo "Hello World"

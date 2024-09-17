#!/bin/bash
# Using Elif Statement

:'
>>>> For using comparison operators in bash:
        <    -lt (less than)
        >    -gt (greater than)
>>>>
>>>>
>>>>
'

AGE=$1

if [ $AGE -lt 13 ]; then
    echo "You are a kid"
elif [ $AGE -lt 20 ]; then
    echo "You are a teenager"
elif [ $AGE -lt 65 ]; then
    echo "You are an adult"
else
    echo "You are an elder"
fi

echo "Hello World"

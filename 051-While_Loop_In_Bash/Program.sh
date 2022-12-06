#!/bin/bash
# While Loop In Bash

:'
>>>> Syntax
        while [ condition ]; do
            [Commands]
        done
>>>>
>>>>
>>>>
'

#  Printing the multiples of 3.
num=1
while [ $num -le 10 ]; do
    echo $(($num * 3))
    num=$(($num + 1))
done

echo "Hello World"
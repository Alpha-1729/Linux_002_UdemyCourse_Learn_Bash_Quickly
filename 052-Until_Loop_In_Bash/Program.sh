#!/bin/bash
# Until Loop In Bash

:'
>>>> Until loop:
        Until loop will stop when the condition become true.
>>>> Syntax
        until [ condition ]; do
            [Commands]
        done
>>>> To convert while loop to until loop.
        Change keyword from while to until.
        Negate the condition of the while loop.
>>>>
'

num=1
until [ $num -gt 10 ]; do
    echo $(($num * 3))
    num=$(($num + 1))
done

echo "Hello World" 
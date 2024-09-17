#!/bin/bash
# Until Loop In Bash

'
>>>> Until loop:
        The until loop will stop when the condition becomes true.
>>>> Syntax
        until [ condition ]; do
            [Commands]
        done
>>>> To convert a while loop to an until loop:
        Change the keyword from while to until.
        Negate the condition of the while loop.
>>>>
'

num=1
until [ $num -gt 10 ]; do
    echo $(($num * 3))
    num=$(($num + 1))
done

echo "Hello World"

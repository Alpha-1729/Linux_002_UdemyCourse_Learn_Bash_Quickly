#!/bin/bash
# Local And Global Variables

:'
>>>> Global variables can be accessed anywhere in the script.pre
>>>>
>>>>
>>>>
'

v1='A'
v2='B'

function myfunc() {
    local v1='C'
    v2='D'
    echo "Inside myfunc(): v1: $v1 v2: $v2"
}

echo "Before calling myfunc(): v1: $v1 v2: $v2"
myfunc
echo "After calling myfunc(): v1: $v1 v2: $v2"

echo "Hello World"
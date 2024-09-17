#!/bin/bash
# Local And Global Variables

:'
>>>> Global variables can be accessed anywhere in the script.
>>>> Get information about local command.
        local --help
>>>>
>>>>
'

v1='A'
v2='B'

function myfunc() {
    local v1='C'   # This creates a local variable v1 within the function, which does not affect the global v1.
    v2='D'         # This modifies the global variable v2.
    echo "Inside myfunc(): v1: $v1 v2: $v2"
}

echo "Before calling myfunc(): v1: $v1 v2: $v2"
myfunc
echo "After calling myfunc(): v1: $v1 v2: $v2"

echo "Hello World"


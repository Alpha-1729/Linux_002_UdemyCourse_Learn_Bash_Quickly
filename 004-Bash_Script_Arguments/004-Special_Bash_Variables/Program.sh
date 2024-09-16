#!/bin/bash
# Special Bash Variables

: '
>>>>
>>>>
>>>>
>>>>
'

# Print the process ID of the current shell.
echo $$

# Print information about the process with ID 2876.
# The `ps` command provides details about running processes.
ps -p 2876

# Print the status of the last executed command.
# A status of 0 indicates that the command was successful.
echo $?

# Print the values of special bash variables.
echo "The name of the script is: $0"
echo "The number of arguments is: $#"
echo "The values of all the arguments are: $@"

echo "Hello World"
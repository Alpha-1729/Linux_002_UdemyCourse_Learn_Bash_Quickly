#!/bin/bash
# Special Bash Variables

:'
>>>>
>>>>
>>>>
>>>>
'

# Print the process id of the current shell.
echo $$

# Print the application name based on the process id.
# The ps command displays information about your running processes, and optionally the processes of other users.M
ps -p 2876

# Print the status of last executed command.
# If the output is 0, then there is no error.
echo $?

# Print the value of the special bash variables.
echo "The name of the script is: $0"
echo "The number of arguments is: $#"
echo "The values of all the arguments is: $@"

echo "Hello World"
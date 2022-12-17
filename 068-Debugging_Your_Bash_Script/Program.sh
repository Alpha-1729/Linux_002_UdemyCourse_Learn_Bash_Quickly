#!/bin/bash
# Debugging Your Bash Script

:'
>>>> When you run the script in the debugging mode, the script will run as usual.
>>>> To create full debugging in bash script.
        #!/bin/bash -x
        OR
        bash -x fileName.sh
>>>> Learn more about the set command.
        set --help 
>>>>
'

# To add a debug point in any portion of the script.
set -x # Activate debugging from here.
echo "Hai Hello"
sex +x # Stop debuggin from here.

echo "Hello World"
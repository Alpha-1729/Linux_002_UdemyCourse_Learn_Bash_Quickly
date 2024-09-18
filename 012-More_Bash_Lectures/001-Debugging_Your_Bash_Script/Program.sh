#!/bin/bash
# Debugging Your Bash Script

:'
>>>> When you run the script in debugging mode, it will print each command before running it, helping you identify issues.
>>>> To enable full debugging in a bash script:
        #!/bin/bash -x  # Add this at the top of your script.
        OR
        Run the script with debugging enabled using:
        bash -x fileName.sh
>>>> To learn more about the `set` command:
        set --help 
>>>>
'

# Partial Debugging.
# To enable debugging only in specific parts of the script.
set -x  # Start debugging from here.
echo "Hai Hello"

set +x  # Stop debugging from here.

echo "Hello World"

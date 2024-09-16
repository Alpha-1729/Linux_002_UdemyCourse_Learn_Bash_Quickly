#!/bin/bash
# Bash Challenge Calculate Net Salary

: '
>>>> Create a bash script named salary.sh that calculates the total net annual salary of an employee.
The script prompts the user to enter a monthly gross salary (before tax) and a tax rate (in percentage).
Finally, the script calculates and displays the total net annual salary (after tax).

Hint: Use the bc command to handle decimals.
>>>>
>>>>
>>>>
'

# Prompt the user for the monthly gross salary.
echo -n "Please enter your monthly gross salary: "
read mgross

# Prompt the user for the tax rate.
echo -n "Please enter your tax rate (in percentage): "
read trate

# Calculate the total net annual salary using the bc command for floating-point arithmetic.
netsalary=$(echo "scale=2; ($mgross * 12) * (100 - $trate) / 100" | bc -l)

# Output the result.
echo "Your total net annual salary is: $netsalary"

echo "Hello World"

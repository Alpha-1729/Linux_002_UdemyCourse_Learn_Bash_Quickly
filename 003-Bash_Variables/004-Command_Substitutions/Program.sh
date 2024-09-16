#!/bin/bash
# Command Substitutions

: '
>>>> Two ways to perform command substitution:
        - variable=$(command)  -> Modern approach, supports nested commands.
        - variable=`command`   -> Older approach (using backticks).
>>>>
>>>>
>>>>
'

TODAY=$(date)
echo $TODAY

tday=`date`
echo $tday

mycal=`cal 2022`
echo $mycal

# Get the kernel version.
kver=`uname -r`
echo $kver

# Get the distribution name.
distro=$(cat /etc/os-release | egrep '^NAME='


#!/bin/bash
# Create And Run First Shell Script

: '
>>>> Shell:
        Shell is a command-line interpreter. It processes user commands and provides output.
        The terminal sends user input to the shell, which generates a response and sends it back for display.
>>>> Bash:
        Bash stands for Bourne Again Shell, a more advanced version of the original shell.
>>>> ZSH:
        All configuration settings for ZSH are stored in the file ~/.zshrc.
>>>> Difference between console, terminal and a shell.
        Reference Link: https://www.hanselman.com/blog/whats-the-difference-between-a-console-a-terminal-and-a-shell
'

# To view the list of different types of shells installed on the system.
# You can also install new shells or uninstall older ones.
cat /etc/shells

# To install ZSH on your system.
sudo apt install -y zsh

# To get the name of the current shell.
echo $SHELL

# To print the shell of the current user if it's bash.
grep bash /etc/passwd

# To change the shell for the current user.
# This change will take effect after switching users.
chsh -s /bin/zsh  # Changes the current user's shell to ZSH.
su - ubuntu       # After switching, the new shell will be ZSH.
chsh -s /bin/bash # Reverts the shell back to Bash.
su - ubuntu       # After switching, the shell is back to Bash.

# To switch between users (su stands for switch user).
sudo su -   # Switch to the root user (sudo required for root access).
su - ubuntu # Switch to the 'ubuntu' user.

# To change the default shell for a specific user.
# The -s option means --shell.
sudo su -
usermod -s /bin/zsh ubuntu  # Changes the default shell for user 'ubuntu' to ZSH.
usermod -s /bin/bash ubuntu # Changes the default shell for user 'ubuntu' back to Bash.
su - ubuntu                 # Switch to the 'ubuntu' user.

# To run a shell script.
bash Program.sh
sh Progran.sh
zsh Program.sh

echo "Hello World"

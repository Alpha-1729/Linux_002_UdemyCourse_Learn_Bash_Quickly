#!/bin/bash
# Create And Run First Shell Script

:'
>>>> Shell
        Shell is a command line interpreter.
        The shell is the program that the terminal sends user input to. The shell generates the output and passes it back to terminal for display.
>>>> Bash -> Bourne Again shell. (Advanced version of the shell)
>>>> All the configuration for the ZSH is available in the file ~/.zshrc
>>>>
'

# To see the different types of shell installed in the system.
# You can install new shell or uninstall older shell.
cat /etc/shells

# Install ZSH
sudo apt install -y zsh

# Get the current shell name.
echo $SHELL

# Print the shell of the current user if it is bash.
grep bash /etc/passwd

# Changing the shell (Changes will be done after switching the user.)
chsh -s /bin/zsh  # It will change the shell for the current user after swithing the user.
su - ubuntu # Then new shell for the current user will be zsh.
chsh -s /bin/bash # It will again change the shell of the user.
su - ubuntu # Then new shell for the current user will be bash.

# Changing the users. (su -> switch user)
sudo su -   # Change user to root, sudo is only required for root.
su - ubuntu # Change user to ubuntu.

# Changing the default shell for a user.
# -s means --shell
sudo su -
usermod -s /bin/zsh ubuntu # Change the default shell for a ubuntu user to zsh. You should have admin privileges to change the shell of a user.
usermod -s /bin/bash ubuntu # Change the default shell for a ubuntu user to bash.
su - ubuntu

# Running a bash script.
bash Program.sh
echo "Hello World"
#!/bin/bash
#Shebang indicating the interpreter used for the script
 
os_type=$(uname -s)  # Assigning the first command-line argument to the variable "uname"

echo "REP --> Let's check your operating system"    # Print a message to the console

if [[ "$os_type" != "Linux" ]]; then # Check if the 'os_type' variable is equal to 'Linux'
    echo "Error: The operating system is not Linux." >> ~/linuxsetup.log # If 'os_type' is not 'Linux', print an error message to the console and append to a log file
    exit 1
else
    echo "The operating system is Linux."
fi

mkdir -p ~/.TRASH  # Create a directory called .TRASH in the user's home directory, if it doesn't exist

if [ -e ~/.vimrc ]; then    # If the file .vimrc exists in the user's home directory...
	mv ~/.vimrc ~/.bup\ vimrc  # ...rename it to .bup vimrc
	echo "The current .vimrc file was changed to '.bup vimrc'" >> ~/linuxsetup.log  # ...add a message to the log file
fi

cat ~/.dotfiles/etc/vimrc > ~/.vimrc # Copies the etc/vimrc to the new.vimrc that now 

echo "source ~/.dotfiles/etc/bashrc custom" >> ~/.bashrc   # Append a line to the user's .bashrc file that sources a custom bashrc file

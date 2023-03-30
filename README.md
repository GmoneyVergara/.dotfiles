# My Dotfiles

These are my dotfile configuration files for different software in Bash.

## .vimrc
This is my custom .vimrc configuration for Vim.

## .bashrc
This is my custom .bashrc configuration for Bash.

### linux.sh
This bash script is designed to set up custom configurations on a Linux system. It first checks if the operating system is Linux and creates a ".TRASH" directory if it doesn't exist. It then renames the ".vimrc" file to ".bup vimrc" and copies the system-wide "vimrc" file to the user's ".vimrc" file. Finally, it appends a line to the user's ".bashrc" file to source a custom "bashrc" file. The script also logs its actions to a log file.

### cleanup.sh
this script is designed to clean up some specific files and directories from the user's home directory. Specifically the vimrc file and .TRASH directory

### bashrc_custom
This is a bash script that sets environment variables, creates aliases, and defines functions. The script sets the PATH environment variable to include the current directory, creates several aliases for commonly used commands, and defines two functions: targzfunc and untarfunc that perform the tasks of compressing and decompressing directories respectively. The script also defines an alias for ssh-ing into a remote server with a specific Ip and port number, and an alias for moving files to a ~/.TRASH directory instead of using the rm command.

### Makefile
This Makefile defines two targets that allow you to run two scripts, and ensures that the scripts have execute permissions before running them.


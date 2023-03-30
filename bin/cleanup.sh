#!/bin/bash

# Check if .vimrc exists before removing it
if [ -e ~/.vimrc ]; then
    rm ~/.vimrc
    echo "The .vimrc file was removed"
fi

# Check if .TRASH directory exists before removing it
if [ -d ~/.TRASH ]; then
    rm -r ~/.TRASH
    echo "The .TRASH directory was removed"
fi

# Remove the custom bashrc line from .bashrc file
sed -i '/source ~\/.dotfiles\/bashrc custom/d' ~/.bashrc

#!/bin/bash

# Define the path to your dotfiles repository
DOTFILES_REPO="/home/mebep/repos/dotfiles"

# Check if .bashrc exists and backup
if [ -f "$HOME/.bashrc" ]; then
    echo "Backing up the original .bashrc to .bashrc.backup"
    mv "$HOME/.bashrc" "$HOME/.bashrc.backup"
else
    echo "No existing .bashrc found, skipping backup."
fi

# Create symbolic link for .bashrc from the dotfiles repository
echo "Creating symbolic link for .bashrc from the dotfiles repository."
ln -s "$DOTFILES_REPO/.bashrc" "$HOME/.bashrc"
echo -e "\n### IMPORTANT ###"
echo "To apply the changes, you need to reload your shell environment."
echo "run: '~/.bashrc'"

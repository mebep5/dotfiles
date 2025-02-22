#!/bin/bash


# THIS WAS CREATED USING CHATGPT THIS IS NOT MY WORK I AM NOT GOOD AT PROGRAMMING!!!
# THIS SCRIPT WAS TESTED AND WORKS
# ------------------------------------------------------------------------------
# install_vim.sh
#
# This script sets up your Vim configuration by:
#   1. Copying the .vimrc file from your repository to your home directory.
#   2. Installing Vundle (if it isn't already installed).
#   3. Installing Vim plugins as defined in your .vimrc.
#
# Assumptions:
#   - This script is located in the root of your cloned dotfiles repository.
#
# Testing:
#   - Run this script from your repository: ./install_vim.sh
#   - Verify that ~/.vimrc is updated.
#   - Verify that ~/.vim/bundle/Vundle.vim exists after the script runs.
#   - Launch Vim to confirm that plugins have been installed.
#
# Citations:
#   - Vundle installation instructions: https://github.com/VundleVim/Vundle.vim :contentReference[oaicite:0]{index=0}
#   - Vim plugin installation command usage: "vim +PluginInstall +qall"
# ------------------------------------------------------------------------------
set -e

# Determine the directory where the script is located (i.e. your repo directory)
REPO_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo "Repository directory: ${REPO_DIR}"

# 1. Copy the .vimrc file to the user's home directory
echo "Copying .vimrc to ${HOME}"
cp "${REPO_DIR}/.vimrc" "${HOME}/.vimrc"

# 2. Check for Vundle and install it if missing
VUNDLE_DIR="${HOME}/.vim/bundle/Vundle.vim"
if [ ! -d "${VUNDLE_DIR}" ]; then
    echo "Vundle not found. Installing Vundle..."
    git clone https://github.com/VundleVim/Vundle.vim.git "${VUNDLE_DIR}"
else
    echo "Vundle is already installed at ${VUNDLE_DIR}"
fi

# 3. Install Vim plugins as specified in the .vimrc using Vundle
echo "Installing Vim plugins..."
vim +PluginInstall +qall

echo "Vim configuration setup is complete."


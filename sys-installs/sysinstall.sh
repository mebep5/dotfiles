#!/bin/bash

# Check EUID
if [[ $EUID -ne 0 ]]; then
    echo "This script requires sudo or root privileges. Please run as root or with sudo."
    exit 1
fi

# Check for apt package manager
if ! command -v apt &> /dev/null; then
    echo "The apt package manager is not available on this system. This script uses apt to install software."
    exit 1
fi

# Prompt the user for software to install
echo "What software would you like to install?"
read -r software_name

# Provide installation information and get user confirmation
echo "This script will install '$software_name'. Do you want to proceed? (y/n)"
read -r confirmation
if [[ $confirmation != "y" ]]; then
    echo "Installation aborted by user."
    exit 0
fi

# Check if software name or command exists
if command -v "$software_name" &> /dev/null; then
    echo "A program named '$software_name' already exists on the system. This may cause conflicts."
    exit 1
fi

# Silently install the software
echo "Installing $software_name..."
if apt install -y "$software_name"; then
    echo "Installation complete."
    echo "You can run '$software_name' to try it."
else
    echo "Installation failed. Please check if the software name is correct."
    exit 1
fi


#!/bin/bash

# Update package list
echo "🔄 Updating package list..."
sudo apt update

# List of packages to install
packages=(
    curl
    git
    vim
    nginx
    htop
    net-tools
    screenfetch
    neofetch
    cmatrix
    unzip
    ansible
    wget
    build-essential
    software-properties-common
)

# Install packages
echo "📦 Installing packages..."
for pkg in "${packages[@]}"; do
    echo "➡️ Installing $pkg"
    sudo apt install -y "$pkg"
done

echo "✅ All packages installed successfully."

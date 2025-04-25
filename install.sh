#!/bin/bash

# Update package list
echo "🔄 Updating package list..."
sudo apt update >/dev/null 2>&1

# List of packages to install
packages=(
    curl
    git
    vim
    nginx
    htop
    net-tools
    traceroute
    screenfetch
    neofetch
    cmatrix
    unzip
    ansible
    sshpass
    wget
    build-essential
    software-properties-common
)

# Install packages
echo "📦 Installing packages..."
for pkg in "${packages[@]}"; do
    echo "➡️ Installing $pkg"
    sudo apt install -y "$pkg" >/dev/null 2>&1
done

echo "✅ All packages installed successfully."

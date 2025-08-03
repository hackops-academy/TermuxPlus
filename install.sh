#!/bin/bash

clear
echo -e "\e[1;92m[+] Installing TermuxPlus Environment...\e[0m"

# Update & Install Essentials
pkg update -y && pkg upgrade -y
pkg install -y zsh git curl wget figlet toilet lolcat python nano

# Install Oh-My-Zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  echo "[+] Installing Oh-My-Zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Copy custom zsh config
cp .zshrc-template ~/.zshrc

# Add Aliases
cat aliases.sh >> ~/.zshrc

# Set up Banner
echo "[+] Setting up banner..."
echo "bash ~/TermuxPlus/banner.sh" >> ~/.zshrc

# Install Fonts (optional)
pkg install -y nerd-fonts

# Default Shell = Zsh
chsh -s zsh

echo -e "\n[✔] Installation Complete! Restart Termux or type \e[1;96mzsh\e[0m to activate TermuxPlus."

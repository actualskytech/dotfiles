#!/bin/bash

echo "Updating packages..."
sudo pacman -Syu --noconfirm
sudo pacman -S --needed --noconfirm base-devel git

echo "Getting config files..."
git clone https://github.com/actualskytech/dotfiles

echo "Installing yay..."
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..

echo "Yay has been installed! To learn how to use yay, run yay -h in your terminal"

echo "Copying config files..."
mkdir -p ~/.config
cp -r dotfiles/.config/* ~/.config/

echo "Installing packages..."
sudo pacman -S --noconfirm hyprland rofi thunar alacritty grim slurp waybar ly bluez bluez-utils blueman swappy fish 
yay -S --noconfirm waypaper swaybg

echo "Enabling services..."
sudo systemctl enable ly.service
sudo systemctl enable bluetooth.service

echo "Done!"
echo "Please do chsh and switch to fish"

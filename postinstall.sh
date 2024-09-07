#!/bin/bash



echo "Updating packages..."
sudo pacman -Syu --noconfirm
sudo pacman -S --needed base-devel git



echo "Installing yay"
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

echo "Yay has been installed! To learn how to use yay,run yay -h  in your terminal"



sudo pacman -S hyprland rofi thunar alacritty grim slurp waybar ly
yay -S waypaper swaybg

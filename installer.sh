#!/bin/bash
cat branding.txt
sudo pacman -S -- noconfirm git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
rm yay-bin

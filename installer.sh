#!/bin/bash

# bold text
bold=$(tput bold)
normal=$(tput sgr0)

clear
cat branding.txt
echo -e "${bold}yay-installer${normal} - permit sudo to continue \n"
sudo pacman -S --noconfirm git base-devel
rm -rf yay-bin
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si --noconfirm
clear
cat branding.txt
echo ${bold}yay${normal} installed, try to test it with  ${bold}"yay --version"${normal}

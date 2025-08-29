#!/usr/bin/env bash

## WIP
# build yay
# yay -S --noconfirm - < package-list
# clone dotfiles repo as ~/Dotfiles
# install oh-my-zsh
# dotswap.sh init
# install hyprexpo plugin
## WIP

R="\e[0m"
r="\e[1;91m"
g="\e[1;92m"


function confirmation() {
  read -r -p "$(echo -e "${1}\n${r}(Y/n)${R} ")" selection
  if [ -z "$selection" ] || [ "$selection" = "y" ] || [ "$selection" = "Y" ]; then
    return 0
  else
    return 1
  fi
}


# Arch?
command -v pacman > /dev/null || exit 1


# Confirm with user
if ! confirmation "Hello\n
This is a script that installs my hyprland dotfiles onto an Arch Linux system.
It is reccomended that you start on a fresh install of Arch.

This script will build yay from the AUR, and then use yay to install all of
the necesary packages.
It will also install oh-my-zsh
"; then
  echo -e "${r}User cancelled, aborting.${R}" && exit 1


# Initial update and dependancy install
sudo pacman -Syu --needed --noconfirm git


# Build yay
current_pid="$$"
yay_dir="${HOME}/yay${current_pid}"

echo "Cloning PKGBUILD into '${yay_dir}'"
git clone https://aur.archlinux.org/yay.git "${yay_dir}"

cd "${yay_dir}"
makepkg -si --needed --noconfirm

cd "${HOME}"
rm -rf "${yay_dir}"


# Install packages


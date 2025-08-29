#!/usr/bin/env bash

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
if ! command -v pacman > /dev/null; then
  echo -e "${r}This script is designed for Arch Linux/derivatives only!${R}"
  exit 1
fi

# Confirm with user
if ! confirmation "${g}\nHello${R}\n
This is a script that installs my hyprland dotfiles onto an Arch Linux system.
It is reccomended that you start on a fresh install of Arch.

This script will build yay from the AUR, and then use yay to install all of
the necesary packages.
It will also install oh-my-zsh

After installation and a successful boot into your new system, you can run
install-plugins.sh to enable the hyprexpo plugin to get rid of the error.

The script may ask for your password multiple times throughout the process,
so please be prepared to enter it in.

${g}Proceed?${R}
"; then
  echo -e "${r}User cancelled, aborting.${R}" && exit 1
fi

if ! confirmation "${r}\nAny changes made to '~/.config' will be DELETED!
Proceed?${R}
"; then
  echo -e "${r}User cancelled, aborting.${R}" && exit 1
fi


# Initial update and dependancy install
echo -e "${g}\nUpdating system and installing dependencies...${R}"
sudo pacman -Syu --needed --noconfirm git


# Build yay
echo -e "${g}\nBuilding yay in a temporary directory...${R}"
current_pid="$$"
yay_dir="${HOME}/yay${current_pid}"

echo -e "${g}Cloning PKGBUILD into${R} '${yay_dir}'"
git clone https://aur.archlinux.org/yay.git "${yay_dir}"

cd "${yay_dir}"
makepkg -si --needed --noconfirm

echo -e "${g}Cleaning up...${R}"
cd "${HOME}"
rm -rf "${yay_dir}"


# Clone Dotfiles repo
echo -e "${g}\nCloning dotfiles repo...${R}"
git clone https://github.com/AbyssWalker240/hyprland-dotfiles-v2 Dotfiles
cd "${HOME}/Dotfiles"


# Install packages
if ! confirmation "${g}\nIt is time to install all the packages.${R}
Depending on your internet connection, this may take a while.
Proceed?
"; then
  echo -e "${r}User cancelled, aborting.${R}" && exit 1
fi
yay -S --needed --noconfirm - < package-list


# Install oh-my-zsh
echo -e "${g}\nInstalling oh-my-zsh${R}"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
chsh -s "$(command -v zsh)" ${USER}


# Initialize dotswap
echo -e "${g}\nStowing configs...${R}"
rm -f "${HOME}/.zshrc"
mkdir "${HOME}/Pictures" "${HOME}/Resources" "${HOME}/.local/bin" "${HOME}/.local/share" "${HOME}/.config" -p
$HOME/Dotfiles/core/.config/hypr/scripts/dotswap.sh init


# All done!
echo -e "${g}All done!${R}
A reboot is recomended. You will need to manually set up a display manager
if you want one. Some extra configuration may also be necesary, as systems
vary a lot.

${g}run 'hyprland' to start!${R}"

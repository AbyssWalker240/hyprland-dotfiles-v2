#!/usr/bin/env bash

STOWDIR="$HOME/Dotfiles"
STOWTARGET="$HOME"
COREPKG="core"
RELOADSCRIPT="$HOME/.config/hypr/scripts/reload.sh"

pkglist="$(ls -d $STOWDIR/*/ | awk -F/ '{print $(NF-1)}' | grep -v ^$COREPKG$)"
  # get all packages formatted without / or leading directories, excluding core

if [[ "$1" = "init" ]]; then # choose first if dotswap is ran in init
  selection="$(echo "$pkglist" | head -n 1)"
else                         # otherwise use rofi to select
  selection="$(echo "$pkglist" | rofi -dmenu -i -p "visual package" \
    -theme $HOME/.config/rofi/themes/hyprmed.rasi 2> /dev/null)"
fi

[[ -z "$selection" ]] && echo -e "\e[1;91mNo selection\e[0m, exiting..." && exit 0

echo -e "\e[1;92m${selection} \e[0mHas been selected, switching now..."


for pkg in $pkglist; do
  # unstow all packages to ensure nothing gets stowed twice
  # (also acts as restow if necesary)
  stow --dir $STOWDIR --target $STOWTARGET --delete $pkg
done

stow --dir $STOWDIR --target $STOWTARGET --stow $selection
stow --dir $STOWDIR --target $STOWTARGET --restow $COREPKG

echo -e "\e[1;94mReloading\e[0m..."
"$RELOADSCRIPT" > /dev/null


echo -e "\e[1;92mSuccess!\e[0m Exiting..."

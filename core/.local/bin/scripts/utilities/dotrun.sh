#!/usr/bin/env bash

# Terminal app launcher script, scan .desktop files,
# and filter through them using fzf


# Ensure dependencies exist (fzf, dex- to run .desktop files directly)

which fzf &> /dev/null || { echo -e "\e[1;91mfzf not found,\e[0m please install it with your package manager"; exit 1; }
which dex &> /dev/null || { echo -e "\e[1;91mdex not found,\e[0m please install it with your package manager"; exit 1; }

# Parse any arguments



# Gather a package list based on desktop files
# (in both '/usr/share/applications' and '~/.local/share/applications')
# and run fzf selector

target="$(ls /usr/share/applications/*.desktop $HOME/.local/share/applications/*.desktop 2>/dev/null \
  | while IFS= read -r path; do
      name=$(basename "${path%.desktop}")
      echo -e "$name\t$path"
    done \
  | sort | fzf --with-nth=1 --delimiter="\t" | cut -f2)"

# run selection with dex

setsid dex "$target" --term kitty &

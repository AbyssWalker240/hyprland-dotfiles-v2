 ```
 ██      ██ ██    ██ ███████  ███████   ██           ██     ████     ██ ███████  
░██     ░██░░██  ██ ░██░░░░██░██░░░░██ ░██          ████   ░██░██   ░██░██░░░░██ 
░██     ░██ ░░████  ░██   ░██░██   ░██ ░██         ██░░██  ░██░░██  ░██░██    ░██
░██████████  ░░██   ░███████ ░███████  ░██        ██  ░░██ ░██ ░░██ ░██░██    ░██
░██░░░░░░██   ░██   ░██░░░░  ░██░░░██  ░██       ██████████░██  ░░██░██░██    ░██
░██     ░██   ░██   ░██      ░██  ░░██ ░██      ░██░░░░░░██░██   ░░████░██    ██ 
░██     ░██   ░██   ░██      ░██   ░░██░████████░██     ░██░██    ░░███░███████  
░░      ░░    ░░    ░░       ░░     ░░ ░░░░░░░░ ░░      ░░ ░░      ░░░ ░░░░░░░   
```

# hypr-dotfiles-v2
My personal hyprland dotfiles, organized for use with stow.
* Installing all packages and configurations will prepare any Arch Linux machine for my personal use.

## what is included
configurations for
* clipse
* dunst
* fastfetch
* helix
* hyprland
* kitty
* rofi
* spotify-player
* waybar
* and yazi

custom scripts
* changing themes using stow
* make new/delete old backups with a simple rsync script
* easy install script
* small tool to help vent frustration

## todo

* [ ] Motorcycle rice, gsx8r fetch image
* [ ] McDonalds style rice
* [ ] Install script
* [x] Script to automatically create and manage backups with rsync to crucial, store only the latest few backups
* [x] Rofi menu for switching between themes that automatically handles reloading where possible

## instructions

1) Install all necessary packages (hyprland, rofi, yazi, etc)
2) git clone this repo into $HOME as ~/Dotfiles (important, scripts use ~/Dotfiles)
3) Navigate into the repo directory, and stow the hyprCORE package, as well as one of the visual packages

## packages

Packages that I use, plus all packages included in the stow packages

### AUR

* ascii-image-converter-git
* cbonsai
* clipse
* qimgv-git
* rose-pine-cursor
* rose-pine-hyprcursor
* spotify-player-full
* tty-clock
* yay

### standard repos (core, extra, multilib)

* bat
* btop
* cava
* cowsay
* discord
* dunst
* fastfetch
* ffmpeg
* figlet
* firefox
* flatpak
* fzf
* glow
* gwenview
* helix
* hyprland
* hyprpaper
* hyprshot
* impala
* jrnl
* kitty
* krita
* lolcat
* micro
* noto-fonts-cjk
* noto-fonts-emoji
* rofi-emoji
* rofi-wayland
* rsync
* stow
* swww
* tree
* ttf-ubuntu-font-family
* waybar
* zsh-autosuggestions
* zsh-syntax-highlighting

## other packages/plugins/scripts

* oh-my-zsh (script)
* hyprexpo (hyprland plugin)

## install script

*coming soon*

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

# hyprland-dotfiles-v2
My personal hyprland dotfiles, organized for use with stow. Niri configuration also included!

**NOTE:** these are my personal configurations, and will change based on my needs. It is a good starting point to create your own setup.
* I would recommend cloning this then tweaking to your hearts content for your own use.
* Another repo of interest is [AbyssWalker240/dotswap](https://github.com/AbyssWalker240/dotswap), which is just the script that allows for easy switching of themes, and allows for you to set up your own configuration.  This script makes my whole setup possible.

## what is included
my personal configurations for:
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

custom scripts:
* changing themes using stow
* make new/delete old backups with a simple rsync script
* easy install script
* small tool to help vent frustration

## todo

* [ ] Add *Niri* configuration
* [ ] Finalize yazi styling for *ArchChan* package
* [x] Install script
* [x] Relocate all scripts into '~/.local/bin/custom' (subfolders so they are not accessible in *$PATH*) 

### themes

* [ ] Motorcycle theme, gsx8r fetch image
* [ ] McDonalds style theme

## instructions

1) Install all necessary packages (hyprland, rofi, yazi, etc)
2) git clone this repo into *$HOME* as '\~/Dotfiles' (important, scripts use '\~/Dotfiles')<br/>
**3a)** Navigate into the repo directory, and stow the *core* package, as well as one of the visual packages<br/>
    -- OR --<br/>
**3b)** Use the dotswap.sh script to stow packages

## packages

### AUR

* cbonsai
* clipse
* kanata
* qimgv-git
* rose-pine-cursor
* rose-pine-hyprcursor
* tty-clock
* yay

### broken

* ~~spotify-player-full~~ (this package doesn't exist anymore, I have not found the correct replacement yet, maybe spotify-player-bin)
  * there is a package on the standard repo, however it does not seem to work whatever way I install it, I give up.
* ascii-image-converter-git

### standard repos (core, extra, multilib)

* bat
* btop
* cava
* cowsay
* dex
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
* niri
* noto-fonts-cjk
* noto-fonts-emoji
* pavucontrol
* pipewire
* playerctl
* python-lsp-server
* rofi
* rofi-emoji
* rsync
* stow
* swww
* tree
* ttf-ubuntu-font-family
* waybar
* xdg-desktop-portal-gnome
* xwayland-satellite
* yazi
* zoxide
* zsh-autosuggestions
* zsh-syntax-highlighting

### other packages/plugins/scripts

* oh-my-zsh (script)
* hyprexpo (hyprland plugin)

## install script

sh $(curl script whatever)

enable hyprexpo

blah blah do later tired

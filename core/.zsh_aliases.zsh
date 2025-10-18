alias cls="clear"

alias hx="helix"
alias m="micro"

alias icat="kitty icat"

alias get-hyprland-error-log="cat $XDG_RUNTIME_DIR/hypr/$(ls -t $XDG_RUNTIME_DIR/hypr/ | head -n 1)/hyprland.log | helix"

alias fastfetch="\clear && echo && fastfetch"
alias smallfetch="fastfetch --config ~/.config/fastfetch/config-small.jsonc"

alias redunstify="killall dunst && dunstify"
alias resource="source $HOME/.zshrc"

alias rm="rm -v"

alias gcm="git commit -m"
alias gcp="git commit && git push"
alias gcap="git commit -a && git push"

alias lt="tree -L 1"
alias lta="lt -a"
alias ltl="lt -l"

alias tree1="tree -L 1"
alias tree2="tree -L 2"
alias tree3="tree -L 3"

alias treea="tree -a ./*/"

alias glow="glow -t"

alias weather="curl wttr.in/48638\?u1"
alias forecast="curl wttr.in/48638\?u"
alias wttr="weather"


distorage () {
	echo
	df -h -x tmpfs -x efivarfs -x vfat -x devtmpfs --output=target,used,avail,pcent
	echo
}
alias dfh="distorage"


getpkgbuild() {
	if [ -z "$1" ]; then
		echo -e "\e[1;91mPlease enter a package!"
	else
		yay -Gp "$1" | bat
	fi
}
alias gpb="getpkgbuild"

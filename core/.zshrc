# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

HYPHEN_INSENSITIVE="true"

ENABLE_CORRECTION="false"

COMPLETION_WAITING_DOTS="true"

plugins=(git git-prompt)

source $ZSH/oh-my-zsh.sh

if [[ "$TERM" == "linux" || "$TERM" == "tmux-256color" ]]; then
	source $HOME/.tty_prompt.zsh
else
	source $HOME/.zsh_prompt.zsh
fi

source $HOME/.zsh_funnies.zsh

alias cls="clear"

alias hx="helix"
alias m="micro"

alias icat="kitty icat"

alias fastfetch="\clear && echo && fastfetch"
alias smallfetch="fastfetch --config ~/config/fastfetch/config-small.jsonc"

alias redunstify="killall dunst && dunstify"
alias resource="source $HOME/.zshrc"

alias rm="rm -v"

alias gcm="git commit -m"
alias gcp="git commit && git push"

alias lt="tree -L 1"
alias lta="lt -a"
alias ltl="lt -l"

alias tree1="tree -L 1"
alias tree2="tree -L 2"
alias tree3="tree -L 3"

alias treea="tree -a ./*/"

alias glow="glow -t"

# zoxide init
eval "$(zoxide init zsh)"
eval "$(fzf --zsh)"


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


export PATH="$HOME/.local/bin:$HOME/.local/bin/core:$HOME/.cargo/bin:$PATH"
export EDITOR="/usr/bin/helix"
export PAGER="/usr/bin/bat --paging=always"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

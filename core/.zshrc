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
	source $HOME/.tty_prompt
else
	source $HOME/.zsh_prompt
fi

alias cls="clear"
alias home="z ~"
alias h="z ~"
alias v="nvim"
alias hx="helix"
alias m="micro"
alias mz="~/scripts/bash/mz"
alias fuck="figlet -f ~/git/figlet-fonts/3d FUCK | lolcat"
alias balls="figlet -f ~/git/figlet-fonts/3d BALLS | lolcat"
alias cbt="figlet -f ~/git/figlet-fonts/3d 'Cock & Ball TORTURE' | lolcat"
alias shit="figlet -f ~/git/figlet-fonts/3d 'SHIT' | lolcat"
alias yeah="figlet -f ~/git/figlet-fonts/3d YEAH | lolcat"
alias icat="kitty icat"
alias fastfetch="\clear && echo && fastfetch"
alias smallfetch="fastfetch --config ~/config/fastfetch/config-small.jsonc"
alias snapstreaks="\clear && echo && richdate && figlet S -f git/figlet-fonts/3d | lolcat && echo"
alias redunstify="killall dunst && dunstify"
alias resource="source $HOME/.zshrc"

alias rm="rm -v"

alias lt="tree -L 1"
alias tree1="tree -L 1"
alias tree2="tree -L 2"
alias tree3="tree -L 3"

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




export PATH="$HOME/.local/bin:$HOME/.local/bin/core:$PATH"
export EDITOR="/usr/bin/helix"
export PAGER="/usr/bin/bat --paging=always"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

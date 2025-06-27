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

PROMPT=$'%F{8}\U250c\U2574%f%B%F{15}%n%f%b %F{0}%1~%f
%F{8}\U2514\U2574%f%(?.%F{227}\U276f%f%F{191}\U276f%f%F{154}\U276f%f.%F{227}\U276f%f%F{214}\U276f%f%F{202}\U276f%f)  '

#  OLD PROMPT
# PROMPT="%B%F{012}%n%f%b %F{004}%1~%f %(?.%F{227}❯%f%F{191}❯%f%F{154}❯%f.%F{227}❯%f%F{214}❯%f%F{202}❯%f)  "

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
alias yeah="figlet -f ~/git/figlet-fonts/3d YEAH | lolcat"
alias icat="kitty icat"
alias fastfetch="\clear && echo && fastfetch"
alias smallfetch="fastfetch --config ~/config/fastfetch/config-small.jsonc"
alias snapstreaks="\clear && echo && richdate && figlet S -f git/figlet-fonts/3d | lolcat && echo"

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




export PATH="$HOME/.local/bin:$PATH"
export EDITOR="/usr/bin/helix"
export PAGER="/usr/bin/bat --paging=always"

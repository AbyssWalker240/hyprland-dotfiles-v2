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

export SUDO_PROMPT="$(tput setaf 1 bold)[sudo] Password for %p:$(tput sgr0) "

source $HOME/.zsh_funnies.zsh

source $HOME/.zsh_aliases.zsh

# zoxide and fzf init
eval "$(zoxide init zsh)"
eval "$(fzf --zsh)"


export PATH="$HOME/.local/bin:$HOME/.local/bin/scripts/utilities:$HOME/.cargo/bin:$PATH"
export LS_COLORS="*.gcode=3;92:*.3mf=1;92:*.stl=3;91:*.obj=3;91:*.step=3;91:*.iso=1;93:$LS_COLORS"
export EDITOR="/usr/bin/helix"
export PAGER="/usr/bin/bat --paging=always"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

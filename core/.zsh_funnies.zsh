alias fuck="figlet -f ~/git/figlet-fonts/3d FUCK | lolcat"
alias balls="figlet -f ~/git/figlet-fonts/3d BALLS | lolcat"
alias cbt="figlet -f ~/git/figlet-fonts/3d 'Cock & Ball TORTURE' | lolcat"
alias shit="figlet -f ~/git/figlet-fonts/3d 'SHIT' | lolcat"
alias yeah="figlet -f ~/git/figlet-fonts/3d YEAH | lolcat"
alias ok="figlet -f ~/git/figlet-fonts/3d OK | lolcat"
alias snapstreaks="\clear && echo && richdate && figlet S -f git/figlet-fonts/3d | lolcat && echo"

function loltext() {
  figlet -f ~/git/figlet-fonts/3d "$*" | lolcat
}

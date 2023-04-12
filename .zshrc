# ~/.bashrc

autoload -U colors && colors
export EDITOR="/usr/bin/nvim"
export XDG_CONFIG_HOME="/home/dark/.config/"
function swap() {
  local TMPFILE=tmp.$$
  mv "$1" $TMPFILE
  mv "$2" "$1"
  mv "$TMPFILE" "$2"
}
# ls aliases
alias lls='\ls --color=auto'
alias ls='exa --icons'
alias la='exa -a --icons'
alias lt='exa -T --icons'
alias lat='exa -aT --icons' # copy to clipboard alias clip='xclip -i -selection clipboard'
copy() {
  if [[ ! -e "$*" ]]; then
    echo "$*: Does not exist"
    return 1;
  elif [[ -d "$*" ]]; then
    echo "$*: Is a directory"
    return 1;
  else
    cat $* | wl-copy
  fi
}
# refresh .bashrc
alias rl="source ~/.bashrc"

# Prompt
setPrompt() {
    PS1=$'\033[30m\033[40m\033[37m'$(pwd)' '
    PS1=$PS1$'\033[100m\033[30m'
    PS1=$PS1$'\033[37m took '$1'ms '
    PS1=$PS1$'\033[0m'
    PS1=$PS1$'\033[95m\033[01;90m'
    PS1=$PS1$'\033[0m '
}

function preexec() {
  timer=$(($(date +%s%0N)/1000000))
}

function precmd() {
  if [ $timer ]; then
    now=$(($(date +%s%0N)/1000000))
    elapsed=$(($now-$timer))
    setPrompt $elapsed
    unset timer
  fi
}

if ! [[ $firstPrompt -eq 1 ]]; then
  setPrompt 0
  firstPrompt=1
fi

source /etc/zsh_command_not_found
source /home/dark/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/dark/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

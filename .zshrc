# ~/.bashrc
HISTFILE=~/.zsh_history
HISTSIZE=500000
SAVEHIST=500000
setopt appendhistory
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

export EDITOR="/usr/bin/nvim"
export XDG_CONFIG_HOME="/home/dark/.config/"

function swap() {
  local TMPFILE=tmp.$$
  mv "$1" $TMPFILE
  mv "$2" "$1"
  mv "$TMPFILE" "$2"
}
# better cat
alias ccat='\cat'
alias cat='pygmentize -g'
# ls aliases
alias lls='\ls --color=auto'
alias ls='exa --icons'
alias la='exa -a --icons'
alias lt='exa -T --icons'
alias lat='exa -aT --icons'
# copy to clipboard
alias clip='xclip -i -selection clipboard'
copy() {
  if [[ ! -e "$*" ]]; then
    echo "$*: Does not exist"
    return 1;
  elif [[ -d "$*" ]]; then
    echo "$*: Is a directory"
    return 1;
  else
    \cat $* | clip
  fi
}
# refresh .bashrc
alias rl="source ~/.bashrc"

# Prompt
#
autoload -U colors && colors
betterPWD() {
  [[ "$(basename $PWD)" == "$USER" ]] && echo '~' || echo "$(basename $PWD)"
}

setPrompt() {
  PS1=$'%(?..%K{red}%F{white} %? %F{red}%K{blue})'
  PS1=$PS1$'%F{blue}%K{blue}%F{white} '$(betterPWD)' '
  PS1=$PS1$'%K{black}%F{blue}'
  PS1=$PS1$'%F{white} took '$1'ms '
  PS1=$PS1$'%f'
  PS1=$PS1$'%F{black}%K{blue}'
  PS1=$PS1$'%K{blue}%F{white} $ %f%k%F{blue}%f%k '
  # PS1=$PS1"\n%f%k "
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
source /home/dark/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

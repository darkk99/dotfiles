# Case-insensitive matching
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'


# Prompt
PS1="%F{red}%1d%F{blue}>%f "


# ls aliases
alias lls="ls"
alias ls="exa"
alias la="exa -a"
# xclip aliases
alias xc="xclip -selection clipboard"
alias xi="xclip -i"
alias xo="xclip -o"
# other aliases
alias v="nvim"
alias g="git"
alias y="yay"
alias s="sudo"
# aliases for running or sourcing files
alias so="source"
alias rl="source ~/.zshrc"
alias sc="sh -c"
# chmod aliases
alias cx="chmod +x"


# plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

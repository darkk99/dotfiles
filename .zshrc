# Case-insensitive matching
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Prompt
PS1="%F{red}%n %F{blue}in%F{red} %1~ %F{blue}->%f "


# Aliases
alias lls="ls"
alias ls="exa"
alias la="exa -a"
alias clip="xclip -selection clipboard"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

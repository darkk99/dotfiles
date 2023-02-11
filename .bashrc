# ~/.bashrc
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
alias lat='exa -aT --icons'
# start display manager
alias startgui='sudo systemctl start display-manager'
# copy to clipboard
alias clip='wl-copy'
alias paste='wl-paste'
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
function timer_now {
  date +%s%N
}

function timer_start {
  timer_start=${timer_start:-$(timer_now)}
}

function timer_stop {
  local delta_us=$((($(timer_now) - $timer_start) / 1000))
  local us=$((delta_us % 1000))
  local ms=$(((delta_us / 1000) % 1000))
  local s=$(((delta_us / 1000000) % 60))
  local m=$(((delta_us / 60000000) % 60))
  local h=$((delta_us / 3600000000))
  # Goal: always show around 3 digits of accuracy
  if ((h > 0)); then timer_show=${h}h${m}m
  elif ((m > 0)); then timer_show=${m}m${s}s
  elif ((s >= 10)); then timer_show=${s}.$((ms / 100))s
  elif ((s > 0)); then timer_show=${s}.$(printf %03d $ms)s
  elif ((ms >= 100)); then timer_show=${ms}ms
  elif ((ms > 0)); then timer_show=${ms}.$((us / 100))ms
  else timer_show=${us}us
  fi
  unset timer_start
}

trap 'timer_start' DEBUG
PROMPT_COMMAND=timer_stop

# Directory name
PS1='\n\[\033[40m\]\[\033[37m\] \w '
# End powerline section
PS1=$PS1'\[\033[100m\]\[\033[30m\]'
# Amount of time last command took
PS1=$PS1'\[\033[37m\] took ${timer_show} '
# Clear background color and text color
PS1=$PS1'\[\033[0m\]'
# End powerline section
PS1=$PS1'\[\033[95m\]\[\033[01;90m\]'
# Finally, reset colors + end of prompt
PS1=$PS1'\[\033[0m\] '

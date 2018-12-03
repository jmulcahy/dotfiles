# set up git prompt
setopt prompt_subst
autoload -Uz vcs_info

zstyle ':vcs_info:*' formats "(%r-%b)"
zstyle ':vcs_info:*' enable git

precmd () {
    vcs_info
    if [[ -n ${vcs_info_msg_0_} ]] then
        PS1="%F{cyan}[%n@%m]%f %F{blue}%3~%f %F{red}${vcs_info_msg_0_}%f %# "
    else
        PS1="%F{cyan}[%n@%m]%f %F{blue}%3~%f %# "
    fi
}

# set up nice menus and completion
zstyle ':completion:*' menu select
autoload -U compinit && compinit
zmodload -i zsh/complist

# set up history
HISTSIZE=1000
if (( ! EUID )); then
    HISTFILE=~/.zsh_history_root
else
    HISTFILE=~/.zsh_history
fi
SAVEHIST=1000

alias config="`which git` --git-dir=$HOME/.cfg/ --work-tree=$HOME"

## Colorize the ls output ##
alias ls='ls -G'

## Use a long listing format ##
alias ll='ls -la'

## Show hidden files ##
alias l.='ls -d .*'

# colorize grep
alias grep='grep --color'

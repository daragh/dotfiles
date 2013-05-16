source $HOME/bin/git-prompt.sh

# prompt
export PS1='%~ %# '

# history
HISTFILE=$HOME/.histfile
HISTSIZE=500000
SAVEHIST=100000
# don't keep duplicate commands (more than once in a raw) in history
setopt histignoredups

# autocomplete
autoload -U compinit
compinit

# editor
export EDITOR=vim

# path
export PATH=$HOME/bin:$HOME/code/bin:/usr/local/bin:$PATH

# python
export PYTHONPATH=$HOME/code/python:$PYTHONPATH
export PYTHONDONTWRITEBYTECODE=true

# aliases
alias ll='ls -lh'
alias la='ls -la'

# term
export TERM=xterm-256color

# edit commands in $EDITOR
autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-e' edit-command-line

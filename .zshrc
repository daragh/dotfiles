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
export EDITOR=vi

# path
export PATH=$HOME/code/bin:$PATH

# python
export PYTHONPATH=$HOME/code/python:$PYTHONPATH

# aliases
alias ll='ls -lh'
alias la='ls -la'

# term
export TERM=xterm-256color

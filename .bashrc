export EDITOR=vim

PATH=$PATH:$HOME/.gem/ruby/1.8/bin
PATH=$PATH:$HOME/.cabal/bin
PATH=$HOME/bin:$PATH
export PATH


unalias ls 2>/dev/null
alias ll='ls -lh'
alias la='ll -a'
alias lt='ll -tr'

export HISTSIZE=100000

export TERM=xterm-256color


source $HOME/bin/git-completion.bash

function __my__git_ps1 {
    export GIT_PS1_SHOWDIRTYSTATE=true
    export GIT_PS1_SHOWSTASHSTATE=true
    export GIT_PS1_SHOWUNTRACKEDFILES=true
    export GIT_PS1_SHOWUPSTREAM=true
    if [[ ! -z $(__gitdir) ]]; then
        if [[ $(pwd) =~ $HOME ]]; then
            __git_ps1;
        else
            echo " (?)";
        fi
    fi
}


function __exit_status {
    status=$?;
    green=$'\E[1;32m'
    red=$'\E[1;31m'
    none=$'\E[m'
    if [ $status -eq 0 ]; then
        color=${green}
    else
        color=${red}
    fi
    echo "${color}${status}${none}";
}

export PS1='[$(__exit_status) \A \u@\h]\n\w$(__my__git_ps1) % '
export PYTHONDONTWRITEBYTECODE=true

export HISTTIMEFORMAT="%Y-%m-%d %T "

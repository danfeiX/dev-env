parse_git_branch() {
        git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
    }
PS1="\[\e[0;36m\]\$(parse_git_branch)\[\e[m$\u\e[0;31m\]@\h\[\e[m\]:\w$ "

alias tmuxn='tmux new -s'
alias tmuxl='tmux ls'
alias tmuxa='tmux attach -t'
alias tmuxk='tmux kill-session -t'

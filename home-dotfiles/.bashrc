alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias setproxy="export http_proxy=http://127.0.0.1:41001;https_proxy=http://127.0.0.1:41001"
alias unsetproxy="export http_proxy=;https_proxy="
alias open='start'

if [ -f ~/git-completion.bash ]; then
 . ~/git-completion.bash
fi



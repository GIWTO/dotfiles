alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias setproxy="export http_proxy=http://127.0.0.1:41001;https_proxy=http://127.0.0.1:41001"
alias unsetproxy="export http_proxy=;https_proxy="
alias open='start'
alias scoop='powershell -Command scoop'


export PATH="$PATH:/d/scoop/shims"

if [ -t 1 ]; then
  exec zsh
fi

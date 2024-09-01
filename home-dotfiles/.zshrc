# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=2000
SAVEHIST=1000
# 新命令都会直接追加到历史文件
setopt INC_APPEND_HISTORY
# End of lines configured by zsh-newuser-install

alias ls='lsd'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
alias setproxy="export http_proxy=http://127.0.0.1:41001;https_proxy=http://127.0.0.1:41001"
alias unsetproxy="export http_proxy=;https_proxy="
alias open='start'

source ~/.zinit/bin/zi.zsh

# 异步加载插件
zinit ice wait'0' lucid
zinit light zsh-users/zsh-autosuggestions

zinit ice wait'1' lucid
zinit light gsemet/crayon-syntax-zsh

zinit ice lucid
zinit load romkatv/powerlevel10k

# Powerlevel10k configuration
source ~/.zi/plugins/romkatv---powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# To customize prompt, run `p10k configure` or edit ~/.dotfiles/home-dotfiles/.p10k.zsh.
[[ ! -f ~/.dotfiles/home-dotfiles/.p10k.zsh ]] || source ~/.dotfiles/home-dotfiles/.p10k.zsh

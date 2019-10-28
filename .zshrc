export ZSH="$HOME/.oh-my-zsh"
export LANG=en_US.UTF-8
export UPDATE_ZSH_DAYS=7

ZSH_THEME="agnoster"
CASE_SENSITIVE="true"
COMPLETION_WAITING_DOTS="true"

plugins=(
  git
  sudo
  zsh-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
source $HOME/.dotfiles/.env
source $HOME/.dotfiles/.alias

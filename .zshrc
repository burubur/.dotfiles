[[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile'
export ZSH_DISABLE_COMPFIX=true
export ZSH="$HOME/.oh-my-zsh"
export LANG=en_US.UTF-8
export UPDATE_ZSH_DAYS=7

ZSH_THEME="robbyrussell"
CASE_SENSITIVE="true"
COMPLETION_WAITING_DOTS="true"

plugins=(
  git
  sudo
  zsh-syntax-highlighting
  zsh-autosuggestions
)

. $ZSH/oh-my-zsh.sh
. $HOME/.dotfiles/.env
. $HOME/.dotfiles/.alias
. $HOME/.asdf/asdf.sh
test -f ~/.fzf.bash && source ~/.fzf.bash
eval "$(rbenv init -)"

# The next line updates PATH for the Google Cloud SDK.
#if [ -f '/Users/burhan.mubarok/.bin/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/burhan.mubarok/.bin/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
#if [ -f '/Users/burhan.mubarok/.bin/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/burhan.mubarok/.bin/google-cloud-sdk/completion.zsh.inc'; fi
#if [ /usr/local/bin/kubectl ]; then source <(kubectl completion zsh); fi


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


export PATH=/Users/burhan.mubarok/.tiup/bin:$PATH

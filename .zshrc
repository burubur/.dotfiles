
[[ -e ~/.profile ]] && emulate sh -c 'source ~/.profile'
export ZSH_DISABLE_COMPFIX=true
export ZSH="$HOME/.oh-my-zsh"
export LANG=en_US.UTF-8
export UPDATE_ZSH_DAYS=7

export PATH="/opt/homebrew/opt/openssl@1.0/bin:$PATH"

export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.0)"
export LDFLAGS="-L/opt/homebrew/opt/readline/lib:$LDFLAGS"
export CPPFLAGS="-I/opt/homebrew/opt/readline/include:$CPPFLAGS"
export PKG_CONFIG_PATH="/opt/homebrew/opt/readline/lib/pkgconfig:$PKG_CONFIG_PATH"
export optflags="-Wno-error=implicit-function-declaration"
export LDFLAGS="-L/opt/homebrew/opt/libffi/lib:$LDFLAGS"
export CPPFLAGS="-I/opt/homebrew/opt/libffi/include:$CPPFLAGS"
export PKG_CONFIG_PATH="/opt/homebrew/opt/libffi/lib/pkgconfig:$PKG_CONFIG_PATH"

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
# eval "$(rbenv init -)"

# The next line updates PATH for the Google Cloud SDK.
#if [ -f '/Users/burhan.mubarok/.bin/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/burhan.mubarok/.bin/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
#if [ -f '/Users/burhan.mubarok/.bin/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/burhan.mubarok/.bin/google-cloud-sdk/completion.zsh.inc'; fi
#if [ /usr/local/bin/kubectl ]; then source <(kubectl completion zsh); fi


test -f ~/.fzf.bash && source ~/.fzf.bash
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/burhan.mubarok/.bin/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/burhan.mubarok/.bin/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/burhan.mubarok/.bin/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/burhan.mubarok/.bin/google-cloud-sdk/completion.zsh.inc'; fi

USE_GKE_GCLOUD_AUTH_PLUGIN=True
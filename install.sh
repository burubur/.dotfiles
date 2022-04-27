# FOR SAFETY PURPOSE, PLEASE RUN THIS INSTALLATION 1 BY 1 BY REMARK AND UNREMARK THEM LINE BY LINE :)
echo "installing softwares...\n"

if [[ $OSTYPE != 'darwin'* ]]; then
  echo "unsupported OS"
  exit 0
fi

# INITIATE LAB ENV.
cd $USERS
test -d && echo "installed lab" || mkdir lab
test ! -d github && mkdir github
test -d ~/.bin && echo "installed bin" || mkdir ~/.bin

# NVIM
test ~/.bin/nvim-osx64/bin && echo "installed nvim" || (cd ~/.bin && curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim-macos.tar.gz && tar xzf nvim-macos.tar.gz && ln -svf ~/.bin/nvim-osx64/bin/nvim ~/.bin/)

# GIT
test -f /usr/bin/git && echo "installed git" || brew install git

# BREW
test -f /opt/homebrew/bin/brew && echo "installed brew" || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$USER/.zprofile && eval "$(/opt/homebrew/bin/brew shellenv)"

# ZSH
test -f /bin/zsh && echo "installed zsh" || brew install zsh

# OH-MY-ZSH
test -d ~/.oh-my-zsh && echo "installed oh-my-zsh" || sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# OH-MY-ZSH PLUGINS
test -d ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting && echo "installed syntax highlighting plugin" || git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

test -d ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions && echo "installed autocompletion plugin" || git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# ASDF
test -d ~/.asdf && echo "installed asdf" || (git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.9.0 && . $HOME/.asdf/asdf.sh)

# ASDF - GOLANG
test -d ~/.asdf/plugins/golang && echo "installed golang" || (asdf plugin add golang && asdf install golang latest && asdf global golang latest)

# ASDF - NODEJS
test -d ~/.asdf/plugins/nodejs && echo "installed nodejs" || (asdf plugin add nodejs && asdf install nodejs latest && asdf global nodejs latest)

# OAUTH
test -f /opt/homebrew/Cellar/oath-toolkit/2.6.6/bin/oathtool && echo "installed authenticator" || brew install oath-toolkit

# MIMIER
test -d ~/lab/github/mimier && echo "installed mimier" || git clone git@github.com:burubur/mimier.git /lab/github/mimier

# RBENV
test -f /opt/homebrew/bin/rbenv && echo "installed rbenv" || brew install rbenv

# Yarn
# test -e /opt/homebrew/bin/yarn && echo "installed yarn" || brew install yarn
# curl -o- -L https://yarnpkg.com/install.sh | bash

test -f ~/.bin/kubectl && echo "installed kubectl" || (curl -o ~/.bin/kubectl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/darwin/arm64/kubectl" && chmod +x ~/.bin/kubectl) 

echo "\ninstallation done."

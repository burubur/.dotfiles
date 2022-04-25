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

# BREW
test -f /opt/homebrew/bin/brew && echo "installed brew" || /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" && echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$USER/.zprofile && eval "$(/opt/homebrew/bin/brew shellenv)"

# ITERM
# brew install iterm2

# ZSH
test -f /bin/zsh && echo "installed zsh" || brew install zsh

# OH-MY-ZSH
test -d ~/.oh-my-zsh && echo "installed oh-my-zsh" || sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# GIT
test -f /usr/bin/git && echo "installed git" || brew install git

# ASDF
# cd $USERS/lab/github
# git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.9.0

# MIMIER
test -f /opt/homebrew/Cellar/oath-toolkit/2.6.6/bin/oathtool && echo "installed authenticator" || brew install oath-toolkit

# RBENV
test -f /opt/homebrew/bin/rbenv && echo "installed rbenv" || brew install rbenv

# G - Golang package manager
# curl -sSL https://git.io/g-install | sh -s

# GO
# g install 1.17
# g install latest

# N - NodeJS package manager
# test -e /Users/$USER/n && echo "installed n package manager for NodeJS" || brew install n

# Node & NPM
# test -e /Users/$USER/n/bin/node && echo "installed node" || N_PREFIX=/Users/$USER n latest && n lts

# Yarn
# test -e /opt/homebrew/bin/yarn && echo "installed yarn" || brew install yarn
# curl -o- -L https://yarnpkg.com/install.sh | bash

echo "\ninstallation done."

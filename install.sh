# FOR SAFETY PURPOSE, PLEASE RUN THIS INSTALLATION 1 BY 1 BY REMARK AND UNREMARK THEM LINE BY LINE :)
echo "installing software...\n"

if [[ $OSTYPE != 'darwin'* ]]; then
  echo "unsupported OS"
  exit 0
fi

# BREW
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$USER/.zprofile
# eval "$(/opt/homebrew/bin/brew shellenv)"

# ITERM
# brew install iterm2

# ZSH
# brew install zsh

# GIT
# brew install git

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
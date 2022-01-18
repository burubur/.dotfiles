# FOR SAFETY PURPOSE, PLEASE RUN THIS INSTALLATION 1 BY 1 BY REMARK AND UNREMARK THEM LINE BY LINE :)
echo "installing software...\n"

if [[ $OSTYPE != 'darwin'* ]]; then
  echo "unsupported OS"
  exit 0
fi

# Brew
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Iterm
# Zsh
# Git

# Go
# $GOPATH/bin/g install latest

# Node & NPM
# test -e /Users/burhan.mubarok/n/bin/node && echo "installed node" || $(n latest && n lts)

# Yarn
# test -e $HOME/.yarn/bin/yarn && echo "installed yarn" || curl -o- -L https://yarnpkg.com/install.sh | bash

echo "\ninstallation done."
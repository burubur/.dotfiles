echo "installing software...\n"

# Go
$GOPATH/bin/g install latest

# Node & NPM
test -e /Users/burhan.mubarok/n/bin/node && echo "installed node" || $(n latest && n lts)

# Yarn
test -e $HOME/.yarn/bin/yarn && echo "installed yarn" || curl -o- -L https://yarnpkg.com/install.sh | bash

echo "\ninstallation done."
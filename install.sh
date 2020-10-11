echo "installing software..."

# Go
$GOPATH/bin/g install latest

# Node & NPM
n lts
n latest

# Yarn
curl -o- -L https://yarnpkg.com/install.sh | bash
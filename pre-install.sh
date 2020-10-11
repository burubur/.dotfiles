echo "installing software dependency...\n"

ln -svf ~/.dotfiles/.bash_profile ~
ln -svf ~/.dotfiles/.zshrc ~
ln -svf ~/.dotfiles/.tmux.conf ~
ln -svf ~/.dotfiles/init.vim ~/.config/nvim/init.vim

source ~/.dotfiles/.env
source ~/.dotfiles/.inputrc
source ~/.dotfiles/.alias
# tmux source ~/.tmux.conf

echo "installing software..."

test -e $HOME/.vim/autoload/plug.vim && echo "installed vim plug" || curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
test -e /usr/local/go && echo "created directory for Go" || sudo mkdir /usr/local/go/
test -e /usr/local/go/.versions && echo "created directory for Go Versions" || sudo mkdir /usr/local/go/.versions
test `stat -f '%OLp' /usr/local/go` = 777 && echo "granted go directory permission" || sudo chmod -R 777 /usr/local/go
test `stat -f '%OLp' /usr/local/go/.versions` = 777 && echo "granted go-version directory permission " sudo chmod -R 777 /usr/local/go/.versions
unalias g >/dev/null 2>/dev/null
test $HOME/lab/go/bin/g && echo "installed go version manager" ||  curl -sSL https://git.io/g-install | sh -s
test $HOME/n/bin/n && echo "installed n" || curl -L https://git.io/n-install | bash

#is_exist=$(which nvim | wc -l)
#if [ ${is_exist} -ne 1 ]; then \
#        echo "nvim is not installed"; \
#	echo "installing neovim..." \
#	curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim-macos.tar.gz; \
#	tar xzf nvim-macos.tar.gz; \
#else \
#        echo "nvim is installed"; \
#fi;

#which_pip=$(which pip3 | wc -l)
#echo "installing neovim python module"
#if [ ${which_pip} -ne 1 ]; then \
#  echo "installing pip3"; \
#  pip3 install --user neovim; \
#else \
#  echo "upgrading pip3"; \
#  pip install --upgrade pip; \
#fi;

echo "\ninstallation done."
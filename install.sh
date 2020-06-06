echo ""
echo "installing..."

ln -svf ~/.dotfiles/.bash_profile ~
ln -svf ~/.dotfiles/.zshrc ~
ln -svf ~/.dotfiles/.tmux.conf ~
ln -svf ~/.dotfiles/init.vim ~/.config/nvim/init.vim

source ~/.dotfiles/.env
source ~/.dotfiles/.inputrc
source ~/.dotfiles/.alias
tmux source ~/.tmux.conf

echo "installing software..."

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

echo "software installation done."

echo ""
echo "installed."

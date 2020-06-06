echo ""
echo "installing..."

ln -svf ~/.dotfiles/.bash_profile ~
ln -svf ~/.dotfiles/.zshrc ~
ln -svf ~/.dotfiles/.tmux.conf ~

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


echo "installing neovim python module"
pip3 install --user neovim

echo "software installation done."

echo ""
echo "installed."

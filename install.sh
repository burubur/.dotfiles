echo ""
echo "installing..."

ln -svf ~/.dotfiles/.bash_profile ~
ln -svf ~/.dotfiles/.zshrc ~
ln -svf ~/.dotfiles/.tmux.conf ~

source ~/.dotfiles/.env
source ~/.dotfiles/.inputrc
source ~/.dotfiles/.alias
tmux source ~/.tmux.conf
echo ""
echo "installed."
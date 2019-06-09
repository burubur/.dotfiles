echo "installation starting...\n"

ln -svf ~/.dotfiles/.bash_profile ~
ln -svf ~/.dotfiles/.zshrc ~
ln -svf ~/.dotfiles/.tmux.conf ~

source ~/.dotfiles/.env
source ~/.dotfiles/.inputrc
tmux source ~/.tmux.conf

echo "\ninstallation finished!"
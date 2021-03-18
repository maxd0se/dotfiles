#!/usr/bin/zsh

echo "installing ohmyzsh"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "installing powerlevel10k"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

echo "downloading dotfile"

git clone https://github.com/maxd0se/dotfiles

rm $HOME/.zshrc
cp dotfiles/.zshrc $HOME/
rm $HOME/.emacs.d/init.el
cp dotfiles/init.el $HOME/.emacs.d/init.el

source .zshrc

echo "finished"


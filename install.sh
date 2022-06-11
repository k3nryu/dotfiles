#! /bin/bash

## Check zsh wether installed
zsh_bins=`grep 'zsh' /etc/shells | wc -l`
if [ $zsh_bins == 0 ];
then
	brew install zsh
fi
brew install tmux

cd 

## Install zsh plugins
### p10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
### systax highlight
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
### auto suggest
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
### tmux
git clone https://github.com/gpakosz/.tmux.git

ln -sf ~/dotfiles/.zshrc ~/.zshrc
#ln -sf ~/dotfiles/.oh-my-zsh ~/.oh-my-zsh
ln -sf ~/dotfiles/.p10k.zsh ~/.p10k.zsh
ln -sf ~/dotfiles/.tmux.conf.local ~/.tmux.conf.local
ln -sf ~/dotfiles/alacritty.yml ~/.config/alacritty/alacritty.yml
#ln -sf ~/.tmux/.tmux.conf ~/.tmux.conf

chsh -s $(which zsh)
exec zsh
echo $SHELL

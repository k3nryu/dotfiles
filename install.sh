#! /bin/bash

## Check zsh wether installed
zsh_bins=`grep 'zsh' /etc/shells | wc -l`
if [ $zsh_bins == 0 ];
then
	sudo dnf -y install zsh
fi
sudo dnf -y install util-linux-user

## Install zsh plugins
### p10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
### systax highlight
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
### auto suggest
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.oh-my-zsh ~/.oh-my-zsh
ln -sf ~/dotfiles/.p10k.zsh ~/.p10k.zsh

chsh -s $(which zsh)
exec zsh
echo $SHELL

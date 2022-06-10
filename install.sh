#! /bin/bash

## Check zsh wether installed
zsh_bins=`grep 'zsh' /etc/shells | wc -l`
if [ $zsh_bins == 0 ];
then
	dnf -y install zsh
fi

#git clone --recursive -b Linux git@github.com:k3nryu/dotfiles.git
#git clone --recursive -b Linux https://github.com/k3nryu/dotfiles.git

ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.oh-my-zsh ~/.oh-my-zsh
ln -sf ~/dotfiles/.p10k.zsh ~/.p10k.zsh

sudo dnf -y install util-linux-user
chsh -s $(which zsh)
echo $SHELL

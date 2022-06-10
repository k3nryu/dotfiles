#! /bin/bash

## Check zsh wether installed
zsh_bins=`grep 'zsh' /etc/shells | wc -l`
if [ $zsh_bins == 0 ];
then
	dnf -y install zsh
fi


git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

#git clone --recursive -b Linux git@github.com:k3nryu/dotfiles.git
#git clone --recursive -b Linux https://github.com/k3nryu/dotfiles.git

ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.oh-my-zsh ~/.oh-my-zsh
ln -sf ~/dotfiles/.p10k.zsh ~/.p10k.zsh

sudo dnf -y install util-linux-user
chsh -s $(which zsh)
echo $SHELL

exec zsh



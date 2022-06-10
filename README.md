# Dotfiles for Windows WSL(Ubuntu)
## Dependencies
- Zsh
	- Oh-my-zsh(zsh manager)
	- Powerlevel10k(zsh theme)
		- MesloLGS NF (Install on your OS and set terminal emulator font for powerlevel10k theme)
	- Zsh-syntax-highlighting
	- Zsh-autosuggestions
- Git
- Util-linux-user
- Alacritty (terminal emulator)

## Installation
#### Step1: Clone repositories to local.
```bash
git clone --recursive -b Linux https://github.com/k3nryu/dotfiles.git
```
#### Step2: Execute 'install.sh' shell script.
```bash
docfiles/install.sh
```

## Update
```bash

```

## Uninstall
```bash
rm -rf ~/dotfiles
rm -rf ~/.oh-my-zsh
```

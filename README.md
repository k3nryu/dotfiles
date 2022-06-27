# Dotfiles for Windows WSL(Ubuntu)
## Dependencies
- Zsh
	- Oh-my-zsh(zsh manager)
	- Powerlevel10k(zsh theme)
		- [MesloLGS NF](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k) (Install on your OS and set terminal emulator font for powerlevel10k theme)
	- Zsh-syntax-highlighting
	- Zsh-autosuggestions
- Git
- Util-linux-user
- Alacritty (terminal emulator)

## Installation
#### Step1: Clone repositories to local.
```bash
git clone --recursive -b Windows_WSL git@github.com:k3nryu/dotfiles.git
```
#### Step2: Execute 'install.sh' shell script.
```bash
docfiles/install.sh
```
### (Optional)Step3: Download and install Alacrrity.
```powershell
scoop install alacrrity
```
```powershell
vim %APPDATA%\alacritty\alacritty.yml 
```
or
```bash
cp ~/dotfiles/alacritty.yml /mnt/c/Users/cmsuser/AppData/Roaming/alacritty/alacritty.yml
```

## Update
```bash

```

## Uninstall
```bash
rm -rf ~/dotfiles
rm -rf ~/.oh-my-zsh
```

# Dotfiles for Linux
## Dependencies
- Zsh
- Util-linux-user
- Oh-my-zsh(zsh manager)
- Powerlevel10k(zsh theme)
- tmux
- alacritty

## Installation
1. Install dotfiles.
```bash
git clone --recursive -b Linux https://github.com/k3nryu/dotfiles.git
```
2. Install p10k theme.
```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```

## zsh

### oh-my-zsh (zsh configuration manager)
https://github.com/ohmyzsh/ohmyzsh

### Powerlevel10k (zsh theme)
https://github.com/romkatv/powerlevel10k

## tmux

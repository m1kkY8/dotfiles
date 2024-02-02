# Dotfiles 
- Dotfiles for Arch Linux
- All dotfiles are managed by GNU Stow
- Full neovim configuration out of the box
- Configured i3, so its recommended to use with i3

# Notes 
- Best way to use this dotfiles in on fresh install of EndeavourOS since it has distro-specific packages
- Make sure to backup all files before downloading and running stow
- Install zsh first
- Change email and name in .github file
- Create .local/bin directory in $HOME for binaries 
- All packages for i3 installation can be found [here](https://github.com/endeavouros-team/EndeavourOS-packages-lists) 



## Installation 

### Automatic installation

You can install all packages by running:
```
sudo pacman -S --needed - < packages
```

## Manual installation

### i3

To install i3 you can download i3 packages list file from EndeavourOS repo
Download this file somewhere eles and remove it after installing everything

```
curl -O https://raw.githubusercontent.com/endeavouros-team/EndeavourOS-packages-lists/master/i3
```

```
sudo pacman -S --needed - < i3
```


### Shell
```
sudo pacman -S zsh
```

### ZSH plugin manger and plugins

- oh-my-zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
- powerlevel10k theme
```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
- zsh-syntax-highlighting
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH_CUSTOM"/plugins/zsh-syntax-highlighting
```
- zsh-autosuggestions
```
git clone https://github.com/zsh-users/zsh-autosuggestions.git "$ZSH_CUSTOM"/plugins/zsh-autosuggestions
```

### Gnu Stow
```
sudo pacman -S stow
```

### Utilites
```
sudo pacman -S fzf ripgrep alacritty bat exa duf fd dua-cli npm
```

### Tmux
```
sudo pacman -S tmux 
```

Tmux plugin manager
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm 
```

### Neovim
```
sudo pacman -S neovim
```

## Linking 

- Clone this repo in your $HOME directory

```
git clone https://github.com/m1kkY8/dotfiles.git ~/dotfiles
```

- After cloning cd into dotfiles and run 
```
stow . --adopt
```


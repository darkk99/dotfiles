# Installing Dependencies
```bash
$ sudo pacman -S git
$ git clone https://aur.archlinux.org/yay.git & cd yay & makepkg -si
$ yay -S kitty zsh zsh-syntax-highlighting --needed
$ yay -S xclip
$ yay -S nemo --needed
$ yay -S ttf-fantasque-sans-mono --needed
$ yay -S feh --needed
$ yay -S xorg xorg-server xorg-xinit xorg-apps --needed
$ yay -S lightdm lightdm-gtk-greeter --needed
$ yay -S i3 i3blocks i3lock-color i3status --needed
$ yay -S picom-ibhagwan-git
$ yay -S neovim neovim-plug --needed
```
Or, in three commands:
```bash
$ sudo pacman -S git
$ git clone https://aur.archlinux.org/yay.git & cd yay & makepkg -si
$ yay -S nemo kitty zsh zsh-syntax-highlighting ttf-fantasque-sans-mono feh xorg xorg-server xorg-xinit xorg-apps lightdm lightdm-gtk-greeter i3-gaps i3blocks i3lock-color i3status picom-ibhagwan-git neovim neovim-plug --needed
```
# How to install the dotfiles
```bash
$ git clone https://github.com/darkk99/dotfiles
$ mv ~/dotfiles/* ~/*
```

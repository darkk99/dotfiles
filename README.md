# Installing Dependencies
```bash
$ git clone https://aur.archlinux.org/yay.git & cd yay & makepkg -si
$ yay -S nemo --needed
$ yay -S kitty --needed
$ yay -S ttf-fantasque-sans-mono --needed
$ yay -S feh --needed
$ yay -S xorg xorg-server xorg-xinit xorg-apps --needed
$ yay -S lightdm lightdm-gtk-greeter --needed
$ yay -S i3-gaps-rounded-git i3blocks i3lock-color i3status --needed
$ yay -S neovim neovim-plug --needed
```
Or, in two commands:
```bash
$ git clone https://aur.archlinux.org/yay.git & cd yay & makepkg -si
$ yay -S nemo kittyttf-fantasque-sans-mono feh xorg xorg-server xorg-xinit xorg-apps lightdm lightdm-gtk-greeter i3-gaps-rounded-git i3blocks i3lock-color i3status neovim neovim-plug --needed
```
# How to install the dotfiles
```bash
git clone https://https://github.com/darkk99/dotfiles
mv dotfiles/* ~/*
```

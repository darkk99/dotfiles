# Installing Dependencies
```bash
$ sudo pacman -S git
$ git clone https://aur.archlinux.org/yay.git & cd yay & makepkg -si
$ yay -S kitty zsh zsh-syntax-highlighting
$ yay -S xclip
$ yay -S nemo 
$ yay -S ttf-fantasque-sans-mono
$ yay -S feh
$ yay -S xorg xorg-server xorg-xinit xorg-apps 
$ yay -S lightdm lightdm-gtk-greeter 
$ yay -S i3-gaps i3blocks i3lock-color i3status 
$ yay -S picom-ibhagwan-git
$ yay -S neovim neovim-plug 
```
Or, in three commands:
```bash
$ sudo pacman -S git
$ git clone https://aur.archlinux.org/yay.git & cd yay & makepkg -si
$ yay -S nemo kitty zsh zsh-syntax-highlighting ttf-fantasque-sans-mono feh xorg xorg-server xorg-xinit xorg-apps lightdm lightdm-gtk-greeter i3-gaps i3blocks i3lock-color i3status picom-ibhagwan-git neovim neovim-plug --needed
```

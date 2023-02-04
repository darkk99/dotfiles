# dotfiles-crystal
My dotfiles for Crystal Linux. Hyprland

# **INSTALL**

```
cd
ln -s .bashrc ./
cd ~/.config
ln -s ~/dotfiles-crystal/.config/* ./
```
If you get an error such as `ln: failed to create symbolic link './cava': File exists`, then `rm ~/.config/cava -rf`

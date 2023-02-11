# dotfiles
My dotfiles for Gentoo Linux. Comes with Wayland WM configs (eww (bar) hyprland (WM))

# **INSTALL**

```
cd
ln -s dotfiles-crystal/.bashrc ./
cd ~/.config
ln -s ~/dotfiles-crystal/.config/* ./
```
If you get an error such as `ln: failed to create symbolic link './[filename]': File exists`, then remove the folder, and the script should work.

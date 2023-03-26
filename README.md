# dotfiles
My dotfiles for Linux. Comes with Wayland WM configs (eww (bar) hyprland (WM))

# **INSTALL**

```bash
$ cd ~
$ ln -s ~/dotfiles/.bashrc ./
$ ln -s ~/dotfiles/StartHyprland ./

$ cd ~/.themes
$ ln -s ~/dotfiles/gtk_themes/* ./

$ cd ~/.config
$ ln -s ~/dotfiles/.config/* ./
```
If you get an error such as `ln: failed to create symbolic link './[filename]': File exists`, then remove the folder, and the script should work.

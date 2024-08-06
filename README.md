# This My Daily Driver

I've been using various configurations from GitHub and GitLab users.

# Clone My repository

- Clone my repo:

```
 git clone https://github.com/AlifiChiganjati/setupArtixLinux

 cd setupArtixLinux
```

- move fonts and Wallpapers:

```
 mv fonts/ ~/.local/share/

 mv Wallpapers/ ~/Pictures/
```

- change /etc/issue with login/issue:

```
sudo mv /etc/issue /etc/issue.bak

sudo mv login/issue /etc/issue
```

- move all configs:

```
mv * ~/.config/
```

- copy .bashrc:

```
cp .bashrc ~/.bashrc
```

# Config BSPWM

```
sudo xbps-install -S xorg-minimal dunst libnotify eza cmatrix ranger bspwm sxhkd fastfetch htop kitty picom polybar rofi neovim xclip arandr slurp scrot starship xautolock betterlockscreen brightnessctl numlockx feh  libreoffice xsetroot python3-Pillow
```

# Inspirations

The configs have inspired me:

- https://github.com/th1nhhdk
- https://gitlab.com/stephan-raabe

and many more...

## Packages used for TWM-setup

BSPWM - Window Manager

SXHKD - Keybinds

Dunst - Notifications

Alacritty - Terminal Emulator

Nvim - Editor

Rofi - Application Launcher

Htop - Process viewer

Picom - Compositor

Polybar - Status Bar

Ranger - File manager

Zathura - PDF Reader

Qutebrowser - Browser

Doas - Replacement for sudo

Joplin - Note application

Flameshot - Screenshot tool

Xorg-xinit - Launch X11 display server

Plata-noir-dark - GTK-theme

Font - nerd-fonts-iosevka

### One line install for non-AUR programs

pacman -S xorg-server xorg-xinit bspwm sxhkd git alacritty neovim rofi htop picom ranger zathura zathura-pdf-poppler qutebrowser flameshot dunst

### Yay install
https://github.com/Jguer/yay

```shell
pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
´´´

To work with doas:
```shell
yay --sudo doas --sudoflags -- --save
```
### Packages installed with the AUR

joplin-desktop

polybar

opendoas

plata-noir

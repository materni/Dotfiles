## Packages used for TWM-setup

BSPWM - Window Manager

SXHKD - Keybinds

Dunst - Notifications

Kitty - Terminal Emulator

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

nerd-fonts-iosevka

### Yay is used for the AUR

https://github.com/Jguer/yay

### One line install for non-AUR programs

pacman -S xorg-server xorg-xinit bspwm sxhkd git kitty neovim rofi htop picom ranger zathura zathura-pdf-poppler qutebrowser flameshot dunst

### Yay install
https://github.com/Jguer/yay

pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

To work with doas:
yay --sudo doas --sudoflags -- --save

### Packages installed with the AUR

joplin-desktop

polybar

opendoas

plata-noir

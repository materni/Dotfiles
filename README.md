## My minimal BSPWM setup
<img src="example.png">

### Packages used for TWM-setup

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
```

To work with doas:
```shell
yay --sudo doas --sudoflags -- --save
```
### Packages installed with the AUR

joplin-desktop

polybar

opendoas

plata-noir

### Base16-shell theme (dark-default used)
```sh
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
```

Goes in .zshrc:
```sh
# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"
```

### ZSH/oh-my-ZSH addons
Install oh-my-zsh with curl:
```sh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Using "gentoo" terminal style

zsh-syntax-highlighting:
```sh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

Fish-like autosuggestions:
```sh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

### Vim-plug
For neovim:
```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

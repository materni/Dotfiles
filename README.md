## My minimal BSPWM setup
<img src="example.png">

### Packages used for TWM-setup
* BSPWM - Window Manager
* SXHKD - Keybinds
* Dunst - Notifications
* Alacritty - Terminal Emulator
* Nvim - Editor
* Rofi - Application Launcher
* Htop - Process viewer
* Picom - Compositor
* Polybar - Status Bar
* Ranger - File manager
* PCmanFM - GUI file manager
* Zathura - PDF Reader
* Qutebrowser - Browser
* Doas - Replacement for sudo
* Joplin - Note application
* Flameshot - Screenshot tool
* Xorg-xinit - Launch X11 display server
* Plata-noir-dark - GTK-theme
* Nerd-fonts-iosevka - Font
* Pfetch - PC-information
* Feh - Image viewer/wallpaper
* Blueberry - Bluetooth GUI
* Nm-connection-editor - Network manager GUI
* Picocom - Console program

### One line install for non-AUR programs
```sh
pacman -S xorg-server xorg-xinit bspwm sxhkd feh git alacritty neovim rofi htop picom ranger zathura zathura-pdf-poppler qutebrowser flameshot dunst pcmanfm picocom blueberry nm-connection-editor

```
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
* Joplin-desktop
* Polybar
* Opendoas
* Plata-noir
* Pfetch

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

Then for default-dark run in a new terminal:
```sh
base16_default-dark
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

### Xorg conf
Goes in
```sh
/etc/X11/xorg.conf.d
```
* nvidia-drm-outputclass.conf runs xorg with dedicated nvidia
* touchpad.conf allows tap to click

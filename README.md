## Packages used for TWM-setup
* BSPWM - Window Manager
* SXHKD - Keybinds
* Dunst - Notifications
* Alacritty - Terminal Emulator
* Nvim - Editor
* Rofi - Application Launcher
* Htop - Process viewer
* Picom - Compositor
* Ranger - File manager
* Zathura - PDF Reader
* Firefox - Browser
* Opendoas - Replacement for sudo
* Flameshot - Screenshot tool
* Xorg-xinit - Launch X11 display server
* Xorg-xinput - Graphics tablet input
* Xorg-xrandr - Display configuration
* Xorg-xsetroot - Fixes for mouse
* Plata-noir-dark - GTK-theme
* Nerd-fonts-iosevka - Font
* Feh - Image viewer/wallpaper
* Nm-connection-editor - Network manager GUI
* Picocom - Console program
* Pulseaudio - Audio
* Pavucontrol - GUI audio control
* Pulsemixer - Audio control
* Krita - Drawing/photo-editing
* CPU-autofreq - Battery improvement
* ACPI - Battery information

## Yay install (for arch)
https://github.com/Jguer/yay

```shell
pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

To work with doas (do this after you install opendoas):
```shell
yay --sudo doas --sudoflags -- --save
```

## One line install
For non-AUR:
```sh
pacman -S xorg-server xorg-xinit xorg-xinput xorg-xrandr bspwm sxhkd feh git alacritty neovim rofi htop picom ranger zathura zathura-pdf-poppler firefox pulseaudio pavucontrol pulsemixer flameshot dunst picocom nm-connection-editor krita
```

For AUR:
```sh
yay -S plata-theme opendoas cpu-autofreq
```
## Base16-shell theme (dark-default used)
```sh
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell
```

## ZSH/oh-my-ZSH addons
Install oh-my-zsh with curl:
```sh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

zsh-syntax-highlighting:
```sh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

Fish-like autosuggestions:
```sh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

## Vim-plug
For neovim:
```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

## Firefox theme
```sh
git clone https://github.com/andreasgrafen/ag.proton
```

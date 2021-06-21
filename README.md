## TWM BSPWM Setup
<img src="example.png">

### Packages used
* BSPWM              - Window Manager
* SXHKD              - Keybinds
* Dunst              - Notifications
* Alacritty          - Terminal Emulator
* Nvim               - Editor
* Rofi               - Application Launcher
* Htop               - Process viewer
* Ranger             - File manager
* Zathura            - PDF Reader
* Qutebrowser        - Browser
* Opendoas           - Replacement for sudo
* Flameshot          - Screenshot tool
* Xorg	              - Xserver
* Plata-theme        - GTK-theme
* Nerd-fonts         - Font
* Feh                - Image viewer/wallpaper
* Picocom            - Console program
* Pulseaudio         - Audio
* Pulsemixer         - Audio control
* Krita              - Drawing/photo-editing
* ACPI               - Battery information

### One line install
For Void Linux XBPS:
```sh
xbps-install -S xorg bspwm sxhkd zsh feh git mpv pfetch alacritty neovim rofi htop ranger zathura zathura-pdf-poppler qutebrowser pulseaudio bluez pulsemixer flameshot dunst picocom krita acpi void-repo-multilib void-repo-multilib-nonfree
void-repo-nonfree youtube-dl ueberzug python-pillow plata-theme nodejs nerd-fonts font-iosevka flatpak curl NetworkManager
```

### ZSH/oh-my-ZSH addons
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

### Vim-plug
For neovim:
```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```


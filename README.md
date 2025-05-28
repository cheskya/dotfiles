# dotfiles

my collection of dotfiles :3

(everything written as code are Pacman packages unless specified otherwise)

## configs included

- Neovim
- Wezterm
- Ranger
- Zsh
- Alacritty (kept for archive purposes)
- Pacman Hooks (for Arch Linux workflow)
- Windows Terminal (for Windows 10/11 workflow)

## requirements

- Arch Linux or EndeavourOS (not tested on other distros)
- Pacman package manager
- `neovim`
- `wezterm`
- `ranger`
- `zsh` (set as default shell, see [Arch Wiki Page](https://wiki.archlinux.org/title/Zsh))
- `alacritty`
- `archlinux` distribution for WSL 2 (if using Windows)

## dependencies

### Neovim

- `nvm` for mason
- `zip` and `unzip` for stylua
- `ripgrep` for telescope
- `wl-clipboard` for clipboard (if using Neovim on Wayland or WSL 2)

### Zsh

- `zsh-theme-powerlevel10k-git` (in AUR)
- `zsh-autosuggestions`
- `zsh-syntax-highlighting`
- `nvm`

### Wezterm

- CaskaydiaCove Nerd Font (download the font at [Nerd Fonts](https://www.nerdfonts.com/font-downloads))

### Alacritty

- CaskaydiaCove Nerd Font (download the font at [Nerd Fonts](https://www.nerdfonts.com/font-downloads))

### Windows Terminal

- WSL 2 (remember to make profile run `wsl.exe -d archlinux`)
- CaskaydiaCove Nerd Font (download the font at [Nerd Fonts](https://www.nerdfonts.com/font-downloads))

## placing dotfiles in the right place

1. Clone the repo into the home directory (~)
2. Install `stow`
3. Execute `stow <package-name>`

*Note:* Some dotfiles/configs can't be placed by `stow` in the right place. See below for the list.

- Pacman Hooks (manually place hooks in `/etc/pacman.d/` then make them executable)
- Windows Terminal (manually replace the content of `settings.json` with the one in this repo)

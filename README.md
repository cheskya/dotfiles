# dotfiles

my collection of dotfiles :3

(everything written as code are either Pacman packages or code to execute)

## configs included

- Neovim
- Wezterm
- Ranger
- Zsh
- Alacritty (kept for archive purposes)

## requirements

- Arch Linux or EndeavourOS (not tested on other distros)
- `neovim`
- `wezterm`
- `ranger`
- `zsh` (set as default shell, see [Arch Wiki Page](https://wiki.archlinux.org/title/Zsh))
- `alacritty`

## dependencies

### Neovim

- `npm` (or `nvm`) for mason
- `zip` and `unzip` for stylua
- `ripgrep` for telescope
- `wl-clipboard` for clipboard (if using Neovim on Wayland)

### Zsh

- `zsh-theme-powerlevel10k-git` (in AUR)
- `zsh-autosuggestions`
- `zsh-syntax-highlighting`

## placing dotfiles in the right place

1. Clone the repo into the home directory
2. Install `stow`
3. Execute `stow {package-name}`

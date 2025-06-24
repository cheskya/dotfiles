# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# environmental variables
# export $ZSH=/home/chesca/.zsh/

# aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias cpwd='echo -n $PWD | wl-copy && echo "Path copied to clipboard!"'
alias mkcd='(){ mkdir $1 && cd $1 }'
alias pyserver='python -m http.server'

# For menu select
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
bindkey '^[[Z' reverse-menu-complete

# sourced files (some are plugins)
source /usr/share/nvm/init-nvm.sh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# this is for WSL and Windows Terminal
# allows the user to open a tab in the same directory by duplicating it
keep_current_path() {
  printf "\e]9;9;%s\e\\" "$(wslpath -w "$PWD")"
}
precmd_functions+=(keep_current_path)

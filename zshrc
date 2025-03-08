# # Enable Powerlevel10k instant prompt
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# # Oh-my-zsh configuration
# export ZSH="$HOME/.oh-my-zsh"
# ZSH_THEME="powerlevel10k/powerlevel10k"
# plugins=(git)
# source "$ZSH/oh-my-zsh.sh"

# # Homebrew setup
# eval "$(/opt/homebrew/bin/brew shellenv)"

# # Syntax highlighting
# export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=$(brew --prefix)/share/zsh-syntax-highlighting/highlighters
# source "$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

# # Powerlevel10k configuration
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# source "$(brew --prefix powerlevel10k)/powerlevel10k.zsh-theme"

# Editor settings
[[ -n $SSH_CONNECTION ]] && export EDITOR='vim' || export EDITOR='mvim'

#SHELL Prompt 
PS1='%n@%F{red}%m%f:%~:'

# Include custom dotfiles
source "$HOME/.dotfiles/env.inc"
source "$HOME/.dotfiles/aliases.inc"


export PATH="$PATH:$HOME/bin/google-cloud-sdk/bin"
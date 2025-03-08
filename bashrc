# Include custom files
source "$HOME/.dotfiles/env.inc"
source "$HOME/.dotfiles/aliases.inc"

# Enable settings only in interactive sessions
case $- in
    *i*) ;;
    *) return;;
esac

# Prompt 
PS1='\u@\[\e[31m\]\h\[\e[m\]:\w:'

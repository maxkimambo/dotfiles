#!/bin/bash

echo "Linking stuff up"
echo "Current shell is $SHELL" 

if [[ $SHELL == '/bin/zsh' ]]
then 
    mv $HOME/.zshrc $HOME/.zshrc_bak
    ln -s $HOME/dev/github.com/maxkimambo/dotfiles/.zshrc $HOME/.zshrc
else 
    mv $HOME/.bashrc $HOME/.bashrc_bak
    ln -s $HOME/dev/github.com/maxkimambo/dotfiles/.bashrc $HOME/.bashrc
fi 



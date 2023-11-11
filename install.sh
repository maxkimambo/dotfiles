#!/bin/bash

echo "Linking stuff up"
echo "Current shell is $SHELL" 

DOTFILES_DIR=$HOME/dev/github.com/maxkimambo/dotfiles

# Function to create a symlink
link_file () {
  ln -sf ${DOTFILES_DIR}/$1 ~/$2
}

# List of files to symlink
files_to_link=(bashrc vimrc gitconfig git_ignore_global)

# Loop through the list and create symlinks
for file in "${files_to_link[@]}"; do
  link_file $file .$file
done

echo "Dotfiles have been symlinked."

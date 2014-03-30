#!/bin/bash

# Vim initialization script


function backup_files()
{
  FILE="$HOME/.vimrc"
  FOLDER="$HOME/.vim"
  if [[ ! -L "$FILE" ]]; then
    mv ~/.vimrc ~/.vimrc_backup
  fi
  if [[ ! -L "$FOLDER" ]]; then
    # if the current directory is ~/.vim we shouldn't move it.
    if [[ $FOLDER == `pwd` ]]; then
      echo "$FOLDER is the same as `pwd`. Won't move the folder."
    else
      mv $FOLDER "${FOLDER}.backup"
    fi
  fi
}

function install_files()
{
  path=`pwd`
  FOLDER="$HOME/.vim"
  # if the current directory isn't ~/.vim we make a symlink.
  if [[ ! $FOLDER == $path ]]; then
    cd
    ln -s $path .vim
  fi
  cd
  ln -s $path/vimrc .vimrc
}


backup_files
install_files

#!/bin/bash

# Vim initialization script


function backup_files()
{
  FILE="$HOME/.vimrc"
  FOLDER="$HOME/.vim"
  if [[ ! -L "$FILE" ]]
  then
    mv ~/.vimrc ~/.vimrc_backup
  fi
  if [[ ! -L "$FOLDER" ]]
  then
    mv $FOLDER "${FOLDER}.backup"
  fi
}

function install_files()
{
  path=`pwd`
  # Install vimrc file in home folder
  cd
  ln -s $path/vimrc .vimrc
  ln -s $path .vim
}


backup_files
install_files

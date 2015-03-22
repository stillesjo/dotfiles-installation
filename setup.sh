#!/bin/bash

if [ -d $HOME/.vim ]
then
  echo "Folder exists... Will backup";
  mv $HOME/.vim $HOME/.vimbackup
else
  echo "Folder didn't exists since before"
fi

mkdir -p $HOME/.vim/autoload
mkdir  $HOME/.vim/bundle
mkdir $HOME/.vim/colors

# Install pathogen
curl -LSso $HOME/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
curl -LSso $HOME/.vim/colors/codeschool.vim https://raw.githubusercontent.com/flazz/vim-colorschemes/master/colors/codeschool.vim

git clone https://github.com/gmarik/Vundle.vim $HOME/.vim/bundle/Vundle.vim


if [ -a $HOME/.vimrc ]
then
  echo "Cause I'm backing up backing up..."
  mv $HOME/.vimrc $HOME/.vimrcbackup
fi
curl -LSso $HOME/.vimrc https://raw.githubusercontent.com/stillesjo/vimrc/master/.vimrc

# Run vim and install all the bundles.
vim +PluginInstall +qall

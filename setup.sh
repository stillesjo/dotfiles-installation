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

# Install colorschemes
curl -LSso $HOME/.vim/colors/codeschool.vim https://raw.githubusercontent.com/flazz/vim-colorschemes/master/colors/codeschool.vim
curl -LSso $HOME/.vim/colors/solarized.vim https://github.com/altercation/vim-colors-solarized/blob/master/colors/solarized.vim

# Clone Vundle, bundle manager
git clone https://github.com/gmarik/Vundle.vim $HOME/.vim/bundle/Vundle.vim

if [ -a $HOME/.vimrc ]
then
  echo "backing up..."
  mv $HOME/.vimrc $HOME/.vimrcbackup
fi
curl -LSso $HOME/.vimrc https://raw.githubusercontent.com/stillesjo/vimrc/master/.vimrc

# Run vim and install all the bundles.
vim -E -s <<-EOF
:BundleInstall
:qall
EOF

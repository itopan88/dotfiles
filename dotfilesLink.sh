#!/bin/bash

if [ -e ~/.vimrc ]; then
  mv ~/.vimrc ~/_vimrc_old  
fi

if [ -e ~/.vim ]; then
  mv ~/.vim ~/_vim_old  
fi

ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.vim ~/.vim

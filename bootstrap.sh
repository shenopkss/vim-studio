#!/usr/bin/env bash

mv "$HOME/.vimrc" "$HOME/.vimrc.bak"
mv "$HOME/.vim" "$HOME/.vim.bak"

ln -s "$PWD/vimrc" "$HOME/.vimrc"
ln -s $PWD "$HOME/.vim"

mkdir colors
wget https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim -O ./colors/molokai.vim
wget https://raw.githubusercontent.com/dracula/vim/926dfbab01128322f6326bdd10de2856b1fa3232/colors/dracula.vim -O ./colors/dracula.vim

git clone https://github.com/rking/ag.vim ./bundle/ag 
git clone https://github.com/kien/ctrlp.vim.git ./bundle/ctrlp.vim

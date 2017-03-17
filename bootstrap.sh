#!/usr/bin/env bash

mkdir autoload
curl -fLo ./autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -s "$PWD/vimrc" "$HOME/.vimrc"
ln -s "$PWD/vimrc.bundles" "$HOME/.vimrc.bundles"
ln -s $PWD "$HOME/.vim"

vim +PlugInstall +q

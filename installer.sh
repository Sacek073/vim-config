#!/bin/bash

# light line
git clone https://github.com/itchyny/lightline.vim ~/.vim/pack/plugins/start/lightline

# vim-polyglot
git clone --depth 1 https://github.com/sheerun/vim-polyglot ~/.vim/pack/plugins/start/vim-polyglot

mv files/* ~/.vim

cp -f ~/.vimrc .vimrc

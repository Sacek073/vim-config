#!/bin/bash

# light line
git clone https://github.com/itchyny/lightline.vim ~/.vim/pack/plugins/start/lightline

# vim-polyglot
git clone --depth 1 https://github.com/sheerun/vim-polyglot ~/.vim/pack/plugins/start/vim-polyglot
# NERDTree
git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q

mv files/* ~/.vim
rm ~/.vimrc
cp vimrc ~/.vimrc

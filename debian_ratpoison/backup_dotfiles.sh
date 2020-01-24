!/usr/bin/bash
echo "backing up dot files"

cp ~/.bashrc build/dotfiles/
cp ~/.conkyrc build/dotfiles/
cp ~/.emacs.d/init.el build/dotfiles/init.el
cp ~/.fonts build/dotfiles/ -rf
cp ~/.ratpoisonrc build/dotfiles/
cp ~/.tmux.conf build/dotfiles/
cp ~/.vimrc build/dotfiles/
cp ~/.vim build/dotfiles/ -rf
cp ~/.Xresources build/dotfiles/
cp ~/.Xresources build/dotfiles/
cp ~/cheatsheet build/dotfiles/

#!/bin/bash

# Install vim-plug
echo "Copying everything to $HOME ..."
cp -rv home/.[a-zA-Z]* $HOME/

echo "Installing vim-plug ..."
curl -s -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim || echo "ERROR: vim-plug installation failed"

if [ ! -d "${HOME}/.tmux/plugins/tpm" ] ; then
	echo "Installing tmux plugin manager ..."
	git clone https://github.com/tmux-plugins/tpm ${HOME}/.tmux/plugins/tpm
fi

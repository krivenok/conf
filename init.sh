#!/bin/bash

# Install vim-plug
echo "Installing vim-plug ..."
curl -s -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim || echo "ERROR: vim-plug installation failed"

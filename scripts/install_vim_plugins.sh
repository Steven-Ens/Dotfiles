#!/bin/bash

# Exit immediately if any command fails.
set -e

USER_HOME="/home/steve"
VIM_PACK="$USER_HOME/.vim/pack/plugins/start"
VIM_COLORS="$USER_HOME/.vim/colors"

mkdir -p "$VIM_PACK"
mkdir -p "$VIM_COLORS"

# Vim plugins
git clone https://github.com/Raimondi/delimitMate.git "$VIM_PACK/delimitMate" || true
git clone https://github.com/Yggdroot/indentLine.git "$VIM_PACK/indentLine" || true
git clone https://github.com/preservim/nerdtree.git "$VIM_PACK/nerdtree" || true
git clone https://github.com/preservim/tagbar.git "$VIM_PACK/tagbar" || true
git clone https://tpope.io/vim/fugitive.git "$VIM_PACK/vim-fugitive" || true
git clone https://tpope.io/vim/repeat.git "$VIM_PACK/vim-repeat" || true
git clone https://tpope.io/vim/surround.git "$VIM_PACK/vim-surround" || true
git clone --branch release https://github.com/neoclide/coc.nvim.git "$VIM_PACK/coc.nvim" || true

# Install coc.nvim
cd "$VIM_PACK/coc.nvim"
npm ci

# Install Solidity language server for coc.nvim
npm install -g @nomicfoundation/solidity-language-server

# Nord Vim theme
git clone https://github.com/nordtheme/vim.git "$VIM_PACK/nord-vim" || true
cp "$VIM_PACK/nord-vim/colors/nord.vim" "$VIM_COLORS/nord.vim"

echo "Vim plugins and Solidity language server installed successfully."

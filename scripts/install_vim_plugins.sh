#!/bin/bash

# Exit immediately if any command fails.
set -e

USER_HOME="/home/steve"
# Vim plugin directory.
PLUGIN_DIR="$USER_HOME/.vim/pack/plugins/start"
# Vim colorscheme directory.
COLOR_DIR="$USER_HOME/.vim/colors"

mkdir -p "$PLUGIN_DIR"
mkdir -p "$COLOR_DIR"

# Vim plugins
git clone https://github.com/Raimondi/delimitMate.git "$PLUGIN_DIR/delimitMate" || true
git clone https://github.com/Yggdroot/indentLine.git "$PLUGIN_DIR/indentLine" || true
git clone https://github.com/preservim/nerdtree.git "$PLUGIN_DIR/nerdtree" || true
git clone https://github.com/preservim/tagbar.git "$PLUGIN_DIR/tagbar" || true
git clone https://tpope.io/vim/fugitive.git "$PLUGIN_DIR/vim-fugitive" || true
git clone https://tpope.io/vim/repeat.git "$PLUGIN_DIR/vim-repeat" || true
git clone https://tpope.io/vim/surround.git "$PLUGIN_DIR/vim-surround" || true
git clone --branch release https://github.com/neoclide/coc.nvim.git "$PLUGIN_DIR/coc.nvim" || true

# Install Nord Vim theme
git clone https://github.com/nordtheme/vim.git "$PLUGIN_DIR/nord-vim" || true
cp "$PLUGIN_DIR/nord-vim/colors/nord.vim" "$COLOR_DIR/nord.vim"

# Install Solidity language server for coc.nvim
npm install -g @nomicfoundation/solidity-language-server

echo "Vim plugins and Solidity language server installed successfully."

#!/bin/bash

# Exit immediately if any command fails
set -e

USER_HOME="/home/steve"
# Vim plugin directory
PLUGIN_DIR="$USER_HOME/.vim/pack/plugins/start"
# Vim colorscheme directory
COLOR_DIR="$USER_HOME/.vim/colors"

cd "$PLUGIN_DIR"

echo "Updating Vim plugins in $PLUGIN_DIR"
echo

# Update all Git repositories in $PLUGIN_DIR
for plugin in */; do
    plugin="${plugin%/}"

    if [ -d "$plugin/.git" ]; then
        echo "Updating $plugin"
        git -C "$plugin" pull
        echo
    else
        echo "Skipping $plugin as it's not a git repository"
        echo
    fi
done

# Copy nord.vim colorscheme to $COLOR_DIR
if [ -f "$PLUGIN_DIR/nord-vim/colors/nord.vim" ]; then
    echo "Copying nord.vim to $COLOR_DIR"

    mkdir -p "$COLOR_DIR"
    cp "$PLUGIN_DIR/nord-vim/colors/nord.vim" "$COLOR_DIR/nord.vim"

    echo
fi

echo "All Vim plugins updated"

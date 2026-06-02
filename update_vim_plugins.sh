#!/usr/bin/env bash

set -e

PLUGIN_DIR="$HOME/.vim/pack/plugins/start/"

cd "$PLUGIN_DIR"

echo "Updating Vim plugins in: $PLUGIN_DIR"
echo

for plugin in */; do
    plugin="${plugin%/}"

    if [ -d "$plugin/.git" ]; then
        echo "Updating $plugin"

        git -C "$plugin" pull
        echo
    else
        echo "Skipping $plugin — not a git repository"
        echo
    fi
done

if [ -d "$PLUGIN_DIR/YouCompleteMe" ]; then
    echo "Rebuilding YouCompleteMe"

    cd "$PLUGIN_DIR/YouCompleteMe"
    python3 install.py
fi

echo
echo "All Vim plugins updated"

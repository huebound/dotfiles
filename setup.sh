#!/bin/bash

# Dotfiles setup script
# Usage: ./setup.sh

set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Setting up dotfiles from $DOTFILES_DIR"

# Create .config directory if it doesn't exist
mkdir -p ~/.config

# Backup and symlink zshrc
if [ -f ~/.zshrc ] && [ ! -L ~/.zshrc ]; then
    echo "Backing up existing .zshrc to .zshrc.backup"
    mv ~/.zshrc ~/.zshrc.backup
fi
ln -sf "$DOTFILES_DIR/.zshrc" ~/.zshrc
echo "Linked .zshrc"

# Backup and symlink nvim config
if [ -d ~/.config/nvim ] && [ ! -L ~/.config/nvim ]; then
    echo "Backing up existing nvim config to ~/.config/nvim.backup"
    mv ~/.config/nvim ~/.config/nvim.backup
fi
ln -sf "$DOTFILES_DIR/nvim" ~/.config/nvim
echo "Linked nvim config"

echo ""
echo "Setup complete!"
echo "Run 'source ~/.zshrc' to reload your shell config"
echo "Open nvim and run ':Lazy sync' to install plugins"

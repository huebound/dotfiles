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

# Symlink p10k config
if [ -f ~/.p10k.zsh ] && [ ! -L ~/.p10k.zsh ]; then
    echo "Backing up existing .p10k.zsh to .p10k.zsh.backup"
    mv ~/.p10k.zsh ~/.p10k.zsh.backup
fi
ln -sf "$DOTFILES_DIR/.p10k.zsh" ~/.p10k.zsh
echo "Linked .p10k.zsh"

# Symlink zshenv
if [ -f ~/.zshenv ] && [ ! -L ~/.zshenv ]; then
    echo "Backing up existing .zshenv to .zshenv.backup"
    mv ~/.zshenv ~/.zshenv.backup
fi
ln -sf "$DOTFILES_DIR/.zshenv" ~/.zshenv
echo "Linked .zshenv"

# Symlink profile
if [ -f ~/.profile ] && [ ! -L ~/.profile ]; then
    echo "Backing up existing .profile to .profile.backup"
    mv ~/.profile ~/.profile.backup
fi
ln -sf "$DOTFILES_DIR/.profile" ~/.profile
echo "Linked .profile"

# Symlink bash_profile
if [ -f ~/.bash_profile ] && [ ! -L ~/.bash_profile ]; then
    echo "Backing up existing .bash_profile to .bash_profile.backup"
    mv ~/.bash_profile ~/.bash_profile.backup
fi
ln -sf "$DOTFILES_DIR/.bash_profile" ~/.bash_profile
echo "Linked .bash_profile"

# Symlink bashrc
if [ -f ~/.bashrc ] && [ ! -L ~/.bashrc ]; then
    echo "Backing up existing .bashrc to .bashrc.backup"
    mv ~/.bashrc ~/.bashrc.backup
fi
ln -sf "$DOTFILES_DIR/.bashrc" ~/.bashrc
echo "Linked .bashrc"

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

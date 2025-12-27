# Dotfiles

Personal dotfiles for macOS and Linux. One repo, one source of truth.

## What's Included

| File/Folder | Description |
|-------------|-------------|
| `.zshrc` | Zsh configuration with oh-my-zsh, aliases, and plugins |
| `nvim/` | Neovim config based on kickstart.nvim with custom plugins |
| `setup.sh` | Automated setup script for new machines |

## Quick Start

### New Machine (Full Setup)

```bash
# 1. Clone the repo
git clone https://github.com/huebound/dotfiles ~/dotfiles

# 2. Run the setup script
cd ~/dotfiles && ./setup.sh

# 3. Reload your shell
source ~/.zshrc

# 4. Open nvim and install plugins
nvim
# Run :Lazy sync inside nvim
```

### Remote Server (Nvim Only)

```bash
# Clone and symlink just nvim
git clone https://github.com/huebound/dotfiles ~/dotfiles
mkdir -p ~/.config
ln -sf ~/dotfiles/nvim ~/.config/nvim

# Open nvim to install plugins
nvim
# Run :Lazy sync inside nvim
```

### Remote Server (Minimal - No Plugins)

If the server doesn't have internet or you want a fast setup:

```bash
# Just grab the init.lua for basic config
curl -fLo ~/.config/nvim/init.lua --create-dirs \
  https://raw.githubusercontent.com/huebound/dotfiles/main/nvim/init.lua
```

## Dependencies

### Required

- **Neovim** >= 0.9.0
- **Git**
- **A C compiler** (gcc/clang) for treesitter

### Recommended

- **ripgrep** - for Telescope live grep (`brew install ripgrep`)
- **fd** - for Telescope file finding (`brew install fd`)
- **lazygit** - for git TUI (`brew install lazygit`)
- **Nerd Font** - for icons (e.g., JetBrainsMono Nerd Font)

### macOS Full Install

```bash
# Install Homebrew if not present
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install dependencies
brew install neovim ripgrep fd lazygit node python

# Install a Nerd Font
brew install --cask font-jetbrains-mono-nerd-font
```

### Ubuntu/Debian Full Install

```bash
# Neovim (latest)
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo tar -C /opt -xzf nvim-linux64.tar.gz
sudo ln -sf /opt/nvim-linux64/bin/nvim /usr/local/bin/nvim

# Dependencies
sudo apt update && sudo apt install -y git ripgrep fd-find gcc make unzip

# Node (for LSPs)
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt install -y nodejs
```

## Zsh Configuration

### Plugins (via oh-my-zsh)

- `git` - git aliases
- `zsh-syntax-highlighting` - command highlighting
- `zsh-autosuggestions` - fish-like suggestions

### Key Aliases

| Alias | Command |
|-------|---------|
| `v` | `nvim` |
| `c` | `claude` |
| `x` | `codex` |
| `gs` | `git status` |
| `gd` | `git diff` |
| `gc` | `git commit` |
| `gp` | `git push` |
| `gl` | `git log --oneline -20` |
| `ll` | `ls -lah` |
| `..` | `cd ..` |
| `...` | `cd ../..` |
| `reload` | `source ~/.zshrc` |
| `zshrc` | `nvim ~/.zshrc` |

### Project Shortcuts

| Alias | Path |
|-------|------|
| `p` | `~/Documents/Coding/Hue/Pulse` |
| `pb` | `~/Documents/Coding/Hue/Pulse/backend` |
| `pf` | `~/Documents/Coding/Hue/Pulse/frontend` |

## Neovim Configuration

Based on [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) with custom plugins.

### Key Mappings

Leader key: `<Space>`

#### General

| Key | Action |
|-----|--------|
| `<leader>w` | Save file |
| `<leader>bd` | Close buffer |
| `<leader>u` | Toggle undotree |
| `<Esc>` | Clear search highlights |
| `<C-h/j/k/l>` | Navigate splits |
| `<C-d>` | Scroll down (centered) |
| `<C-u>` | Scroll up (centered) |

#### File Navigation

| Key | Action |
|-----|--------|
| `<leader>sf` | Search files |
| `<leader>sF` | Search files (including hidden) |
| `<leader>sg` | Live grep |
| `<leader>s.` | Recent files |
| `<leader><leader>` | Open buffers |
| `-` | Open file explorer (Oil) |
| `<C-e>` | Harpoon menu |
| `<leader>a` | Add file to Harpoon |
| `<leader>1-4` | Jump to Harpoon file 1-4 |

#### Code Navigation

| Key | Action |
|-----|--------|
| `grd` | Go to definition |
| `grr` | Go to references |
| `gri` | Go to implementation |
| `grn` | Rename symbol |
| `gra` | Code action |
| `]d` / `[d` | Next/prev diagnostic |
| `]m` / `[m` | Next/prev function |
| `]]` / `[[` | Next/prev class |
| `s` | Flash jump (type 2 chars) |

#### Git

| Key | Action |
|-----|--------|
| `<leader>gg` | Open Lazygit |
| `<leader>gd` | Diff view |
| `<leader>gh` | File history |
| `<leader>gc` | Search commits |
| `<leader>gB` | Search branches |

#### Diagnostics

| Key | Action |
|-----|--------|
| `<leader>xx` | Toggle Trouble diagnostics |
| `<leader>xX` | Buffer diagnostics |
| `<leader>q` | Quickfix list |

### Plugins

#### Editing
- **flash.nvim** - Jump anywhere with `s` + 2 chars
- **mini.surround** - Add/change/delete surroundings
- **mini.ai** - Better text objects
- **hardtime.nvim** - Blocks bad vim habits

#### Navigation
- **telescope.nvim** - Fuzzy finder for everything
- **harpoon** - Quick file switching
- **oil.nvim** - Edit filesystem like a buffer

#### Code Intelligence
- **nvim-lspconfig** - LSP support
- **blink.cmp** - Fast autocompletion
- **conform.nvim** - Auto-formatting on save
- **treesitter** - Syntax highlighting & text objects

#### Git
- **gitsigns.nvim** - Git signs in gutter
- **diffview.nvim** - Side-by-side diffs
- **lazygit** via toggleterm

#### UI
- **tokyonight.nvim** - Colorscheme
- **noice.nvim** - Modern UI for messages
- **which-key.nvim** - Keybinding hints

### LSP Servers

Automatically installed via Mason:
- `lua_ls` - Lua
- `pyright` - Python
- `ts_ls` - TypeScript/JavaScript
- `eslint` - JavaScript linting

### Formatters

- `stylua` - Lua
- `prettier` - JS/TS/HTML/CSS/JSON/YAML/Markdown
- `ruff` - Python

## Updating

```bash
cd ~/dotfiles
git pull
```

Then restart your terminal and run `:Lazy sync` in nvim.

## Customizing

Edit files directly in `~/dotfiles/`. Changes take effect immediately since everything is symlinked.

```bash
# Edit zsh config
nvim ~/dotfiles/.zshrc
source ~/.zshrc

# Edit nvim config
nvim ~/dotfiles/nvim/init.lua
# Changes apply on next nvim restart

# Add custom nvim plugins
nvim ~/dotfiles/nvim/lua/custom/plugins/init.lua
```

## Troubleshooting

### Nvim plugins not loading

```vim
:Lazy sync
:Lazy health
```

### LSP not working

```vim
:Mason
:LspInfo
:checkhealth
```

### Treesitter errors

```vim
:TSUpdate
```

### Reset nvim state completely

```bash
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim
nvim  # Will reinstall everything
```

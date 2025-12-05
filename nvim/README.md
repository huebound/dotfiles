# Hue's Neovim Config

A batteries-included Neovim configuration built on [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim).

## Quick Start

```bash
# Backup existing config (if any)
mv ~/.config/nvim ~/.config/nvim.bak

# Clone this config
cp -r /path/to/dotfiles/nvim ~/.config/nvim

# Open Neovim - plugins install automatically
nvim
```

First launch will install ~40 plugins. Run `:Mason` to verify language servers are installed.

---

## Keybind Cheatsheet

**Leader key is `<Space>`**

### File Navigation

| Keybind | Action |
|---------|--------|
| `-` | Open file manager (Oil) |
| `<leader>sf` | Search files |
| `<leader>sg` | Search by grep |
| `<leader>s.` | Recent files |
| `<leader><leader>` | Switch buffers |
| `<C-e>` | Harpoon menu |
| `<leader>a` | Add file to Harpoon |
| `<leader>1-4` | Jump to Harpoon file 1-4 |

### Editing

| Keybind | Action |
|---------|--------|
| `gcc` | Toggle comment line |
| `gc{motion}` | Comment with motion |
| `s{char}{char}` | Flash jump to location |
| `S` | Flash select treesitter node |
| `J` / `K` (visual) | Move selection up/down |
| `<leader>p` (visual) | Paste without yanking replaced text |

### Code Navigation

| Keybind | Action |
|---------|--------|
| `grd` | Go to definition |
| `grr` | Find references |
| `grn` | Rename symbol |
| `gra` | Code actions |
| `]m` / `[m` | Next/prev function |
| `]]` / `[[` | Next/prev class |
| `af` / `if` | Select around/inner function |
| `ac` / `ic` | Select around/inner class |

### Git

| Keybind | Action |
|---------|--------|
| `<leader>gg` | Open Lazygit |
| `<leader>gd` | Diff view |
| `<leader>gh` | File git history |
| `<leader>gc` | Search commits |
| `<leader>gB` | Search branches |
| `]c` / `[c` | Next/prev git hunk |
| `<leader>hs` | Stage hunk |
| `<leader>hr` | Reset hunk |
| `<leader>hp` | Preview hunk |
| `<leader>hb` | Blame line |

### Tools

| Keybind | Action |
|---------|--------|
| `<leader>xx` | Toggle diagnostics (Trouble) |
| `<leader>u` | Toggle undo tree |
| `<C-\>` | Toggle terminal |
| `<leader>f` | Format buffer |
| `<leader>th` | Toggle inlay hints |
| `<leader>q` | Open diagnostic quickfix |

### Session

| Keybind | Action |
|---------|--------|
| `<leader>qs` | Restore session |
| `<leader>ql` | Restore last session |

### Search (Telescope)

| Keybind | Action |
|---------|--------|
| `<leader>sf` | Find files |
| `<leader>sg` | Live grep |
| `<leader>sw` | Search current word |
| `<leader>sd` | Search diagnostics |
| `<leader>sh` | Search help |
| `<leader>sk` | Search keymaps |
| `<leader>sr` | Resume last search |
| `<leader>/` | Fuzzy search in buffer |

---

## Plugins

### Core
| Plugin | Purpose |
|--------|---------|
| [lazy.nvim](https://github.com/folke/lazy.nvim) | Plugin manager |
| [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) | Fuzzy finder |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP configuration |
| [mason.nvim](https://github.com/williamboman/mason.nvim) | LSP/tool installer |
| [blink.cmp](https://github.com/Saghen/blink.cmp) | Autocompletion |
| [conform.nvim](https://github.com/stevearc/conform.nvim) | Formatting |

### Navigation
| Plugin | Purpose |
|--------|---------|
| [oil.nvim](https://github.com/stevearc/oil.nvim) | File manager (edit filesystem like a buffer) |
| [harpoon](https://github.com/ThePrimeagen/harpoon) | Quick file switching |
| [flash.nvim](https://github.com/folke/flash.nvim) | Jump anywhere on screen |

### Code Intelligence
| Plugin | Purpose |
|--------|---------|
| [nvim-treesitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context) | Shows current function at top |
| [nvim-treesitter-textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects) | Function/class text objects |
| [trouble.nvim](https://github.com/folke/trouble.nvim) | Diagnostics panel |

### Editing
| Plugin | Purpose |
|--------|---------|
| [mini.comment](https://github.com/echasnovski/mini.comment) | Commenting |
| [mini.surround](https://github.com/echasnovski/mini.surround) | Surround text objects |
| [mini.ai](https://github.com/echasnovski/mini.ai) | Extended text objects |
| [nvim-autopairs](https://github.com/windwp/nvim-autopairs) | Auto-close brackets |
| [hardtime.nvim](https://github.com/m4xshen/hardtime.nvim) | Blocks bad habits |

### Git
| Plugin | Purpose |
|--------|---------|
| [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) | Git signs + hunk operations |
| [diffview.nvim](https://github.com/sindrets/diffview.nvim) | Side-by-side diffs |
| [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim) | Terminal + Lazygit integration |

### UI
| Plugin | Purpose |
|--------|---------|
| [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) | Colorscheme |
| [which-key.nvim](https://github.com/folke/which-key.nvim) | Keybind hints |
| [noice.nvim](https://github.com/folke/noice.nvim) | Modern UI |
| [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) | Indent guides |
| [todo-comments.nvim](https://github.com/folke/todo-comments.nvim) | Highlight TODOs |

### Other
| Plugin | Purpose |
|--------|---------|
| [undotree](https://github.com/mbbill/undotree) | Visualize undo history |
| [persistence.nvim](https://github.com/folke/persistence.nvim) | Session management |
| [LuaSnip](https://github.com/L3MON4D3/LuaSnip) | Snippets |

---

## Language Support

### Configured LSPs
- **Lua** - lua_ls
- **Python** - pyright
- **TypeScript/JavaScript** - ts_ls + eslint

### Formatters (auto-format on save)
- **Lua** - stylua
- **Python** - ruff
- **TypeScript/JavaScript/JSON/HTML/CSS/Markdown** - prettier

### Adding a New Language

1. Add LSP to `servers` table in `init.lua`:
   ```lua
   local servers = {
     -- existing servers...
     rust_analyzer = {},
   }
   ```

2. Add formatter to `formatters_by_ft` in `init.lua`:
   ```lua
   formatters_by_ft = {
     -- existing formatters...
     rust = { 'rustfmt' },
   }
   ```

3. Add to mason ensure_installed if needed:
   ```lua
   vim.list_extend(ensure_installed, {
     'rustfmt',
   })
   ```

4. Restart Neovim - Mason auto-installs, Treesitter auto-installs grammars.

---

## File Structure

```
nvim/
├── init.lua                 # Main configuration
├── lazy-lock.json           # Plugin version lock
└── lua/
    ├── kickstart/
    │   └── plugins/         # Kickstart optional plugins
    │       ├── autopairs.lua
    │       ├── gitsigns.lua
    │       └── indent_line.lua
    └── custom/
        └── plugins/
            └── init.lua     # Custom plugins (oil, harpoon, etc.)
```

---

## Tips

### Oil.nvim (File Manager)
- Press `-` to open parent directory
- Edit filenames to rename files
- Delete lines to delete files
- Add new lines to create files
- Press `:w` to apply changes
- Press `-` again to go up, `<CR>` to enter directory

### Harpoon
- Add your 3-4 most-used files with `<leader>a`
- Jump between them with `<leader>1-4`
- Much faster than telescope for frequent files

### Flash
- Type `s` then 2 characters to jump anywhere
- Works with operators: `ds` + chars = delete to location

### Hardtime
- If it blocks you, it's teaching you
- Use `5j` instead of `jjjjj`
- Use `w`, `b`, `f`, `t` for movement

---

## Troubleshooting

### Plugin Issues
```vim
:Lazy          " Open plugin manager
:Lazy sync     " Sync/update all plugins
:Lazy clean    " Remove unused plugins
```

### LSP Issues
```vim
:LspInfo       " Check LSP status for current buffer
:LspLog        " View LSP logs
:Mason         " Manage installed LSPs
```

### Health Check
```vim
:checkhealth   " Run all health checks
```

---

## Credits

Built on [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim) by TJ DeVries.

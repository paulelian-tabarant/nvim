# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

This is a Neovim configuration repository using VimScript (init.vim) with vim-plug as the plugin manager. The configuration is designed for two primary use cases:
1. **Markdown writing** (French language, distraction-free mode)
2. **Web development** (JavaScript, TypeScript, React)

## Architecture

**Single-file configuration**: All settings are in `init.vim` - there are no separate Lua modules or split configuration files.

**Plugin management**: Uses vim-plug. Plugins are defined between `call plug#begin()` and `call plug#end()`. After adding/removing plugins, users must run `:PlugInstall` or `:PlugUpdate` in Neovim.

**Configuration sections in init.vim**:
- Lines 1-40: Plugin declarations with vim-plug
- Lines 42-84: General editor settings (theme, tabs, scrolling, etc.)
- Lines 86-101: Markdown-specific autocmds and settings
- Lines 103-122: Development-specific autocmds and key mappings

## Key Behaviors

**Markdown files (.md, .txt)**:
- Auto-enables Goyo (distraction-free mode at 100 columns width)
- French spell checking (`spelllang=fr`)
- Word wrap with line breaks enabled
- Cursor line highlighting
- Conceal level 2 for cleaner markdown display

**Web development files (.js, .jsx, .ts, .tsx, .json, .html, .css)**:
- Line numbers enabled
- Rainbow parentheses active
- 80-character vertical line guide
- NERDTree auto-opens when nvim launched without file arguments

## Important Keybindings

- `<C-g>`: Toggle Goyo (distraction-free mode)
- `<leader>ff`: Telescope find files
- `<leader>fg`: Telescope live grep
- `<leader>fb`: Telescope buffers
- `<leader>fh`: Telescope help tags

Note: Leader key defaults to `\` unless user has remapped it elsewhere.

## Plugin Management

To install plugins after modifying init.vim:
```vim
:PlugInstall
```

To update existing plugins:
```vim
:PlugUpdate
```

To remove unused plugins:
```vim
:PlugClean
```

## Making Changes

When modifying this configuration:
- All changes go in `init.vim` (no separate plugin files)
- After adding plugin declarations, remind user to run `:PlugInstall`
- Respect the existing structure: vim-plug declarations at top, general settings, then filetype-specific autocmds
- Markdown settings assume French language by default
- Development settings assume 2-space indentation and 80-char line limit

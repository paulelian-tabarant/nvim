call plug#begin()
  " Set of defaults everyone can agree on
  Plug 'tpope/vim-sensible'

  " Status bar at bottom of the screen
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Distraction-free writing
  Plug 'junegunn/goyo.vim'
  nnoremap <C-g> :Goyo<CR>
  Plug 'junegunn/limelight.vim'

  " Markdown editing
  Plug 'godlygeek/tabular'
  Plug 'SidOfc/mkdx'

  " File explorer
  Plug 'nvim-telescope/telescope-file-browser.nvim' 

  " File finder
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }

  " Rainbow parentheses
  Plug 'frazrepo/vim-rainbow'

  " Indent guides
  Plug 'nathanaelkane/vim-indent-guides'

  " Brackets auto-closing
  Plug 'raimondi/delimitmate'

  " Git hints
  Plug 'airblade/vim-gitgutter'

  " Commenting tools
  Plug 'scrooloose/nerdcommenter'

call plug#end()

set encoding=utf-8

" Theme definition
colorscheme habamax
set background=dark
set termguicolors
" Airline theme definition
let g:airline_theme='minimalist'

" Disable compatibility with vi, which can cause unexpected issues.
set nocompatible

" Set tab width
set tabstop=2

" The same but for indents
set shiftwidth=2

" Keep cursor in approximately the middle of the screen
set scrolloff=12

" Do not save backup files.
set nobackup
set nowritebackup

" Do not wrap lines when overflowing the screen width
set nowrap

" Converts tabs to spaces
set expandtab

" Disable mouse support
set mouse=

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on
" Enable plugins and load plugin for the detected file type.
filetype plugin on
" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Markdown
autocmd FileType markdown,txt set cursorline
autocmd FileType markdown,txt setlocal spell spelllang=fr
autocmd FileType markdown,txt Goyo 100
autocmd FileType markdown,txt set wrap
autocmd FileType markdown,txt set linebreak
let g:vim_markdown_conceal = 2
let g:vim_markdown_conceal_code_blocks = 0
let g:vim_markdown_math = 1
let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_autowrite = 1
let g:vim_markdown_edit_url_in = 'tab'
let g:vim_markdown_follow_anchor = 1

" Development

" Telescope setup
lua require('telescope-config')

" File explorer - auto-open when nvim starts without arguments
if empty(argv())
    au VimEnter * Telescope file_browser
endif

" Enable line numbering for Web development
autocmd BufEnter *.{js,jsx,ts,tsx,json,html,css} set number

" Rainbow parentheses on startup
au FileType javascript,typescript,javascriptreact,typescriptreact,json,html,css call rainbow#load()

" Enable vertical line in coding files
au FileType javascript,typescript,javascriptreact,typescriptreact set colorcolumn=80

" Telescope file finder
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>fe <cmd>Telescope file_browser<cr>

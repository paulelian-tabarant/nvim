call plug#begin()
  " Set of defaults everyone can agree on
  Plug 'tpope/vim-sensible'

  " Status bar at bottom of the screen
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  " Distraction-free writing
  Plug 'junegunn/goyo.vim'
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

" Load settings and keymaps
lua require('settings')
lua require('keymaps')
lua require('markdown')

" Airline theme definition
let g:airline_theme='minimalist'

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

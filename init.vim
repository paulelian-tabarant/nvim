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
lua require('webdev')

" Airline theme definition
let g:airline_theme='minimalist'

" Development

" Telescope setup
lua require('telescope-config')

" File explorer - auto-open when nvim starts without arguments
if empty(argv())
    au VimEnter * Telescope file_browser
endif

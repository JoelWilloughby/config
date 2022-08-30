call plug#begin(stdpath('data') . '/plugged')

" Lsp configuration stuff
Plug 'neovim/nvim-lspconfig'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'p00f/nvim-ts-rainbow'

" Gruvbox theme
Plug 'ellisonleao/gruvbox.nvim'

" Telescope, super nice
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Git gutter
Plug 'airblade/vim-gitgutter'

" Lightline, better status
Plug 'itchyny/lightline.vim'

" Useful
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

call plug#end()

" Configuration
runtime ./lspconfig.lua
runtime ./treesitter.lua
runtime ./telescope.lua

set background=dark
colorscheme gruvbox


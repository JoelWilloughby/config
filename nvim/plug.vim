call plug#begin(stdpath('data') . '/plugged')

" Lsp configuration stuff
Plug 'neovim/nvim-lspconfig'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter'
" Plug 'p00f/nvim-ts-rainbow'

" Gruvbox theme
Plug 'ellisonleao/gruvbox.nvim'

" Telescope, super nice
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Git gutter
" Plug 'airblade/vim-gitgutter'

" Lightline, better status
Plug 'itchyny/lightline.vim'

" Useful
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'

" Auto Complete
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" Indent guides
" This is really slow unfortunately
" Plug 'lukas-reineke/indent-blankline.nvim'

Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'

call plug#end()

" Configuration
runtime ./lspconfig.lua
runtime ./treesitter.lua
runtime ./telescope.lua
runtime ./nvim-cmp.vim
" runtime ./indent-blankline.lua
runtime ./nvim-tree.lua

set background=dark
colorscheme gruvbox


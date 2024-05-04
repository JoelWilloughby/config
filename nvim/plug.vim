call plug#begin(stdpath('data') . '/plugged')

" Lsp configuration stuff
Plug 'neovim/nvim-lspconfig'
Plug 'folke/lsp-trouble.nvim'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter'

" Gruvbox theme
Plug 'ellisonleao/gruvbox.nvim'

" Telescope, super nice
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'nvim-lualine/lualine.nvim'

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

Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'

call plug#end()

set background=dark
colorscheme gruvbox

" Configuration
runtime ./lspconfig.lua
runtime ./treesitter.lua
runtime ./telescope.lua
runtime ./nvim-cmp.vim
" runtime ./indent-blankline.lua
runtime ./nvim-tree.lua
" runtime ./lightline.vim
runtime ./lualine.lua
runtime ./trouble.lua


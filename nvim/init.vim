" VIM RC
" Tabs
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set autoindent

set ignorecase
set smartcase

set backspace=indent,eol,start

set hlsearch

" Rulers and such
set ruler
set number
set relativenumber
set colorcolumn=81,121

" Show whitespace
set listchars+=space:◦
set list

" Better source usage
nnoremap <leader>sv :source $MYVIMRC<CR>
" Jump back and forward
nnoremap <leader>b <C-o>
nnoremap <leader>f <C-i>

" Load plugins and configuration
runtime ./plug.vim


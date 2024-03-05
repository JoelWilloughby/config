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
set listchars+=space:⋅
set listchars+=eol:↴
set list

set title

" Navigate using Alt
:tnoremap <A-h> <C-\><C-N><C-w>h
:tnoremap <A-j> <C-\><C-N><C-w>j
:tnoremap <A-k> <C-\><C-N><C-w>k
:tnoremap <A-l> <C-\><C-N><C-w>l
:inoremap <A-h> <C-\><C-N><C-w>h
:inoremap <A-j> <C-\><C-N><C-w>j
:inoremap <A-k> <C-\><C-N><C-w>k
:inoremap <A-l> <C-\><C-N><C-w>l
:nnoremap <A-h> <C-w>h
:nnoremap <A-j> <C-w>j
:nnoremap <A-k> <C-w>k
:nnoremap <A-l> <C-w>l

:tnoremap <C-left> <C-\><C-N><C-w>h
:tnoremap <C-down> <C-\><C-N><C-w>j
:tnoremap <C-up> <C-\><C-N><C-w>k
:tnoremap <C-right> <C-\><C-N><C-w>l
:inoremap <C-left> <C-\><C-N><C-w>h
:inoremap <C-down> <C-\><C-N><C-w>j
:inoremap <C-up> <C-\><C-N><C-w>k
:inoremap <C-right> <C-\><C-N><C-w>l
:nnoremap <C-left> <C-w>h
:nnoremap <C-down> <C-w>j
:nnoremap <C-up> <C-w>k
:nnoremap <C-right> <C-w>l

" Easier exiting from terminal mode
:tnoremap <C-Esc> <C-\><C-n>
if has('nvim')
    let $GIT_EDITOR = 'nvr -cc split --remote-wait'
endif
autocmd FileType gitcommit,gitrebase,gitconfig set bufhidden=delete

" Better closing of buffers
nnoremap <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>

" Better source usage
nnoremap <leader>sv :source $MYVIMRC<CR>
" Jump back and forward
nnoremap <leader>b <C-o>
nnoremap <leader>n <C-i>
" Open/Close nvim tree
nnoremap <leader>tt :NvimTreeToggle<CR>

autocmd BufWritePre * :mark q|%s/\s\+$//e|normal! `q
autocmd BufNewFile,BufRead Jenkinsfile set syntax=groovy

" Load plugins and configuration
runtime ./plug.vim


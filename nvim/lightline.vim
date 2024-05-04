runtime ./lightline-gruvbox.vim

let g:lightline = {
      \'colorscheme': 'gruvbox',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified' ] ],
      \   'right': [ ['lineinfo'],
      \              ['percent'],
      \              ['fileformat', 'fileencoding', 'filetype', 'charvaluehex'] ]
      \ },
      \ 'component': {
      \   'charvaluehex': '0x%02B',
      \   'filename': '%f',
      \   'lineinfo': '%3l:%-2c/%L%<',
      \ },
      \ 'component_function_visible_condition': {
      \   'filename': 'LightlineVisible',
      \ },
      \ }

command! LightlineReload call LightlineReload()
function! LightlineReload()
    call lightline#init()
    call lightline#colorscheme()
    call lightline#update()
endfunction

function! LightlineVisible()
    return (&filetype ==? "nvimtree")
endfunction

call LightlineReload()
set noshowmode

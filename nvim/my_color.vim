colorscheme monokai
set colorcolumn=80
set termguicolors
" colorizer
lua require'colorizer'.setup()
" lightline
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \ },
      \ }

let g:indentLine_char = '┊'

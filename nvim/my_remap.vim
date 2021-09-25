let mapleader=','

" vcoolor
let g:vcoolor_disable_mappings = 1
let g:vcoolor_map = '<leader>c'
let g:vcool_ins_rgba_map = '<leader>r'

" emmet
let g:user_emmet_leader_key='<C-L>'

" Ultisnip 
let g:UltiSnipsExpandTrigger="<C-L>"
nmap <C-L>e :UltiSnipsEdit<CR>
nmap <C-L>a :Snippets<CR>

" better n, N
nnoremap n nzzzv
nnoremap N Nzzzv
" delete a line but no upshift
nnoremap dc 0D
" better nohls
nnoremap <silent><C-L><C-L> :<C-u>nohlsearch<CR><C-L>
" better escape
inoremap jj <ESC>
" better visual indent
vnoremap < <gv
vnoremap > >gv


nmap <silent> gr <Plug>(coc-references)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
inoremap <silent><expr> <c-x> coc#refresh()
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
nnoremap <silent><nowait> <space>k  :call <SID>show_documentation()<CR>
nmap <silent> <C-c> <Plug>(coc-cursors-position)
nmap <space>r <Plug>(coc-rename)
nnoremap <space>t :Format<CR>


nnoremap <silent><nowait> <space>n  :<C-u>NnnPicker<CR>
nnoremap <silent><nowait> <space>f  :<C-u>Files<CR>
nnoremap <silent><nowait> <space>b  :<C-u>Buffers<CR>
nnoremap <silent><nowait> <space>l  :<C-u>Lines<CR>
nnoremap <silent><nowait> <space>m  :<C-u>MarkdownPreview<CR>


" copy paste from clipboard
nnoremap <C-y> "+y                                                              
vnoremap <C-y> "+y                                                              
nnoremap <C-p> "+gP                                                             
vnoremap <C-p> "+gP

" reduce html tag
inoremap /> <ESC>:s/\s*$//<CR>0eo/><ESC>O

" fzf, nnn
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit',
  \ 'ctrl-y': {lines -> setreg('+', join(lines, "\n"))}}
let g:nnn#set_default_mappings =0


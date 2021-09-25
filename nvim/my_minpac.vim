function! PackInit() abort
  packadd minpac
  call minpac#init()
  call minpac#add('k-takata/minpac',{'type':'opt'})
  call minpac#add('neoclide/coc.nvim',
    \ {'branch':'release',
    \ 'do':'yarn install --frozen-lockfile'})
  " svelte highlighting and indentation
  call minpac#add('leafOfTree/vim-svelte-plugin')
  
  call minpac#add('mcchrish/nnn.vim')
  call minpac#add('junegunn/fzf', {'do': 
    \ { -> system('./install --all') }})
  call minpac#add('junegunn/fzf.vim')

  " tpope stuffs
  call minpac#add('tpope/vim-repeat')
  call minpac#add('tpope/vim-surround')
  call minpac#add('tpope/vim-abolish')
  call minpac#add('tpope/vim-commentary')

  " help indent html tags
  call minpac#add('jiangmiao/auto-pairs')

  " snippets
  call minpac#add('mattn/emmet-vim')
  call minpac#add('SirVer/ultisnips')

  " color
  call minpac#add('norcalli/nvim-colorizer.lua')
  call minpac#add('crusoexia/vim-monokai')
  call minpac#add('KabbAmine/vCoolor.vim')
  call minpac#add('Yggdroot/indentLine')

  " other stuffs
  call minpac#add('itchyny/lightline.vim')
  call minpac#add('iamcco/markdown-preview.nvim',{
        \ 'do':'packadd markdown-preview.nvim | call mkdp#util#install()',
        \ 'type':'opt'})
  call minpac#add('nelstrom/vim-visual-star-search')

endfunction
command! PackUpdate call PackInit() | call minpac#update()
command! PackClean  call PackInit() | call minpac#clean()
command! PackStatus packadd minpac  | call minpac#status()

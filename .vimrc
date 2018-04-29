set visualbell t_vb= " no bell

set clipboard=unnamedplus "" share board

set hlsearch
nnoremap <Esc><Esc> :<c-u>set nohlsearch<Return>
" 「/」「?」「*」「#」が押されたらハイライトをON にしてから「/」「?」「*」「#」
nnoremap / :<C-u>set hlsearch<Return>/
nnoremap ? :<C-u>set hlsearch<Return>?                
nnoremap * :<C-u>set hlsearch<Return>*
nnoremap # :<C-u>set hlsearch<Return>#

" template
autocmd BufNewFile *.cpp 0r $HOME/.vim/template/cpp

" dein
if &compatible
  set nocompatible
endif
set runtimepath+=~/.vim/bundles/repos/github.com/Shougo/dein.vim

if dein#load_state(expand('~/.vim/bundles'))
  call dein#begin(expand('~/.vim/bundles'))
  "" need
  call dein#add(expand('~/.vim/bundles/repos/github.com/Shougo/dein.vim'))

  call dein#add('osyo-manga/vim-anzu')
  call dein#add('vim-airline/vim-airline')
  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable
" dein

"" anzu
" mapping
nmap n <Plug>(anzu-n-with-echo)
nmap N <Plug>(anzu-N-with-echo)
nmap * <Plug>(anzu-star-with-echo)
nmap # <Plug>(anzu-sharp-with-echo)
" clear status
nmap <Esc><Esc> <Plug>(anzu-clear-search-status)
" statusline
set statusline=%{anzu#search_status()}

""vim-airline
 
"" autoformat
" autocmd BufNewFile,BufRead *.c set formatprg=astyle\ -T4pb
autocmd BufNewFile,BufRead *.c set formatprg=clang-format-3.9

"" c++
autocmd filetype cpp :setlocal makeprg=make\ CXXFLAGS='-std=c++11'\ %
"" quickfix : move prev & next
map <C-j> :cn<CR>
map <C-k> :cp<CR>

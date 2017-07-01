if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.config/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('~/.config/dein')

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Movement & Editing
call dein#add('christoomey/vim-sort-motion')
call dein#add('kana/vim-textobj-indent')
call dein#add('kana/vim-textobj-user')
call dein#add('terryma/vim-multiple-cursors')
call dein#add('tpope/vim-abolish')
call dein#add('skwp/greplace.vim')

" File navigation
call dein#add('Shougo/denite.nvim')
call dein#add('mileszs/ack.vim')

" Unix integrations
call dein#add('tpope/vim-eunuch')

" tmux integration
call dein#add('blakewilliams/vim-tbro')
call dein#add('christoomey/vim-tmux-navigator')

" git integration
call dein#add('airblade/vim-gitgutter')

" language support
call dein#add('benekastah/neomake')
call dein#add('thoughtbot/vim-rspec')
call dein#add('tpope/vim-rails')
call dein#add('tpope/vim-endwise')

" Required:
call dein#end()
" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

let mapleader=" "

" Specific configuration files
source ~/.config/nvim/config/git.vim
source ~/.config/nvim/config/ctrl_p.vim
source ~/.config/nvim/config/navigation.vim
source ~/.config/nvim/config/quickfix.vim
source ~/.config/nvim/config/refactorings.vim
source ~/.config/nvim/config/spec.vim
source ~/.config/nvim/config/search.vim
source ~/.config/nvim/config/splits.vim
source ~/.config/nvim/config/tmux.vim
source ~/.config/nvim/config/whitespace.vim

" Open files
nnoremap <Leader>o :!open "%"<CR>

" Fast movement within a file
set relativenumber
set number

" Use 2 spaces as a tab
set expandtab
set shiftwidth=2
set tabstop=2

" Don't wrap text
set nowrap

" Colors
" set background=light
" colorscheme tomorrow
highlight LineNr ctermbg=none ctermfg=grey
highlight CursorLineNr ctermbg=none ctermfg=blue

" Fast editing of .vimrc file
nnoremap <leader>ve :e $MYVIMRC<CR>
nnoremap <leader>vv :vsp $MYVIMRC<CR>
autocmd! bufwritepost $MYVIMRC source %

" Swapfiles just get in the way.
set noswapfile

" use capital U for 'redo' (ctrl-r)
nnoremap U <C-r>

" Mark long lines
set colorcolumn=81
autocmd FileType gitcommit :set colorcolumn=51

" Never reach for the escape key
inoremap kj <esc>
inoremap jk <esc>

" Multiple cursor configuration
let g:multi_cursor_exit_from_insert_mode=0
let g:multi_cursor_exit_from_visual_mode=0

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
endif

" Fix NeoVim issue with recognizing <c-h>. It gets recognized as <bs>
nnoremap <bs> :TmuxNavigateLeft<cr>

" Clear out the `q` buffer to prepare for recursive macros
nnoremap Q qqqqq

" Recognize additional file extensions
autocmd BufRead,BufNewFile *.es6 setfiletype javascript

autocmd! BufWritePost * Neomake

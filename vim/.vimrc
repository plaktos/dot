set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'morhetz/gruvbox'
Plugin 'easymotion/vim-easymotion'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'lervag/vimtex'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'

call vundle#end()
filetype plugin indent on


let mapleader=" "
set ignorecase

if has('gui_running')
  set guioptions-=T  " no toolbar
  set guifont=Gohu\ GohuFont:h11
endif

set langmenu=en_US.UTF-8
set backspace=2

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set autoindent
set smartindent
" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces
" turn syntax highlighting on
set t_Co=256
syntax on
set number
" highlight matching braces
set showmatch

"NerdTree

"easymotion
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
nmap s <Plug>(easymotion-s2)
map  <Leader>/ <Plug>(easymotion-sn)
map  <Leader>n <Plug>(easymotion-next)
map  <Leader>N <Plug>(easymotion-prev)

"color
colorscheme gruvbox
set background=dark

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" vimtex
let g:vimtex_view_general_viewer = "zathura"

" ycm
let g:ycm_server_python_interpreter = '/usr/bin/python2'

set cursorline
set cursorcolumn

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"Abbreviations
iabbrev #i #include
iabbrev #d #define
iabbrev tm< template<
iabbrev tyn typename
iabbrev iost <iostream>

"Custom maps
nnoremap <Leader>ev :split $MYVIMRC<CR>
nnoremap <Leader>sv :source $MYVIMRC<CR>

nnoremap <Leader>n :NERDTree<CR>

" ycm related
nnoremap <Leader>yg :YcmGenerateConfig ../<cr>
nnoremap <Leader>yr :YcmRestartServer<cr>

onoremap p i(
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap il( :<c-u>normal! F)vi(<cr>
onoremap in{ :<c-u>normal! f{vi{<cr>
onoremap il{ :<c-u>normal! F}vi{<cr>

nnoremap <Leader>ckhu :!setxkbmap hu<cr><cr>
nnoremap <Leader>ckus :!setxkbmap us<cr><cr>


"c++
nnoremap <Leader>cph i<space>/*_*/
nnoremap <Leader>mdc i#ifndef _<cr>#define _<cr>#endif // _

"autocmds
autocmd VimEnter * NERDTree

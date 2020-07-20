set nocompatible              " be iMproved, required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Plugin 'w0rp/ale'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" let g:solarized_termcolors=256
" let g:solarized_contrast="high"

syntax enable
" set background=dark
" colorscheme solarized
colorscheme zenburn

set title
set statusline=%f
set statusline+=/
set statusline+=%y
set statusline+=%=
set statusline+=%l
set statusline+=/
set statusline+=%L
" syntax on
" set t_Co=256
set tabstop=2
set softtabstop=2
set shiftwidth=2
set number
set autoindent
set smartindent
set showmatch
" set laststatus=2

" :below vertical terminal

nnoremap <F2> :w<CR>
inoremap <F2> <ESC>:w<CR>i
inoremap jk <ESC> 
nnoremap - ddp
nnoremap _ kddpk
nnoremap <TAB> ^i<TAB><ESC>
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap {<CR> {<CR>}<ESC>O

nnoremap <F3> :!g++ % -o %< -lpthread<CR>
nmap <F4> <F2><F3>
nnoremap <F5> :!./%<<CR>
nnoremap <C-H> mzbveygg/#include<CR>O#include<SPACE><<ESC>pA><ESC>`z
nnoremap ;// ^i//<ESC>
nnoremap ;; A;<ESC>
inoremap if<TAB> if()<CR>{<CR>}<ESC>O
inoremap else<TAB> else<CR>{<CR>}<ESC>O
inoremap for<TAB> for(int I = 0; I < ; ++I)<CR>{<CR>}<ESC>O
inoremap while<TAB> while()<CR>{<CR>}<ESC>O
inoremap main<TAB> int main()<CR>{<CR><CR>return 0;<CR>}<ESC>kkko
inoremap hdr<TAB> <ESC>I#include<SPACE><<ESC>A><ESC>0f>i

nnoremap rp :!./%< < %<.in<CR>
cnoremap rpa !./A < A-practice.in 
cnoremap rpb !./B < B-practice.in 
cnoremap rpc !./C < C-practice.in 
cnoremap rpd !./D < D-practice.in 


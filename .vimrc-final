set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'rust-lang/rust.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'morhetz/gruvbox'
Plugin 'itchyny/lightline.vim'
call vundle#end()

filetype plugin indent on
syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set number
set encoding=utf-8 " For YouCompleteMe
set laststatus=2 " For lightline.vim
set t_u7= " Weird workaround
set t_RV=

let g:ycm_confirm_extra_conf = 0

map <C-o> :NERDTreeToggle<CR>

colorscheme gruvbox
set background=dark
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

nnoremap <Left> :echo "Press h"<CR>
vnoremap <Left> :<C-u>echo "Press h"<CR>
inoremap <Left> <C-o>:echo "Press h"<CR>

nnoremap <Up> :echo "Press k"<CR>
vnoremap <Up> :<C-u>echo "Press k"<CR>
inoremap <Up> <C-o>:echo "Press k"<CR>

nnoremap <Down> :echo "Press j"<CR>
vnoremap <Down> :<C-u>echo "Press j"<CR>
inoremap <Down> <C-o>:echo "Press j"<CR>

nnoremap <Right> :echo "Press l"<CR>
vnoremap <Right> :<C-u>echo "Press l"<CR>
inoremap <Right> <C-o>:echo "Press l"<CR>

nnoremap <PageUp> :echo "Press Ctrl+u"<CR>
vnoremap <PageUp> :<C-u>echo "Press Ctrl+u"<CR>
inoremap <PageUp> <C-o>:echo "Press Ctrl+u"<CR>

nnoremap <PageDown> :echo "Press Ctrl+d"<CR>
vnoremap <PageDown> :<C-u>echo "Press Ctrl+d"<CR>
inoremap <PageDown> <C-o>:echo "Press Ctrl+d"<CR>
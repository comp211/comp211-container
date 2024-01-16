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
Plugin 'rhysd/vim-clang-format'
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
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

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
let g:clang_format#code_style = "chromium" " The only predefined style with PointerAlignment Left
let g:clang_format#style_options = {
    \ "IndentWidth" : 4,
    \ "ObjCBlockIndentWidth": 4}

" Map leader key <Leader> to Space
let mapleader = " "
" map to <Leader>cf in C++ code
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
" Toggle auto formatting:
nmap <Leader>C :ClangFormatAutoToggle<CR>

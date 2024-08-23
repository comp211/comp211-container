" If this file is /root/.vimrc, changes will be cleared once you end your Docker session
" To edit and make changes apply in the next session, edit /mnt/learncli/.vimrc
" In the current session, to allow vim to discover the changes made, copy /mnt/learncli/.vimrc to /root/.vimrc
" This file is heavily documented, and some keybinds are near the bottom
" If you edit this file and break some configuration, just roll back to the original vimrc

set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim

" Plugins are automatically installed when container is built and when it's started
" If adding any, use :PluginInstall to manually install
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-surround'
" File tree
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'rust-lang/rust.vim'
" Code completion
Plugin 'Valloric/YouCompleteMe'
Plugin 'morhetz/gruvbox'
Plugin 'itchyny/lightline.vim'
Plugin 'rhysd/vim-clang-format'
" Automatically close left chars (, [, { with the corresponding right char ), ], }
Plugin 'jiangmiao/auto-pairs'
" Navigate files easily, see https://github.com/easymotion/vim-easymotion
" Our <leader> key is Space, so perform a search using Space + Space, e.g., Space + Space + w
Plugin 'easymotion/vim-easymotion'
call vundle#end()

filetype plugin indent on
syntax on
set tabstop=4
set shiftwidth=4
set expandtab
" Comment this out to disable relative line numbering
set relativenumber
set number
set ignorecase
set smartcase       " See https://vim.fandom.com/wiki/Searching#Case_sensitivity
set encoding=utf-8  " For YouCompleteMe
set laststatus=2    " For lightline.vim
set t_u7=           " Weird workaround
set t_RV=

let g:ycm_confirm_extra_conf = 0
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

colorscheme gruvbox
set background=dark
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:EasyMotion_smartcase = 1
let g:clang_format#code_style = "google"
let g:clang_format#style_options = {
    \ "IndentWidth" : 4,
    \ "ObjCBlockIndentWidth": 4}

" Ctrl + O brings up a file menu
" To learn how to use it, see https://github.com/preservim/nerdtree?tab=readme-ov-file#getting-started
" And/or search for a NERDTree guide
" Also, for tabs and window splitting, see https://gist.github.com/Starefossen/5957088
map <C-o> :NERDTreeToggle<CR>

" Map leader key <Leader> to Space
let mapleader = " "
" 2-character search motion, similar to vim-sneak
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>t <Plug>(easymotion-t2)

" Vim looks for settings in ~/.vimrc (which is /root/.vimrc)
" However, if you edit /root/.vimrc, changes will be cleared when the container is restarted
" To make changes that apply in the next session and persist afterward, create or edit /mnt/learncli/.vimrc, which ~/.bashrc automatically copies to ~/.vimrc on startup
" To create, run cp /root/.vimrc /mnt/learncli/.vimrc
" While editing, to be able to test your changes, you can edit /root/.vimrc so that Vim can see the changes
" But copy /root/.vimrc to /mnt/learncli/.vimrc before exiting the container, or the changes will be lost
" This file is heavily documented, and some keybinds are near the bottom
" If you break some configuration while editing, just roll back to the original .vimrc

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

" Ctrl + o brings up a file explorer menu via the NERDTree plugin
" NERDTree guide: In Vim, open NERDTree, then press the ? key
" Access more complete documentation within Vim by typing the command :help NERDTree
" To create window splits and navigate among them, see https://gist.github.com/Starefossen/5957088
" Buffers are analogous to tabs in IDE's
" Read about buffers at https://dev.to/iggredible/a-faster-vim-workflow-with-buffers-and-args-51kf
map <C-o> :NERDTreeToggle<CR>

" Map leader key <Leader> to Space
" <Leader> is used in EasyMotion and can be used in other plugins
let mapleader = " "

" EasyMotion guide: https://www.barbarianmeetscoding.com/boost-your-coding-fu-with-vscode-and-vim/moving-even-faster-with-vim-sneak-and-easymotion/#vim-easymotion
" and/or Google about it
" 2-character search motion, similar to vim-sneak
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>t <Plug>(easymotion-t2)

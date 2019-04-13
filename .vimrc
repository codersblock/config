set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'edkolev/tmuxline.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-commentary'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'tomlion/vim-solidity'
call vundle#end()
filetype indent on

syntax enable
let g:solarized_termcolors=256
set background=dark
colorscheme jellybeans

set title
set tabstop=2
set expandtab
set shiftwidth=2
set incsearch
set hlsearch
set showmatch
set laststatus=2
set relativenumber
set number
set autochdir
set ignorecase
set mouse=a
set backspace=indent,eol,start

autocmd BufReadPost,FileReadPost,BufNewFile,BufEnter * call system("tmux rename-window " . expand("%:t"))
autocmd VimLeave * call system("tmux rename-window bash")

noremap <CR> :noh<CR><CR>
noremap <C-k> <C-u>
noremap <C-j> <C-d>
noremap <C-b> :bprev<CR>
noremap <C-n> :bnext<CR>
noremap <C-c> :bd<CR>

set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

" tagbar
nnoremap <F8> :TagbarToggle<CR>

" backup settings
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/tmp

" vim-airline settings
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemod=':t'
let g:airline_powerline_fonts = 1
let g:airline_section_c = airline#section#create(['%F ','readonly'])
let g:airline_section_z = airline#section#create_right(['%P','L:%l','C:%c'])

" tmuxline settings
let g:tmuxline_preset = {
\'a'    : "",
\'b'    : "",
\'win'  : '#I: #W ',
\'cwin' : '#I: #W ',
\'y'    : '',
\'z'    : '$USER@#h',
\'options' : {'status-justify' : 'left' , 'status-position' : 'top'}}

" nerdtree settings
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = 'ᐅ'
let g:NERDTreeDirArrowCollapsible = 'ᐁ'

noremap <F7> :NERDTreeToggle<CR><CR>

" ctrlp settings
let g:ctrlp_open_new_file = 't'
let g:ctrlp_cmd = 'CtrlP ~/eos/'
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_lazy_update = 1
let g:ctrlp_tabpage_position = 'bf'
let g:ctrlp_max_files = 0


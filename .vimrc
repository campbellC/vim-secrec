set nocompatible
filetype off

" vundle initialisation
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'

Plugin 'file:///home/sharemind/secrec'

call vundle#end()

filetype plugin indent on
syntax on

set relativenumber
set number
nnoremap <leader>tn :set relativenumber!<CR>

set runtimepath+=~/.vim/bundle

nnoremap <Space> i_<Esc>r

let maplocalleader = ','

nnoremap <silent> <CR> :noh<CR><CR>
nnoremap <leader>ev :vsplit ~/.vimrc<CR>
nnoremap <silent> <leader>sv :source ~/.vimrc<CR>
nnoremap <leader>D <C-w>l<C-d><C-w>h
nnoremap <leader>U <C-w>l<C-u><C-w>h


inoremap jk <Esc>

nnoremap <leader>o o<esc>k
nnoremap <leader>O O<esc>j

command! WQ wq
command! Wq wq
command! W w
command! Q q


set tabstop=4
set nowrap
set backspace=indent,eol,start
set autoindent
set visualbell
set splitright
set copyindent
set shiftwidth=4
set shiftround
set ignorecase
set smartcase
set smarttab
set incsearch
set hlsearch
let @/ = ""
set history=1000
set undolevels=1000


hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
hi CurosrColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
nnoremap <leader>h :set cursorline! cursorcolumn!<CR>


set laststatus=2
set statusline={%.20f}
set statusline+=%m%r
set statusline+=[FileType:\ %Y]
set statusline+=%=%c,%l/%L
set statusline+=\ \ %P


nnoremap <leader>ss :new ~/secrec/syntax/secrec.vim<CR>

au! BufNewFile,BufRead *.cpp setlocal foldmethod=marker

""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                "  
"         Alfian's   .vimrc   config             "
"                                                "  
""""""""""""""""""""""""""""""""""""""""""""""""""
"   Welcome   to   my   config,   taste   it!    "
""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""
"   Vundle   Plugin   Manager                    "
""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible               
filetype off                   

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'mhartington/oceanic-next'
" Plugin 'wakatime/vim-wakatime'
Plugin 'tomtom/tcomment_vim'
Plugin 'godlygeek/tabular'
Plugin 'sheerun/vim-polyglot'
Plugin 'fatih/vim-go'
" Plugin 'neoclide/coc.nvim'
Plugin 'dart-lang/dart-vim-plugin'
Plugin 'thosakwe/vim-flutter'
Plugin 'w0rp/ale'

call vundle#end()            
filetype plugin indent on   


""""""""""""""""""""""""""""""""""""""""""""""""""
"                    Config                      "
""""""""""""""""""""""""""""""""""""""""""""""""""

set nowrap
set backspace=indent,eol,start
set cursorline
syntax on
set background=dark
set ruler
set number
colorscheme OceanicNext
set smartindent
set conceallevel=2
set t_Co=256
if (has("termguicolors"))
  set termguicolors
endif
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab


" handle all mapping command
let mapleader=','

noremap <silent> <leader>fa :FlutterRun<CR>
noremap <silent> <leader>fq :FlutterQuit<CR>
noremap <silent> <leader>fr :FlutterHotReload<CR>
noremap <silent> <leader>fR :FlutterHotRestart<CR>
noremap <silent> <leader>fD :FlutterVisualDebug<CR>

" Save
noremap <silent> <Leader>wq :wq<CR>
noremap <silent> <Leader>qq :q!<CR>

" Find
noremap <silent> <Leader>f /

" Replace 
noremap <silent> <Leader>r :%s/
" Replace 
noremap <silent> <Leader>rhp :%s/html/pdf<CR>

" Comment
noremap <silent> <Leader>cc  :TComment<CR>

" Tabular
noremap <silent> <Leader>tte :Tabularize /=<CR>
noremap <silent> <Leader>ttt :Tabularize /:<CR>
noremap <silent> <Leader>tt  :Tabularize /

" Go
noremap <silent> <Leader>gb  :GoBuild<CR>
noremap <silent> <Leader>gr  :GoRun<CR>

" CPSLK IGNORE!
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

" Lightline
let g:lightline={ 'colorscheme': 'solarized', }
set laststatus=2
set noshowmode                                                 

" Ale Config
let g:ale_sign_error   = 'X'
let g:ale_sign_warning = '⚠️'
let g:ale_fix_on_save  = 1

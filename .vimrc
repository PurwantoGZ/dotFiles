""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                "  
"         Alfian's   .vimrc   config             "
"                                                "  
""""""""""""""""""""""""""""""""""""""""""""""""""
"   Welcome   to   my   config,   taste   it!    "
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
Plugin 'reedes/vim-pencil'
Plugin 'fatih/vim-go'
" Plugin 'neoclide/coc.nvim'
Plugin 'w0rp/ale'
Plugin 'iamcco/markdown-preview.nvim'
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
" save
noremap <silent> <Leader>wq :wq<CR>
noremap <silent> <Leader>qq :q!<CR>
" find
noremap <silent> <Leader>f /
" replace 
noremap <silent> <Leader>r :%s/
" replace 
noremap <silent> <Leader>rhp :%s/html/pdf<CR>
" comment
noremap <silent> <Leader>cc  :TComment<CR>
" tabular
noremap <silent> <Leader>tte :Tabularize /=<CR>
noremap <silent> <Leader>ttt :Tabularize /:<CR>
noremap <silent> <Leader>tt  :Tabularize /
" go
noremap <silent> <Leader>gb  :GoBuild<CR>
noremap <silent> <Leader>gr  :GoRun<CR>
" markDown
noremap <silent> <leader>mp :MarkdownPreview<CR>
noremap <silent> <leader>msp :MarkdownPreviewStop<CR>
" java
noremap <silent> <Leader>jc :!javac %<CR>
noremap <silent> <Leader>jr :!java 
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
" lightLine
let g:lightline={ 'colorscheme': 'solarized', }
set laststatus=2
set noshowmode                                                 
" aleConfig
let g:ale_sign_error   = 'X'
let g:ale_sign_warning = '⚠️'
let g:ale_fix_on_save  = 1
" markdownPreview
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = ''
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'

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

" default
Plugin 'VundleVim/Vundle.vim'

" theming
Plugin 'itchyny/lightline.vim'
Plugin 'mhartington/oceanic-next'

" tools
Plugin 'scrooloose/nerdtree'
Plugin 'xuyuanp/nerdtree-git-plugin'
Bundle 'matze/vim-move'
Plugin 'godlygeek/tabular'
Plugin 'tomtom/tcomment_vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'wakatime/vim-wakatime'
Plugin 'airblade/vim-gitgutter'

" wrapper
Plugin 'tpope/vim-fugitive'
Plugin 'iamcco/markdown-preview.nvim'

" programmingLanguage
Plugin 'sheerun/vim-polyglot'
Plugin 'ap/vim-css-color'

" linter
Plugin 'neoclide/coc.nvim'
Plugin 'w0rp/ale'

call vundle#end()            
filetype plugin indent on   
""""""""""""""""""""""""""""""""""""""""""""""""""
"                    Config                      "
""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""
"             Starter default config             "
""""""""""""""""""""""""""""""""""""""""""""""""""

set nowrap
set backspace=indent,eol,start
set cursorline
syntax on
set background=dark
set ruler
set number
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
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


" cpslkIgnore!
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

""""""""""""""""""""""""""""""""""""""""""""""""""
"                   Mappings                     "
""""""""""""""""""""""""""""""""""""""""""""""""""

" handleAllMappingCommand
let mapleader=','

" save
noremap <silent> <Leader>s   :w<CR>
noremap <silent> <Leader>wq  :wq<CR>
noremap <silent> <Leader>e  :q!<CR>

" find
noremap <silent> <Leader>f /

" split
noremap <silent> <Leader>l  :split<CR>

" replace
noremap <silent> <Leader>r   :%s/

" replace
noremap <silent> <Leader>rhp :%s/html/pdf<CR>

" comment
noremap <silent> <Leader>c   :TComment<CR>

" tabular
noremap <silent> <Leader>te  :Tabularize /=<CR>
noremap <silent> <Leader>tt  :Tabularize /:<CR>
noremap <silent> <Leader>t   :Tabularize /

" markDown
noremap <silent> <leader>mp  :MarkdownPreview<CR>

" java
noremap <silent> <Leader>jc  :!javac %<CR>
noremap <silent> <Leader>jr  :!java

" nerdtree
noremap <silent> <Leader>n   :NERDTreeFind<CR>

" yank into clipboard
noremap <silent> <Leader>y "+y

" put from clipboard
noremap <silent> <Leader>p "+gP


""""""""""""""""""""""""""""""""""""""""""""""""""
"                   Plugin Config                "
""""""""""""""""""""""""""""""""""""""""""""""""""

" lightLine
let g:lightline={ 'colorscheme': 'oceanicnext', }
set laststatus=2
set noshowmode                                                 

" aleConfig
let g:ale_sign_error   = 'X'
let g:ale_sign_warning = '⚠️'
let g:ale_fix_on_save  = 1

" indentGuide
let g:indent_guides_enable_on_vim_startup = 1

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

" nerdtreeConfig
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" nerdtreeGit
let g:NERDTreeIndicatorMapCustom = {
            \    "Modified"  : "✹",
            \    "Staged"    : "✚",
            \    "Untracked" : "✭",
            \    "Renamed"   : "➜",
            \    "Unmerged"  : "═",
            \    "Deleted"   : "✖",
            \    "Dirty"     : "✗",
            \    "Clean"     : "✔︎",
            \    'Ignored'   : '☒',
            \    "Unknown"   : "?"
            \}

" vimMove
let g:move_key_modifier = 'C'

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" gitGutter
set updatetime=0
autocmd BufWritePost * GitGutter

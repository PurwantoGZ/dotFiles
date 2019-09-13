"""""""""""""""""""""""""""""""""""""""""""""""""
"                                                "  
"         Alfian's   .vimrc   config             "
"                                                "  
""""""""""""""""""""""""""""""""""""""""""""""""""
"   Welcome   to   my   config,   taste   it!    "
""""""""""""""""""""""""""""""""""""""""""""""""""
"                Vim Plug Manager                "
""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible               
filetype off                   
call plug#begin('~/.vim/plugged')

" theming
Plug 'itchyny/lightline.vim'
Plug 'mhartington/oceanic-next'

" tools
Plug 'junegunn/limelight.vim'
Plug 'junegunn/goyo.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'matze/vim-move'
Plug 'godlygeek/tabular'
Plug 'tomtom/tcomment_vim'
" Plug 'wakatime/vim-wakatime'
Plug 'airblade/vim-gitgutter'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

" wrapper
" Plug 'tpope/vim-fugitive'

" programmingLanguage
Plug 'sheerun/vim-polyglot'
Plug 'ap/vim-css-color'

" linter
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'w0rp/ale'

call plug#end()
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

" yank into clipboard
noremap <silent> <Leader>y "+y

" put from clipboard
" noremap <silent> <Leader>p "+P<CR><ESC>
noremap <silent> <Leader>p "+p

" save
noremap <silent> <Leader>s   :w<CR>
noremap <silent> <Leader>wq  :wq<CR>
noremap <silent> <Leader>e  :q!<CR>

" sourcing
noremap <silent> <Leader>x  :source %<CR>

" find
noremap <silent> <Leader>f /

" split
noremap <silent> <Leader>v  :vsplit<CR>

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

" rust
noremap <silent> <Leader>rb  :!cargo build<CR>
noremap <silent> <Leader>rr  :!cargo run<CR>
noremap <silent> <Leader>rc  :!cargo check<CR>

" nerdtree
noremap <silent> <Leader>n   :NERDTreeFind<CR>

" goyo 
noremap <silent> <Leader>g   :Goyo<CR>

" prettier
noremap <silent> <Leader>l   :Prettier<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""
"                   Plug Config                "
""""""""""""""""""""""""""""""""""""""""""""""""""

" lightLine
let g:lightline={ 'colorscheme': 'oceanicnext', }
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

" autocmd VimEnter * Goyo

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

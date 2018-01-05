call plug#begin('~/.vim/plugged')
" Base plugins
Plug 'yggdroot/indentline'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'yuttie/comfortable-motion.vim'
Plug 'matze/vim-move'
Plug 'danro/rename.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'yggdroot/indentline'
Plug 'ryanoasis/vim-devicons'
Plug 'Raimondi/delimitMate'
Plug 'scrooloose/nerdtree'
Plug 'w0rp/ale'
Plug 'Shougo/echodoc.vim'
Plug 'ervandew/supertab'
Plug 'tpope/vim-commentary'
Plug 'majutsushi/tagbar'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug '~/.fzf'
Plug 'mileszs/ack.vim'
Plug 'brooth/far.vim'

" Javascript
Plug 'pangloss/vim-javascript'
Plug 'heavenshell/vim-jsdoc'
Plug 'carlitux/deoplete-ternjs'
Plug 'gavocanov/vim-js-indent'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'posva/vim-vue'
Plug 'ternjs/tern_for_vim'

" TypeScript
Plug 'leafgarland/typescript-vim'
Plug 'herringtondarkholme/yats.vim'
Plug 'mhartington/nvim-typescript'

" PHP
Plug 'stanangeloff/php.vim'
Plug 'shawncplus/phpcomplete.vim'
Plug 'arnaud-lb/vim-php-namespace'
Plug 'evidens/vim-twig'
Plug 'docteurklein/vim-symfony'

" HTML
Plug 'othree/html5.vim'

" CSS/SCSS
Plug 'hail2u/vim-css3-syntax'
Plug 'cakebaker/scss-syntax.vim'

" Docker
Plug 'ekalinin/dockerfile.vim'

" Themes
Plug 'arcticicestudio/nord-vim'
Plug 'kristijanhusak/vim-hybrid-material'
call plug#end()

set t_Co=256
set termguicolors
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

set nocompatible
set title
syntax enable

set noshowmode
set hidden

set background=dark
colorscheme yabab 
let g:airline_theme='yabab'

filetype plugin on
filetype indent on

set number
syntax enable

set ignorecase
set hlsearch
set incsearch
set smartcase

set smarttab
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set smartindent
set autoindent
set nofoldenable

set clipboard+=unnamedplus
" set wildmenu
" set wildmode=list:longest,full

let mapleader=","

set ruler
set showmatch
set cursorline
set autoread
set mouse=a
set nostartofline
set laststatus=2
set wrap
set linebreak
" set listchars=tab:\ \ ,trail:·
"
set noswapfile
set nobackup
set nowb

set scrolloff=5
set sidescrolloff=15
set sidescroll=5
set completeopt-=preview

" ================ GUI options ====================
set guioptions-=m                                                               "remove menu bar
set guioptions-=T                                                               "remove toolbar
set guioptions-=L                                                               "remove left scrollbar when vertical split
set guioptions-=r                                                               "remove left scrollbar when vertical split
set guioptions-=l                                                               "remove left scrollbar
set guifont=InconsolataForPowerline\ Nerd\ Font\ Medium\ 12                     "font setup
set linespace=10                                                                "Set lineheight in gvim

set gcr=a:blinkon500-blinkwait500-blinkoff500

" ================ File types ========================
autocmd BufNewFile,BufRead *.html.twig   set syntax=html
autocmd BufNewFile,BufRead *.inc,*.module   set syntax=php

" ================ Plugins ===========================

let g:python_host_prog = 'python'
let g:python3_host_prog = 'python3'

let g:deoplete#enable_at_startup = 1

" g:far#source = 'acknvim'

let g:ctrlp_working_path_mode = 'w'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:move_key_modifier = 'C'

let g:airline_powerline_fonts=1
let g:airline#extensions#whitespace#enabled = 0                                 "Disable whitespace extension
let g:airline#extensions#tabline#enabled = 1                                    "Enable tabline extension
let g:airline#extensions#tabline#left_sep = ' '                                 "Left separator for tabline
let g:airline#extensions#tabline#left_alt_sep = '│'                             "Right separator for tabline

let g:javascript_plugin_jsdoc = 1

let g:gitgutter_realtime = 1
let g:gitgutter_eager = 1

let g:nvim_typescript#type_info_on_hold = 1
let g:nvim_typescript#signature_complete = 1
let g:nvim_typescript#javascript_support = 0 
let g:nvim_typescript#vue_support = 1

let g:ale_linters = {'javascript': ['eslint'], 'typescript': ['tsserver']}

let g:tagbar_type_typescript = {                                                  
  \ 'ctagsbin' : 'tstags',                                                        
  \ 'ctagsargs' : '-f-',                                                           
  \ 'kinds': [                                                                     
    \ 'e:enums:0:1',                                                               
    \ 'f:function:0:1',                                                            
    \ 't:typealias:0:1',                                                           
    \ 'M:Module:0:1',                                                              
    \ 'I:import:0:1',                                                              
    \ 'i:interface:0:1',                                                           
    \ 'C:class:0:1',                                                               
    \ 'm:method:0:1',                                                              
    \ 'p:property:0:1',                                                            
    \ 'v:variable:0:1',                                                            
    \ 'c:const:0:1',                                                              
  \ ],                                                                            
  \ 'sort' : 0                                                                    
  \ }

" ================== Key Mappings =================

nmap <C-p> :FZF<CR>
nmap <C-i> :bprev<CR>
nmap <C-o> :bnext<CR>
nmap <F2> :so ~/.config/nvim/init.vim<CR>
nmap <F3> :NERDTreeToggle<CR>
nmap <F4> gcc
vmap <F4> gc
nmap <F5> :TagbarToggle<CR>
nmap <F8> :TSImport<CR>
nmap <F12> :TSDef<CR>

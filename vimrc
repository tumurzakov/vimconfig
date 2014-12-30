set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('vundles')

Plugin 'git://github.com/kien/ctrlp.vim.git'
Plugin 'git://github.com/mattn/emmet-vim.git'
Plugin 'git://github.com/vim-scripts/grep.vim'
Plugin 'git://github.com/amirh/HTML-AutoCloseTag.git'
Plugin 'git://github.com/gregsexton/MatchTag.git'
Plugin 'git://github.com/scrooloose/nerdcommenter.git'
Plugin 'git://github.com/scrooloose/nerdtree.git'
Plugin 'git://github.com/edkolev/promptline.vim.git'
Plugin 'git://github.com/ervandew/supertab.git'
Plugin 'git://github.com/scrooloose/syntastic.git'
Plugin 'git://github.com/godlygeek/tabular.git'
Plugin 'git://github.com/majutsushi/tagbar.git'
Plugin 'git://github.com/edkolev/tmuxline.vim.git'
Plugin 'git://github.com/bling/vim-airline.git'
Plugin 'git://github.com/gorodinskiy/vim-coloresque'
Plugin 'git://github.com/altercation/vim-colors-solarized.git'
Plugin 'git://github.com/hail2u/vim-css3-syntax'
Plugin 'git://github.com/ap/vim-css-color.git'
Plugin 'git://github.com/tpope/vim-fugitive.git'
Plugin 'git://github.com/airblade/vim-gitgutter.git'
Plugin 'git://github.com/fatih/vim-go.git'
Plugin 'git://github.com/tpope/vim-haml'
Plugin 'git://github.com/nathanaelkane/vim-indent-guides.git'
Plugin 'git://github.com/pangloss/vim-javascript.git'
Plugin 'git://github.com/tpope/vim-markdown.git'
Plugin 'git://github.com/terryma/vim-multiple-cursors.git'
Plugin 'git://github.com/jistr/vim-nerdtree-tabs.git'
Plugin 'git://github.com/sickill/vim-pasta.git'
Plugin 'git://github.com/arnaud-lb/vim-php-namespace.git'
Plugin 'git://github.com/Shougo/vimproc.vim'
Plugin 'git://github.com/tpope/vim-repeat.git'
Plugin 'git://github.com/Shougo/vimshell.vim'
Plugin 'git://github.com/honza/vim-snippets'
Plugin 'git://github.com/tpope/vim-surround.git'
Plugin 'git://github.com/bronson/vim-trailing-whitespace.git'

" use visual bell instead of beeping
set vb

" incremental search
set incsearch

" syntax highlighting
set bg=light
syntax on
autocmd BufEnter *.ctp set syn=php

set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
set showmatch
set number

"" Directories for swp files
set nobackup
set noswapfile

" dont use Q for Ex mode
map Q :q

" make tab in v mode ident code
vmap <tab> >gv
vmap <s-tab> <gv

" make tab in normal mode ident code
nmap <tab> I<tab><esc>
nmap <s-tab> ^i<bs><esc>

" paste mode - this will avoid unexpected effects when you
" cut or copy some text from one window and paste it in Vim.
set pastetoggle=<F11>

" comment/uncomment blocks of code (in vmode)
vmap _c :s/^/#/gi<Enter>
vmap _C :s/^#//gi<Enter>

" syntax color complex things like @{${"foo"}}
let perl_extended_vars = 1

nmap <silent> ` :NERDTreeToggle<CR>
nnoremap <silent> <F9> :TagbarToggle<CR>

set keywordprg=pman

let g:syntastic_javascript_checkers = ['jshint']

" airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'kolor'
set t_Co=256

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

set lcs=tab:.\ ,eol:¬

" grep.vim
nnoremap <silent> <leader>f :Rgrep<CR>
let Grep_Default_Options = '-IR'

" vimshell
let g:vimshell_user_prompt = 'fnamemodify(getcwd(), ":~")'
let g:vimshell_prompt =  '$ '
nnoremap <silent> <leader>sh :VimShellPop<CR>

let g:javascript_enable_domhtmlcss = 1

hi IndentGuidesOdd  ctermbg=white
hi IndentGuidesEven ctermbg=lightgrey
hi TagbarScope guifg=Green ctermfg=Green

set ttyfast
" Enable mouse use in all modes
set mouse=a
" Set this to the name of your terminal that supports mouse codes.
" Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
set ttymouse=xterm2

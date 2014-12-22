execute pathogen#infect()
execute pathogen#helptags()

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

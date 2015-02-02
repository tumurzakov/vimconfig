set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/vundles')

Plugin 'git://github.com/kien/ctrlp.vim.git'
Plugin 'git://github.com/mattn/emmet-vim.git'
Plugin 'git://github.com/vim-scripts/grep.vim'
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
Plugin 'git://github.com/pangloss/vim-javascript.git'
Plugin 'git://github.com/tpope/vim-markdown.git'
Plugin 'git://github.com/terryma/vim-multiple-cursors.git'
Plugin 'git://github.com/arnaud-lb/vim-php-namespace.git'
Plugin 'git://github.com/tpope/vim-repeat.git'
Plugin 'git://github.com/Shougo/neocomplcache'
Plugin 'git://github.com/Shougo/neosnippet'
Plugin 'git://github.com/Shougo/neosnippet-snippets'
Plugin 'git://github.com/honza/vim-snippets'
Plugin 'git://github.com/tpope/vim-surround.git'
Plugin 'git://github.com/bronson/vim-trailing-whitespace.git'
Plugin 'git://github.com/xolox/vim-misc.git'
Plugin 'git://github.com/xolox/vim-session.git'
Plugin 'git://github.com/google/glaive'
Plugin 'git://github.com/google/vim-maktaba'
Plugin 'git://github.com/google/vim-codefmtlib'
Plugin 'git://github.com/google/vim-codefmt'
Plugin 'git://github.com/dericofilho/php.tools.git'
Plugin 'git://github.com/sjl/gundo.vim.git'
Plugin 'git://github.com/Shougo/unite.vim.git'
Plugin 'git://github.com/tyru/open-browser.vim.git'
Plugin 'git://github.com/junegunn/vim-easy-align.git'
Plugin 'git://github.com/othree/html5.vim.git'

call vundle#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=700

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = "\\"
let g:mapleader = "\\"

" Fast saving
nmap <leader>w :w!<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"Visual bell
set vb
set number

set ttyfast
" Enable mouse use in all modes
set mouse=a
" Set this to the name of your terminal that supports mouse codes.
" Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
set ttymouse=xterm2


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

hi IndentGuidesOdd  ctermbg=white
hi IndentGuidesEven ctermbg=lightgrey
hi TagbarScope guifg=Green ctermfg=Green

" syntax highlighting
set bg=light


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

set autoindent
set smartindent
set softtabstop=4

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
"map <space> /
"map <c-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>

" Close all the buffers
map <leader>ba :1,1000 bd!<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers
try
  set switchbuf=useopen,usetab,newtab
  set stal=2
catch
endtry

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%


""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap VIM 0 to first non-blank character
" map 0 ^

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vimgrep searching and cope displaying
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" When you press gv you vimgrep after the selected text
vnoremap <silent> gv :call VisualSelection('gv')<CR>

" Open vimgrep and put the cursor in the right position
map <leader>g :vimgrep // **/*.<left><left><left><left><left><left><left>

" Vimgreps in the current file
map <leader><space> :vimgrep // <C-R>%<C-A><right><right><right><right><right><right><right><right><right>

" When you press <leader>r you can search and replace the selected text
vnoremap <silent> <leader>r :call VisualSelection('replace')<CR>

" Do :help cope if you are unsure what cope is. It's super useful!
"
" When you search with vimgrep, display your results in cope by doing:
"   <leader>cc
"
" To go to the next search result do:
"   <leader>n
"
" To go to the previous search results do:
"   <leader>p
"
"map <leader>cc :botright cope<cr>
"map <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
"map <leader>n :cn<cr>
"map <leader>p :cp<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Quickly open a buffer for scripbble
map <leader>q :e ~/buffer<cr>

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

autocmd BufEnter *.ctp set syn=php

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
"vmap _c :s/^/#/gi<Enter>
"vmap _C :s/^#//gi<Enter>

map <F7> :set filetype=html<CR>
map <F8> :set filetype=php<CR>

"undo
set undodir=~/.vim/undodir
set undofile
set undolevels=1000
set undoreload=10000


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" syntax color complex things like @{${"foo"}}
let perl_extended_vars = 1

let NERDTreeDirArrows=0
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

let g:javascript_enable_domhtmlcss = 1

let g:session_autosave = 'no'
let g:session_autoload = 'no'

"neosnippet
let g:neosnippet#enable_snipmate_compatibility = 1
" Plugin key-mappings.
imap <leader>k     <Plug>(neosnippet_expand_or_jump)
smap <leader>k    <Plug>(neosnippet_expand_or_jump)
xmap <leader>k    <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

autocmd FileType javascript let b:codefmt_formatter = 'clang-format'
call maktaba#plugin#Detect()

"autocmd BufWritePost *.php :call PhpFmt()
nnoremap <silent><leader>p :call PhpFmt()<CR>

nnoremap <F5> :GundoToggle<CR>

let g:user_emmet_leader_key = '<c-y>'

"surround
autocmd FileType php let b:surround_45 = "<?php \r ?>"
autocmd FileType php let b:surround_95 = "<?php echo __('\r'); ?>"

nnoremap <silent><F3> :call ToggleUnite()<CR>
nnoremap <silent><F1> :call ToggleF1()<CR>

" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)
"
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

let g:extra_whitespace_ignored_filetypes = ['unite', 'mkd']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

function! VisualSelection(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'gv'
        call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction


" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    en
    return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction

fun! PhpFmt()
    let path = expand('%:p')
    let command = "php ~/.vim/vundles/php.tools/fmt.php --no-backup --indent_with_space=4 --cakephp ".path
    let s:lint = system('php -l '.path)
    if v:shell_error
        echohl Error | echo s:lint | echohl None
    else
        let s:output = system(command)
        if v:shell_error
            echohl Error | echo s:output | echohl None
        else
            exec 'edit!'
            :set statusline="phpfmt: done"
        endif
    endif
    :syntax on
endfun

fun! ToggleF1()
    set previewheight=28
    if !exists("g:toggle_f1")
        let g:toggle_f1 = 0
    endif

    if g:toggle_f1 == 1
        :pclose
        let g:toggle_f1 = 0
    else
        :pedit ~/.vim/help.txt
        let g:toggle_f1 = 1
    endif
endfun

fun! ToggleUnite()
    set previewheight=28
    if !exists("g:toggle_unite")
        let g:toggle_unite = 0
    endif

    if g:toggle_unite == 1
        :UniteClose
        let g:toggle_unite = 0
    else
        :Unite file buffer
        let g:toggle_unite = 1
    endif
endfun


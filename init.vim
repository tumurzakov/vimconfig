set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/vundles')

Plugin 'git@github.com:kien/ctrlp.vim.git'
Plugin 'git@github.com:mattn/emmet-vim.git'
Plugin 'git@github.com:scrooloose/nerdcommenter.git'
Plugin 'git@github.com:scrooloose/nerdtree.git'
Plugin 'git@github.com:edkolev/promptline.vim.git'
Plugin 'git@github.com:ervandew/supertab.git'
Plugin 'git@github.com:majutsushi/tagbar.git'
Plugin 'git@github.com:edkolev/tmuxline.vim.git'
Plugin 'git@github.com:bling/vim-airline.git'
Plugin 'git@github.com:hail2u/vim-css3-syntax'
Plugin 'git@github.com:ap/vim-css-color.git'
Plugin 'git@github.com:tpope/vim-fugitive.git'
Plugin 'git@github.com:airblade/vim-gitgutter.git'
Plugin 'git@github.com:pangloss/vim-javascript.git'
Plugin 'git@github.com:tpope/vim-markdown.git'
Plugin 'git@github.com:tpope/vim-repeat.git'
Plugin 'git@github.com:Shougo/neocomplcache'
Plugin 'git@github.com:tpope/vim-surround.git'
Plugin 'git@github.com:xolox/vim-misc.git'
Plugin 'git@github.com:sjl/gundo.vim.git'
Plugin 'git@github.com:junegunn/vim-easy-align.git'
Plugin 'git@github.com:othree/html5.vim.git'
Plugin 'git@github.com:mhinz/vim-startify'
Plugin 'git@github.com:dkprice/vim-easygrep'
Plugin 'git@github.com:leshill/vim-json'
Plugin 'git@github.com:mkitt/tabline.vim.git'
Plugin 'git@github.com:neoclide/coc.nvim.git'
Plugin 'git@github.com:stephpy/vim-php-cs-fixer.git'
Plugin 'git@github.com:vim-scripts/phpcs.vim.git'
Plugin 'git@github.com:bkad/CamelCaseMotion.git'
Plugin 'git@github.com:ludovicchabant/vim-gutentags.git'
Plugin 'git@github.com:nelsyeung/twig.vim.git'
Plugin 'git@github.com:dbakker/vim-projectroot.git'
Plugin 'git@github.com:phpactor/phpactor.git'
Plugin 'git@github.com:camilledejoye/phpactor-mappings.git'
Plugin 'git@github.com:editorconfig/editorconfig-vim.git'
Plugin 'git@github.com:fatih/vim-go.git'
Plugin 'git@github.com:AndrewRadev/splitjoin.vim.git'
Plugin 'git@github.com:junegunn/fzf.git'
Plugin 'git@github.com:junegunn/fzf.vim.git'
Plugin 'git@github.com:sniphpets/sniphpets.git'
Plugin 'git@github.com:sniphpets/sniphpets-common.git'
Plugin 'git@github.com:sniphpets/sniphpets-symfony.git'
Plugin 'git@github.com:sniphpets/sniphpets-doctrine.git'
Plugin 'git@github.com:sniphpets/sniphpets-phpunit.git'
Plugin 'git@github.com:AndrewRadev/tagalong.vim.git'


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

if has("autocmd")
    autocmd bufwritepost init.vim source $MYVIMRC
endif
nmap <leader>v :tabedit $MYVIMRC<CR>

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
" set ttymouse=xterm2


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

"set list
"set lcs=tab:.\ 
highlight default WhiteSpaces ctermbg=015
match WhiteSpaces /	\+/

highlight ExtraWhitespace ctermbg=darkred guibg=darkred
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=darkred guibg=darkred
autocmd ColorScheme * highlight default WhiteSpaces ctermbg=LightGrey | match WhiteSpaces /	\+/

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
" map <space> /
" map <c-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
" map <C-j> <C-W>j
" map <C-k> <C-W>k
" map <C-h> <C-W>h
" map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>

" Close all the buffers
" map <leader>ba :1,100 bd!<cr>

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

function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

nnoremap <leader>w :call <SID>StripTrailingWhitespaces()<CR>
autocmd BufWritePre *.py,*.js,*.html,*.md,*.php,*.ctp,*.yml,*.yaml :call <SID>StripTrailingWhitespaces()

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
" map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
" map <leader>sn ]s
" map <leader>sp [s
" map <leader>sa zg
" map <leader>s? z=


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Quickly open a buffer for scripbble
map <leader>q :e ~/buffer<cr>

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

autocmd BufRead,BufNewFile *.ctp set filetype=php

" make tab in v mode ident code
vmap <tab> >gv
vmap <s-tab> <gv

" make tab in normal mode ident code
nmap <tab> I<tab><esc>
nmap <s-tab> ^i<bs><esc>

" paste mode - this will avoid unexpected effects when you
" cut or copy some text from one window and paste it in Vim.
" set pastetoggle=<F11>

" comment/uncomment blocks of code (in vmode)
"vmap _c :s/^/#/gi<Enter>
"vmap _C :s/^#//gi<Enter>

" map <F7> :set filetype=html<CR>
" map <F8> :set filetype=php<CR>

"undo
set undodir=~/.vim/undodir
set undofile
set undolevels=1000
set undoreload=10000

"grep search with rg
if executable("rg")
    set grepprg=rg\ --vimgrep
endif

"strange characters
let &t_TI = ""
let &t_TE = ""

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" syntax color complex things like @{${"foo"}}
let perl_extended_vars = 1

let g:NERDChristmasTree=1
let g:NERDTreeAutoCenter=1
let g:NERDTreeMouseMode=2
let g:NERDTreeShowHidden=0
let g:NERDTreeWinPos='left'
let g:NERDTreeWinSize=35
let g:NERDTreeChDirMode=2
let g:NERDTreeMinimalUI=1
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeIgnore = ['.*\.o$','.*\.gz$','.*\.zip$','\.pyc$','tags$']
nmap <silent> ` :ProjectRootExe NERDTreeToggle<CR>
nnoremap <silent> <F9> :TagbarToggle<CR>

set keywordprg=pman

" airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'kolor'
set t_Co=256

let g:javascript_enable_domhtmlcss = 1

" sessions
let g:session_autosave = 'no'
let g:session_autoload = 'no'

autocmd FileType javascript let b:codefmt_formatter = 'clang-format'

" gundo
nnoremap <F4> :GundoToggle<CR>

" emmet
let g:user_emmet_leader_key = '<c-y>'

"surround

"-
autocmd FileType php let b:surround_45 = "<?php \r ?>"

"=
autocmd FileType php let b:surround_61 = "<?= \r; ?>"

nnoremap <silent><F1> :call ToggleF1()<CR>

" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)
"
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

let g:extra_whitespace_ignored_filetypes = ['unite', 'mkd']

" delete fugitive hidden buffers
autocmd BufReadPost fugitive://* set bufhidden=delete

" Fugitive Conflict Resolution
nnoremap <leader>gd :Gvdiff!<CR>
nnoremap gdh :diffget //2<CR>
nnoremap gdl :diffget //3<CR>

" php-cs-fixer
nnoremap <silent><leader>d :call PhpCsFixerFixDirectory()<CR>
nnoremap <silent><leader>f :call PhpCsFixerFixFile()<CR>
autocmd BufWritePost *.php silent! call PhpCsFixerFixFile()

"CamelCaseMotion
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
map <silent> ge <Plug>CamelCaseMotion_ge
sunmap w
sunmap b
sunmap e
sunmap ge

"gutentags
let g:gutentags_ctags_exclude = ['*.css', '*.html', '*.js']
let g:gutentags_cache_dir = '~/.vim/gutentags'
:nnoremap <silent><Leader><C-]> <C-w><C-]><C-w>T

"projectroot
let g:rootmarkers = ['.projectroot', 'docker-compose.yml', '.git', '.hg', '.svn', '.bzr','_darcs','build.xml']

"splitjoin
let g:splitjoin_split_mapping = ''
let g:splitjoin_join_mapping = ''

nmap <Leader>j :SplitjoinJoin<cr>
nmap <Leader>s :SplitjoinSplit<cr>

"fzf
let g:fzf_preview_window = ['right:50%', 'ctrl-/']

"PhpActor

augroup PhpactorMappings
  au!
  au FileType php nmap <buffer> <Leader>u :PhpactorImportClass<CR>
  au FileType php nmap <buffer> <Leader>e :PhpactorClassExpand<CR>
  au FileType php nmap <buffer> <Leader>ua :PhpactorImportMissingClasses<CR>
  au FileType php nmap <buffer> <Leader>mm :PhpactorContextMenu<CR>
  au FileType php nmap <buffer> <Leader>nn :PhpactorNavigate<CR>
  au FileType php nmap <buffer> <Leader>aa :PhpactorGenerateAccessor<CR>
  au FileType php,cucumber nmap <buffer> <Leader>o
      \ :PhpactorGotoDefinition edit<CR>
  au FileType php nmap <buffer> <Leader>K :PhpactorHover<CR>
  au FileType php nmap <buffer> <Leader>tt :PhpactorTransform<CR>
  au FileType php nmap <buffer> <Leader>cc :PhpactorClassNew<CR>
  au FileType php nmap <buffer> <Leader>ci :PhpactorClassInflect<CR>
  au FileType php nmap <buffer> <Leader>fr :PhpactorFindReferences<CR>
  au FileType php nmap <buffer> <Leader>mf :PhpactorMoveFile<CR>
  au FileType php nmap <buffer> <Leader>cf :PhpactorCopyFile<CR>
  au FileType php nmap <buffer> <silent> <Leader>ee
      \ :PhpactorExtractExpression<CR>
  au FileType php vmap <buffer> <silent> <Leader>ee
      \ :<C-u>PhpactorExtractExpression<CR>
  au FileType php vmap <buffer> <silent> <Leader>em
      \ :<C-u>PhpactorExtractMethod<CR>
augroup END

"EasyGrep
let g:EasyGrepFilesToExclude=".svn,.git,tags"

"golang
let g:go_fmt_command = "goimports"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => COC
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-j> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-j>"
  nnoremap <silent><nowait><expr> <C-k> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-k>"
  inoremap <silent><nowait><expr> <C-j> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-k> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-j> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-j>"
  vnoremap <silent><nowait><expr> <C-k> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-k>"
endif

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>

"coc-snippet
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <leader>x for convert visual selected code to snippet
xmap <leader>x  <Plug>(coc-convert-snippet)

" coc-snippets
fun! SetupCommandAlias(from, to)
    exec 'cnoreabbrev <expr> '.a:from
                \ .' ((getcmdtype() is# ":" && getcmdline() is# "'.a:from.'")'
                \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfun
call SetupCommandAlias("snippets", "CocCommand snippets.editSnippets")

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

fun! ToggleF1()
    set previewheight=50
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

command! Unit call s:GenerateUnitTestFile()

function! s:GenerateUnitTestFile()
    py3 << EOF
file = vim.eval('expand("%:p")')
project = vim.eval('projectroot#guess()')
if file.startswith(project):
    relative_path = file[len(project) + 1:]
    parts = relative_path.split("/")
    test_path_parts = []
    for p in parts:
        if p == "src":
            p = "tests/unit"
        test_path_parts.append(p)

    last_idx = len(test_path_parts)-1
    last = test_path_parts[last_idx]
    file_parts = last.split(".")

    file_name_parts = [
        ".".join(file_parts[:-1]),
        'Test',
        '.',
        file_parts[-1:].pop()
    ]

    test_path_parts[last_idx] = "".join(file_name_parts)
    test_path = "/".join(test_path_parts)
    full_test_path = project + "/" + test_path
    vim.command('e ' + full_test_path + '"')
EOF

endfunction

augroup Mkdir
    autocmd!
    autocmd BufWritePre * call mkdir(expand("<afile>:p:h"), "p")
augroup END

" XML Pretify
com! FormatXML :%!python3 -c "import xml.dom.minidom, sys; print(xml.dom.minidom.parse(sys.stdin).toprettyxml())"
nnoremap = :FormatXML<Cr>

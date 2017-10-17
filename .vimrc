" Line numbers
set nu

" Show commands as they're being typed
set showcmd

" Search as you type
" set incsearch

" Highlight search terms
set hlsearch

" Enter key clears highlighted search terms
nnoremap <return> :noh<return><return>

" Tabs and indentation
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Make backspace key work
set backspace=indent,eol,start

" Row and column numbers at bottom
set ruler

" Tab autocompletion of commands autocompletes to longest
" common string, then cycles through matches in menu
set wildmenu
set wildmode=longest:full,full

" Window size
" set lines=40 columns=150

" New windows from split should go below/to right of current window
" (not above/to left)
set splitbelow
set splitright

" Highlight the current line
set cursorline

" Lazy redraw (e.g. don't redraw between each macro execution)
set lazyredraw

" Automatically reload changes files
set autoread

" Display as much as possible of lines that do not fit on page, rather than
" replacing them with @ symbols
set display+=lastline

" Move vertically by visual line, rather than actual line
nnoremap j gj
nnoremap k gk

" Use the computer's default clipboard (windows should use unnamed)
set clipboard=unnamedplus

" Enable use of mouse (bad karma)
set mouse=a

" Syntax highlighting
syntax on

" Show matching parens characters
set showmatch

" Colors
set background=dark
colorscheme solarized

" A font that doesn't cause italics to be cut off (windows only)
" set guifont=Consolas:h11

" Enable filetype support
filetype on
filetype plugin on
filetype plugin indent on

" Minimum number of lines above/below cursor before scrolling
set scrolloff=5

" Center on cursor during search
noremap n nzz
noremap N Nzz
noremap gg ggzz
noremap G Gzz

" Move cursor when scrolling with ctrl-e and ctrl-y
noremap <C-e> j<C-e>
noremap <C-y> k<C-y>

" Scroll and move cursor with ctrl-j and ctrl-k
noremap <C-j> j<C-e>
noremap <C-k> k<C-y>

" jj to escape
inoremap jj <ESC>

" Make markdown easier to work with
autocmd FileType markdown :set tw=79
autocmd FileType markdown :set spell

" Go configuration
let g:go_fmt_command = "goimports"
" let g:go_metalinter_autosave = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_types = 1
" let g:go_highlight_fields = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_contraints = 1

" Fix GoCoverage colors to work with solarized in the terminal
hi def goCoverageCovered ctermfg=darkgreen guifg=#A6E22E
hi def goCoverageUncover ctermfg=darkred guifg=#F92672

" Go mappings
au FileType go nmap <F3> <Plug>(go-metalinter)
au FileType go nmap <F4> <Plug>(go-alternate-edit)
au FileType go nmap <F5> <Plug>(go-test)
au FileType go nmap <F6> <Plug>(go-coverage-toggle)
au FileType go nmap <F7> <Plug>(go-coverage-browser)
au FileType go nmap <F8> <Plug>(go-install)
au FileType go nmap <F9> <Plug>(go-doc-browser)

" Custom vim-tmux-navigator mappings
" see: https://github.com/christoomey/vim-tmux-navigator
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <M-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <M-j> :TmuxNavigateDown<cr>
nnoremap <silent> <M-k> :TmuxNavigateUp<cr>
nnoremap <silent> <M-l> :TmuxNavigateRight<cr>
nnoremap <silent> <M-\> :TmuxNavigatePrevious<cr>

" Make sure key codes for alt-keys are interpreted correctly
" (Note that this breaks macros with <Esc> followed by h/j/k/l)
set <M-h>=h
set <M-j>=j
set <M-k>=k
set <M-l>=l
set <M-\>=\

" Fix arrow key mappings in tmux (ctrl-arrow + shift-arrow)
" see: https://superuser.com/questions/401926/how-to-get-shiftarrows-and-ctrlarrows-working-in-vim-in-tmux
if &term =~ '^screen'
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif

" Timeout for keycodes is instantaneous so esc key doesn't wait for next key
" press (to see if it should be interpreted as the alt/ctrl/shift key)
set ttimeoutlen=0

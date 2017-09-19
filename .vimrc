" Line numbers
set nu

" Tabs
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set backspace=indent,eol,start

" Row and column numbers at bottom
set ruler

" Window size
" set lines=40 columns=150

" Highlight the current line
set cursorline

" Lazy redraw
set lazyredraw

" Use the computer's default clipboard (windows should use unnamed)
set clipboard=unnamedplus

" Syntax highlighting
syntax on

" Colors
set background=dark
"let g:solarized_termcolors=256
"colorscheme solarized

" A font that doesn't cause italics to be cut off (windows only)
" set guifont=Consolas:h11

" Make markdown easier to work with
autocmd FileType markdown :set tw=79
autocmd FileType markdown :set spell

" Enable filetype support
filetype on
filetype plugin on
filetype plugin indent on

" Go configuration
let g:go_fmt_command = "goimports"
" let g:go_metalinter_autosave = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_types = 1
" let g:go_highlight_fields = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_contraints = 1

" Go mappings
au FileType go nmap <F6> <Plug>(go-metalinter)
au FileType go nmap <F7> <Plug>(go-alternate-edit)
au FileType go nmap <F8> <Plug>(go-test)
au FileType go nmap <F9> <Plug>(go-coverage-toggle)
au FileType go nmap <F10> <Plug>(go-coverage-browser)
au FileType go nmap <F11> <Plug>(go-install)
au FileType go nmap <F12> <Plug>(go-doc-browser)

" Center on cursor during search
noremap n nzz
noremap N Nzz
noremap gg ggzz
noremap G Gzz

" Move cursor when scrolling with ctrl-e and ctrl-y
noremap <C-j> <C-e>j
noremap <C-k> <C-y>k

" jj to escape
inoremap jj <ESC>

"Vim-plug
call plug#begin()

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'micha/vim-colors-solarized', { 'set': 'all' }
Plug 'vim-syntastic/syntastic'
Plug 'jbodah/vim-elixir', { 'branch': 'indent-refactor' }
Plug 'mileszs/ack.vim'
Plug 'AndrewRadev/vim-eco'
Plug 'tpope/vim-fugitive'
Plug 'kchmck/vim-coffee-script'
Plug 'slim-template/vim-slim'
Plug 'jparise/vim-graphql'
Plug 'posva/vim-vue'

call plug#end()

"General
syntax on
filetype indent plugin on
set hidden
set wildmenu
set showcmd
set hlsearch
set backspace=indent,eol,start
set autoindent
set nostartofline
set ruler
set laststatus=2
set confirm
set number
set relativenumber
set expandtab
set tabstop=2
set shiftwidth=2
set mouse=a
set autoread
set colorcolumn=80
set wildignore=*/_build/*,*.swp,*/node_modules/*,*/deps/*,*/assets/images/*
set eol
filetype plugin on

"Remove trailing whitespace
autocmd BufWritePre * %s/\s\+$//e

"Solarized
syntax enable
set background=dark
colorscheme solarized

"Change tabs for Golang
autocmd FileType go setlocal ts=4 sw=4 sts=0 noexpandtab

"4 space indentation for C
autocmd FileType c setlocal ts=4 sw=4

"Copy to clipboard
vnoremap <C-c> "*y"

"Shortcuts
nmap <Leader>a :Ack<space>
nnoremap gr :Ack <cword> <CR>
nmap <Leader>s :SyntasticToggleMode<CR>

"Run rubocop autofix
:autocmd BufWritePost *.rb :silent! exec ":!rubocop -a % &> /dev/null" | redraw!

"Fzf setup
command! Fuzz call fzf#run({'sink': 'tab drop'})
nmap <Leader>t :Fuzz<CR>

"Syntastic config
"Checks for local eslint script, fallback to global
function! SyntasticESlintChecker()
  let l:npm_bin = ''
  let l:eslint = 'eslint'

  if executable('npm')
    let l:npm_bin = split(system('npm bin'), '\n')[0]
  endif

  if strlen(l:npm_bin) && executable(l:npm_bin . '/eslint')
let g:syntastic_check_on_open = 1
    let l:eslint = l:npm_bin . '/eslint'
  endif

  let b:syntastic_javascript_eslint_exec = l:eslint
endfunction

let g:syntastic_javascript_checkers = ["eslint"]
autocmd FileType javascript :call SyntasticESlintChecker()

let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_sass_checkers = ['scss_lint']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs=1

au BufRead,BufNewFile *.racc set filetype=racc
au BufRead,BufNewFile *.es6 set filetype=javascript
au BufRead,BufNewFile *.jbuilder set filetype=ruby
au BufRead,BufNewFile *.gql.js set filetype=graphql

"Pathogen
execute pathogen#infect()
execute pathogen#helptags()

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
syntax enable
set background=dark
colorscheme solarized
filetype plugin on

"Change tabs for Golang
autocmd FileType go setlocal ts=4 sw=4 sts=0 noexpandtab

set eol

"Remove trailing whitespace
autocmd FileType ruby,coffee,js,elixir,javascript.jsx,.slim,.erb,.es6,.jbuilder autocmd BufWritePre <buffer> :%s/\s\+$//e

"Copy to clipboard
vnoremap <C-c> "*y"

set pastetoggle=<Leader>p

"Shortcuts
nmap <Leader>a :Ack<space>
nnoremap gr :Ack <cword> <CR>
nmap <Leader>s :SyntasticToggleMode<CR>

"Auto reload
augroup reload_vimrc
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END
set switchbuf=usetab
function! GotoOrOpen(...)
  for file in a:000
    if bufwinnr(file) != -1
      exec "sb " . file
    else
      exec "tabe " . file
    endif
  endfor
endfunction
command! -nargs=+ GotoOrOpen call GotoOrOpen("<args>")
let g:CommandTAcceptSelectionTabCommand = 'GotoOrOpen'
let g:CommandTAcceptSelectionTabMap = ['<CR>']
set wildignore=*/_build/*,*.swp,*/node_modules/*,*/deps/*,*/assets/images/*


"Syntastic config

"Checks for local eslint script, fallback to global
function! SyntasticESlintChecker()
  let l:npm_bin = ''
  let l:eslint = 'eslint'

  if executable('npm')
    let l:npm_bin = split(system('npm bin'), '\n')[0]
  endif

  if strlen(l:npm_bin) && executable(l:npm_bin . '/eslint')
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
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs=1
let g:syntastic_ruby_rubocop_exec = "~/bin/rubocop.sh"

au BufRead,BufNewFile *.racc set filetype=racc
au BufRead,BufNewFile *.es6 set filetype=javascript
au BufRead,BufNewFile *.jbuilder set filetype=ruby

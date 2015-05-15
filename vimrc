execute pathogen#infect()
execute pathogen#helptags()
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
autocmd FileType go setlocal ts=4 sw=4 sts=0 noexpandtab
set mouse=a
set autoread
"Remove trailing whitespace
set eol
autocmd FileType ruby,coffee,js autocmd BufWritePre <buffer> :%s/\s\+$//e
"Copy to clipboard
vnoremap <C-c> "*y"
nmap <Leader>a :Ack<space>
nmap <Leader>s :SyntasticToggleMode<CR>
syntax enable
set background=dark
colorscheme solarized
filetype plugin on
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

"Syntastic config
let g:syntastic_javascript_checkers = ['jsxhint']
let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_sass_checkers = ['scss_lint']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_scss_sass_quiet_messages = { "regex":   'unreadable' }
let g:syntastic_go_go_quiet_messages = { "regex": "cannot find" }

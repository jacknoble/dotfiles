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
set mouse=a
set autoread
vnoremap <C-c> "*y"
nmap <Leader>a :Ack<space>
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

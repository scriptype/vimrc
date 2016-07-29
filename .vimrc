if &t_Co > 1
   syntax enable
endif

"colorscheme delek
"hi clear Directory
"hi Directory term=bold ctermfg=Blue guifg=Blue
colorscheme molokai

if has("autocmd")
    filetype plugin indent on

    autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab
    autocmd Filetype html setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
    autocmd Filetype css setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
    autocmd Filetype scss setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
    autocmd Filetype less setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
endif

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set nocindent
set nosmartindent
set autoindent

set backspace=indent,eol,start

set colorcolumn=81
set number
set ruler
set hlsearch

set splitright
set splitbelow

set backupdir=~/.vim/backup
set directory=~/.vim/swp

set autoread

set laststatus=2

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_section_y = ''

map <silent> <C-n> :NERDTreeToggle<CR>
nnoremap <cr> :noh<CR><CR>:<backspace>
nnoremap <space> zz

" Keep the cursor in the same place after yank
vmap y ygv<Esc>

let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
  set pastetoggle=<Esc>[201~
  set paste
  return ""
endfunction

execute pathogen#infect()

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
set undofile

set backspace=indent,eol,start
let mapleader = ","

set colorcolumn=81
set relativenumber
set ruler
set hlsearch

set splitright
set splitbelow

set backupdir=~/.vim/backup
set directory=~/.vim/swp

set autoread

set laststatus=2

set winheight=30
set winminheight=5

nnoremap <silent> + :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> - :exe "resize " . (winheight(0) * 2/3)<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_section_y = ''

let g:NumberToggleTrigger="<C-l>"

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

map <silent> <C-n> :NERDTreeToggle<CR>
nnoremap <cr> :noh<CR><CR>:<backspace>
nnoremap <space> zz
nnoremap <C-g> :GundoToggle<CR>

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

iab rreact 
\<CR>var React = require('react')
\<CR>
\<CR>var MyComponent = React.createClass({
\<CR>  propTypes: { },
\<CR>
\<CR>  getInitialState() {
\<CR>  return {}
\<CR>},
\<CR>
\<CR>  componentWillMount() { },
\<CR>  componentDidMount() { },
\<CR>  componentWillReceiveProps(nextProps) { },
\<CR>  shouldComponentUpdate(nextProps, nextState) { },
\<CR>  componentWillUpdate(nextProps, nextState) { },
\<CR>  componentDidUpdate(prevProps, prevState) { },
\<CR>  componentWillUnmount() { },
\<CR>
\<CR>  render() {
\<CR>  return (
\<CR><div>My Component</div>
\<CR>)
\<CR>}
\<CR>})
\<CR>
\<CR>module.exports = MyComponent

iab ireact 
\<CR>import React from 'react'
\<CR>
\<CR>var MyComponent = React.createClass({
\<CR>  propTypes: { },
\<CR>
\<CR>  getInitialState() {
\<CR>  return {}
\<CR>},
\<CR>
\<CR>  componentWillMount() { },
\<CR>  componentDidMount() { },
\<CR>  componentWillReceiveProps(nextProps) { },
\<CR>  shouldComponentUpdate(nextProps, nextState) { },
\<CR>  componentWillUpdate(nextProps, nextState) { },
\<CR>  componentDidUpdate(prevProps, prevState) { },
\<CR>  componentWillUnmount() { },
\<CR>
\<CR>  render() {
\<CR>  return (
\<CR><div>My Component</div>
\<CR>)
\<CR>}
\<CR>})
\<CR>
\<CR>export default MyComponent

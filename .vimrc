if &t_Co > 1
   syntax enable
endif

colorscheme molokai

if has("autocmd")
    filetype plugin indent on

    autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab
    autocmd Filetype html setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
    autocmd Filetype css setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
    autocmd Filetype scss setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
    autocmd Filetype less setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
endif

hi htmlArg gui=italic
hi Comment gui=italic
hi Type    gui=italic
hi htmlArg cterm=italic
hi Comment cterm=italic
hi Type    cterm=italic

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set nocindent
set nosmartindent
set autoindent
set undofile
set undodir=~/.vim/undo

set backspace=indent,eol,start

set colorcolumn=81
set relativenumber
set number
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

let mapleader = ","

nnoremap <silent> + :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> - :exe "resize " . (winheight(0) * 2/3)<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <leader>r :source $MYVIMRC<CR>

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_section_y = ''

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

let g:syntastic_javascript_checkers = ['jshint']

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
\var React = require('react')
\<CR>
\<CR>var MyComponent = React.createClass({
\<CR>propTypes: { },
\<CR>
\<CR><TAB>getInitialState() {
\<CR><TAB>return {}
\<CR>},
\<CR>
\<CR><TAB>componentWillMount() { },
\<CR><TAB>componentDidMount() { },
\<CR><TAB>componentWillReceiveProps(nextProps) { },
\<CR><TAB>shouldComponentUpdate(nextProps, nextState) { },
\<CR><TAB>componentWillUpdate(nextProps, nextState) { },
\<CR><TAB>componentDidUpdate(prevProps, prevState) { },
\<CR><TAB>componentWillUnmount() { },
\<CR>
\<CR><TAB>render() {
\<CR><TAB>return (
\<CR><TAB><div>My Component</div>
\<CR>)
\<CR>}
\<CR>})
\<CR>
\<CR>module.exports = MyComponent

iab ireact 
\import React from 'react'
\<CR>
\<CR>var MyComponent = React.createClass({
\<CR>propTypes: { },
\<CR>
\<CR><TAB>getInitialState() {
\<CR><TAB>return {}
\<CR>},
\<CR>
\<CR><TAB>componentWillMount() { },
\<CR><TAB>componentDidMount() { },
\<CR><TAB>componentWillReceiveProps(nextProps) { },
\<CR><TAB>shouldComponentUpdate(nextProps, nextState) { },
\<CR><TAB>componentWillUpdate(nextProps, nextState) { },
\<CR><TAB>componentDidUpdate(prevProps, prevState) { },
\<CR><TAB>componentWillUnmount() { },
\<CR>
\<CR><TAB>render() {
\<CR><TAB>return (
\<CR><TAB><div>My Component</div>
\<CR>)
\<CR>}
\<CR>})
\<CR>
\<CR>export default MyComponent

iab html5 
\<!DOCTYPE html>
\<CR><BS><html lang="en">
\<CR><head>
\<CR><TAB><meta charset="utf-8" />
\<CR><TAB><title>HTML5 Template</title>
\<CR><TAB><meta name="viewport" content="width=device-width, initial-scale=1.0">
\<CR><TAB><link rel="stylesheet" href="style.css" />
\<CR></head>
\<CR>
\<CR><body>
\<CR><TAB><div id="app"></div>
\<CR><TAB><script type="text/javascript" src="app.js"></script>
\<CR></body>
\<CR>
\<CR><BS></html>

iab ** 
\/**
\<CR>Description.
\<CR>@param {Object\|String} name - desc
\<CR>@param {Boolean} [name] - desc
\<CR>@returns {Number}
\<CR>*/

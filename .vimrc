if &t_Co > 1
   syntax enable
endif

colorscheme molokai

au BufRead,BufNewFile *.scssm set filetype=scss.css

if has("autocmd")
    filetype plugin indent on

    autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab
    autocmd Filetype html setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
    autocmd Filetype hbs setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
    autocmd Filetype css setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
    autocmd Filetype scss setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab
    autocmd Filetype less setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
    autocmd FileType vue nmap <buffer> <Leader>h : <C-u>echo tsuquyomi#hint()<CR>
    autocmd FileType typescript.tsx nmap <buffer> <Leader>h : <C-u>echo tsuquyomi#hint()<CR>
    autocmd FileType typescript nmap <buffer> <Leader>h : <C-u>echo tsuquyomi#hint()<CR>
    autocmd FileType typescript nmap <buffer> <Leader>ver : <C-u>:TsuImport<CR>
    autocmd FileType typescript setlocal completeopt+=menu,preview
endif

if has('python3')
    let g:gundo_prefer_python3 = 1
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

set mouse=a
set colorcolumn=81
set relativenumber
set number
set ruler
set hlsearch
set incsearch
set ignorecase
set cursorline
set wildmenu
set lazyredraw

set splitright
set splitbelow

set backupdir=~/.vim/backup
set directory=~/.vim/swp

set autoread

set laststatus=2

set winheight=30
set winminheight=5

set updatetime=250

set foldmethod=syntax
set foldcolumn=1
let javaScript_fold=1
set foldlevelstart=99
set mmp=5000

let mapleader = ","

nnoremap <silent> + :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> - :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <C-w>> - 10<C-w>>
nnoremap <C-w>< - 10<C-w><

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <leader>yf gg"+yG<c-o><c-o>
nnoremap <silent> <leader>d ms"syy:r !say -v Fred "<C-r>s"<CR>`s
nnoremap <silent> <leader>s :<C-u>call system('say ' . expand('<cword>'))<CR>

nnoremap <leader>s :source $MYVIMRC<CR>
nnoremap <leader>er :sp $MYVIMRC<CR>
nnoremap <leader>ser :vsp $MYVIMRC<CR>
nnoremap <leader>ter :tabedit $MYVIMRC<CR>
nnoremap <leader>a :Ack! 
nnoremap <Leader>d :ALEGoToDefinitionInTab<CR>
nnoremap <Leader>vd :ALEGoToDefinitionInVSplit<CR>
nnoremap <Leader>r :ALEFindReferences<CR>
nnoremap <Leader>e :ALENext<CR>
nmap <Leader>t :Ack \(TODO\\|FIXME\)<CR>
nmap <Leader>w :%s/\s\+$//gic<CR>

let g:NERDTreeIgnore=['node_modules']

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_section_y = ''

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = 'find %s -type f | grep -v "`cat ~/.ctrlpignore`"'

let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0

let g:user_emmet_leader_key=','
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi']
let g:syntastic_check_on_open = 0

" Fix files with prettier, and then ESLint.
let g:ale_fixers = {
      \'*': ['remove_trailing_lines'],
      \'javascript': ['prettier', 'eslint'],
      \'typescript': ['prettier', 'eslint'],
      \'typescript.tsx': ['prettier', 'eslint'],
      \'vue': ['prettier', 'eslint']
\}

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
set omnifunc=ale#completion#OmniFunc
set completeopt+=noinsert

let b:ale_linters = ['eslint']
let g:ale_javascript_eslint_executable = 'eslint_d --cache'

" let g:vue_disable_pre_processors = 1

map <silent> <C-n> :NERDTreeToggle<CR>
map <silent> <C-n> <plug>NERDTreeTabsToggle<CR>
nnoremap <backspace> :noh<CR>:<backspace>
nnoremap <space> zz
nnoremap <leader>g :GundoToggle<CR>
nnoremap <leader>f :GitGutterStageHunk<CR>
nnoremap <leader>n :GitGutterNextHunk<CR>

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
\<CR><html lang="en">
\<CR><head>
\<CR><meta charset="utf-8" />
\<CR><meta name="viewport" content="width=device-width, initial-scale=1.0">
\<CR><title>HTML5 Template</title>
\<CR><link rel="icon" type="image/png" href="favicon.png" />
\<CR><link rel="stylesheet" href="style.css" />
\<CR><BS></head>
\<CR>
\<CR><body>
\<CR><div id="app"></div>
\<CR><script type="text/javascript" src="app.js"></script>
\<CR><BS></body>
\<CR>
\<CR><BS></html>

iab *jsdoc* 
\/**
\<CR>Description.
\<CR>@param {Object\|String} name - desc
\<CR>@param {Boolean} [name] - desc
\<CR>@returns {Number}
\<CR>*/

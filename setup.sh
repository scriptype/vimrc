mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone https://github.com/scriptype/vimrc ~/vimrc
ln -s ~/vimrc/.vimrc ~/.vimrc

cd ~/.vim/bundle/ && git clone git@github.com:Raimondi/delimitMate.git
cd ~/.vim/bundle/ && git clone git://github.com/airblade/vim-gitgutter.git
cd ~/.vim/bundle/ && git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
git clone http://github.com/sjl/gundo.vim.git ~/.vim/bundle/gundo
cd ~/.vim/bundle/ && git clone git@github.com:kien/ctrlp.vim.git
cd ~/.vim/bundle && git clone https://github.com/scrooloose/nerdcommenter.git
cd ~/.vim/bundle && git clone git@github.com:ervandew/supertab.git
cd ~/.vim/bundle && git clone git://github.com/tpope/vim-fugitive.git
vim -u NONE -c "helptags vim-fugitive/doc" -c q
git clone git@github.com:powerline/fonts.git ~/power-fonts
cd ~/power-fonts && sh install.sh

read -p "Type full path for vimrc installation (e.g. ~/vimrc)" vimrcpath

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

mkdir -p ~/.vim/colors && \
curl https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim > ~/.vim/colors/molokai.vim

mkdir ~/.vim/backup
mkdir ~/.vim/swp
mkdir ~/.vim/undo

git clone https://github.com/scriptype/vimrc $(vimrcpath)
ln -s $(vimrcpath)/.vimrc ~/.vimrc
ln -s $(vimrcpath)/.ctrlpignore ~/.ctrlpignore

brew install ack

git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
git clone http://github.com/sjl/gundo.vim.git ~/.vim/bundle/gundo
git clone https://github.com/mileszs/ack.vim.git ~/.vim/bundle/ack.vim
git clone https://github.com/ashisha/image.vim ~/.vim/bundle/image.vim
git clone git://github.com/craigemery/vim-autotag.git ~/.vim/bundle/vim-autotag
pip install Pillow
cd ~/.vim/bundle/ && git clone https://github.com/Raimondi/delimitMate.git
cd ~/.vim/bundle/ && git clone https://github.com/airblade/vim-gitgutter.git
cd ~/.vim/bundle/ && git clone https://github.com/scrooloose/nerdtree.git
cd ~/.vim/bundle/ && git clone https://github.com/kien/ctrlp.vim.git
cd ~/.vim/bundle && git clone https://github.com/scrooloose/nerdcommenter.git
cd ~/.vim/bundle && git clone https://github.com/ervandew/supertab.git
cd ~/.vim/bundle && git clone https://github.com/tpope/vim-fugitive.git
cd ~/.vim/bundle && git clone --depth=1 https://github.com/vim-syntastic/syntastic.git
git clone https://github.com/powerline/fonts.git ~/power-fonts
cd ~/power-fonts && sh install.sh
vim -u NONE -c "helptags vim-fugitive/doc" -c q

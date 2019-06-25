# vimrc


## Setup 3rd part plugins

[vim-pathogen](https://github.com/tpope/vim-pathogen)
```
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```

[vim-polyglot](https://github.com/sheerun/vim-polyglot)
```
cd ~/.vim/bundle && \
git clone https://github.com/sheerun/vim-polyglot.git
```

[vim-commentary](https://github.com/tpope/vim-commentary)
```
mkdir -p ~/.vim/pack/tpope/start
cd ~/.vim/pack/tpope/start
git clone https://tpope.io/vim/commentary.git
vim -u NONE -c "helptags commentary/doc" -c q
```

[vim-surround](https://github.com/tpope/vim-surround)
```
cd ~/.vim/pack/tpope/start
git clone https://tpope.io/vim/surround.git
vim -u NONE -c "helptags surround/doc" -c q
```

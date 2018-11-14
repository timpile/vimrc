# vimrc


## Setup [vim-pathogen](https://github.com/tpope/vim-pathogen)
```
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```

## Portability
_if `vimrc/` is in `Dropbox/` make sure to symlink to `Documents/`_

```
cd /usr/local/bin
ln -s ~/Dropbox/vimrc ~/Documents/vimrc
ln -s ~/Documents/vimrc/.vimrc ~/.vimrc
```
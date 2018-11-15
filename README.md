# vimrc


## Setup 3rd part plugins

[vim-pathogen](https://github.com/tpope/vim-pathogen)
```
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```

## Portability
Symlink `~/.vimrc` to `~/Dropbox/vimrc/.vimrc`

```
ln -s ~/Dropbox/vimrc/.vimrc ~/.vimrc
```

# Vim Cheatsheet

## Basic Commands
`c` change
`d` delete
`y` yank (copy)
`yy` yank line
`dd` delete line

`i` inside
`a` inside including spaces
`t` from cursor til ...

`w` word
`p` paragraph
`t` tag

## Inside bookends
`%` finds a matching ),], or }

## Find/Replace
`:s/old/new` finds and replaces a single instance 
`:s/old/new/g` finds and replaces every instance on a line
`:#,#s/old/new/g` finds and replaces every instance between line numbers (#,#)
`:%s/old/new/g` finds and replaces every instance in the file
`:%s/old/new/gc` finds every instance in the file, with prompt to replace

`r` replaces a single character under cursor
`R` replaces more than one character



# Vim Cheatsheet

## Basic Commands
`c` ( c )hange
`d` ( d )elete
`y` ( y )ank (copy)

## Line level commands
`yy` ( y )ank
`dd` ( d )elete

## Text Objects

`w` ( w )ord
`s` ( s )entence
`p` ( p )aragraph
`t` ( t )ag
`m` ( m )ethod
`b` ( b )lock

## Text Object Modifiers
`i` ( i )nner
`a` ( a )ll * like inner but includes spaces
`t` from cursor un( t )il specified location

## Navigation

`ctrl d` Scroll ( d )own
`ctrl u` Scroll ( u )p

## Inside bookends
`%` finds a matching ),], or }

## Search/Replace
`:s/old/new` searches for and replaces a single instance 
`:s/old/new/g` searches for and replaces globally on a line
`:#,#s/old/new/g` searches for and replaces globally between line numbers (#,#)
`:%s/old/new/g` searches for and replaces globally in the file
`:%s/old/new/gc` searches for globally in the file, with prompt to replace

`r` ( r )eplaces a single character under cursor
`R` ( R )eplaces more than one character
`J` ( J )oin current and next line

`u` ( u )ndo
`ctrl r` ( r )edo

## Combinations

`cim` ( c )hange ( i )nner ( m )ethod, * Doesn't work in VS Code

`vim` ( v )isually select ( i )nner ( m )ethod, * Doesn't work in VS Code

`2s` ( 2 ) letter ( s )ubstitute

`vS(` ( v )isually select letter and ( S )urround with ( () )

`v2wS"` ( v )isually select ( 2 ) ( w )ords and ( S )urround with ( "" )

`cs"'` ( c )hange ( s )urrounding ( "" ) with ( '' )

`cst"` ( c )hange ( s )urrounding ( '' ) with ( "" )

`ds(` ( d )elete ( s )urrounding ( () )

`yss)` ( y )ank ( s )urround ( s )urround with ( () ) * without spaces

`yss(` ( y )ank ( s )urround ( s )urround with ( ( ) ) * with spaces

`ysiw)` ( y )ank ( s )urround ( i )nner ( w )ord with ( () ) * without spaces

`visU` ( v )isually select ( i )nner ( s )entence, make ( U )pper case

`visu` ( v )isually select ( i )nner ( s )entence, make lower case

## Explorer

`Ex`
`d` new directory
`%` new file
`I` toggle top info
`i` cycle through directory layouts

## Navigation
`shft+[`
`shft+]`

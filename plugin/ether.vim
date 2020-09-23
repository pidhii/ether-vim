" Language: Ether
" Maintainer: Ivan Pidhurskyi <ivanpidhurskyi1997@gmail.com>

if exists ('g:loaded_ether_vim')
  finish
endif
let g:loaded_ether_vim = 1

autocmd BufRead,BufNewFile *.eth set filetype=ether syntax=ether
autocmd BufEnter *.eth syntax sync fromstart


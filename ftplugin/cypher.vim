" Vim filetype plugin file
" Language:             cypher
" Maintainer:           Mislav Vuletić
" Last Change:          Mon 19 Jul 2021 11:22:00 AM BST (Farbod Salamat-Zadeh)
" Repository:           https://github.com/memgraph/cypher.vim
" Version:              1.0

" Only load ftplugin if hasn't been loaded yet
if exists('b:did_ftplugin')
  finish
endif

let b:did_ftplugin = 1
let b:undo_ftplugin = 'setlocal commentstring'

setlocal commentstring=//%s

" Vim syntax file
" Language:         cypher
" Maintainer:       Julian Simpson
" Last Change:      $Date: Mon 26 Nov 2012 14:04:59 GMT$
" Filenames:        *.cypher
" Version:          $Id: cypher.vim,v 1.0 $

" Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case ignore
syn match     cypherComment       "\s*\/\/.*$"
syn keyword   cypherKeyword       cypher start create match delete where return with unique set foreach
syn keyword   cypherKeyword       node limit order by desc
syn keyword   cypherKeyword       or and not is null in
syn keyword   cypherKeyword       all any none single length type id nodes relationships
syn keyword   cypherKeyword       coalesce head last extract filter tail range reduce

syn keyword   cypherKeyword       abs reduce round sqrt sign
syn keyword   cypherKeyword       str replace substring left right ltrim rtrim trim lower upper


syn region    cypherProperty      start=+'+ skip=+\\\\\|\\'+ end=+'+
syn match     cypherRelationship  ":\w*_\w*"
syn match     cypherSymbol        "->"
syn match     cypherSymbol        "<=>"
syn match     cypherSymbol        "<-"
syn match     cypherPropertyName  "\w\+:"
syn match     cypherVariable      "\w\+"

hi link cypherComment              Comment
hi link cypherKeyword              Define
hi link cypherProperty             String
hi link cypherPropertyName         Identifier
hi link cypherRelationship         Identifier
hi link cypherSymbol               Operator
hi link cypherVariable             Identifier

let b:current_syntax = "cypher"

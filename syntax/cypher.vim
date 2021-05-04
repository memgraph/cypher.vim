" Vim syntax file
" Language:             cypher
" Maintainer:           Mislav Vuletić
" Last Change:          Tue 04 May 2021 11:37:14 PM CEST
" Repository:           https://github.com/memgraph/cypher.vim
" Version:              1.0

" Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case ignore

syn region cypherProperty start=+{+ end=+}+ contains=ALLBUT,cypherLabel
syn region cypherString matchgroup=Quote start=+'+ skip=+\\'+ end=+'+
syn region cypherString matchgroup=Quote start=+"+ skip=+\\"+ end=+"+

syn keyword cypherSpecial true false null none

syn keyword cypherKeyword as call yield
syn keyword cypherKeyword create detach delete optional mandatory match merge
syn keyword cypherKeyword union all unwind with where distinct set remove
syn keyword cypherKeyword return limit order by asc[ending] desc[ending]
syn keyword cypherKeyword index unique constraint on exists skip
syn keyword cypherKeyword case when then else end
syn keyword cypherKeyword commit periodic schema drop using
syn keyword cypherKeyword load csv from starts ends
syn keyword cypherKeyword key join scan node cypher start foreach

syn keyword cypherOperator or and not xor is in contains

syn keyword cypherFunction id all any single length type nodes labels collect
syn keyword cypherFunction rels relationships coalesce last extract count
syn keyword cypherFunction head filter tail range properties size tostring
syn keyword cypherFunction toboolean tofloat tointeger keys uniformsample
syn keyword cypherFunction startswith endswith reverse tolower toupper
syn keyword cypherFunction timestamp startnode endnode split
syn keyword cypherFunction abs acos asin atan atan2 cos cot degree e exp floor
syn keyword cypherFunction haversin log log10 pi radians rand round
syn keyword cypherFunction sign sin sqrt tan reduce percentiledisc stdev
syn keyword cypherFunction str replace substring left right ltrim rtrim trim
syn keyword cypherFunction lower upper assert counter
syn match   cypherFunction "<contains>"

syn match cypherComment       "\s*\/\/.*$"
syn match cypherNumber        "-\=\<\d*\.\=[0-9_]\>"
syn match cypherLabel         ":\s*\(\w\|_\)\+"
syn match cypherSymbol        "->"
syn match cypherSymbol        "<=>"
syn match cypherSymbol        "<-"
syn match cypherPropertyName  "\w\+:" contained

hi def link Quote               String
hi def link cypherString        String
hi def link cypherProperty      Normal
hi def link cypherSpecial       Special
hi def link cypherKeyword       Statement
hi def link cypherFunction      Function
hi def link cypherComment       Comment
hi def link cypherNumber        Number
hi def link cypherOperator      Statement
hi def link cypherPropertyName  Identifier
hi def link cypherLabel         Type
hi def link cypherSymbol        Operator

let b:current_syntax = "cypher"

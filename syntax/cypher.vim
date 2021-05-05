" Vim syntax file
" Language:             cypher
" Maintainer:           Mislav Vuletić
" Last Change:          Wed 05 May 2021 08:33:52 AM CEST
" Repository:           https://github.com/memgraph/cypher.vim
" Version:              1.0

" Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn case ignore

syn region cypherProperty start=+{+ end=+}+ contains=ALLBUT,cypherLabel,cypherFunction
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

syn keyword cypherFunction contained id all any single length type nodes
syn keyword cypherFunction contained labels collect uniformsample toupper
syn keyword cypherFunction contained exp floor stdev rtrim trim count sum
syn keyword cypherFunction contained rels relationships coalesce last extract
syn keyword cypherFunction contained head filter tail range properties size
syn keyword cypherFunction contained toboolean tofloat tointeger tostring
syn keyword cypherFunction contained startswith endswith reverse tolower keys
syn keyword cypherFunction contained timestamp startnode endnode split
syn keyword cypherFunction contained abs acos asin atan atan2 cos cot degree e
syn keyword cypherFunction contained haversin log log10 pi radians rand round
syn keyword cypherFunction contained sign sin sqrt tan reduce percentiledisc
syn keyword cypherFunction contained str replace substring left right ltrim
syn keyword cypherFunction contained lower upper assert counter
syn match   cypherFunction "<contains>"

syn match cypherFunctionCall  "\zs\w\+\ze(" contains=cypherFunction
syn match cypherComment       "\s*\/\/.*$"
syn match cypherNumber        "-\=\<\d*\.\=[0-9_]\>"
syn match cypherLabel         ":\s*\zs\(\w\|_\)\+\ze"
syn match cypherSymbol        "->"
syn match cypherSymbol        "<=>"
syn match cypherSymbol        "<-"
syn match cypherPropertyName  "\zs\w\+\ze:" contained

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

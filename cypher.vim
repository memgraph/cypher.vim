syn match     cypherComment       "\s*\/\/.*$"
syn keyword   cypherKeyword       start create match delete START CREATE MATCH DELETE
syn region    cypherProperty      start=+'+ skip=+\\\\\|\\'+ end=+'+
syn match     cypherRelationship  ":\w*_\w*"
syn match     cypherSymbol        "->"
syn match     cypherSymbol        "<=>"
syn match     cypherSymbol        "<-"
syn match     cypherPropertyName  "\w\+:"
syn match     cypherVariable      "\w\+"


command -nargs=+ HiLink hi def link <args>

HiLink cypherComment              Comment
HiLink cypherKeyword              Define
HiLink cypherProperty             String
HiLink cypherPropertyName         Identifier
HiLink cypherRelationship         Identifier
HiLink cypherSymbol               Operator
HiLink cypherVariable             Identifier

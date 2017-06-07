if exists("b:current_syntax")
	finish
endif

" Conditionals
syntax keyword secrecConditional if else 

" Operators
syntax keyword secrecKeyword for while 
syntax keyword secrecKeyword template

"Types
syntax keyword secrecTypedef domain type
syntax keyword secrecType int void uint xor_uint64 int64 uint64 int32 uint32
syntax keyword secrecType bool

"Includes
syntax keyword secrecInclude import module

"Built in Functions
syntax keyword secrecFunction main print printMatrix printVector

"Comments
syntax region secrecComment start="\/\*" end="\*\/"
syntax match secrecComment "\v//.*$"

"Constants
syntax region secrecString start="'" skip=/\\./ end="'"
syntax region secrecString start='"' skip=/\\./ end='"'
syntax keyword secrecBoolean true false


"""""""""""""
highlight link secrecType Type
highlight link secrecTypedef Typedef
highlight link secrecString String
highlight link secrecBoolean Boolean
highlight link secrecInclude Include
highlight link secrecConditional Conditional
highlight link secrecKeyword Keyword
highlight link secrecFunction Function
highlight link secrecComment Comment

"""""""""""""
let b:current_syntax = "secrec"

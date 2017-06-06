if exists("b:current_syntax")
	finish
endif

" Conditionals
syntax keyword secrecConditional if else 

" Operators
syntax keyword secrecKeyword for while 

"Types
syntax keyword secrecTypedef domain
syntax keyword secrecType int long void

"Includes
syntax keyword secrecInclude import

"Built in Functions
syntax keyword secrecFunction main print


"Comments
syntax region secrecComment start="\/\*" end="\*\/"

"Constants
syntax region secrecString start="'" end="'"
syntax region secrecString start='"' end='"'



"""""""""""""
highlight link secrecType Type
highlight link secrecTypedef Typedef
highlight link secrecString String
highlight link secrecInclude Include
highlight link secrecConditional Conditional
highlight link secrecKeyword Keyword
highlight link secrecFunction Function
highlight link secrecComment Comment

"""""""""""""
let b:current_syntax = "secrec"

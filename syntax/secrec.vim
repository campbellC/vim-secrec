if exists("b:current_syntax")
	finish
endif

syntax keyword secrecConditional if else 
syntax keyword secrecKeyword for while 
syntax keyword secrecKeyword domain

syntax keyword secrecInclude import

syntax keyword secrecFunction main print


syntax region secrecComment start="\/\*" end="\*\/"

syntax region secrecString start="'" end="'"
syntax region secrecString start='"' end='"'

highlight link secrecString String
highlight link secrecInclude Include
highlight link secrecConditional Conditional
highlight link secrecKeyword Keyword
highlight link secrecFunction Function
highlight link secrecComment Comment

let b:current_syntax = "secrec"

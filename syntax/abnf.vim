" Vim syntax file
" Language: ABNF

if exists('b:current_syntax')
  finish
endif

syn keyword abnfCommentTodo TODO FIXME TBD XXX NOTE contained
syn match   abnfComment     /;.*$/ contains=abnfCommentTodo

syn match abnfValue /%x\x\+\(\.\x\+\)*\(-\x\+\(\.\x\+\)*\)\?/
syn match abnfValue /%d\d\+\(\.\d\+\)*\(-\d\+\(\.\d\+\)*\)\?/
syn match abnfValue /%b[01]\+\(\.[01]\+\)*\(-[01]\+\(\.[01]\+\)*\)\?/
syn region abnfString start=/"/ skip=/\\"/ end=/"/

syn match abnfRuleName /^\a[0-9A-Za-z-]*\|^<\a[0-9A-Za-z-]*>/

syn match abnfCoreRule /\(\d\|\s\|\*\|(\|\[\|^\)\@<=\(ALPHA\|BIT\|CHAR\|CR\|CRLF\|CTL\|DIGIT\|DQUOTE\|HEXDIG\|HTAB\|LF\|LWSP\|OCTET\|SP\|VCHAR\|WSP\)\(\s\|)\|\]\|\r\|\n\)\@=/

syn match abnfOperator /=\|=\/\|\/\|(\|)\|*\|\[\|]/
syn match abnfOperator /\d\?\*\d\?/
syn match abnfOperator /\s\d/ms=s+1

hi def link abnfCommentTodo Todo
hi def link abnfComment     Comment 
hi def link abnfValue       Number
hi def link abnfString      String
hi def link abnfRuleName    Type
hi def link abnfCoreRule    Keyword
hi def link abnfOperator    Operator

let b:current_syntax = 'abnf'

" vim: sw=2 sts=2 ts=2 et

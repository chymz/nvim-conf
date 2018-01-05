" ++++++++++++++++++++++++++++++++++++++++++++++++++++++++
" title      yabab Vim                                    +
" project    yabab-vim                                    +
" repository https://github.com/arcticicestudio/yabab-vim +
" author     Arctic Ice Studio                           +
" email      development@arcticicestudio.com             +
" copyright  Copyright (C) 2017                          +
" ++++++++++++++++++++++++++++++++++++++++++++++++++++++++
if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif

let g:colors_name = "yabab"
let s:yabab_vim_version="1.0.0"
set background=dark

"let s:yabab0_gui = "#2E3440"
"let s:yabab1_gui = "#3B4252"
"let s:yabab2_gui = "#434C5E"
"let s:yabab3_gui = "#4C566A"

let s:yabab0_gui = "#2e2e2e"
let s:yabab1_gui = "#343434"
let s:yabab2_gui = "#404040"
let s:yabab3_gui = "#484848"

let s:yabab4_gui = "#D8DEE9"
let s:yabab5_gui = "#E5E9F0"
let s:yabab6_gui = "#ECEFF4"
let s:yabab7_gui = "#8FBCBB"
let s:yabab8_gui = "#88C0D0"
let s:yabab9_gui = "#81A1C1"
let s:yabab10_gui = "#5E81AC"
let s:yabab11_gui = "#BF616A"
let s:yabab12_gui = "#D08770"
let s:yabab13_gui = "#EBCB8B"
let s:yabab14_gui = "#A3BE8C"
let s:yabab15_gui = "#B48EAD"

let s:yabab1_term = "0"
let s:yabab3_term = "8"
let s:yabab5_term = "7"
let s:yabab6_term = "15"
let s:yabab7_term = "14"
let s:yabab8_term = "6"
let s:yabab9_term = "4"
let s:yabab10_term = "12"
let s:yabab11_term = "1"
let s:yabab12_term = "11"
let s:yabab13_term = "3"
let s:yabab14_term = "2"
let s:yabab15_term = "5"

if !exists('g:yabab_italic_comments')
  let g:yabab_italic_comments = 0
endif

function! s:hi(group, guifg, guibg, ctermfg, ctermbg, attr, guisp)
  let l:attr = a:attr
  if g:yabab_italic_comments == 0 && l:attr ==? 'italic'
    let l:attr= 'NONE'
  endif

  if a:guifg != ""
    exec "hi " . a:group . " guifg=" . a:guifg
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=" . a:guibg
  endif
  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . a:ctermbg
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . l:attr . " cterm=" . l:attr
  endif
  if a:guisp != ""
    exec "hi " . a:group . " guisp=" . a:guisp
  endif
endfunction

"+---------------+
"+ UI Components +
"+---------------+
"+--- Attributes ---+
call s:hi("Bold", "", "", "", "", "bold", "")
call s:hi("Italic", "", "", "", "", "italic", "")
call s:hi("Underline", "", "", "", "", "underline", "")

"+--- Editor ---+
call s:hi("ColorColumn", "", s:yabab1_gui, "NONE", s:yabab1_term, "", "")
call s:hi("Cursor", s:yabab0_gui, s:yabab4_gui, "", "NONE", "", "")
call s:hi("CursorLine", "", s:yabab1_gui, "NONE", s:yabab1_term, "NONE", "")
call s:hi("iCursor", s:yabab0_gui, s:yabab4_gui, "", "NONE", "", "")
call s:hi("LineNr", s:yabab3_gui, s:yabab0_gui, s:yabab3_term, "NONE", "", "")
call s:hi("MatchParen", s:yabab0_gui, s:yabab8_gui, s:yabab1_term, s:yabab8_term, "", "")
call s:hi("NonText", s:yabab2_gui, "", s:yabab3_term, "", "", "")
call s:hi("Normal", s:yabab4_gui, s:yabab0_gui, "NONE", "NONE", "", "")
call s:hi("PMenu", s:yabab4_gui, s:yabab2_gui, "NONE", s:yabab1_term, "NONE", "")
call s:hi("PmenuSbar", s:yabab4_gui, s:yabab2_gui, "NONE", s:yabab1_term, "", "")
call s:hi("PMenuSel", s:yabab8_gui, s:yabab3_gui, s:yabab8_term, s:yabab3_term, "", "")
call s:hi("PmenuThumb", s:yabab8_gui, s:yabab3_gui, "NONE", s:yabab3_term, "", "")
call s:hi("SpecialKey", s:yabab3_gui, "", s:yabab3_term, "", "", "")
call s:hi("SpellBad", "", s:yabab0_gui, "", "NONE", "undercurl", s:yabab11_gui)
call s:hi("SpellCap", "", s:yabab0_gui, "", "NONE", "undercurl", s:yabab13_gui)
call s:hi("SpellLocal", "", s:yabab0_gui, "", "NONE", "undercurl", s:yabab5_gui)
call s:hi("SpellRare", "", s:yabab0_gui, "", "NONE", "undercurl", s:yabab6_gui)
call s:hi("Visual", "", s:yabab2_gui, "", s:yabab1_term, "", "")
call s:hi("VisualNOS", "", s:yabab2_gui, "", s:yabab1_term, "", "")
"+- Neovim Support -+
call s:hi("healthError", s:yabab11_gui, s:yabab1_gui, s:yabab11_term, s:yabab1_term, "", "")
call s:hi("healthSuccess", s:yabab14_gui, s:yabab1_gui, s:yabab14_term, s:yabab1_term, "", "")
call s:hi("healthWarning", s:yabab13_gui, s:yabab1_gui, s:yabab13_term, s:yabab1_term, "", "")

"+--- Gutter ---+
call s:hi("CursorColumn", "", s:yabab1_gui, "NONE", s:yabab1_term, "", "")
call s:hi("CursorLineNr", s:yabab3_gui, s:yabab0_gui, "NONE", "", "", "")
call s:hi("Folded", s:yabab3_gui, s:yabab1_gui, s:yabab3_term, s:yabab1_term, "bold", "")
call s:hi("FoldColumn", s:yabab3_gui, s:yabab0_gui, s:yabab3_term, "NONE", "", "")
call s:hi("SignColumn", s:yabab1_gui, s:yabab0_gui, s:yabab1_term, "NONE", "", "")

"+--- Navigation ---+
call s:hi("Directory", s:yabab8_gui, "", s:yabab8_term, "NONE", "", "")

"+--- Prompt/Status ---+
call s:hi("EndOfBuffer", s:yabab1_gui, "", s:yabab1_term, "NONE", "", "")
call s:hi("ErrorMsg", s:yabab4_gui, s:yabab11_gui, "NONE", s:yabab11_term, "", "")
call s:hi("ModeMsg", s:yabab4_gui, "", "", "", "", "")
call s:hi("MoreMsg", s:yabab4_gui, "", "", "", "", "")
call s:hi("Question", s:yabab4_gui, "", "NONE", "", "", "")
call s:hi("StatusLine", s:yabab4_gui, s:yabab0_gui, s:yabab8_term, s:yabab1_term, "NONE", "")
call s:hi("StatusLineNC", s:yabab4_gui, s:yabab0_gui, s:yabab8_term, "NONE", "NONE", "")
call s:hi("WarningMsg", s:yabab0_gui, s:yabab13_gui, s:yabab1_term, s:yabab13_term, "", "")
call s:hi("WildMenu", s:yabab8_gui, s:yabab3_gui, s:yabab8_term, s:yabab3_term, "", "")

"+--- Search ---+
call s:hi("IncSearch", s:yabab1_gui, s:yabab8_gui, s:yabab1_term, s:yabab8_term, "underline", "")
call s:hi("Search", s:yabab1_gui, s:yabab8_gui, s:yabab1_term, s:yabab8_term, "NONE", "")

"+--- Tabs ---+
call s:hi("TabLine", s:yabab4_gui, s:yabab1_gui, "NONE", s:yabab1_term, "NONE", "")
call s:hi("TabLineFill", s:yabab4_gui, s:yabab1_gui, "NONE", s:yabab1_term, "NONE", "")
call s:hi("TabLineSel", s:yabab8_gui, s:yabab3_gui, s:yabab8_term, s:yabab3_term, "NONE", "")

"+--- Window ---+
call s:hi("Title", s:yabab4_gui, "", "NONE", "", "NONE", "")
call s:hi("VertSplit", s:yabab2_gui, s:yabab1_gui, s:yabab3_term, s:yabab1_term, "NONE", "")

"+----------------------+
"+ Language Base Groups +
"+----------------------+
call s:hi("Boolean", s:yabab9_gui, "", s:yabab9_term, "", "", "")
call s:hi("Character", s:yabab14_gui, "", s:yabab14_term, "", "", "")
call s:hi("Comment", s:yabab3_gui, "", s:yabab3_term, "", "italic", "")
call s:hi("Conditional", s:yabab9_gui, "", s:yabab9_term, "", "", "")
call s:hi("Constant", s:yabab9_gui, "", s:yabab9_term, "", "", "")
call s:hi("Define", s:yabab9_gui, "", s:yabab9_term, "", "", "")
call s:hi("Delimiter", s:yabab5_gui, "", s:yabab5_term, "", "", "")
call s:hi("Exception", s:yabab9_gui, "", s:yabab9_term, "", "", "")
call s:hi("Float", s:yabab12_gui, "", s:yabab12_term, "", "", "")
call s:hi("Function", s:yabab8_gui, "", s:yabab8_term, "", "", "")
call s:hi("Identifier", s:yabab9_gui, "", s:yabab9_term, "", "NONE", "")
call s:hi("Include", s:yabab9_gui, "", s:yabab9_term, "", "", "")
call s:hi("Keyword", s:yabab9_gui, "", s:yabab9_term, "", "", "")
call s:hi("Label", s:yabab9_gui, "", s:yabab9_term, "", "", "")
call s:hi("Number", s:yabab12_gui, "", s:yabab12_term, "", "", "")
call s:hi("Operator", s:yabab9_gui, "", s:yabab9_term, "", "NONE", "")
call s:hi("PreProc", s:yabab9_gui, "", s:yabab9_term, "", "NONE", "")
call s:hi("Repeat", s:yabab9_gui, "", s:yabab9_term, "", "", "")
call s:hi("Special", s:yabab9_gui, "", s:yabab9_term, "", "", "")
call s:hi("SpecialChar", s:yabab13_gui, "", s:yabab13_term, "", "", "")
call s:hi("SpecialComment", s:yabab8_gui, "", s:yabab8_term, "", "italic", "")
call s:hi("Statement", s:yabab9_gui, "", s:yabab9_term, "", "none", "")
call s:hi("StorageClass", s:yabab9_gui, "", s:yabab9_term, "", "", "")
call s:hi("String", s:yabab14_gui, "", s:yabab14_term, "", "", "")
call s:hi("Structure", s:yabab9_gui, "", s:yabab9_term, "", "", "")
call s:hi("Tag", s:yabab4_gui, "", "", "", "", "")
call s:hi("Todo", s:yabab13_gui, "", s:yabab13_term, "NONE", "", "")
call s:hi("Type", s:yabab9_gui, "", s:yabab9_term, "", "NONE", "")
call s:hi("Typedef", s:yabab9_gui, "", s:yabab9_term, "", "", "")
hi! link Macro Define
hi! link PreCondit PreProc

"+-----------+
"+ Languages +
"+-----------+
call s:hi("awkCharClass", s:yabab7_gui, "", s:yabab7_term, "", "", "")
call s:hi("awkPatterns", s:yabab9_gui, "", s:yabab9_term, "", "bold", "")
hi! link awkArrayElement Identifier
hi! link awkBoolLogic Keyword
hi! link awkBrktRegExp SpecialChar
hi! link awkComma Delimiter
hi! link awkExpression Keyword
hi! link awkFieldVars Identifier
hi! link awkLineSkip Keyword
hi! link awkOperator Operator
hi! link awkRegExp SpecialChar
hi! link awkSearch Keyword
hi! link awkSemicolon Delimiter
hi! link awkSpecialCharacter SpecialChar
hi! link awkSpecialPrintf SpecialChar
hi! link awkVariables Identifier

call s:hi("cIncluded", s:yabab7_gui, "", s:yabab7_term, "", "", "")
hi! link cOperator Operator
hi! link cPreCondit PreCondit

hi! link csPreCondit PreCondit
hi! link csType Type
hi! link csXmlTag SpecialComment

call s:hi("cssAttributeSelector", s:yabab7_gui, "", s:yabab7_term, "", "", "")
call s:hi("cssDefinition", s:yabab7_gui, "", s:yabab7_term, "", "NONE", "")
call s:hi("cssIdentifier", s:yabab7_gui, "", s:yabab7_term, "", "underline", "")
call s:hi("cssStringQ", s:yabab7_gui, "", s:yabab7_term, "", "", "")
hi! link cssAttr Keyword
hi! link cssBraces Delimiter
hi! link cssClassName cssDefinition
hi! link cssColor Number
hi! link cssProp cssDefinition
hi! link cssPseudoClass cssDefinition
hi! link cssPseudoClassId cssPseudoClass
hi! link cssVendor Keyword

call s:hi("dosiniHeader", s:yabab8_gui, "", s:yabab8_term, "", "", "")
hi! link dosiniLabel Type

call s:hi("dtBooleanKey", s:yabab7_gui, "", s:yabab7_term, "", "", "")
call s:hi("dtExecKey", s:yabab7_gui, "", s:yabab7_term, "", "", "")
call s:hi("dtLocaleKey", s:yabab7_gui, "", s:yabab7_term, "", "", "")
call s:hi("dtNumericKey", s:yabab7_gui, "", s:yabab7_term, "", "", "")
call s:hi("dtTypeKey", s:yabab7_gui, "", s:yabab7_term, "", "", "")
hi! link dtDelim Delimiter
hi! link dtLocaleValue Keyword
hi! link dtTypeValue Keyword

call s:hi("diffAdded", s:yabab14_gui, "", s:yabab14_term, "", "", "")
call s:hi("diffChanged", s:yabab13_gui, "", s:yabab13_term, "", "", "")
call s:hi("diffNewFile", s:yabab8_gui, "", s:yabab8_term, "", "", "")
call s:hi("diffOldFile", s:yabab7_gui, "", s:yabab7_term, "", "", "")
call s:hi("diffRemoved", s:yabab11_gui, "", s:yabab11_term, "", "", "")
call s:hi("DiffAdd", s:yabab14_gui, "", s:yabab14_term, "", "", "")
call s:hi("DiffChange", s:yabab13_gui, "", s:yabab13_term, "", "", "")
call s:hi("DiffDelete", s:yabab11_gui, "", s:yabab11_term, "", "", "")
call s:hi("DiffText", s:yabab4_gui, "", "NONE", "", "", "")

call s:hi("gitconfigVariable", s:yabab7_gui, "", s:yabab7_term, "", "", "")

call s:hi("goBuiltins", s:yabab7_gui, "", s:yabab7_term, "", "", "")
hi! link goConstants Keyword

call s:hi("htmlArg", s:yabab7_gui, "", s:yabab7_term, "", "", "")
call s:hi("htmlLink", s:yabab4_gui, "", "", "", "NONE", "NONE")
hi! link htmlBold Bold
hi! link htmlEndTag htmlTag
hi! link htmlItalic Italic
hi! link htmlSpecialChar SpecialChar
hi! link htmlTag Keyword
hi! link htmlTagN htmlTag

call s:hi("javaDocTags", s:yabab7_gui, "", s:yabab7_term, "", "", "")
hi! link javaCommentTitle Comment
hi! link javaScriptBraces Delimiter
hi! link javaScriptIdentifier Keyword
hi! link javaScriptNumber Number

call s:hi("jsonKeyword", s:yabab7_gui, "", s:yabab7_term, "", "", "")

call s:hi("lessClass", s:yabab7_gui, "", s:yabab7_term, "", "", "")
hi! link lessAmpersand Keyword
hi! link lessCssAttribute Delimiter
hi! link lessFunction Function
hi! link cssSelectorOp Keyword

hi! link lispAtomBarSymbol SpecialChar
hi! link lispAtomList SpecialChar
hi! link lispAtomMark Keyword
hi! link lispBarSymbol SpecialChar
hi! link lispFunc Function

hi! link luaFunc Function

call s:hi("markdownBlockquote", s:yabab7_gui, "", s:yabab7_term, "", "", "")
call s:hi("markdownCode", s:yabab7_gui, "", s:yabab7_term, "", "", "")
call s:hi("markdownCodeDelimiter", s:yabab7_gui, "", s:yabab7_term, "", "", "")
call s:hi("markdownFootnote", s:yabab7_gui, "", s:yabab7_term, "", "", "")
call s:hi("markdownId", s:yabab7_gui, "", s:yabab7_term, "", "", "")
call s:hi("markdownIdDeclaration", s:yabab7_gui, "", s:yabab7_term, "", "", "")
call s:hi("markdownH1", s:yabab8_gui, "", s:yabab8_term, "", "", "")
call s:hi("markdownLinkText", s:yabab7_gui, "", s:yabab7_term, "", "", "")
call s:hi("markdownUrl", s:yabab4_gui, "", "NONE", "", "NONE", "")
hi! link markdownFootnoteDefinition markdownFootnote
hi! link markdownH2 markdownH1
hi! link markdownH3 markdownH1
hi! link markdownH4 markdownH1
hi! link markdownH5 markdownH1
hi! link markdownH6 markdownH1
hi! link markdownIdDelimiter Keyword
hi! link markdownLinkDelimiter Keyword
hi! link markdownLinkTextDelimiter Keyword
hi! link markdownListMarker Keyword
hi! link markdownRule Keyword
hi! link markdownHeadingDelimiter Keyword

call s:hi("perlPackageDecl", s:yabab7_gui, "", s:yabab7_term, "", "", "")

call s:hi("phpClasses", s:yabab7_gui, "", s:yabab7_term, "", "", "")
call s:hi("phpDocTags", s:yabab7_gui, "", s:yabab7_term, "", "", "")
hi! link phpDocCustomTags phpDocTags
hi! link phpMemberSelector Keyword

call s:hi("podCmdText", s:yabab7_gui, "", s:yabab7_term, "", "", "")
call s:hi("podVerbatimLine", s:yabab4_gui, "", "NONE", "", "", "")
hi! link podFormat Keyword

hi! link pythonBuiltin Type
hi! link pythonEscape SpecialChar

call s:hi("rubyConstant", s:yabab7_gui, "", s:yabab7_term, "", "", "")
call s:hi("rubySymbol", s:yabab6_gui, "", s:yabab6_term, "", "bold", "")
hi! link rubyAttribute Identifier
hi! link rubyBlockParameterList Operator
hi! link rubyInterpolationDelimiter Keyword
hi! link rubyKeywordAsMethod Function
hi! link rubyLocalVariableOrMethod Function
hi! link rubyPseudoVariable Keyword
hi! link rubyRegexp SpecialChar

call s:hi("sassClass", s:yabab7_gui, "", s:yabab7_term, "", "", "")
call s:hi("sassId", s:yabab7_gui, "", s:yabab7_term, "", "underline", "")
hi! link sassAmpersand Keyword
hi! link sassClassChar Delimiter
hi! link sassControl Keyword
hi! link sassControlLine Keyword
hi! link sassExtend Keyword
hi! link sassFor Keyword
hi! link sassFunctionDecl Keyword
hi! link sassFunctionName Function
hi! link sassidChar sassId
hi! link sassInclude SpecialChar
hi! link sassMixinName Function
hi! link sassMixing SpecialChar
hi! link sassReturn Keyword

hi! link shCmdParenRegion Delimiter
hi! link shCmdSubRegion Delimiter
hi! link shDerefSimple Identifier
hi! link shDerefVar Identifier

hi! link sqlKeyword Keyword
hi! link sqlSpecial Keyword

call s:hi("vimAugroup", s:yabab7_gui, "", s:yabab7_term, "", "", "")
call s:hi("vimMapRhs", s:yabab7_gui, "", s:yabab7_term, "", "", "")
call s:hi("vimNotation", s:yabab7_gui, "", s:yabab7_term, "", "", "")
hi! link vimFunc Function
hi! link vimFunction Function
hi! link vimUserFunc Function

call s:hi("xmlAttrib", s:yabab7_gui, "", s:yabab7_term, "", "", "")
call s:hi("xmlCdataStart", s:yabab3_gui, "", s:yabab3_term, "", "bold", "")
call s:hi("xmlNamespace", s:yabab7_gui, "", s:yabab7_term, "", "", "")
hi! link xmlAttribPunct Delimiter
hi! link xmlCdata Comment
hi! link xmlCdataCdata xmlCdataStart
hi! link xmlCdataEnd xmlCdataStart
hi! link xmlEndTag xmlTagName
hi! link xmlProcessingDelim Keyword
hi! link xmlTagName Keyword

call s:hi("yamlBlockMappingKey", s:yabab7_gui, "", s:yabab7_term, "", "", "")
hi! link yamlBool Keyword
hi! link yamlDocumentStart Keyword

"+----------------+
"+ Plugin Support +
"+----------------+
"+--- UI ---+
" ALE
" > w0rp/ale
call s:hi("ALEWarningSign", s:yabab13_gui, "", s:yabab13_term, "", "", "")
call s:hi("ALEErrorSign" , s:yabab11_gui, "", s:yabab11_term, "", "", "")

" GitGutter
" > airblade/vim-gitgutter
call s:hi("GitGutterAdd", s:yabab14_gui, "", s:yabab14_term, "", "", "")
call s:hi("GitGutterChange", s:yabab13_gui, "", s:yabab13_term, "", "", "")
call s:hi("GitGutterChangeDelete", s:yabab11_gui, "", s:yabab11_term, "", "", "")
call s:hi("GitGutterDelete", s:yabab11_gui, "", s:yabab11_term, "", "", "")

" davidhalter/jedi-vim
call s:hi("jediFunction", s:yabab4_gui, s:yabab3_gui, "", s:yabab3_term, "", "")
call s:hi("jediFat", s:yabab8_gui, s:yabab3_gui, s:yabab8_term, s:yabab3_term, "bold,underline", "")

" NERDTree
" > scrooloose/nerdtree
call s:hi("NERDTreeExecFile", s:yabab7_gui, "", s:yabab7_term, "", "", "")
hi! link NERDTreeDirSlash Keyword
hi! link NERDTreeHelp Comment

" CtrlP
" > ctrlpvim/ctrlp.vim
hi! link CtrlPMatch Keyword
hi! link CtrlPBufferHid Normal

"+--- Languages ---+
" JavaScript
" > pangloss/vim-javascript
call s:hi("jsGlobalNodeObjects", s:yabab8_gui, "", s:yabab8_term, "", "italic", "")
call s:hi("jsFuncArgs", s:yabab12_gui, "", s:yabab12_term, "", "", "")
call s:hi("jsObjectKey", s:yabab8_gui, "", s:yabab8_term, "", "", "")
call s:hi("jsDecorator", s:yabab9_gui, "", s:yabab9_term, "", "", "")
call s:hi("jsDecoratorFunction", s:yabab9_gui, "", s:yabab9_term, "", "", "")
call s:hi("jsFunction", s:yabab9_gui, "", s:yabab9_term, "", "", "")
hi! link jsBrackets Delimiter
hi! link jsFuncCall Function
hi! link jsFuncParens Delimiter
hi! link jsNoise Delimiter
hi! link jsPrototype Keyword
hi! link jsRegexpString SpecialChar

call s:hi("typescriptDecorators", s:yabab12_gui, "", s:yabab12_term, "", "", "")
"call s:hi("typescriptClassName", s:yabab12_gui, "", s:yabab12_term, "", "", "")
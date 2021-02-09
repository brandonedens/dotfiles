" Vim color file
" Original Maintainer:  Lars H. Nielsen (dengmao@gmail.com)
" Last Change:  2010-07-23
"
" Modified version of wombat for 256-color terminals by
"   David Liang (bmdavll@gmail.com)
" based on version by
"   Danila Bespalov (danila.bespalov@gmail.com)
"
" Modified by Brandon Edens

set background=dark

if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

let colors_name = "be256"

" General colors
hi Normal		ctermfg=248		ctermbg=016		cterm=none		guifg=#e3e0d7	guibg=#000000	gui=none
hi Cursor		ctermfg=234		ctermbg=199		cterm=none		guifg=#242424	guibg=#da70d6	gui=none
hi Visual		ctermfg=251		ctermbg=017		cterm=none		guifg=#c3c6ca	guibg=#00005f	gui=none
hi VisualNOS	ctermfg=251		ctermbg=236		cterm=none		guifg=#c3c6ca	guibg=#303030	gui=none
hi Search		ctermfg=177		ctermbg=241		cterm=none		guifg=#d787ff	guibg=#636066	gui=none
hi Folded		ctermfg=103		ctermbg=237		cterm=none		guifg=#a0a8b0	guibg=#2a3036	gui=none
hi Title		ctermfg=230						cterm=bold		guifg=#ffffd7					gui=bold
hi StatusLine	ctermfg=230		ctermbg=234		cterm=italic	guifg=#ffffd7	guibg=#444444	gui=italic
hi VertSplit	ctermfg=238		ctermbg=238		cterm=none		guifg=#444444	guibg=#444444	gui=none
hi StatusLineNC	ctermfg=241		ctermbg=234		cterm=none		guifg=#857b6f	guibg=#444444	gui=none
hi LineNr		ctermfg=235		ctermbg=232		cterm=none		guifg=#857b6f	guibg=#181818	gui=none
hi SpecialKey	ctermfg=233		ctermbg=232		cterm=none		guifg=#121212	guibg=#080808	gui=none
hi WarningMsg	ctermfg=203										guifg=#ff5f55
hi ErrorMsg		ctermfg=196		ctermbg=236		cterm=bold		guifg=#ff2026	guibg=#3a3a3a	gui=bold

" Vim >= 7.0 specific colors
if version >= 700
hi CursorLine					ctermbg=233		cterm=none						guibg=#12111f
hi MatchParen	ctermfg=228		ctermbg=101		cterm=bold		guifg=#eae788	guibg=#857b6f	gui=bold
hi Pmenu		ctermfg=230		ctermbg=238						guifg=#ffffd7	guibg=#444444
hi PmenuSel		ctermfg=232		ctermbg=192						guifg=#080808	guibg=#cae982
endif

" Diff highlighting
hi DiffAdd						ctermbg=17										guibg=#2a0d6a
hi DiffDelete	ctermfg=234		ctermbg=60		cterm=none		guifg=#242424	guibg=#3e3969	gui=none
hi DiffText						ctermbg=53		cterm=none						guibg=#73186e	gui=none
hi DiffChange					ctermbg=237										guibg=#382a37

"hi CursorIM
"hi Directory
"hi IncSearch
"hi Menu
"hi ModeMsg
"hi MoreMsg
"hi PmenuSbar
"hi PmenuThumb
"hi Question
"hi Scrollbar
"hi SignColumn
"hi SpellBad
"hi SpellCap
"hi SpellLocal
"hi SpellRare
"hi TabLine
"hi TabLineFill
"hi TabLineSel
"hi Tooltip
"hi User1
"hi User9
"hi WildMenu

hi SpellBad        term=reverse ctermfg=248 ctermbg=88 gui=undercurl guisp=Red
hi SpellCap        term=reverse ctermfg=248 ctermbg=57 gui=undercurl guisp=Blue
hi SpellRare       term=reverse ctermfg=248 ctermbg=13 gui=undercurl guisp=Magenta
hi SpellLocal      term=underline ctermfg=248 ctermbg=97 gui=undercurl guisp=Cyan


" Syntax highlighting
hi Keyword		ctermfg=111		cterm=none		guifg=#88b8f6	gui=none
hi Include		ctermfg=188		cterm=none		guifg=#777777	gui=none
hi Statement	ctermfg=132		cterm=none		guifg=#963c59	gui=none
hi Constant		ctermfg=111		cterm=none		guifg=#71bebe	gui=none
hi Number		ctermfg=174		cterm=none		guifg=#ef8171	gui=none
hi PreProc		ctermfg=240		cterm=none		guifg=#444444	gui=none
hi Function		ctermfg=192		cterm=none		guifg=#cae982	gui=none
hi Method		ctermfg=194		cterm=none		guifg=#cac982	gui=none
hi cMemberTag	ctermfg=194		cterm=none		guifg=#7a99e2	gui=none
hi Identifier	ctermfg=193		cterm=none		guifg=#eae982	gui=none
hi Type			ctermfg=108		cterm=none		guifg=#87af87	gui=none
hi Special		ctermfg=229		cterm=none		guifg=#eadead	gui=none
hi String		ctermfg=167		cterm=italic	guifg=#d36265	gui=italic
hi Character    ctermfg=168     cterm=italic    guifg=#e36265   gui=italic
hi Comment		ctermfg=061		cterm=italic	guifg=#7a7ab0	gui=italic
hi SpecialComment		ctermfg=062		cterm=italic	guifg=#7f7fb0	gui=italic
hi Todo			ctermfg=101		cterm=italic	guifg=#857b6f	gui=italic
hi Class		ctermfg=196		cterm=none		guifg=#cc7cc1	gui=none
hi cTypeTag		ctermfg=196		cterm=none		guifg=#cc7cc1	gui=none
" hi link cTypeTag Special
hi link cEnumTag Special
" hi link cPreProcTag Special
hi link cFunctionTag Function
" hi link cMemberTag Function

" hi GlobalVariable ctermfg=
" hi LocalVariable ctermfg=

hi DoxygenComment ctermfg=062	cterm=italic	guifg=#7a7ab0	gui=italic
hi DoxygenKeyword ctermfg=063	cterm=italic	guifg=#9a7ad0	gui=italic
hi javaCommentTitle ctermfg=062	cterm=italic	guifg=#4a9af0	gui=italic
hi javaDocTags 		ctermfg=062	cterm=italic	guifg=#9a4af0	gui=italic

" Links
hi! link FoldColumn		Folded
hi! link CursorColumn	CursorLine
hi! link NonText		LineNr

" Color Coded
hi default Member ctermfg=Cyan guifg=Cyan
hi default Variable ctermfg=219
hi default EnumConstant ctermfg=LightGreen guifg=LightGreen

hi link StructDecl Type
hi link UnionDecl Type
hi link ClassDecl Type
hi link EnumDecl Type


hi default link clampPrepro PreProc
hi default link clampDecl Identifier
hi default link clampRef Type
hi default link clampInclusionDirective cIncluded
hi default link clampMacroInstantiation Constant
hi default link clampVarDecl Identifier
hi default link clampStructDecl Identifier
hi default link clampUnionDecl Identifier
hi default link clampClassDecl Identifier
hi default link clampEnumDecl Identifier
hi default link clampParmDecl Identifier
hi default link clampFunctionDecl Identifier
hi default link clampFieldDecl Identifier
hi default link clampEnumConstantDecl Constant
hi default link clampDeclRefExprEnum Constant
hi default link clampDeclRefExprCall Type
hi default link clampMemberRefExprCall Type
hi default link clampMemberRefExprVar Type
hi default link clampTypeRef Type
hi default link clampNamespace Identifier
hi default link clampNamespaceRef Type
hi default link clampTemplateTypeParameter Identifier
hi default link clampTemplateNoneTypeParameter Identifier
hi default link clampTemplateRef Type
hi default link clampOccurrences IncSearch

hi default link clighterPrepro PreProc
hi default link clighterDecl Identifier
hi default link clighterRef Type
hi default link cligherInclusionDirective cIncluded
hi default link clighterMacroInstantiation Constant
hi default link clighterVarDecl Identifier
hi default link clighterStructDecl Identifier
hi default link clighterUnionDecl Identifier
hi default link clighterClassDecl Identifier
hi default link clighterEnumDecl Identifier
hi default link clighterParmDecl Identifier
hi default link clighterFunctionDecl Identifier
hi default link clighterFieldDecl Identifier
hi default link clighterEnumConstantDecl Constant
hi default link clighterDeclRefExprEnum Constant
hi default link clighterDeclRefExprCall Type
hi default link clighterMemberRefExprCall Type
hi default link clighterMemberRefExprVar Type
hi default link clighterTypeRef Type
hi default link clighterNamespace Identifier
hi default link clighterNamespaceRef Type
hi default link clighterTemplateTypeParameter Identifier
hi default link clighterTemplateRef Type
hi default link clighterOccurrences IncSearch

" vim:set ts=4 sw=4 noet:

" Vim syntax file
" Language: opium
" Maintainer: Ivan Pidhurskyi

if exists("b:current_syntax")
  finish
endif

set comments=:--,sr:(*,mb:*,ex:*)

set iskeyword+=?,'

syn keyword Statement begin end
syn match ethIdentifier /[a-zA-Z_][a-zA-Z0-9_]*[\'?]\?/
syn match ethFunction /[a-zA-Z_][a-zA-Z0-9_]*[\'?]\?(/me=e-1
hi link ethFunction Function
hi link ethIdentifier Normal

"syn match ethSymbol     /\<[A-Z][a-zA-Z0-9_]*\>/
syn match ethSymbol     /`[a-zA-Z0-9_]*\>/

"syn region ethModuleDef matchgroup=ethModule start=/\<module\>/ end=/\<end\>/ contains=TOP

"syn keyword ethUse use as

"syn region ethImplHead matchgroup=ethTrait start=/\<impl\>/ end=/\<end\>/ skipwhite skipnl contains=ethTraitName,ethStructName,ethImplTail,ethImplFor
"syn keyword ethImplFor for contained
"hi link ethImplFor ethTrait

"syn region ethImplTail start=/=/me=s-1 matchgroup=ethTrait end=/\<end\>/me=s-1 skipwhite skipnl contains=TOP contained

"syn match Special /@/

"syn region ethTraitWrap matchgroup=ethTrait start=/\<trait\>/ end=/\<end\>/ contains=ethTraitDef
"syn region ethTraitDef matchgroup=ethTraitName start=/\<\k\+\>/ matchgroup=ethTrait end=/\<end\>/me=s-1 skipwhite skipnl contains=TOP containedin=ethTraitWrap contained
"syn match ethTraitName /\k\+/ contained

"syn keyword ethStruct struct nextgroup=ethStructName skipwhite skipnl
"syn match   ethStructName /\k\+/ contained

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""'
" Builtins:
syn keyword ethBuiltinFunction pair? symbol? number? string? boolean? function? tuple? record? file? regexp? vector?

syn keyword ethBuiltinFunction to_number to_symbol
syn keyword ethBuiltinFunction list record object

syn keyword ethBuiltinFunction dump

syn keyword ethBuiltinFunction malloc calloc make_string
syn keyword ethBuiltinFunction len strlen
syn keyword ethBuiltinFunction cat join chr ord
syn keyword ethBuiltinFunction to_upper to_lower
syn keyword ethBuiltinFunction strstr strstr_opt
syn keyword ethBuiltinFunction strcmp strcasecmp
syn keyword ethBuiltinFunction substr
syn keyword ethBuiltinFunction malloc calloc
syn keyword ethBuiltinFunction chomp chop trim_left trim_right trim

syn keyword ethBuiltinFunction match gsub rev_split split

syn keyword ethBuiltinFunction car cdr
syn keyword ethBuiltinFunction first second third

syn keyword ethBuiltinFunction range linspace
syn keyword ethBuiltinFunction unfold_left unfold_right init
syn keyword ethBuiltinFunction fold_map fold_zip
syn keyword ethBuiltinFunction len rev_append append rev get
syn keyword ethBuiltinFunction rev_map map rev_map2 map2 rev_zip zip
syn keyword ethBuiltinFunction rev_mapi mapi
syn keyword ethBuiltinFunction iter iteri
syn keyword ethBuiltinFunction rev_filter_map filter_map
syn keyword ethBuiltinFunction rev_flat_map flat_map flatten
syn keyword ethBuiltinFunction rev_filter filter find find_opt index index_opt
syn keyword ethBuiltinFunction partition
syn keyword ethBuiltinFunction remove insert
syn keyword ethBuiltinFunction fold_left fold_right
syn keyword ethBuiltinFunction fold_left2 fold_right2
syn keyword ethBuiltinFunction reduce_left reduce_right
syn keyword ethBuiltinFunction reduce_left' reduce_right'
syn keyword ethBuiltinFunction rev_scan_left scan_left scan_right
syn keyword ethBuiltinFunction sort merge
syn keyword ethBuiltinFunction drop rev_take take
syn keyword ethBuiltinFunction any? all? member? memq?
syn keyword ethBuiltinFunction assoc assoc_opt assq assq_opt
syn keyword ethBuiltinFunction transpose
"syn keyword ethBuiltinFunction maximum minimum

syn keyword ethBuiltinFunction id flip const
syn keyword ethBuiltinFunction curry uncurry

syn keyword ethBuiltinFunction even? odd?
syn keyword ethBuiltinFunction min max minmax

syn keyword ethBuiltinFunction open_in open_out open_append
syn keyword ethBuiltinFunction open_pipe_in open_pipe_out
syn keyword ethBuiltinFunction open_string_in
syn keyword ethBuiltinFunction close
syn keyword ethBuiltinFunction input print print_to eprint

syn keyword ethBuiltinFunction die raise exit
syn keyword ethBuiltinFunction system
syn keyword ethBuiltinFunction rand srand
syn keyword ethBuiltinFunction load load_stream load_string create_env require
syn keyword ethBuiltinFunction failure invalid_argument type_error

" IO library
syn keyword ethBuiltinFunction printf eprintf fprintf format
syn keyword ethBuiltinFunction shell
syn keyword ethBuiltinFunction write_to write
syn keyword ethBuiltinFunction read_line read_line_opt
syn keyword ethBuiltinFunction read_line_of read_line_of_opt
syn keyword ethBuiltinFunction read read_of
syn keyword ethBuiltinFunction read_i8_of read_i16_of read_i32_of read_i64_of
syn keyword ethBuiltinFunction read_u8_of read_u16_of read_u32_of read_u64_of
syn keyword ethBuiltinFunction read_f32_of read_f64_of
syn keyword ethBuiltinFunction write_i8_to write_i16_to write_i32_to write_i64_to
syn keyword ethBuiltinFunction write_u8_to write_u16_to write_u32_to write_u64_to
syn keyword ethBuiltinFunction write_f32_to write_f64_to
syn keyword ethBuiltinFunction read_opt read_of_opt
syn keyword ethBuiltinFunction read_file
syn keyword ethBuiltinFunction tell seek flush

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Base:
"syn keyword Function sin cos tan
"syn keyword Function asin acos atan atan2
"syn keyword Function sinh cosh tanh
"syn keyword Function asinh acosh atanh
"syn keyword Function floor ceil trunc round
"syn keyword Function sqrt cbrt
"syn keyword Function finite nan?
"syn keyword Function min max
"syn keyword Function hypot abs
"syn keyword Function log log10 log2
"syn keyword Function table
"syn keyword Function substr strstr ltrim rtrim trim
"syn keyword Function read readline readlines flush rewind getpos setpos
"syn keyword Function scanl
"syn keyword Function repeat iterate
"syn keyword Function unfold
"syn keyword Function zero? positive? negative?
"syn keyword Function split join

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""'
" Miscelenious:
syn keyword Special command_line

syn keyword PreCondit defined

"syn region ethOf matchgroup=StorageClass start=/\<of\>/ matchgroup=ethType end=/\k\+\>/ skipwhite skipnl contains=ethSymbol,ethIdentifier

"syn match ethModule /\<[A-Z][a-zA-Z0-9_]*\s*\./he=e-1 nextgroup=ethModule,ethMember
"syn match ethMember /\<[a-z_][a-zA-Z0-9_]*['?]?\>/

syn match Special /\<_\>/

syn keyword ethType fn

syn region ethBraces matchgroup=Delimiter start=/(/ end=/)/ contains=TOP skipwhite skipnl

syn region ethBlock matchgroup=Delimiter start=/{/ end=/}/ contains=TOP skipwhite skipnl
syn region ethList matchgroup=Type start=/\[/ end=/\]/ skipwhite skipnl contains=TOP
syn region ethArray matchgroup=Type start=/\[\s*|/ end=/|\s*\]/ skipwhite skipnl contains=TOP

syn keyword StorageClass pub mut
syn keyword Special __builtin __deprecated

syn match ethDelimiter /[,;]/
syn region ethRoundBraces matchgroup=ethDelimiter start=/(/ end=/)/ contains=TOP

" open:
syn keyword ethKeyword open import
"syn region ethOpen matchgroup=ethKeyword start=/\<open\>/ end=/\<in\>/ contains=ethDelimiter,ethIdentifier
"syn region ethOpen matchgroup=ethKeyword start=/\<open\>/ matchgroup=ethModule skip=/[A-Z]\k*\./ end=/[A-Z]\k*/ skipnl skipwhite contains=ethModuleName
"syn region ethUsing matchgroup=ethKeyword start=/\<using\>/ matchgroup=ethModule skip=/[A-Z]\k*\./ end=/[A-Z]\k*/ skipnl skipwhite nextgroup=ethAs contains=ethModuleName
"syn match ethModuleName /[A-Z]\k*/ contained
"hi link ethModuleName ethModule
  "contains=ethIdentifier
"syn region ethAs matchgroup=ethKeyword start=/\<as\>/ matchgroup=ethModule end=/[A-Z]\k*/ containedin=NOWHERE
"syn keyword ethUsingAs as contained
"hi link ethUsingAs ethKeyword

syn match ethKeyword /\<let\>/
syn match ethConditional /\<if\%(\s\+let\)\?\>/
syn match ethConditional /\<when\%(\s\+let\)\?\>/
syn region ethTryWith matchgroup=ethException start=/\<try\>/ end=/\<with\>/ contains=TOP skipwhite skipnl
"syn region ethMatch matchgroup=ethConditional start=/\<case\>/ end=/\<of\>/ contains=TOP skipwhite skipnl
syn match ethConditional /\<then\>/
syn match ethConditional /\<else\>/

syn keyword Special self
"syn region ethObject matchgroup=ethKeyword start=/\<object\>/ end=/\<end\>/ contains=TOP skipnl skipwhite
"syn keyword ethMethod method contained containedin=ethObject
"hi link ethMethod Keyword
"syn keyword ethInherit inherit contained containedin=ethObject
"hi link ethInherit Keyword
"syn keyword ethVal val contained containedin=ethObject

hi link ethVal Keyword
syn keyword ethKeyword rec and or in as with
syn keyword ethConditional unless otherwize
syn keyword ethAssert assert
syn keyword ethReturn return

syn keyword ethLazy lazy

syn keyword Repeat do

syn keyword ethNil nil
syn keyword ethBoolean true false
syn keyword ethConstant stdin stdout stderr

syn match ethLambda /\\/
syn match ethLambda /->/

"syn match ethTableRef /::/ nextgroup=ethKey
"syn match ethKey /\k\+/ contained

syn match Keyword /![^=]/
syn match ethOperator /[-+=*/%><&|.!^~∘#]\+/
syn match ethOperator /:\|\$/
syn keyword ethOperator eq not mod land lor lxor lshl lshr ashl ashr lnot
syn match ethOperator /\<is\>/
syn match ethOperator /\<is\s\+of\>/

syn region ethTable matchgroup=Type start=/#{/ end=/}/ contains=TOP skipwhite skipnl
syn region ethTable matchgroup=Type start=/[[:alpha:]][[:alnum:]]*#{/ end=/}/ contains=TOP skipwhite skipnl
syn region ethTuple matchgroup=Type start=/#(/ end=/)/ contains=TOP skipwhite skipnl
syn region ethTuple matchgroup=Type start=/[[:alpha:]][[:alnum:]]*#(/ end=/)/ contains=TOP skipwhite skipnl
syn region ethEvalMacros matchgroup=Macro start=/@\s*(/ end=/)/ contains=TOP

syn region ethShebangComment start=/^#!/ end=/$/ contains=ethCommentLabel
syn region ethComment start=/--/ end=/$/ contains=ethCommentLabel
syn match ethCommentLabel /[A-Z]\w*:/ contained
hi link ethShebangComment Comment
hi link ethComment Comment

" Integer
"syn match Number '\<\d\+'
"syn match Number '0[xX][0-9a-fA-F]\+'
syn keyword Number inf nan
syn match Number /[0-9][0-9_]*\%(\.[0-9][0-9_]*\)\?\%([eE][-+]\?[0-9][0-9_]*\)\?/
syn match Number /0[xX][0-9a-fA-F][0-9a-fA-F_]*/

" String
syn region ethString start=/"/ skip=/\\"/ end=/"/ skipnl skipwhite contains=ethFormat
syn region ethString start=/'/ skip=/\\'/ end=/'/ skipnl skipwhite
syn region ethString matchgroup=ethQuote start=/{\z(\S\{-1,}\)|/ end=/|\z1}/ skipnl skipwhite keepend contains=ethFormat
"syn match ethQuote /{\S\{-1,}|/hs=s+1,he=e-1 contained containedin=ethStringQuote
"syn match ethQuote /|\S\{-1,}}/hs=s+1,he=e-1 contained containedin=ethStringQuote
"hi link ethStringQuote String
hi link ethString String
hi link ethQuote String

"syn region ethFormat matchgroup=opiSpecial start=/%{/ end=/}/ contained contains=TOP


" Help
syn region ethHelp start=/{\.help|/ end=/|\.help}/ skipnl skipwhite contains=ethHelpAux keepend
syn match ethHelpAux /{\.help|/hs=s+1,he=e-1 contained
syn match ethHelpAux /|\.help}/hs=s+1,he=e-1 contained
"hi link ethHelpDelim SpecialComment
hi link ethHelp SpecialComment
hi link ethHelpAux Underlined
" Regexp
syn region String matchgroup=ethRegexp start=-[[:space:]]\+/[^[:space:]]-hs=s+1,rs=e-1 skip=+\\/+ end=+/[a-zA-Z]*+ skipnl skipwhite
"hi link ethRegexp Type

" Inline expression
syn region ethFormat matchgroup=ethSpecial start=/{/ end=/}/ contained contains=TOP
syn match SpecialChar /\\{/ containedin=ethString

syn keyword Identifier _

"syn match  SpecialChar /\\\d\+/ containedin=ethSrPattern1,ethSrPattern2,ethSrPattern3 contained
"hi link ethSrPattern1 String
"hi link ethSrPattern2 String
"hi link ethSrPattern3 String

" Special characters
syn match ethSpecial /\\$/ containedin=String contained
syn match SpecialChar "\\a" containedin=String contained
syn match SpecialChar "\\b" containedin=String contained
syn match SpecialChar "\\e" containedin=String contained
syn match SpecialChar "\\f" containedin=String contained
syn match SpecialChar "\\n" containedin=String contained
syn match SpecialChar "\\r" containedin=String contained
syn match SpecialChar "\\t" containedin=String contained
syn match SpecialChar "\\v" containedin=String contained
syn match SpecialChar "\\?" containedin=String contained
syn match SpecialChar "\\%" containedin=String contained
syn match SpecialChar "\\x[0-9a-fA-F]\{1,2}" containedin=String contained



hi link ethModule Identifier
"hi link ethUse Define

"hi link ethStruct     StorageClass
"hi link ethStructName Type

hi link ethTrait      Structure
hi link ethTraitName  StorageClass
hi link ethStruct     Structure
hi link ethStructName StorageClass

hi link ethSpecial Special

hi link ethKeyword Statement
hi link ethConditional Conditional
hi link ethException Exception

hi link ethAssert Keyword
hi link ethReturn Keyword
hi link ethLazy Keyword

hi link ethType Type
hi link ethDef Type
hi link ethLambda Operator
hi link ethOperator Operator
hi link ethDelimiter Delimiter
hi link ethConditional Conditional
hi link ethNil Constant
hi link ethBoolean Boolean
hi link ethConstant Constant
hi link ethSymbol Constant

hi link ethKey Identifiers
hi link ethTableRef SpecialChar

hi link ethCommentLabel Comment

hi link ethQq Keyword

hi link ethBuiltinFunction Function
"hi link ethIdentifier Identifier

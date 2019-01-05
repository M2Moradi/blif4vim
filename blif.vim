" Vim syntax file
" Language:	BLIF
" Maintainer:	MMS <mohammadmoradishahmiri@gmail.com>
" Last Update:  Wed Jul 20 16:04:19 PDT 2011

" quit when a syntax file was already loaded
if exists("b:current_syntax")
   finish
endif

" Set the local value of the 'iskeyword' option.
" NOTE: '?' was added so that BLIFNumber would be processed correctly when
"       '?' is the last character of the number.
"setlocal iskeyword=@,48-57,63,_,192-255

" A bunch of useful Verilog keywords

syn keyword BLIFStatement   .model .inputs .outputs .clock .end
syn keyword BLIFStatement   .names .exdc .subckt .latch
syn keyword BLIFStatement   .gate .mlatch .search .i .o .p .s .t
syn keyword BLIFStatement   .start_kiss .end_kiss .latch_order
syn keyword BLIFStatement   .code .cycle .clock_event
syn keyword BLIFStatement   .area .delay .wire_load_slope
syn keyword BLIFStatement   .wire .input_arrival .default_input_arrival
syn keyword BLIFStatement   .output_required .default_output_required
syn keyword BLIFStatement   .input_drive .default_input_drive .max_input_load
syn keyword BLIFStatement   .default_max_input_load .output_load
syn keyword BLIFStatement   .default_output_load
"syn keyword BLIFConditional if else case casex casez default endcase
"syn keyword BLIFRepeat      forever repeat while for

syn keyword BLIFTodo contained TODO FIXME

syn match   BLIFOperator "[&|~><!)(*#%@+/=?:;}{,.\^\-\[\]]"

syn region  BLIFComment start="/\*" end="\*/" contains=verilogTodo,@Spell
syn match   BLIFComment "//.*" contains=verilogTodo,@Spell

"syn match   BLIFGlobal "`[a-zA-Z0-9_]\+\>"
syn match BLIFGlobal "`celldefine"
syn match BLIFGlobal "`default_nettype"
syn match BLIFGlobal "`define"
syn match BLIFGlobal "`else"
syn match BLIFGlobal "`elsif"
syn match BLIFGlobal "`endcelldefine"
syn match BLIFGlobal "`endif"
syn match BLIFGlobal "`ifdef"
syn match BLIFGlobal "`ifndef"
syn match BLIFGlobal "`include"
syn match BLIFGlobal "`line"
syn match BLIFGlobal "`nounconnected_drive"
syn match BLIFGlobal "`resetall"
syn match BLIFGlobal "`timescale"
syn match BLIFGlobal "`unconnected_drive"
syn match BLIFGlobal "`undef"
syn match BLIFGlobal "$[a-zA-Z0-9_]\+\>"

syn match BLIFConstant "\<[A-Z][A-Z0-9_]\+\>"

syn match BLIFNumber "\(\<\d\+\|\)'[sS]\?[bB]\s*[0-1_xXzZ?]\+\>"
syn match BLIFNumber "\(\<\d\+\|\)'[sS]\?[oO]\s*[0-7_xXzZ?]\+\>"
syn match BLIFNumber "\(\<\d\+\|\)'[sS]\?[dD]\s*[0-9_xXzZ?]\+\>"
syn match BLIFNumber "\(\<\d\+\|\)'[sS]\?[hH]\s*[0-9a-fA-F_xXzZ?]\+\>"
syn match BLIFNumber "\<[+-]\=[0-9_]\+\(\.[0-9_]*\|\)\(e[0-9_]*\|\)\>"

syn region BLIFString start=+"+ skip=+\\"+ end=+"+ contains=verilogEscape,@Spell
syn match  BLIFEscape +\\[nt"\\]+ contained
syn match  BLIFEscape "\\\o\o\=\o\=" contained

" Directives
syn match   BLIFDirective   "//\s*synopsys\>.*$"
syn region  BLIFDirective   start="/\*\s*synopsys\>" end="\*/"
syn region  BLIFDirective   start="//\s*synopsys dc_script_begin\>" end="//\s*synopsys dc_script_end\>"

syn match   BLIFDirective   "//\s*\$s\>.*$"
syn region  BLIFDirective   start="/\*\s*\$s\>" end="\*/"
syn region  BLIFDirective   start="//\s*\$s dc_script_begin\>" end="//\s*\$s dc_script_end\>"

"Modify the following as needed.  The trade-off is performance versus
"functionality.
syn sync minlines=50

" Define the default highlighting.
" Only when an item doesn't have highlighting yet

" The default highlighting.
hi def link BLIFCharacter       Character
hi def link BLIFConditional     Conditional
hi def link BLIFRepeat          Repeat
hi def link BLIFString          String
hi def link BLIFTodo            Todo
hi def link BLIFComment         Comment
hi def link BLIFConstant        Constant
hi def link BLIFLabel           Label
hi def link BLIFNumber          Number
hi def link BLIFOperator        Special
hi def link BLIFStatement       Statement
hi def link BLIFGlobal          Define
hi def link BLIFDirective       SpecialComment
hi def link BLIFEscape		 Special


let b:current_syntax = "BLIF"

" vim: ts=8

so $VIMRUNTIME/syntax/javascript.vim

syn keyword actionScriptType             prototype
hi def link actionScriptType              Type

syn region actionScriptFlasm start=+\s*(\s*\$flasm\s*)\s*{+ end=+}+ contains=startFlasm,javaScriptLineComment,flasmStatementDelim

syn match  startFlasm /\$flasm/ 
hi def link startFlasm              PreProc

syn region  actionScriptFlasmStatement     matchgroup=flasmStatementDelim start=+"+  skip=+\\\\\|\\"+  end=+"+  containedin=actionScriptFlasm contains=flasmKeyword,flasmConstant,flasmRegister contained 
syn region  actionScriptFlasmStatement2     matchgroup=flasmStatementDelim start=+'+  skip=+\\\\\|\\'+  end=+'+  containedin=actionScriptFlasm contains=flasmKeyword,flasmConstant,flasmRegister contained 

hi def link flasmStatementDelim              Special

syn region  flasmString     start=+"+   end=+"+  containedin=actionScriptFlasmStatement2 contained keepend
syn region  flasmString     start=+'+   end=+'+  containedin=actionScriptFlasmStatement contained keepend
hi def link flasmString              String

syn keyword flasmKeyword          true false add and bitwiseAnd bitwiseOr bitwiseXor branch branchIfTrue callFrame callFunction callMethod chr concat constants decrement delete delete2 divide dup duplicateClip else enumerate equals getMember getProperty getTimer getVariable getUrl getUrl2 gotoAndPlay gotoAndStop gotoFrame gotoLabel hexdata increment initArray initObject int lessThan mbChr loadMovie loadMovieNum loadVariables loadVariablesNum mbLength mbOrd mbSubstring modulo multiply nextFrame new newMethod not oldAdd oldEquals oldLessThan or ord play pop prevFrame push random removeClip return setMember setProperty setRegister setVariable shiftLeft shiftRight shiftRight2 skip startDrag stop stopDrag stopSounds stringEq stringLength stringLessThan substring subtract swap swfAction targetPath toggleQuality toNumber toString trace typeof var varEquals waitForFrame waitForFrameExpr contained
hi def link flasmKeyword              Statement

syn keyword flasmConstant           null NULL
hi def link flasmConstant            Constant

syn match flasmRegister           /r\:[0-3]/
hi def link flasmRegister            Identifier


"containedin=xmlTag contains=xmlAttrib,xmlEqual,lzxScriptAttribute,lzxAttributeQuote contained


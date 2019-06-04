" Vim syntax file
" Language: Cerner Command Language (CCL)
" By: stepheku
" Latest Revision: 2017-05-18

if exists ("b:current_syntax")
    finish
endif

let b:current_syntax = "ccl"

syntax case ignore
" Keywords
syn keyword queryKeywords and by commit delete dummyt from group insert into join left maxrec merge none not or order outerjoin plan rdb rollback select seq union update where with
syn keyword functionKeywords ABS AESDECRYPT AESDECRYPTFILE AESENCRYPT AESENCRYPTFILE ALTER ALTER2 ALTERLIST ASIS ASSIGN ASSIGN2 ASSIGN3 AVG BAND BLOBGET BLOBGETLEN BNOT BOR BTEST BUILD BUILD2 BUILD2CHK BXOR CALCPOS CALLPRG CCLFMT CCLIO CEIL CHAR CHECK CHECKDIC CHECKFUN CHECKPRG CHECKQUEUE CNVTACC CNVTAGE CNVTAGE2 CNVTAGEDATETIME CNVTALIAS CNVTALPHANUM CNVTB10B16 CNVTB10B36 CNVTB16B10 CNVTB36B10 CNVTBOOL CNVTCAP CNVTDATE CNVTDATE2 CNVTDATETIME CNVTDATETIME2 CNVTDATETIMERDB CNVTDATETIMEUTC CNVTDATETIMEUTC2 CNVTHEXRAW CNVTINT CNVTJSONTOREC CNVTLOOKAHEAD CNVTLOOKBEHIND CNVTLOWER CNVTMIN CNVTMIN2 CNVTNLS CNVTNLSSORT CNVTPHONE CNVTRAWHEX CNVTREAL CNVTRECTOJSON CNVTRECTOXML CNVTSTRING CNVTSTRINGCHK CNVTTIME CNVTTIME2 CNVTTIMESTAMP CNVTUPPER CNVTXMLTOREC CONCAT COST COUNT CUBE CURCODECOVER CURFILE CURLOCALE CURPROG DATETIMEADD DATETIMECMP DATETIMECMPUTC DATETIMEDIFF DATETIMEFIND DATETIMEPART DATETIMETRUNC DATETIMEZONE DATETIMEZONEBYINDEX DATETIMEZONEBYNAME DATETIMEZONEFORMAT DATETIMEZONEUTC DAY DECODE ECHO ECHORECORD ECHOJSON ECHOXML ERROR EVALUATE EVALUATE2 EVEN EXP EXPAND FILLSTRING FINDFILE FINDSTRING FLOOR FORMAT GREATEST HOUR ICHAR INITARRAY INITREC ISNUMERIC JULIAN LEAST LIST LOCATEVAL LOCATEVALSORT LOG LOG10 LOGICAL MAX MAXREC MAXVAL MEDIAN MEMALLOC MEMFREE MEMREALLOC MIN MINUTE MINVAL MOD MODCHECK MODIFY MONTH MOVEREC MOVERECLIST MOVESTRING NEGATE NOPATSTRING NORDBBIND NOTRIM NULL NULLCHECK NULLIND NULLTERM NULLVAL OPERATOR OUTERJOIN PARAMETER PARAMETER2 PARSER PATSTRING PERCENT PERCENTILE PIECE PROXYUSER RAND RDBBIND REFLECT REMOVE RENAMEREC REPLACE REPORTINFO REPORTMOVE REPORTROW ROLLUP ROUND SELECTIVITY SEQ SIZE SORT SORTSEARCH SOUND SOUNDEX SQLPASSTHRU STDDEV SUBSTRING SUM TDBEXECUTE TEXT TEXTLEN TRACE TRIM TRIMBIND TYPE VALIDATE VALUE VARIANCE WEEKDAY WTMODCHECK YEAR UAR_GET_CODE_BY UAR_GET_CODE_DESCRIPTION UAR_GET_CODE_DISPLAY UAR_GET_CODE_MEANING UAR_GET_MEANING_BY_CODESET UAR_RTF UAR_RTF2 UAR_RTF3 UAR_OCF_UNCOMPRESS UAR_CLOSEHANDLE UAR_CREATEPROPLIST UAR_SETPROPSTRING UAR_TIMER_CREATE UAR_TIMER_DESTROY UAR_TIMER_STOP
syn keyword directivesKeywords %B %C %#DEFINE %D %E %#ELSE %#ENDIF %H %#IFDEF %#IFNDEF %I %J %K %L %M %O %P %R %S %T %#UNDEF %V
syn keyword commandKeywords call case create declare define drop else elseif end endcase endfor endif endmacro endwhile execute for free go if of program range record return set subroutine to translate while
syn keyword reservedKeywords CURACCEPT CURBATCH CURBEDROCK CURCCLREV CURCCLVER CURCLIENTID CURCLK CURDATE CURDOMAIN CURECHO CURENDREPORT CURENV CURGROUP CURHELP CURIMAGE CURLOCALE CURMEM CURNETDOMAIN CURNODE CURPAGE CURPRCNAME CURPROG CURQUAL CURRDB CURRDBACCESS CURRDBHANDLE CURRDBLINK CURRDBNAME CURRDBOPT CURRDBSYS CURRDBUSER CURRETURN CURREV CURREVHNAM CURREVMINOR CURREVMINOR2 CURSCROLL CURSERVER CURSOURCE CURSYS CURSYS2 CURTIME CURTIME2 CURTIME3 CURTIMEZONE CURTIMEZONEAPP CURTIMEZONEDEF CURTIMEZONESYS CURUSER CURUTC CURUTCDIFF CURWORK null SYSDATE SYSTIMESTAMP

hi def link queryKeywords Statement
hi def link functionKeywords Function
hi def link directivesKeywords Statement
hi def link commandKeywords Statement
hi def link reservedKeywords Statement
hi def link variableTypes Statement

" Matches
syn match celComment ";.*$"
syn match operatorKeyword "\v\*"
syn match operatorKeyword "\v/"
syn match operatorKeyword "\v\+"
syn match operatorKeyword "\v-"
syn match operatorKeyword "\v\?"
syn match operatorKeyword "\v\*\="
syn match operatorKeyword "\v/\="
syn match operatorKeyword "\v\+\="
syn match operatorKeyword "\v-\="

hi def link celComment Comment
hi def link operatorKeyword Operator

" Regions
syn region CommentBlock start="/\*" end="\*/"
syn region StringBlock start=/\v"/ skip=/\v\\./ end=/\v"/

hi def link CommentBlock Comment
hi def link StringBlock String

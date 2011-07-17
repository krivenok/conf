" File encoding settings
"if v:lang =~ "^ko"
"   set fileencodings=euc-kr
"   set guifontset=-*-*-medium-r-normal--16-*-*-*-*-*-*-*
"elseif v:lang =~ "^ja_JP"
"   set fileencodings=euc-jp
"   set guifontset=-misc-fixed-medium-r-normal--14-*-*-*-*-*-*-*
"elseif v:lang =~ "^zh_TW"
"   set fileencodings=big5
"   set guifontset=-sony-fixed-medium-r-normal--16-150-75-75-c-80-iso8859-1,-taipei-fixed-medium-r-normal--16-150-75-75-c-160-big5-0
"elseif v:lang =~ "^zh_CN"
"   set fileencodings=gb2312
"   set guifontset=*-r-*
"endif

"if &term=="xterm"
"     set t_Co=8
"     set t_Sb=^[4%dm
"     set t_Sf=^[3%dm
"endif

"map <S-Insert> <MiddleMouse>
"map! <S-Insert> <MiddleMouse>

source ~/.vimrcs/general
source ~/.vimrcs/gui
source ~/.vimrcs/tabs
source ~/.vimrcs/spell
source ~/.vimrcs/plugins
source ~/.vimrcs/devel

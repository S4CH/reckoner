%{
#include "calc.tab.h"

extern YYSTYPE yylval;
%}

%%
[0-9]+  { yylval.ival = atoi(yytext); return INTEGER; } 
([0-9]+)(\.[0-9]+)  { yylval.dval= atof(yytext); return DECIMAL; } 
sin {return SIN;}
cos {return COS;}
tan {return TAN;}
"^" {return POW;}
log {return LOG;}
exp {return EXP;}
! {return FAC;}
[a-zA-Z]  {yylval.id = yytext[0]; return ID;}
[ \t]  ;
"$" {return 0;}
\n | 
.   return yytext[0];
%%
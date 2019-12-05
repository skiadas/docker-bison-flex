%option noyywrap

%{
#include <stdio.h>

#define YY_DECL int yylex()

#include "expr.tab.h"

%}

%%

[ \t] ; // ignore all whitespace
[0-9]+      {yylval = atoi(yytext); return NUM;}
\n       {return '\n';}
"+"      {return '+';}
"-"      {return '-';}
"*"      {return '*';}
"("      {return '(';}
")"      {return ')';}

%%


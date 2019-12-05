/* Infix notation calculator. */

%{
  #include <math.h>
  #include <stdio.h>
  int yylex (void);
  void yyerror (char *s);
%}

/* Bison declarations. */
%token NUM

%% /* The grammar follows. */

input:
  %empty
| input line
;

line:
  '\n'
| expr '\n'  { printf ("\t%d\n", $1); }
;

expr:
   NUM              { $$ = $1; }
|  expr '+' expr    { $$ = $1 + $3; }
|  expr '*' expr    { $$ = $1 * $3; }
;

%%

void main(int argc, char **argv) {
  yyparse();
}

void yyerror(char *s) {
  fprintf(stderr, "error: %s\n", s);
}

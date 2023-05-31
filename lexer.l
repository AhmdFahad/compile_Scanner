%{
#include <stdio.h>
%}

%%

[0-9]+(\.[0-9]+)?   { printf("NUMBER: %s\n", yytext); }
[+\-*/]             { printf("OPERATOR: %s\n", yytext); }
\(                  { printf("Left Bracket:  %s\n", yytext); }
\$                  { printf("Left Bracket:  %s\n", yytext); }
\)                  { printf("Right Bracket %s\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]*  { printf("Variable: %s\n", yytext);  }
[ \t\n]             ;  // Ignore whitespace
.                   { printf("Invalid token: %s\n", yytext); }


%%

int main(void) {
    yylex();
    return 0;
}

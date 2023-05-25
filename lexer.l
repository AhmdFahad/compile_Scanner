%{
#include <stdio.h>
%}

%%

[0-9]+(\.[0-9]+)?   { printf("NUMBER: %s\n", yytext); }
[+\-*/]             { printf("OPERATOR: %s\n", yytext); }
[ \t\n]             ;  // Ignore whitespace
.                   { printf("Invalid token: %s\n", yytext); }

%%

int main(void) {
    yylex();
    return 0;
}

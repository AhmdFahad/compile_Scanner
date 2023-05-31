rm lex.yy.c
flex lexer.l
rm lexer
gcc -o lexer lex.yy.c -lfl
./lexer

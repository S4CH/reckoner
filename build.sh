flex calc.l

bison -d calc.y

gcc -o calc calc.tab.c lex.yy.c -ly -lm -lfl

./calc
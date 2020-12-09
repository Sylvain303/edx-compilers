tokenise: lex.yy.c Makefile
	gcc -o tokenise lex.yy.c


lex.yy.c: token.lex
	flex token.lex

test: tokenise
	echo -e " x=0;\n\twhile (x < 10) { \n \tx++; \n } " | ./tokenise


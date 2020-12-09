%{
#include <stdio.h>

int nb_W =0;
int nb_K =0;
int nb_O =0;
int nb_I =0;
int nb_N =0;
%}

%option noyywrap
%%

[\n\t ]+      { printf("W: '%s'\n", yytext); nb_W++; }
"while"       { printf("K: '%s'\n", yytext); nb_K++; }
[a-zA-Z1-9]+  { printf("I: '%s'\n", yytext); nb_I++; }
[0-9]+        { printf("N: '%s'\n", yytext); nb_N++; }
("++"|.)      { printf("O: '%s'\n", yytext); nb_O++; }

%%
int main()
{
	yylex();
	printf("W: %d; K = %d; I = %d; N = %d; O = %d;\n",
			nb_W, nb_K, nb_I, nb_N, nb_O);
}


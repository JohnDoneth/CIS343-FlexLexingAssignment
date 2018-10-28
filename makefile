run:
	flex main.lex
	clang lex.yy.c -lfl 

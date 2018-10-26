run:
	flex main.lex
	gcc lex.yy.c -lfl -L "C:/Program Files (x86)/GnuWin32/lib"  

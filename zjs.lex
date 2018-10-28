
%option yylineno

%{
    #include <stdio.h>
    void printLexeme();
%}
 
%%

END                     { printf("END\n");}
;                       { printf("END_STATEMENT\n");}
POINT                   { printf("POINT\n");}
LINE                    { printf("LINE\n");}
CIRCLE                  { printf("CIRCLE\n");}
RECTANGLE               { printf("RECTANGLE\n");}
SET_COLOR               { printf("SET_COLOR\n");} 
[-]?[1-9]([0-9]*)?      { printf("INT\n");}
[-]?([0-9]*[.])?[0-9]+  { printf("FLOAT\n");}
\n|\t|[ ]               ;
.                       { printf("Error! Invalid token '%s' on line %d\n", yytext, yylineno); }
 
%%

void printLexeme(){
    printf("(%s)\n", yytext);
}
 
int main(int argc, char** argv){
    yylex();
    return 0;
}


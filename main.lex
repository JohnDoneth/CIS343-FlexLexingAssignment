
%{
    #include <stdio.h>
    void printLexeme();
%}
 
%%
 
[0-9]         { printf("DIGIT\t"); printLexeme();}
[A-Za-z]      { printf("ALPHA_CHAR\t"); printLexeme();}
.|\n         ;
 
%%
void printLexeme(){
        printf("(%s)\n", yytext);
}
 
int main(int argc, char** argv){
  yylex();
  return 0;
}


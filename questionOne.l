%{
 #include<stdio.h>
/*global variables declarations*/
int i=0,totalsize;

%}

%%
([a-zA-Z0-9])+ {i++; totalsize=totalsize+yyleng;} /* Rule for counting 	number of words 
and the length of the file*/



%%

int main(int argc[],char *argv[])
{
 yyin=fopen("abc.txt", "r");/*open file to be analysed*/ 
 yylex();/*entry point for scanner*/

 printf("number of words: %d",i);/*print count of words*/
 printf("\n"); 
printf("length of file is: %d characters\n", totalsize);/* print length of file*/
 printf("\n");
 return 0;
}


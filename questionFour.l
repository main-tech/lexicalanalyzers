%{
 #include<stdio.h>
/*global variables declarations*/


%}

%%
is|am|are|were|was|be|being|been|do|does|did|will|would|should|can|could|has|have|had|go {printf("Accepted");
return 0;
} /* rule for accepting*/

[^"is""am""are""were""was""be""being""been""do""does""did""will""would""should""can""could""has""have""had""go"] printf("Not Accepted");return 0;

%%

int main(int argc[],char *argv[])
{

 yylex();/*entry point for scanner*/
;
 return 0;
}


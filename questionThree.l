/*. Accepts the English language words (without bothering for the meaning) and
replaces each occurrence of the string “abc” in it to “ABC”. */

%{ 
/* Definition section */
#include<string.h> 
void check(char *);/*function validate an english word*/
int i,occurrence=0,a; 
void occurrence_checker(char *,int a);/*fuction for checking occurence of substring "abc"*/
%} 

/* Rule Section */
%% 
[a-zA-Z0-9]+ check(yytext);occurrence_checker(yytext,yyleng); /**/
%% 

// driver code 
int main() 
{ 
	// The function that starts the analysis 
	yylex(); 
	return 0; 
} 
/*function definitions below*/
void check(char *str) /*function validate an english word*/
{ 
	/* fp as pointer 
	of File type */
	FILE *fp; 
	char temp[60]; 
	
	
	/* fp points to the file words.txt which has all english words
	and opens it in read mode */
	fp=fopen("words.txt", "r"); 
	while((fscanf(fp, "%s", temp))!=EOF) 
	{ 
		if(!(strcmp(temp, str))) 
		{ 
			printf("ACCEPTED\n"); 
			return; 
		} 



		
	} 
if(str=="abc")printf("ABC\n"); 	
else printf("NOT ACCEPTED\n"); 
		return; 
} 
void occurrence_checker(char *str,int a)/*fuction for checking occurence of substring "abc"*/
{
for(i=0;i<=a;i++)

{

if((str[i]=='a')&&(str[i+1]=='b')&&(str[i+2]=='c'))

{

str[i]='A';

str[i+1]='B';

str[i+2]='C';
occurrence=1;
if (occurrence==1)printf("%s",str);
}

}
}


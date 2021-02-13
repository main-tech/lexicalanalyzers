/*lex program to count number of different words*/
%{ 
#include<iostream>
#include<string.h>
#include <vector>
using namespace std;
#ifndef CONVERT_TO_STRING_
#define CONVERT_TO_STRING_
   string convertToString(char* a, int size) /*function definition for converting sequence of characters to string*/
{ 
    int i; 
    string s = ""; 
    for (i = 0; i < size; i++) { 
        s = s + a[i]; 
    } 
    return s; 
} 
#endif

int i = 0,matches=0,counter,counter2,different; 

 vector <string> word;
string a,b;
%} 

/* Rules Section*/
%% 
([a-zA-Z0-9])* {i++;/* Rule for counting number of words*/

               word.push_back(convertToString(yytext,yyleng));/*push occurence of word to vector string*/

} 

"\n" { /*count number of  differnt words in the string vector*/
different=0;
 for(int counter=0;counter<i;counter++)
    {
        for(int counter2=0;counter2<i;counter2++)
    {
string a=word[counter];
string b=word[counter2];

      if(a==b)
{
 matches=matches+1;
}

    }
  matches=matches-1;

if(matches==0)
{
different=different+1;
}
matches=0;
    }
 
cout << "Number of different words is: "<<different<<"\n";
different=0;
i=0;
return 0;
} 
 
%% 

int yywrap(void){} 

int main() 
{ 
	// The function that starts the analysis 
	yylex(); 

	return 0; 
} 


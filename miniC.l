%{

#include "y.tab.h"
#include <stdio.h>

int nbligne =1 ;
%}

%%
"/*" 				//COMMENTAIRES

"int"				{return INT;}
"float"				{return FLOAT;}
"char"				{return CHAR;}
"bool"				{return BOOL;}
"struct"			{return STRUCT;}
"while"				{return WHILE;}
"do"				{return DO;}
"for"				{return FOR;}
"if"				{return IF;}
"then"				{return THEN;}
"else"				{return ELSE;}
"switch"			{return SWITCH;}
"break"				{return BREAK;}
"return"			{return RETURN;}
"void"				{return VOID;}
"scanf"				{return SCANF;}
"printf"			{return PRINTF;}
"array"				{return ARRAY;}
"is"				{return IS;}
"var"				{return VAR;}
"true"				{return TRUE;}
"false"				{return FALSE;}


"+"					{return '+';}
"-"					{return '-';}
"*"					{return '*';}
"/"					{return '/';}
"="					{return EGAL;}
":="				{return OPAFF;}
"=="				{return '==';}
"!="				{return '!=';}
"<="				{return INFEG;}
">="				{return SUPEG;}
"<"					{return INF;}
">"					{return SUP;}
"&&"				{return ET;}
"||"				{return OU;}
"("					{return PO;}
")"					{return PF;}
"["					{return CO;}
"]"					{return CF;}
";"					{return PV;}
","					{return VIRG;}
":"					{return DP;}
"{"                 {return ACCO;}
"}"                 {return ACCF;}
"\n"                {nbligne++;}

"'"[a-zA-Z]"'"						{return CAR;}	
0|[1-9][0-9]*						{return ENTIER;}
0|[1-9][0-9]*[.]0|[1-9][0-9]*		{return FL;}
[a-z][a-zA-Z0-9]* 					{return IDF;}
"""[^\"]*"""                       {return CHAMP;}

%%
 int yyeror(const char* s)
{
  fprintf(stderr,"Ligne: %d -ERREUR :%s\n",nbligne,s);
  }

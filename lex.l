%{
#include "y.tab.h"

int nbligne = 1;
%}

%%{

"fprintf"           {return FPRINTF;}
"printf"            {return PRINTF;}
"stdout"            {return STDOUT;}
"stderr"            { return STDERR;}
"switch"			{return SWITCH;}
"break"				{return BREAK;}
"case"				{return CASE;}
":"					{return DP;}
"struct"            {return STRUCT;}
"while"				{return WHILE;}
"for"               {return FOR;}
"if"                {return IF;}
"int"				{return INT;}
"float"				{return FLOAT;}
"char"				{return CHAR;}
"bool"				{return BOOL;}
"void"				{return VOID;}
"true"				{return TRUE;}
"false"				{return FALSE;}
"="					{return EGAL;}
"("					{return PO;}
")"					{return PF;}
";"					{return PV;}
","					{return V;}
"{"                 {return ACCO;}
"}"                 {return ACCF;}
"+"					{return PLUS;}
"-"					{return MOINS;}
"*"					{return MULT;}
"/"					{return DIV;}
"=="				{return EG;}
"!="				{return DIFF;}
"<="				{return INFEG;}
">="				{return SUPEG;}
"<"					{return INF;}
">"					{return SUP;}
"&&"				{return ET;}
"||"				{return OU;}
"++"                {return INCREM;}
"--"                {return DECREM;}
"["                 {return CROCHETO;}
"]"                 {return CROCHETF;}
" \" "              {return DQUOTE;}   
\"[^"]*\"           {return CHAMP;}
"\n"                {nbligne++;}

"'"[a-zA-Z]"'"						{return CAR;}	
0|[1-9][0-9]*						{return ENTIER;}
[0-9]*[.][0-9]*		                {return FL;}
[a-z][a-zA-Z0-9]* 					{return IDF;}

%%

int yyeror(const char* s)
{
  fprintf(stderr,"Ligne: %d -ERREUR :%s\n",nbligne,s);
  }

#include <stdlib.h>
#include <stdio.h>
#include "lexico.h"

#define MOD 30
#define	TAILLE 500



 int indice_lexico = 0;


int inserer_table_lexico(char l[])
{
	declaration[i].long = strlen(l);
	declaration[i].lexeme = strdup(l) ;
	declaration[i].suivant = -1;

	indice_lexico++;

}

 int hcode(char l[])
 {
 	int i,h=0;

 	for(i=0;i<strlen(l);i++)
 	{
 		h+=l[i];
 	}
 
 	return	h % MOD ;

}

  int* creer_tablh()
 {

 	int *tab = (int*)malloc(MOD*sizeof(int)),i;

 	for(i=0;i<MOD;i++)
 	{
 		tab[i] = -1 ;
 	}
 	
 	return tab;

}



int* creer_table_lexico()
{
	int *tab = (int*)malloc(TAILLE*sizeof(int)),i;
	for(i=0;i<n;i++)
	{	
		int long;
 		char lexeme[taille_lexeme];
 		int suivant ;
 	}

}
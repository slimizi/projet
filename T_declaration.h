#include <stdio>
#include <stdlib>

#define DEBORD 300
#define TAILLE 500


typedef enum Nature Nature
enum Nature
{
	T_BASE,T_STRUCT,T_TAB,T_VAR,T_PROC,T_FONC
};

struct cellule_dec
{
	Nature nature;
	int suiv;
	int region;
	int descr;
	// TYPE EXECUTION
};

typedef T_declaration *cellule_dec;


//Fonctions de gestion de la région
void init_region();
void incr_region();



void inserer(int indice,Nature n,int region, )


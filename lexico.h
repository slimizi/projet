
#define taille_lexeme 20

 typedef struct cellule
 {
 	int long;
 	char lexeme[taille_lexeme];
 	int suivant;
 
 }cellule;

typedef

 table_lexico *lexico = NULL;




 typedef struct table_declaration
 {
 	string nature;
 	int suivant;
 	int region ; 
 	int description ; 

 }table_declaration;

 table_declaration *declaration = NULL;



int inserer_table_lexico(char l[]);
 




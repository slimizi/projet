%{
	#include <stdio.h>
	#include <stdlib.h>
	#include "y.tab.h"
  #include  "lexico.h"



  extern int yyerror(const char* error);
  

  
%}

%token INT FLOAT CHAR BOOL VOID 
%token IDF
%token V PV PO PF ACCO ACCF EGAL DP DQUOTE
%token TRUE FALSE CAR FL ENTIER
%token ET OU 
%token INFEG SUPEG SUP INF EG DIFF
%token MULT DIV PLUS MOINS
%token IF FOR WHILE
%token INCREM DECREM
%token CROCHETO CROCHETF
%token STRUCT 
%token SWITCH CASE BREAK 
%token PRINTF FPRINTF CHAMP 
%token STDOUT STDERR
%%

	expcorrect : FONCTION { printf("L'expression est correcte!!! \n");}

	
  


  FONCTION : TYPEF IDF PO LPARAM PF ACCO DECLARATION INSTRUCTION ACCF  
			     ;


    TYPEF : INT
    	    | FLOAT
    	    | CHAR
    	    | BOOL
    	    | VOID
    	    ;

     

    LPARAM : UNPARAM
           | LPARAM V UNPARAM
           | 
           ;

    UNPARAM : TYPE IDF
            ;

    TYPE: INT
        | FLOAT
        | CHAR
        | BOOL
        ;


    DECLARATION : INT    SUITEIDF  PV  DECLARATION      
                | FLOAT  SUITEIDF AFFECFLOAT PV DECLARATION
				        | BOOL  SUITEIDF AFFECBOOL  PV  DECLARATION 
 				        | CHAR  SUITEIDF AFFECCHAR  PV  DECLARATION
                | STRUCTURE DECLARATION
                | 
                ;

    
    SUITEIDF :  UNIDF                         
             |  SUITEIDF V UNIDF
             ;

    UNIDF : IDF AFFECINT TAB
          ;

  



  CROCHET : CROCHETO CHOIX CROCHETF STRUCT
          ;

  
  STRUCTURE : STRUCT IDF ACCO DECLARATION ACCF
            ;

   

    TAB : CROCHET TAB
        |
        ;
  


    AFFECINT : EGAL  ENTIER
             | 
             ;

    AFFECFLOAT : EGAL FL
               |
               ;

    AFFECBOOL : EGAL TRUE
    	        | EGAL FALSE
    	        |
    	        ;

    AFFECCHAR : EGAL CAR
    		      |
              ;
 

   

    INSTRUCTION : SUITEIF  INSTRUCTION
                | SUITEFOR INSTRUCTION 
                | SUITEWHILE INSTRUCTION
                | SUITESWITCH INSTRUCTION
                | AFFICHAGE  INSTRUCTION
                | 
                ;

    AFFICHAGE : PRINTF PO CHAMP DEQUI PF PV
              | FPRINTF PO SORTIE CHAMP DEQUI PF PV
              ;


  SORTIE : STDOUT V
         | STDERR V
         ;   
          
  DEQUI : V IDF DEQUI
        |
        ;
          


    
    SUITEIF : IF PO LCONDITION  PF ACCO INSTRUCTION ACCF
            ;

    SUITEWHILE : WHILE PO LCONDITION PF ACCO INSTRUCTION ACCF
                ;

    SUITESWITCH : SWITCH PO IDF PF ACCO CHOIXCASE ACCF
                ;

    CHOIXCASE : CHOIXCASE CASE VALEUR DP INSTRUCTION BREAK PV
              |
              ;

    LCONDITION :  LCONDITION LOGIQUE UNECONDITION 
               |  UNECONDITION 
               ;

    
    UNECONDITION :  LIDF OPERATEUR LIDF 
                 |  LIDF
                 ;
   

    LIDF :  LIDF CALC LVALEUR  
         |  VALEUR
         ; 
          
    OPERATEUR : INFEG
              | SUPEG
              | INF
              | SUP
              | DIFF
              | EG
              ;

    LVALEUR : PO LVALEUR PF
            | VALEUR
            ;


    VALEUR : IDF
          | FL
          | CAR
          | TRUE
          | FALSE
          | ENTIER
          ;
   
    LOGIQUE : ET
            | OU
            ;

    

    CALC : MULT
         | PLUS
         | DIV
         | MOINS
         ;

   
  SUITEFOR : FOR PO IDF EGAL CHOIX PV IDF CONDI CHOIX PV IDF INCRE PF ACCO INSTRUCTION ACCF  

           ;


  CONDI:DIFF 
       |INF
       |INFEG
       |SUP
       |SUPEG
       ;

  CHOIX: IDF
        |ENTIER
        ;

 
INCRE : INCREM
      | DECREM
      ;






%%
	 
      
int main(void) {
  
  yyparse();

  inserer_table_lexico( l);
}

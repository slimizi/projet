CC = gcc

LEX = lex
YACC = yacc -d


test: y.tab.c lex.yy.o
	$(CC) -o test y.tab.c lex.yy.o -ly -ll

lex.yy.o: lex.yy.c
	$(CC) -c lex.yy.c

y.tab.c y.tab.h: projet.y
	$(YACC) projet.y

lex.yy.c: lex.l
	$(LEX) lex.l

clean:
	rm -f *.o lex.yy.c *.tab.* test

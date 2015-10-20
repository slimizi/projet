/* A Bison parser, made by GNU Bison 3.0.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2013 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    INT = 258,
    FLOAT = 259,
    CHAR = 260,
    BOOL = 261,
    VOID = 262,
    IDF = 263,
    V = 264,
    PV = 265,
    PO = 266,
    PF = 267,
    ACCO = 268,
    ACCF = 269,
    EGAL = 270,
    DP = 271,
    DQUOTE = 272,
    TRUE = 273,
    FALSE = 274,
    CAR = 275,
    FL = 276,
    ENTIER = 277,
    ET = 278,
    OU = 279,
    INFEG = 280,
    SUPEG = 281,
    SUP = 282,
    INF = 283,
    EG = 284,
    DIFF = 285,
    MULT = 286,
    DIV = 287,
    PLUS = 288,
    MOINS = 289,
    IF = 290,
    FOR = 291,
    WHILE = 292,
    INCREM = 293,
    DECREM = 294,
    CROCHETO = 295,
    CROCHETF = 296,
    STRUCT = 297,
    SWITCH = 298,
    CASE = 299,
    BREAK = 300,
    PRINTF = 301,
    FPRINTF = 302,
    CHAMP = 303,
    STDOUT = 304,
    STDERR = 305
  };
#endif
/* Tokens.  */
#define INT 258
#define FLOAT 259
#define CHAR 260
#define BOOL 261
#define VOID 262
#define IDF 263
#define V 264
#define PV 265
#define PO 266
#define PF 267
#define ACCO 268
#define ACCF 269
#define EGAL 270
#define DP 271
#define DQUOTE 272
#define TRUE 273
#define FALSE 274
#define CAR 275
#define FL 276
#define ENTIER 277
#define ET 278
#define OU 279
#define INFEG 280
#define SUPEG 281
#define SUP 282
#define INF 283
#define EG 284
#define DIFF 285
#define MULT 286
#define DIV 287
#define PLUS 288
#define MOINS 289
#define IF 290
#define FOR 291
#define WHILE 292
#define INCREM 293
#define DECREM 294
#define CROCHETO 295
#define CROCHETF 296
#define STRUCT 297
#define SWITCH 298
#define CASE 299
#define BREAK 300
#define PRINTF 301
#define FPRINTF 302
#define CHAMP 303
#define STDOUT 304
#define STDERR 305

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */

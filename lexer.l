%{
#include <iostream>
#include<string>
#include <cstring>
#include <cstdlib>
#include"y.tab.h"
using namespace std;

%}

EQUALS "="
PLUS "+"
MINUS "-"
MULTIPLY "*"
DIVIDE "/"
EQEQ "=="
NEQ "!="
G_THAN ">"
L_THAN "<"
G_EQ ">="
L_EQ "<="
AND "&&"
OR "||"
NOT "!"
IF if
DO do
FOR for
O_BRAC "("
C_BRAC ")"
OPEN_BRAC "{"
CLOSE_BRAC "}"
RETURN return
SEMICOLON [;]
QUOTE \'
Obrac "["
Cbrac "]"
THEN then
PERCENT "%"
MAIN main
ENDIF endif
ELSE else
WHILE while
SCAN scan
PRINT print
INT int
FLOAT float
CHAR char
VOID void
COMMA ,
SPECIAL_CHAR [!@#$%^&*_+=()]

LETTER  [a-zA-Z]
NUMBER  [0-9]
NUM [0-9]+
IDENTIFIER {LETTER}({LETTER}|{NUMBER})*
CHARACTER {QUOTE}({LETTER}|{NUMBER}|{SPECIAL_CHAR}){QUOTE}
WSPACE  [ \t\n]+



%option noyywrap
%option yylineno

%%

{CHARACTER} {     cout<<"CHARACTER ";
              strcpy(yylval.value.val,yytext);
                      return CHARACTER;
          }
{EQUALS}            { cout << "EQUALS ";
                        strcpy(yylval.value.val,yytext);
                      return EQUALS;
                     }
{PLUS}                {   cout << "PLUS ";
                            strcpy(yylval.value.val,yytext);
                          return PLUS;
                       }
{MINUS}                {    cout << "MINUS ";
                                strcpy(yylval.value.val,yytext);
                     return MINUS;  }
{MULTIPLY}            {      cout << "MULTIPLY ";
                              strcpy(yylval.value.val,yytext);
                     return MULTIPLY; }
{DIVIDE}            {     cout << "DIVIDE ";
                              strcpy(yylval.value.val,yytext);
                     return DIVIDE; }
{EQEQ}                {cout << "EQEQ ";
                              strcpy(yylval.value.val,yytext);
                     return EQEQ;  }
{NEQ}                {cout << "NEQ ";
                              strcpy(yylval.value.val,yytext);
                     return NEQ;  }
{G_THAN}            {cout << "G_THAN ";
                              strcpy(yylval.value.val,yytext);
                     return G_THAN;  }
{L_THAN}            {cout << "L_THAN ";
                              strcpy(yylval.value.val,yytext);
                     return L_THAN;  }
{G_EQ}                {cout << "G_EQ ";
                              strcpy(yylval.value.val,yytext);
                     return G_EQ;  }
{L_EQ}                {cout << "L_EQ ";
                              strcpy(yylval.value.val,yytext);
                     return L_EQ;  }
{AND}                {cout << "AND ";
                              strcpy(yylval.value.val,yytext);
                     return AND;  }
{OR}                {cout << "OR ";
                              strcpy(yylval.value.val,yytext);
                     return OR;  }
{NOT}                {cout << "NOT ";
                              strcpy(yylval.value.val,yytext);
                     return NOT;  }
{IF}                 {cout << "IF ";
                              strcpy(yylval.value.val,yytext);
                     return IF;  }
{DO}                 {cout << "DO ";
                              strcpy(yylval.value.val,yytext);
                     return DO;  }
{FOR}                 {cout << "FOR ";
                              strcpy(yylval.value.val,yytext);
                     return FOR;  }

{O_BRAC}            { cout << "O_BRAC ";
                              strcpy(yylval.value.val,yytext);
                     return O_BRAC;  }
{C_BRAC}            {cout << "C_BRAC ";
                              strcpy(yylval.value.val,yytext);
                     return C_BRAC;  }
{OPEN_BRAC}       {cout << "OPEN_BRAC ";
                              strcpy(yylval.value.val,yytext);
                     return OPEN_BRAC;  }
{CLOSE_BRAC}      { cout << "CLOSE_BRAC ";
                              strcpy(yylval.value.val,yytext);
                     return CLOSE_BRAC;  }
{RETURN}          {
                    cout << "RETURN ";
                              strcpy(yylval.value.val,yytext);
                     return RETURN;
                  }
{SEMICOLON}         { cout << "SEMICOLON ";
                              strcpy(yylval.value.val,yytext);
                     return SEMICOLON;  }
{THEN}                {cout << "THEN ";
                              strcpy(yylval.value.val,yytext);
                     return THEN;  }
{PERCENT}        {cout << "PERCENT ";
                              strcpy(yylval.value.val,yytext);
                     return PERCENT;  }
{MAIN}                {cout << "MAIN ";
                              strcpy(yylval.value.val,yytext);
                     return MAIN;  }
{ENDIF}                {cout << "ENDIF ";
                              strcpy(yylval.value.val,yytext);
                     return ENDIF;  }
{ELSE}                {cout << "ELSE ";
                              strcpy(yylval.value.val,yytext);
                     return ELSE;  }
{WHILE}                {cout << "WHILE ";
                              strcpy(yylval.value.val,yytext);
                     return WHILE;  }
{SCAN}            {cout << "SCAN ";
                              strcpy(yylval.value.val,yytext);
                     return SCAN;  }
{PRINT}            {cout << "PRINT ";
                              strcpy(yylval.value.val,yytext);
                     return PRINT;  }
{INT}            {cout << "INT ";
                              strcpy(yylval.value.val,yytext);
                 return INT;}
{VOID}            {cout << "VOID ";
                             strcpy(yylval.value.val,yytext);
                return VOID;}
{CHAR}            {cout << "CHAR ";
                              strcpy(yylval.value.val,yytext);
                 return CHAR;}
{COMMA}                {cout << "COMMA ";
                              strcpy(yylval.value.val,yytext);
                    return COMMA;}

{IDENTIFIER}                {cout << "IDENTIFIER ";
                              strcpy(yylval.value.val,yytext);
                     return IDENTIFIER; }
{NUM}                {cout << "NUM ";
                              strcpy(yylval.value.val,yytext);
                     return NUM;}
{WSPACE}            {;}
{Obrac}             {
                    cout << "Obrac ";
            strcpy(yylval.value.val,yytext);
          return Obrac;
          }
{Cbrac}             {
                    cout << "Cbrac ";
                  strcpy(yylval.value.val,yytext);
          return Cbrac;
          }




%%


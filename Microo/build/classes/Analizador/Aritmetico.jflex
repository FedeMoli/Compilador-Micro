package Analizador;

import java_cup.runtime.Symbol;
import java.lang.Character;

%%

%public

%class Scanner

%standalone

%cup

%line

%column

Identifier = [:jletter:] [:jletterdigit:]*

%%
"+" { System.out.println("leyendo: Suma ");return new Symbol(sym.MAS); }
"-" { System.out.println("leyendo: Resta ");return new Symbol(sym.MENOS); }
"*" { System.out.println("leyendo: Multiplicacion ");return new Symbol(sym.POR); }
"/" { System.out.println("leyendo: Division ");return new Symbol(sym.DIVISION); }
";" { System.out.println("leyendo: P_Coma");return new Symbol(sym.PUNTOYCOMA); }
"(" { System.out.println("leyendo: P_Abre");return new Symbol(sym.LPAREN); }
")" { System.out.println("leyendo: P_Cierra");return new Symbol(sym.RPAREN); }
"inicio" { System.out.println("leyendo: inicio ");  return new Symbol(sym.INICIO);}
"fin" { System.out.println("leyendo: fin ");return new Symbol(sym.FIN); }
"=" { System.out.println("leyendo: = ");return new Symbol(sym.ASIGNACION); }
"escribir" { System.out.println("leyendo:Print");return new Symbol(sym.IMPRIMIR); }
{Identifier} { System.out.println("leyendo: id ");return new Symbol(sym.IDENTIFIER, yytext());}
[:digit:]+ { System.out.println("leyendo: numero "); return new Symbol(sym.NUMERO, new Integer(yytext())); }
[ \t\r\n]+ {;}
. { System.out.println("Error lexico."+yytext()+"-"); }
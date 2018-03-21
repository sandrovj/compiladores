lexer grammar DecafLexer;

@header {
package decaf;
}

options
{
  language=Java;
}

LCURLY : '{';
RCURLY : '}';

ID  : ('a'..'z' | 'A'..'Z')+;

CHARLITERAL : '\''(' '..'!' | '#'..'&' | '('..'[' | ']'..'~' | ESC)'\'' ;
  

WS_ : (' ' | '\n' ) -> skip;

SL_COMMENT : '//' (~'\n')* '\n' -> skip;

STRING : '"' (ESC|~'"')* '"';

fragment
ESC :  '\\' ('n'|'"'|'\\' | 't' | '\'' );

lexer grammar DecafLexer;

@header {
package decaf;
}

options
{
  language=Java;
}

tokens
{
  TK_class
}

LCURLY : '{';
RCURLY : '}';

OP_ARIT: ('+'|'*'|'/'|'%');

OP_COND: ('>'|'<'|'>='|'<='|'=='|'!='|'&&'|'||');

CHARLITERAL : '\'' (ESC|'a'..'z'|'A'..'Z'|'0'..'9'|~'\''|'\\t'|'\\\\') '\''; 

NUMBER: ('0'..'9')+;

STRING : '"' (ESC|ID|OP_ARIT|' '|','|'.'|';'|':'|'?'|'!'|'\\'|',' ~('"')|NUMBER)* '"';

WS_ : (' ' | '\n' ) -> skip;

SL_COMMENT : '//' (~'\n')* '\n' -> skip;

NEGATIVO: ('-');

ID :('a'..'z' | 'A'..'Z'|'_')('a'..'z' | 'A'..'Z'|'_'|'0'..'9')*;

fragment
ESC : '\\' ('n'|'"'|'\\' | 't' | '\'' );

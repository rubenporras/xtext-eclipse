/*******************************************************************************
 * Copyright (c) 2015, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
lexer grammar InternalRuleEngineLexer;

@header {
package org.eclipse.xtext.example.homeautomation.parser.antlr.lexer;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

Synchronized : 'synchronized';

Instanceof : 'instanceof';

Extension : 'extension';

Default : 'default';

Extends : 'extends';

Finally : 'finally';

Device : 'Device';

Import : 'import';

Return : 'return';

Static : 'static';

Switch : 'switch';

Typeof : 'typeof';

Catch : 'catch';

False : 'false';

Super : 'super';

Throw : 'throw';

While : 'while';

Rule : 'Rule';

Case : 'case';

Else : 'else';

Null : 'null';

Then : 'then';

True : 'true';

When : 'when';

ExclamationMarkEqualsSignEqualsSign : '!==';

FullStopFullStopLessThanSign : '..<';

EqualsSignEqualsSignEqualsSign : '===';

Can : 'can';

For : 'for';

New : 'new';

Try : 'try';

Val : 'val';

Var : 'var';

ExclamationMarkEqualsSign : '!=';

PercentSignEqualsSign : '%=';

AmpersandAmpersand : '&&';

AsteriskAsterisk : '**';

AsteriskEqualsSign : '*=';

PlusSignPlusSign : '++';

PlusSignEqualsSign : '+=';

HyphenMinusHyphenMinus : '--';

HyphenMinusEqualsSign : '-=';

HyphenMinusGreaterThanSign : '->';

FullStopFullStop : '..';

SolidusEqualsSign : '/=';

ColonColon : '::';

LessThanSignGreaterThanSign : '<>';

EqualsSignEqualsSign : '==';

EqualsSignGreaterThanSign : '=>';

GreaterThanSignEqualsSign : '>=';

QuestionMarkFullStop : '?.';

QuestionMarkColon : '?:';

As : 'as';

Be : 'be';

Do : 'do';

If : 'if';

VerticalLineVerticalLine : '||';

ExclamationMark : '!';

NumberSign : '#';

PercentSign : '%';

Ampersand : '&';

LeftParenthesis : '(';

RightParenthesis : ')';

Asterisk : '*';

PlusSign : '+';

Comma : ',';

HyphenMinus : '-';

FullStop : '.';

Solidus : '/';

Colon : ':';

Semicolon : ';';

LessThanSign : '<';

EqualsSign : '=';

GreaterThanSign : '>';

QuestionMark : '?';

LeftSquareBracket : '[';

RightSquareBracket : ']';

LeftCurlyBracket : '{';

VerticalLine : '|';

RightCurlyBracket : '}';

fragment RULE_BEGIN : ;

fragment RULE_END : ;

RULE_HEX : ('0x'|'0X') ('0'..'9'|'a'..'f'|'A'..'F'|'_')+ ('#' (('b'|'B') ('i'|'I')|('l'|'L')))?;

RULE_INT : '0'..'9' ('0'..'9'|'_')*;

RULE_DECIMAL : RULE_INT (('e'|'E') ('+'|'-')? RULE_INT)? (('b'|'B') ('i'|'I'|'d'|'D')|('l'|'L'|'d'|'D'|'f'|'F'))?;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'$'|'_') ('a'..'z'|'A'..'Z'|'$'|'_'|'0'..'9')*;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'?|'\'' ('\\' .|~(('\\'|'\'')))* '\''?);

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;

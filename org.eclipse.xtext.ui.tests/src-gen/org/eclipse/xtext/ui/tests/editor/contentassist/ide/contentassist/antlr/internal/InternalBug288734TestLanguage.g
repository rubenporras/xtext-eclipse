/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalBug288734TestLanguage;

options {
	superClass=AbstractInternalContentAssistParser;
}

@lexer::header {
package org.eclipse.xtext.ui.tests.editor.contentassist.ide.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package org.eclipse.xtext.ui.tests.editor.contentassist.ide.contentassist.antlr.internal;

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.DFA;
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug288734TestLanguageGrammarAccess;

}
@parser::members {
	private Bug288734TestLanguageGrammarAccess grammarAccess;

	public void setGrammarAccess(Bug288734TestLanguageGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}

	@Override
	protected Grammar getGrammar() {
		return grammarAccess.getGrammar();
	}

	@Override
	protected String getValueForTokenName(String tokenName) {
		return tokenName;
	}
}

// Entry rule entryRuleModel
entryRuleModel
:
{ before(grammarAccess.getModelRule()); }
	 ruleModel
{ after(grammarAccess.getModelRule()); } 
	 EOF 
;

// Rule Model
ruleModel 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getModelAccess().getConstantsAssignment()); }
		(rule__Model__ConstantsAssignment)
		{ after(grammarAccess.getModelAccess().getConstantsAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleTConstant
entryRuleTConstant
:
{ before(grammarAccess.getTConstantRule()); }
	 ruleTConstant
{ after(grammarAccess.getTConstantRule()); } 
	 EOF 
;

// Rule TConstant
ruleTConstant 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getTConstantAccess().getAlternatives()); }
		(rule__TConstant__Alternatives)
		{ after(grammarAccess.getTConstantAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleTStringConstant
entryRuleTStringConstant
:
{ before(grammarAccess.getTStringConstantRule()); }
	 ruleTStringConstant
{ after(grammarAccess.getTStringConstantRule()); } 
	 EOF 
;

// Rule TStringConstant
ruleTStringConstant 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getTStringConstantAccess().getGroup()); }
		(rule__TStringConstant__Group__0)
		{ after(grammarAccess.getTStringConstantAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleTIntegerConstant
entryRuleTIntegerConstant
:
{ before(grammarAccess.getTIntegerConstantRule()); }
	 ruleTIntegerConstant
{ after(grammarAccess.getTIntegerConstantRule()); } 
	 EOF 
;

// Rule TIntegerConstant
ruleTIntegerConstant 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getTIntegerConstantAccess().getGroup()); }
		(rule__TIntegerConstant__Group__0)
		{ after(grammarAccess.getTIntegerConstantAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleTBooleanConstant
entryRuleTBooleanConstant
:
{ before(grammarAccess.getTBooleanConstantRule()); }
	 ruleTBooleanConstant
{ after(grammarAccess.getTBooleanConstantRule()); } 
	 EOF 
;

// Rule TBooleanConstant
ruleTBooleanConstant 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getTBooleanConstantAccess().getGroup()); }
		(rule__TBooleanConstant__Group__0)
		{ after(grammarAccess.getTBooleanConstantAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleTAnnotation
entryRuleTAnnotation
:
{ before(grammarAccess.getTAnnotationRule()); }
	 ruleTAnnotation
{ after(grammarAccess.getTAnnotationRule()); } 
	 EOF 
;

// Rule TAnnotation
ruleTAnnotation 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getTAnnotationAccess().getGroup()); }
		(rule__TAnnotation__Group__0)
		{ after(grammarAccess.getTAnnotationAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__TConstant__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTConstantAccess().getTStringConstantParserRuleCall_0()); }
		ruleTStringConstant
		{ after(grammarAccess.getTConstantAccess().getTStringConstantParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getTConstantAccess().getTIntegerConstantParserRuleCall_1()); }
		ruleTIntegerConstant
		{ after(grammarAccess.getTConstantAccess().getTIntegerConstantParserRuleCall_1()); }
	)
	|
	(
		{ before(grammarAccess.getTConstantAccess().getTBooleanConstantParserRuleCall_2()); }
		ruleTBooleanConstant
		{ after(grammarAccess.getTConstantAccess().getTBooleanConstantParserRuleCall_2()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__TStringConstant__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TStringConstant__Group__0__Impl
	rule__TStringConstant__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TStringConstant__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTStringConstantAccess().getAnnotationsAssignment_0()); }
	(rule__TStringConstant__AnnotationsAssignment_0)*
	{ after(grammarAccess.getTStringConstantAccess().getAnnotationsAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__TStringConstant__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TStringConstant__Group__1__Impl
	rule__TStringConstant__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__TStringConstant__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTStringConstantAccess().getConstantKeyword_1()); }
	'constant'
	{ after(grammarAccess.getTStringConstantAccess().getConstantKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__TStringConstant__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TStringConstant__Group__2__Impl
	rule__TStringConstant__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__TStringConstant__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTStringConstantAccess().getStringKeyword_2()); }
	'string'
	{ after(grammarAccess.getTStringConstantAccess().getStringKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__TStringConstant__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TStringConstant__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TStringConstant__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTStringConstantAccess().getNameAssignment_3()); }
	(rule__TStringConstant__NameAssignment_3)
	{ after(grammarAccess.getTStringConstantAccess().getNameAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__TIntegerConstant__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TIntegerConstant__Group__0__Impl
	rule__TIntegerConstant__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TIntegerConstant__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTIntegerConstantAccess().getAnnotationsAssignment_0()); }
	(rule__TIntegerConstant__AnnotationsAssignment_0)*
	{ after(grammarAccess.getTIntegerConstantAccess().getAnnotationsAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__TIntegerConstant__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TIntegerConstant__Group__1__Impl
	rule__TIntegerConstant__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__TIntegerConstant__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTIntegerConstantAccess().getConstantKeyword_1()); }
	'constant'
	{ after(grammarAccess.getTIntegerConstantAccess().getConstantKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__TIntegerConstant__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TIntegerConstant__Group__2__Impl
	rule__TIntegerConstant__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__TIntegerConstant__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTIntegerConstantAccess().getIntegerKeyword_2()); }
	'integer'
	{ after(grammarAccess.getTIntegerConstantAccess().getIntegerKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__TIntegerConstant__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TIntegerConstant__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TIntegerConstant__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTIntegerConstantAccess().getNameAssignment_3()); }
	(rule__TIntegerConstant__NameAssignment_3)
	{ after(grammarAccess.getTIntegerConstantAccess().getNameAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__TBooleanConstant__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TBooleanConstant__Group__0__Impl
	rule__TBooleanConstant__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TBooleanConstant__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTBooleanConstantAccess().getAnnotationsAssignment_0()); }
	(rule__TBooleanConstant__AnnotationsAssignment_0)*
	{ after(grammarAccess.getTBooleanConstantAccess().getAnnotationsAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__TBooleanConstant__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TBooleanConstant__Group__1__Impl
	rule__TBooleanConstant__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__TBooleanConstant__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTBooleanConstantAccess().getConstantKeyword_1()); }
	'constant'
	{ after(grammarAccess.getTBooleanConstantAccess().getConstantKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__TBooleanConstant__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TBooleanConstant__Group__2__Impl
	rule__TBooleanConstant__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__TBooleanConstant__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTBooleanConstantAccess().getBooleanKeyword_2()); }
	'boolean'
	{ after(grammarAccess.getTBooleanConstantAccess().getBooleanKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__TBooleanConstant__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TBooleanConstant__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TBooleanConstant__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTBooleanConstantAccess().getNameAssignment_3()); }
	(rule__TBooleanConstant__NameAssignment_3)
	{ after(grammarAccess.getTBooleanConstantAccess().getNameAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__TAnnotation__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TAnnotation__Group__0__Impl
	rule__TAnnotation__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TAnnotation__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTAnnotationAccess().getDescKeyword_0()); }
	'@desc'
	{ after(grammarAccess.getTAnnotationAccess().getDescKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__TAnnotation__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TAnnotation__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TAnnotation__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTAnnotationAccess().getDescriptionAssignment_1()); }
	(rule__TAnnotation__DescriptionAssignment_1)
	{ after(grammarAccess.getTAnnotationAccess().getDescriptionAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Model__ConstantsAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getConstantsTConstantParserRuleCall_0()); }
		ruleTConstant
		{ after(grammarAccess.getModelAccess().getConstantsTConstantParserRuleCall_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__TStringConstant__AnnotationsAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTStringConstantAccess().getAnnotationsTAnnotationParserRuleCall_0_0()); }
		ruleTAnnotation
		{ after(grammarAccess.getTStringConstantAccess().getAnnotationsTAnnotationParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__TStringConstant__NameAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTStringConstantAccess().getNameIDTerminalRuleCall_3_0()); }
		RULE_ID
		{ after(grammarAccess.getTStringConstantAccess().getNameIDTerminalRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__TIntegerConstant__AnnotationsAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTIntegerConstantAccess().getAnnotationsTAnnotationParserRuleCall_0_0()); }
		ruleTAnnotation
		{ after(grammarAccess.getTIntegerConstantAccess().getAnnotationsTAnnotationParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__TIntegerConstant__NameAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTIntegerConstantAccess().getNameIDTerminalRuleCall_3_0()); }
		RULE_ID
		{ after(grammarAccess.getTIntegerConstantAccess().getNameIDTerminalRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__TBooleanConstant__AnnotationsAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTBooleanConstantAccess().getAnnotationsTAnnotationParserRuleCall_0_0()); }
		ruleTAnnotation
		{ after(grammarAccess.getTBooleanConstantAccess().getAnnotationsTAnnotationParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__TBooleanConstant__NameAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTBooleanConstantAccess().getNameIDTerminalRuleCall_3_0()); }
		RULE_ID
		{ after(grammarAccess.getTBooleanConstantAccess().getNameIDTerminalRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__TAnnotation__DescriptionAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTAnnotationAccess().getDescriptionSTRINGTerminalRuleCall_1_0()); }
		RULE_STRING
		{ after(grammarAccess.getTAnnotationAccess().getDescriptionSTRINGTerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;

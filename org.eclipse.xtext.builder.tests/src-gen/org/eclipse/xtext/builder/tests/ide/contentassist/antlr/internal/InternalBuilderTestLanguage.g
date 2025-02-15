/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalBuilderTestLanguage;

options {
	superClass=AbstractInternalContentAssistParser;
}

@lexer::header {
package org.eclipse.xtext.builder.tests.ide.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package org.eclipse.xtext.builder.tests.ide.contentassist.antlr.internal;

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
import org.eclipse.xtext.builder.tests.services.BuilderTestLanguageGrammarAccess;

}
@parser::members {
	private BuilderTestLanguageGrammarAccess grammarAccess;

	public void setGrammarAccess(BuilderTestLanguageGrammarAccess grammarAccess) {
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

// Entry rule entryRuleNamedElement
entryRuleNamedElement
:
{ before(grammarAccess.getNamedElementRule()); }
	 ruleNamedElement
{ after(grammarAccess.getNamedElementRule()); } 
	 EOF 
;

// Rule NamedElement
ruleNamedElement 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getNamedElementAccess().getAlternatives()); }
		(rule__NamedElement__Alternatives)
		{ after(grammarAccess.getNamedElementAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleNamespace
entryRuleNamespace
:
{ before(grammarAccess.getNamespaceRule()); }
	 ruleNamespace
{ after(grammarAccess.getNamespaceRule()); } 
	 EOF 
;

// Rule Namespace
ruleNamespace 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getNamespaceAccess().getGroup()); }
		(rule__Namespace__Group__0)
		{ after(grammarAccess.getNamespaceAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleImport
entryRuleImport
:
{ before(grammarAccess.getImportRule()); }
	 ruleImport
{ after(grammarAccess.getImportRule()); } 
	 EOF 
;

// Rule Import
ruleImport 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getImportAccess().getGroup()); }
		(rule__Import__Group__0)
		{ after(grammarAccess.getImportAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleElement
entryRuleElement
:
{ before(grammarAccess.getElementRule()); }
	 ruleElement
{ after(grammarAccess.getElementRule()); } 
	 EOF 
;

// Rule Element
ruleElement 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getElementAccess().getGroup()); }
		(rule__Element__Group__0)
		{ after(grammarAccess.getElementAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleQualifiedName
entryRuleQualifiedName
:
{ before(grammarAccess.getQualifiedNameRule()); }
	 ruleQualifiedName
{ after(grammarAccess.getQualifiedNameRule()); } 
	 EOF 
;

// Rule QualifiedName
ruleQualifiedName 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getQualifiedNameAccess().getGroup()); }
		(rule__QualifiedName__Group__0)
		{ after(grammarAccess.getQualifiedNameAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__NamedElement__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getNamedElementAccess().getNamespaceParserRuleCall_0()); }
		ruleNamespace
		{ after(grammarAccess.getNamedElementAccess().getNamespaceParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getNamedElementAccess().getElementParserRuleCall_1()); }
		ruleElement
		{ after(grammarAccess.getNamedElementAccess().getElementParserRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Namespace__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Namespace__Group__0__Impl
	rule__Namespace__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Namespace__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNamespaceAccess().getNamespaceKeyword_0()); }
	'namespace'
	{ after(grammarAccess.getNamespaceAccess().getNamespaceKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Namespace__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Namespace__Group__1__Impl
	rule__Namespace__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Namespace__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNamespaceAccess().getNameAssignment_1()); }
	(rule__Namespace__NameAssignment_1)
	{ after(grammarAccess.getNamespaceAccess().getNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Namespace__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Namespace__Group__2__Impl
	rule__Namespace__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Namespace__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNamespaceAccess().getLeftCurlyBracketKeyword_2()); }
	'{'
	{ after(grammarAccess.getNamespaceAccess().getLeftCurlyBracketKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Namespace__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Namespace__Group__3__Impl
	rule__Namespace__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Namespace__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNamespaceAccess().getImportsAssignment_3()); }
	(rule__Namespace__ImportsAssignment_3)*
	{ after(grammarAccess.getNamespaceAccess().getImportsAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Namespace__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Namespace__Group__4__Impl
	rule__Namespace__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__Namespace__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNamespaceAccess().getElementsAssignment_4()); }
	(rule__Namespace__ElementsAssignment_4)*
	{ after(grammarAccess.getNamespaceAccess().getElementsAssignment_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Namespace__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Namespace__Group__5__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Namespace__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getNamespaceAccess().getRightCurlyBracketKeyword_5()); }
	'}'
	{ after(grammarAccess.getNamespaceAccess().getRightCurlyBracketKeyword_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Import__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Import__Group__0__Impl
	rule__Import__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Import__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getImportAccess().getImportKeyword_0()); }
	'import'
	{ after(grammarAccess.getImportAccess().getImportKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Import__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Import__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Import__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getImportAccess().getImportedNamespaceAssignment_1()); }
	(rule__Import__ImportedNamespaceAssignment_1)
	{ after(grammarAccess.getImportAccess().getImportedNamespaceAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Element__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Element__Group__0__Impl
	rule__Element__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getElementAccess().getObjectKeyword_0()); }
	'object'
	{ after(grammarAccess.getElementAccess().getObjectKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Element__Group__1__Impl
	rule__Element__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getElementAccess().getNameAssignment_1()); }
	(rule__Element__NameAssignment_1)
	{ after(grammarAccess.getElementAccess().getNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Element__Group__2__Impl
	rule__Element__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getElementAccess().getGroup_2()); }
	(rule__Element__Group_2__0)?
	{ after(grammarAccess.getElementAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Element__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getElementAccess().getGroup_3()); }
	(rule__Element__Group_3__0)?
	{ after(grammarAccess.getElementAccess().getGroup_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Element__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Element__Group_2__0__Impl
	rule__Element__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getElementAccess().getReferencesKeyword_2_0()); }
	'references'
	{ after(grammarAccess.getElementAccess().getReferencesKeyword_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Element__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getElementAccess().getReferencesAssignment_2_1()); }
	(rule__Element__ReferencesAssignment_2_1)
	{ after(grammarAccess.getElementAccess().getReferencesAssignment_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Element__Group_3__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Element__Group_3__0__Impl
	rule__Element__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group_3__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getElementAccess().getOtherRefsKeyword_3_0()); }
	'otherRefs'
	{ after(grammarAccess.getElementAccess().getOtherRefsKeyword_3_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group_3__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Element__Group_3__1__Impl
	rule__Element__Group_3__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group_3__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getElementAccess().getOtherRefsAssignment_3_1()); }
	(rule__Element__OtherRefsAssignment_3_1)
	{ after(grammarAccess.getElementAccess().getOtherRefsAssignment_3_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group_3__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Element__Group_3__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group_3__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getElementAccess().getGroup_3_2()); }
	(rule__Element__Group_3_2__0)*
	{ after(grammarAccess.getElementAccess().getGroup_3_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Element__Group_3_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Element__Group_3_2__0__Impl
	rule__Element__Group_3_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group_3_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getElementAccess().getCommaKeyword_3_2_0()); }
	','
	{ after(grammarAccess.getElementAccess().getCommaKeyword_3_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group_3_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Element__Group_3_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group_3_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getElementAccess().getOtherRefsAssignment_3_2_1()); }
	(rule__Element__OtherRefsAssignment_3_2_1)
	{ after(grammarAccess.getElementAccess().getOtherRefsAssignment_3_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__QualifiedName__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__QualifiedName__Group__0__Impl
	rule__QualifiedName__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedName__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getQualifiedNameAccess().getIDTerminalRuleCall_0()); }
	RULE_ID
	{ after(grammarAccess.getQualifiedNameAccess().getIDTerminalRuleCall_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedName__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__QualifiedName__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedName__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getQualifiedNameAccess().getGroup_1()); }
	(rule__QualifiedName__Group_1__0)*
	{ after(grammarAccess.getQualifiedNameAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__QualifiedName__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__QualifiedName__Group_1__0__Impl
	rule__QualifiedName__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedName__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getQualifiedNameAccess().getFullStopKeyword_1_0()); }
	'.'
	{ after(grammarAccess.getQualifiedNameAccess().getFullStopKeyword_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedName__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__QualifiedName__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__QualifiedName__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getQualifiedNameAccess().getIDTerminalRuleCall_1_1()); }
	RULE_ID
	{ after(grammarAccess.getQualifiedNameAccess().getIDTerminalRuleCall_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Namespace__NameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getNamespaceAccess().getNameQualifiedNameParserRuleCall_1_0()); }
		ruleQualifiedName
		{ after(grammarAccess.getNamespaceAccess().getNameQualifiedNameParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Namespace__ImportsAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getNamespaceAccess().getImportsImportParserRuleCall_3_0()); }
		ruleImport
		{ after(grammarAccess.getNamespaceAccess().getImportsImportParserRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Namespace__ElementsAssignment_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getNamespaceAccess().getElementsNamedElementParserRuleCall_4_0()); }
		ruleNamedElement
		{ after(grammarAccess.getNamespaceAccess().getElementsNamedElementParserRuleCall_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Import__ImportedNamespaceAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getImportAccess().getImportedNamespaceQualifiedNameParserRuleCall_1_0()); }
		ruleQualifiedName
		{ after(grammarAccess.getImportAccess().getImportedNamespaceQualifiedNameParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__NameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getElementAccess().getNameIDTerminalRuleCall_1_0()); }
		RULE_ID
		{ after(grammarAccess.getElementAccess().getNameIDTerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__ReferencesAssignment_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getElementAccess().getReferencesElementCrossReference_2_1_0()); }
		(
			{ before(grammarAccess.getElementAccess().getReferencesElementQualifiedNameParserRuleCall_2_1_0_1()); }
			ruleQualifiedName
			{ after(grammarAccess.getElementAccess().getReferencesElementQualifiedNameParserRuleCall_2_1_0_1()); }
		)
		{ after(grammarAccess.getElementAccess().getReferencesElementCrossReference_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__OtherRefsAssignment_3_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getElementAccess().getOtherRefsElementCrossReference_3_1_0()); }
		(
			{ before(grammarAccess.getElementAccess().getOtherRefsElementQualifiedNameParserRuleCall_3_1_0_1()); }
			ruleQualifiedName
			{ after(grammarAccess.getElementAccess().getOtherRefsElementQualifiedNameParserRuleCall_3_1_0_1()); }
		)
		{ after(grammarAccess.getElementAccess().getOtherRefsElementCrossReference_3_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__OtherRefsAssignment_3_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getElementAccess().getOtherRefsElementCrossReference_3_2_1_0()); }
		(
			{ before(grammarAccess.getElementAccess().getOtherRefsElementQualifiedNameParserRuleCall_3_2_1_0_1()); }
			ruleQualifiedName
			{ after(grammarAccess.getElementAccess().getOtherRefsElementQualifiedNameParserRuleCall_3_2_1_0_1()); }
		)
		{ after(grammarAccess.getElementAccess().getOtherRefsElementCrossReference_3_2_1_0()); }
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

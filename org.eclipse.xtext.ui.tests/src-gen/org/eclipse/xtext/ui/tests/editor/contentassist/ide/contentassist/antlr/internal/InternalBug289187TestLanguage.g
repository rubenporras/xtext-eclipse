/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalBug289187TestLanguage;

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
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug289187TestLanguageGrammarAccess;

}
@parser::members {
	private Bug289187TestLanguageGrammarAccess grammarAccess;

	public void setGrammarAccess(Bug289187TestLanguageGrammarAccess grammarAccess) {
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
		{ before(grammarAccess.getModelAccess().getClassesAssignment()); }
		(rule__Model__ClassesAssignment)*
		{ after(grammarAccess.getModelAccess().getClassesAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleClass
entryRuleClass
:
{ before(grammarAccess.getClassRule()); }
	 ruleClass
{ after(grammarAccess.getClassRule()); } 
	 EOF 
;

// Rule Class
ruleClass 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getClassAccess().getGroup()); }
		(rule__Class__Group__0)
		{ after(grammarAccess.getClassAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleAttribute
entryRuleAttribute
:
{ before(grammarAccess.getAttributeRule()); }
	 ruleAttribute
{ after(grammarAccess.getAttributeRule()); } 
	 EOF 
;

// Rule Attribute
ruleAttribute 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getAttributeAccess().getGroup()); }
		(rule__Attribute__Group__0)
		{ after(grammarAccess.getAttributeAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleOperation
entryRuleOperation
:
{ before(grammarAccess.getOperationRule()); }
	 ruleOperation
{ after(grammarAccess.getOperationRule()); } 
	 EOF 
;

// Rule Operation
ruleOperation 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getOperationAccess().getGroup()); }
		(rule__Operation__Group__0)
		{ after(grammarAccess.getOperationAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Rule Visibility
ruleVisibility
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVisibilityAccess().getAlternatives()); }
		(rule__Visibility__Alternatives)
		{ after(grammarAccess.getVisibilityAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Visibility__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVisibilityAccess().getPRIVATEEnumLiteralDeclaration_0()); }
		('PRIVATE')
		{ after(grammarAccess.getVisibilityAccess().getPRIVATEEnumLiteralDeclaration_0()); }
	)
	|
	(
		{ before(grammarAccess.getVisibilityAccess().getPROTECTEDEnumLiteralDeclaration_1()); }
		('PROTECTED')
		{ after(grammarAccess.getVisibilityAccess().getPROTECTEDEnumLiteralDeclaration_1()); }
	)
	|
	(
		{ before(grammarAccess.getVisibilityAccess().getPACKAGE_PRIVATEEnumLiteralDeclaration_2()); }
		('PACKAGE_PRIVATE')
		{ after(grammarAccess.getVisibilityAccess().getPACKAGE_PRIVATEEnumLiteralDeclaration_2()); }
	)
	|
	(
		{ before(grammarAccess.getVisibilityAccess().getPUBLICEnumLiteralDeclaration_3()); }
		('PUBLIC')
		{ after(grammarAccess.getVisibilityAccess().getPUBLICEnumLiteralDeclaration_3()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Class__Group__0__Impl
	rule__Class__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassAccess().getAbstractAssignment_0()); }
	(rule__Class__AbstractAssignment_0)?
	{ after(grammarAccess.getClassAccess().getAbstractAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Class__Group__1__Impl
	rule__Class__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassAccess().getTransientAssignment_1()); }
	(rule__Class__TransientAssignment_1)?
	{ after(grammarAccess.getClassAccess().getTransientAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Class__Group__2__Impl
	rule__Class__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassAccess().getClassKeyword_2()); }
	'class'
	{ after(grammarAccess.getClassAccess().getClassKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Class__Group__3__Impl
	rule__Class__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassAccess().getNameAssignment_3()); }
	(rule__Class__NameAssignment_3)
	{ after(grammarAccess.getClassAccess().getNameAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Class__Group__4__Impl
	rule__Class__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassAccess().getGroup_4()); }
	(rule__Class__Group_4__0)?
	{ after(grammarAccess.getClassAccess().getGroup_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Class__Group__5__Impl
	rule__Class__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassAccess().getGroup_5()); }
	(rule__Class__Group_5__0)?
	{ after(grammarAccess.getClassAccess().getGroup_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group__6
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Class__Group__6__Impl
	rule__Class__Group__7
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group__6__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassAccess().getLeftCurlyBracketKeyword_6()); }
	'{'
	{ after(grammarAccess.getClassAccess().getLeftCurlyBracketKeyword_6()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group__7
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Class__Group__7__Impl
	rule__Class__Group__8
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group__7__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassAccess().getGroup_7()); }
	(rule__Class__Group_7__0)?
	{ after(grammarAccess.getClassAccess().getGroup_7()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group__8
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Class__Group__8__Impl
	rule__Class__Group__9
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group__8__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassAccess().getGroup_8()); }
	(rule__Class__Group_8__0)?
	{ after(grammarAccess.getClassAccess().getGroup_8()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group__9
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Class__Group__9__Impl
	rule__Class__Group__10
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group__9__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassAccess().getGroup_9()); }
	(rule__Class__Group_9__0)?
	{ after(grammarAccess.getClassAccess().getGroup_9()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group__10
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Class__Group__10__Impl
	rule__Class__Group__11
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group__10__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassAccess().getAttributesAssignment_10()); }
	(rule__Class__AttributesAssignment_10)*
	{ after(grammarAccess.getClassAccess().getAttributesAssignment_10()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group__11
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Class__Group__11__Impl
	rule__Class__Group__12
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group__11__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassAccess().getOperationsAssignment_11()); }
	(rule__Class__OperationsAssignment_11)*
	{ after(grammarAccess.getClassAccess().getOperationsAssignment_11()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group__12
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Class__Group__12__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group__12__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassAccess().getRightCurlyBracketKeyword_12()); }
	'}'
	{ after(grammarAccess.getClassAccess().getRightCurlyBracketKeyword_12()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Class__Group_4__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Class__Group_4__0__Impl
	rule__Class__Group_4__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group_4__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassAccess().getExtendsKeyword_4_0()); }
	'extends'
	{ after(grammarAccess.getClassAccess().getExtendsKeyword_4_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group_4__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Class__Group_4__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group_4__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassAccess().getSuperClassAssignment_4_1()); }
	(rule__Class__SuperClassAssignment_4_1)
	{ after(grammarAccess.getClassAccess().getSuperClassAssignment_4_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Class__Group_5__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Class__Group_5__0__Impl
	rule__Class__Group_5__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group_5__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassAccess().getImplementsKeyword_5_0()); }
	'implements'
	{ after(grammarAccess.getClassAccess().getImplementsKeyword_5_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group_5__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Class__Group_5__1__Impl
	rule__Class__Group_5__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group_5__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassAccess().getImplementedInterfacesAssignment_5_1()); }
	(rule__Class__ImplementedInterfacesAssignment_5_1)
	{ after(grammarAccess.getClassAccess().getImplementedInterfacesAssignment_5_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group_5__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Class__Group_5__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group_5__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassAccess().getGroup_5_2()); }
	(rule__Class__Group_5_2__0)*
	{ after(grammarAccess.getClassAccess().getGroup_5_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Class__Group_5_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Class__Group_5_2__0__Impl
	rule__Class__Group_5_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group_5_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassAccess().getCommaKeyword_5_2_0()); }
	','
	{ after(grammarAccess.getClassAccess().getCommaKeyword_5_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group_5_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Class__Group_5_2__1__Impl
	rule__Class__Group_5_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group_5_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassAccess().getImplementsKeyword_5_2_1()); }
	'implements'
	{ after(grammarAccess.getClassAccess().getImplementsKeyword_5_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group_5_2__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Class__Group_5_2__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group_5_2__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassAccess().getImplementedInterfacesAssignment_5_2_2()); }
	(rule__Class__ImplementedInterfacesAssignment_5_2_2)
	{ after(grammarAccess.getClassAccess().getImplementedInterfacesAssignment_5_2_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Class__Group_7__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Class__Group_7__0__Impl
	rule__Class__Group_7__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group_7__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassAccess().getClassNumberKeyword_7_0()); }
	'classNumber'
	{ after(grammarAccess.getClassAccess().getClassNumberKeyword_7_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group_7__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Class__Group_7__1__Impl
	rule__Class__Group_7__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group_7__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassAccess().getEqualsSignKeyword_7_1()); }
	'='
	{ after(grammarAccess.getClassAccess().getEqualsSignKeyword_7_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group_7__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Class__Group_7__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group_7__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassAccess().getClassNumberAssignment_7_2()); }
	(rule__Class__ClassNumberAssignment_7_2)
	{ after(grammarAccess.getClassAccess().getClassNumberAssignment_7_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Class__Group_8__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Class__Group_8__0__Impl
	rule__Class__Group_8__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group_8__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassAccess().getQuidKeyword_8_0()); }
	'quid'
	{ after(grammarAccess.getClassAccess().getQuidKeyword_8_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group_8__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Class__Group_8__1__Impl
	rule__Class__Group_8__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group_8__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassAccess().getEqualsSignKeyword_8_1()); }
	'='
	{ after(grammarAccess.getClassAccess().getEqualsSignKeyword_8_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group_8__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Class__Group_8__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group_8__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassAccess().getQuidAssignment_8_2()); }
	(rule__Class__QuidAssignment_8_2)
	{ after(grammarAccess.getClassAccess().getQuidAssignment_8_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Class__Group_9__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Class__Group_9__0__Impl
	rule__Class__Group_9__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group_9__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassAccess().getDocumentationKeyword_9_0()); }
	'documentation'
	{ after(grammarAccess.getClassAccess().getDocumentationKeyword_9_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group_9__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Class__Group_9__1__Impl
	rule__Class__Group_9__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group_9__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassAccess().getEqualsSignKeyword_9_1()); }
	'='
	{ after(grammarAccess.getClassAccess().getEqualsSignKeyword_9_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group_9__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Class__Group_9__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__Group_9__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassAccess().getDocumentationAssignment_9_2()); }
	(rule__Class__DocumentationAssignment_9_2)
	{ after(grammarAccess.getClassAccess().getDocumentationAssignment_9_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Attribute__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute__Group__0__Impl
	rule__Attribute__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttributeAccess().getVisibilityAssignment_0()); }
	(rule__Attribute__VisibilityAssignment_0)?
	{ after(grammarAccess.getAttributeAccess().getVisibilityAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute__Group__1__Impl
	rule__Attribute__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttributeAccess().getAttributeKeyword_1()); }
	'attribute'
	{ after(grammarAccess.getAttributeAccess().getAttributeKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttributeAccess().getNameAssignment_2()); }
	(rule__Attribute__NameAssignment_2)
	{ after(grammarAccess.getAttributeAccess().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Operation__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Operation__Group__0__Impl
	rule__Operation__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOperationAccess().getVisibilityAssignment_0()); }
	(rule__Operation__VisibilityAssignment_0)?
	{ after(grammarAccess.getOperationAccess().getVisibilityAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Operation__Group__1__Impl
	rule__Operation__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOperationAccess().getOperationKeyword_1()); }
	'operation'
	{ after(grammarAccess.getOperationAccess().getOperationKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Operation__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getOperationAccess().getNameAssignment_2()); }
	(rule__Operation__NameAssignment_2)
	{ after(grammarAccess.getOperationAccess().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Model__ClassesAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getClassesClassParserRuleCall_0()); }
		ruleClass
		{ after(grammarAccess.getModelAccess().getClassesClassParserRuleCall_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__AbstractAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getClassAccess().getAbstractAbstractKeyword_0_0()); }
		(
			{ before(grammarAccess.getClassAccess().getAbstractAbstractKeyword_0_0()); }
			'abstract'
			{ after(grammarAccess.getClassAccess().getAbstractAbstractKeyword_0_0()); }
		)
		{ after(grammarAccess.getClassAccess().getAbstractAbstractKeyword_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__TransientAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getClassAccess().getTransientTransientKeyword_1_0()); }
		(
			{ before(grammarAccess.getClassAccess().getTransientTransientKeyword_1_0()); }
			'transient'
			{ after(grammarAccess.getClassAccess().getTransientTransientKeyword_1_0()); }
		)
		{ after(grammarAccess.getClassAccess().getTransientTransientKeyword_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__NameAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getClassAccess().getNameIDTerminalRuleCall_3_0()); }
		RULE_ID
		{ after(grammarAccess.getClassAccess().getNameIDTerminalRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__SuperClassAssignment_4_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getClassAccess().getSuperClassClassCrossReference_4_1_0()); }
		(
			{ before(grammarAccess.getClassAccess().getSuperClassClassIDTerminalRuleCall_4_1_0_1()); }
			RULE_ID
			{ after(grammarAccess.getClassAccess().getSuperClassClassIDTerminalRuleCall_4_1_0_1()); }
		)
		{ after(grammarAccess.getClassAccess().getSuperClassClassCrossReference_4_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__ImplementedInterfacesAssignment_5_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getClassAccess().getImplementedInterfacesClassCrossReference_5_1_0()); }
		(
			{ before(grammarAccess.getClassAccess().getImplementedInterfacesClassIDTerminalRuleCall_5_1_0_1()); }
			RULE_ID
			{ after(grammarAccess.getClassAccess().getImplementedInterfacesClassIDTerminalRuleCall_5_1_0_1()); }
		)
		{ after(grammarAccess.getClassAccess().getImplementedInterfacesClassCrossReference_5_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__ImplementedInterfacesAssignment_5_2_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getClassAccess().getImplementedInterfacesClassCrossReference_5_2_2_0()); }
		(
			{ before(grammarAccess.getClassAccess().getImplementedInterfacesClassIDTerminalRuleCall_5_2_2_0_1()); }
			RULE_ID
			{ after(grammarAccess.getClassAccess().getImplementedInterfacesClassIDTerminalRuleCall_5_2_2_0_1()); }
		)
		{ after(grammarAccess.getClassAccess().getImplementedInterfacesClassCrossReference_5_2_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__ClassNumberAssignment_7_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getClassAccess().getClassNumberINTTerminalRuleCall_7_2_0()); }
		RULE_INT
		{ after(grammarAccess.getClassAccess().getClassNumberINTTerminalRuleCall_7_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__QuidAssignment_8_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getClassAccess().getQuidINTTerminalRuleCall_8_2_0()); }
		RULE_INT
		{ after(grammarAccess.getClassAccess().getQuidINTTerminalRuleCall_8_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__DocumentationAssignment_9_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getClassAccess().getDocumentationSTRINGTerminalRuleCall_9_2_0()); }
		RULE_STRING
		{ after(grammarAccess.getClassAccess().getDocumentationSTRINGTerminalRuleCall_9_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__AttributesAssignment_10
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getClassAccess().getAttributesAttributeParserRuleCall_10_0()); }
		ruleAttribute
		{ after(grammarAccess.getClassAccess().getAttributesAttributeParserRuleCall_10_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Class__OperationsAssignment_11
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getClassAccess().getOperationsOperationParserRuleCall_11_0()); }
		ruleOperation
		{ after(grammarAccess.getClassAccess().getOperationsOperationParserRuleCall_11_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__VisibilityAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAttributeAccess().getVisibilityVisibilityEnumRuleCall_0_0()); }
		ruleVisibility
		{ after(grammarAccess.getAttributeAccess().getVisibilityVisibilityEnumRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAttributeAccess().getNameIDTerminalRuleCall_2_0()); }
		RULE_ID
		{ after(grammarAccess.getAttributeAccess().getNameIDTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation__VisibilityAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getOperationAccess().getVisibilityVisibilityEnumRuleCall_0_0()); }
		ruleVisibility
		{ after(grammarAccess.getOperationAccess().getVisibilityVisibilityEnumRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Operation__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getOperationAccess().getNameIDTerminalRuleCall_2_0()); }
		RULE_ID
		{ after(grammarAccess.getOperationAccess().getNameIDTerminalRuleCall_2_0()); }
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

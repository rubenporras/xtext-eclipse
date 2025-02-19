/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalBug360834TestLanguage;

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
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug360834TestLanguageGrammarAccess;

}
@parser::members {
	private Bug360834TestLanguageGrammarAccess grammarAccess;

	public void setGrammarAccess(Bug360834TestLanguageGrammarAccess grammarAccess) {
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
		{ before(grammarAccess.getModelAccess().getAlternatives()); }
		(rule__Model__Alternatives)
		{ after(grammarAccess.getModelAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleAlternative
entryRuleAlternative
:
{ before(grammarAccess.getAlternativeRule()); }
	 ruleAlternative
{ after(grammarAccess.getAlternativeRule()); } 
	 EOF 
;

// Rule Alternative
ruleAlternative 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getAlternativeAccess().getGroup()); }
		(rule__Alternative__Group__0)
		{ after(grammarAccess.getAlternativeAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleFQN
entryRuleFQN
:
{ before(grammarAccess.getFQNRule()); }
	 ruleFQN
{ after(grammarAccess.getFQNRule()); } 
	 EOF 
;

// Rule FQN
ruleFQN 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getFQNAccess().getGroup()); }
		(rule__FQN__Group__0)
		{ after(grammarAccess.getFQNAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleRecursiveClassDeclaration
entryRuleRecursiveClassDeclaration
:
{ before(grammarAccess.getRecursiveClassDeclarationRule()); }
	 ruleRecursiveClassDeclaration
{ after(grammarAccess.getRecursiveClassDeclarationRule()); } 
	 EOF 
;

// Rule RecursiveClassDeclaration
ruleRecursiveClassDeclaration 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getRecursiveClassDeclarationAccess().getGroup()); }
		(rule__RecursiveClassDeclaration__Group__0)
		{ after(grammarAccess.getRecursiveClassDeclarationAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleAlternativeClassModifiers
entryRuleAlternativeClassModifiers
:
{ before(grammarAccess.getAlternativeClassModifiersRule()); }
	 ruleAlternativeClassModifiers
{ after(grammarAccess.getAlternativeClassModifiersRule()); } 
	 EOF 
;

// Rule AlternativeClassModifiers
ruleAlternativeClassModifiers 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getAlternativeClassModifiersAccess().getGroup()); }
		(rule__AlternativeClassModifiers__Group__0)
		{ after(grammarAccess.getAlternativeClassModifiersAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleUnordered
entryRuleUnordered
:
{ before(grammarAccess.getUnorderedRule()); }
	 ruleUnordered
{ after(grammarAccess.getUnorderedRule()); } 
	 EOF 
;

// Rule Unordered
ruleUnordered 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getUnorderedAccess().getGroup()); }
		(rule__Unordered__Group__0)
		{ after(grammarAccess.getUnorderedAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleSimpleClassDeclaration
entryRuleSimpleClassDeclaration
:
{ before(grammarAccess.getSimpleClassDeclarationRule()); }
	 ruleSimpleClassDeclaration
{ after(grammarAccess.getSimpleClassDeclarationRule()); } 
	 EOF 
;

// Rule SimpleClassDeclaration
ruleSimpleClassDeclaration 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getSimpleClassDeclarationAccess().getGroup()); }
		(rule__SimpleClassDeclaration__Group__0)
		{ after(grammarAccess.getSimpleClassDeclarationAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleClassMember
entryRuleClassMember
:
{ before(grammarAccess.getClassMemberRule()); }
	 ruleClassMember
{ after(grammarAccess.getClassMemberRule()); } 
	 EOF 
;

// Rule ClassMember
ruleClassMember 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getClassMemberAccess().getGroup()); }
		(rule__ClassMember__Group__0)
		{ after(grammarAccess.getClassMemberAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleUnorderedModifiers
entryRuleUnorderedModifiers
:
{ before(grammarAccess.getUnorderedModifiersRule()); }
	 ruleUnorderedModifiers
{ after(grammarAccess.getUnorderedModifiersRule()); } 
	 EOF 
;

// Rule UnorderedModifiers
ruleUnorderedModifiers 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getUnorderedModifiersAccess().getGroup()); }
		(rule__UnorderedModifiers__Group__0)
		{ after(grammarAccess.getUnorderedModifiersAccess().getGroup()); }
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

rule__Model__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getGroup_0()); }
		(rule__Model__Group_0__0)
		{ after(grammarAccess.getModelAccess().getGroup_0()); }
	)
	|
	(
		{ before(grammarAccess.getModelAccess().getGroup_1()); }
		(rule__Model__Group_1__0)
		{ after(grammarAccess.getModelAccess().getGroup_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__AlternativeClassModifiers__Alternatives_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAlternativeClassModifiersAccess().getFinalAssignment_1_0()); }
		(rule__AlternativeClassModifiers__FinalAssignment_1_0)
		{ after(grammarAccess.getAlternativeClassModifiersAccess().getFinalAssignment_1_0()); }
	)
	|
	(
		{ before(grammarAccess.getAlternativeClassModifiersAccess().getAbstractAssignment_1_1()); }
		(rule__AlternativeClassModifiers__AbstractAssignment_1_1)
		{ after(grammarAccess.getAlternativeClassModifiersAccess().getAbstractAssignment_1_1()); }
	)
	|
	(
		{ before(grammarAccess.getAlternativeClassModifiersAccess().getExternAssignment_1_2()); }
		(rule__AlternativeClassModifiers__ExternAssignment_1_2)
		{ after(grammarAccess.getAlternativeClassModifiersAccess().getExternAssignment_1_2()); }
	)
	|
	(
		{ before(grammarAccess.getAlternativeClassModifiersAccess().getVisibilityAssignment_1_3()); }
		(rule__AlternativeClassModifiers__VisibilityAssignment_1_3)?
		{ after(grammarAccess.getAlternativeClassModifiersAccess().getVisibilityAssignment_1_3()); }
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
		{ before(grammarAccess.getVisibilityAccess().getPUBLICEnumLiteralDeclaration_0()); }
		('public')
		{ after(grammarAccess.getVisibilityAccess().getPUBLICEnumLiteralDeclaration_0()); }
	)
	|
	(
		{ before(grammarAccess.getVisibilityAccess().getPROTECTEDEnumLiteralDeclaration_1()); }
		('protected')
		{ after(grammarAccess.getVisibilityAccess().getPROTECTEDEnumLiteralDeclaration_1()); }
	)
	|
	(
		{ before(grammarAccess.getVisibilityAccess().getPRIVATEEnumLiteralDeclaration_2()); }
		('private')
		{ after(grammarAccess.getVisibilityAccess().getPRIVATEEnumLiteralDeclaration_2()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_0__0__Impl
	rule__Model__Group_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getAlternativeKeyword_0_0()); }
	'alternative'
	{ after(grammarAccess.getModelAccess().getAlternativeKeyword_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getElementAssignment_0_1()); }
	(rule__Model__ElementAssignment_0_1)
	{ after(grammarAccess.getModelAccess().getElementAssignment_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Model__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1__0__Impl
	rule__Model__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getUnorderedKeyword_1_0()); }
	'unordered'
	{ after(grammarAccess.getModelAccess().getUnorderedKeyword_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getElementAssignment_1_1()); }
	(rule__Model__ElementAssignment_1_1)
	{ after(grammarAccess.getModelAccess().getElementAssignment_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Alternative__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Alternative__Group__0__Impl
	rule__Alternative__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Alternative__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAlternativeAccess().getPackageKeyword_0()); }
	'package'
	{ after(grammarAccess.getAlternativeAccess().getPackageKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Alternative__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Alternative__Group__1__Impl
	rule__Alternative__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Alternative__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAlternativeAccess().getNameAssignment_1()); }
	(rule__Alternative__NameAssignment_1)
	{ after(grammarAccess.getAlternativeAccess().getNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Alternative__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Alternative__Group__2__Impl
	rule__Alternative__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Alternative__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAlternativeAccess().getSemicolonKeyword_2()); }
	';'
	{ after(grammarAccess.getAlternativeAccess().getSemicolonKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Alternative__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Alternative__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Alternative__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAlternativeAccess().getRootDeclarationAssignment_3()); }
	(rule__Alternative__RootDeclarationAssignment_3)
	{ after(grammarAccess.getAlternativeAccess().getRootDeclarationAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__FQN__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FQN__Group__0__Impl
	rule__FQN__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFQNAccess().getIDTerminalRuleCall_0()); }
	RULE_ID
	{ after(grammarAccess.getFQNAccess().getIDTerminalRuleCall_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FQN__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFQNAccess().getGroup_1()); }
	(rule__FQN__Group_1__0)*
	{ after(grammarAccess.getFQNAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__FQN__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FQN__Group_1__0__Impl
	rule__FQN__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFQNAccess().getFullStopKeyword_1_0()); }
	'.'
	{ after(grammarAccess.getFQNAccess().getFullStopKeyword_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FQN__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFQNAccess().getIDTerminalRuleCall_1_1()); }
	RULE_ID
	{ after(grammarAccess.getFQNAccess().getIDTerminalRuleCall_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__RecursiveClassDeclaration__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RecursiveClassDeclaration__Group__0__Impl
	rule__RecursiveClassDeclaration__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RecursiveClassDeclaration__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRecursiveClassDeclarationAccess().getModifiersAssignment_0()); }
	(rule__RecursiveClassDeclaration__ModifiersAssignment_0)
	{ after(grammarAccess.getRecursiveClassDeclarationAccess().getModifiersAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RecursiveClassDeclaration__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RecursiveClassDeclaration__Group__1__Impl
	rule__RecursiveClassDeclaration__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__RecursiveClassDeclaration__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRecursiveClassDeclarationAccess().getClassKeyword_1()); }
	'class'
	{ after(grammarAccess.getRecursiveClassDeclarationAccess().getClassKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RecursiveClassDeclaration__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RecursiveClassDeclaration__Group__2__Impl
	rule__RecursiveClassDeclaration__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__RecursiveClassDeclaration__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRecursiveClassDeclarationAccess().getNameAssignment_2()); }
	(rule__RecursiveClassDeclaration__NameAssignment_2)
	{ after(grammarAccess.getRecursiveClassDeclarationAccess().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RecursiveClassDeclaration__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RecursiveClassDeclaration__Group__3__Impl
	rule__RecursiveClassDeclaration__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__RecursiveClassDeclaration__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRecursiveClassDeclarationAccess().getLeftCurlyBracketKeyword_3()); }
	'{'
	{ after(grammarAccess.getRecursiveClassDeclarationAccess().getLeftCurlyBracketKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RecursiveClassDeclaration__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RecursiveClassDeclaration__Group__4__Impl
	rule__RecursiveClassDeclaration__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__RecursiveClassDeclaration__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRecursiveClassDeclarationAccess().getMembersAssignment_4()); }
	(rule__RecursiveClassDeclaration__MembersAssignment_4)*
	{ after(grammarAccess.getRecursiveClassDeclarationAccess().getMembersAssignment_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RecursiveClassDeclaration__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RecursiveClassDeclaration__Group__5__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RecursiveClassDeclaration__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRecursiveClassDeclarationAccess().getRightCurlyBracketKeyword_5()); }
	'}'
	{ after(grammarAccess.getRecursiveClassDeclarationAccess().getRightCurlyBracketKeyword_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__AlternativeClassModifiers__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__AlternativeClassModifiers__Group__0__Impl
	rule__AlternativeClassModifiers__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__AlternativeClassModifiers__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAlternativeClassModifiersAccess().getModifiersAction_0()); }
	()
	{ after(grammarAccess.getAlternativeClassModifiersAccess().getModifiersAction_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__AlternativeClassModifiers__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__AlternativeClassModifiers__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__AlternativeClassModifiers__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAlternativeClassModifiersAccess().getAlternatives_1()); }
	(rule__AlternativeClassModifiers__Alternatives_1)
	{ after(grammarAccess.getAlternativeClassModifiersAccess().getAlternatives_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Unordered__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Unordered__Group__0__Impl
	rule__Unordered__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Unordered__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUnorderedAccess().getPackageKeyword_0()); }
	'package'
	{ after(grammarAccess.getUnorderedAccess().getPackageKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Unordered__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Unordered__Group__1__Impl
	rule__Unordered__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Unordered__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUnorderedAccess().getNameAssignment_1()); }
	(rule__Unordered__NameAssignment_1)
	{ after(grammarAccess.getUnorderedAccess().getNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Unordered__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Unordered__Group__2__Impl
	rule__Unordered__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Unordered__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUnorderedAccess().getSemicolonKeyword_2()); }
	';'
	{ after(grammarAccess.getUnorderedAccess().getSemicolonKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Unordered__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Unordered__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Unordered__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUnorderedAccess().getRootDeclarationAssignment_3()); }
	(rule__Unordered__RootDeclarationAssignment_3)
	{ after(grammarAccess.getUnorderedAccess().getRootDeclarationAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__SimpleClassDeclaration__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SimpleClassDeclaration__Group__0__Impl
	rule__SimpleClassDeclaration__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SimpleClassDeclaration__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSimpleClassDeclarationAccess().getModifiersAssignment_0()); }
	(rule__SimpleClassDeclaration__ModifiersAssignment_0)
	{ after(grammarAccess.getSimpleClassDeclarationAccess().getModifiersAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SimpleClassDeclaration__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SimpleClassDeclaration__Group__1__Impl
	rule__SimpleClassDeclaration__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__SimpleClassDeclaration__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSimpleClassDeclarationAccess().getClassKeyword_1()); }
	'class'
	{ after(grammarAccess.getSimpleClassDeclarationAccess().getClassKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SimpleClassDeclaration__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SimpleClassDeclaration__Group__2__Impl
	rule__SimpleClassDeclaration__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__SimpleClassDeclaration__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSimpleClassDeclarationAccess().getNameAssignment_2()); }
	(rule__SimpleClassDeclaration__NameAssignment_2)
	{ after(grammarAccess.getSimpleClassDeclarationAccess().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SimpleClassDeclaration__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SimpleClassDeclaration__Group__3__Impl
	rule__SimpleClassDeclaration__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__SimpleClassDeclaration__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSimpleClassDeclarationAccess().getLeftCurlyBracketKeyword_3()); }
	'{'
	{ after(grammarAccess.getSimpleClassDeclarationAccess().getLeftCurlyBracketKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SimpleClassDeclaration__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SimpleClassDeclaration__Group__4__Impl
	rule__SimpleClassDeclaration__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__SimpleClassDeclaration__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSimpleClassDeclarationAccess().getMembersAssignment_4()); }
	(rule__SimpleClassDeclaration__MembersAssignment_4)*
	{ after(grammarAccess.getSimpleClassDeclarationAccess().getMembersAssignment_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SimpleClassDeclaration__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SimpleClassDeclaration__Group__5__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SimpleClassDeclaration__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSimpleClassDeclarationAccess().getRightCurlyBracketKeyword_5()); }
	'}'
	{ after(grammarAccess.getSimpleClassDeclarationAccess().getRightCurlyBracketKeyword_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ClassMember__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ClassMember__Group__0__Impl
	rule__ClassMember__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassMember__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassMemberAccess().getModifiersAssignment_0()); }
	(rule__ClassMember__ModifiersAssignment_0)
	{ after(grammarAccess.getClassMemberAccess().getModifiersAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassMember__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ClassMember__Group__1__Impl
	rule__ClassMember__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassMember__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassMemberAccess().getVarKeyword_1()); }
	'var'
	{ after(grammarAccess.getClassMemberAccess().getVarKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassMember__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ClassMember__Group__2__Impl
	rule__ClassMember__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassMember__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassMemberAccess().getNameAssignment_2()); }
	(rule__ClassMember__NameAssignment_2)
	{ after(grammarAccess.getClassMemberAccess().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassMember__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ClassMember__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassMember__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getClassMemberAccess().getSemicolonKeyword_3()); }
	';'
	{ after(grammarAccess.getClassMemberAccess().getSemicolonKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__UnorderedModifiers__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__UnorderedModifiers__Group__0__Impl
	rule__UnorderedModifiers__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__UnorderedModifiers__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUnorderedModifiersAccess().getModifiersAction_0()); }
	()
	{ after(grammarAccess.getUnorderedModifiersAccess().getModifiersAction_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__UnorderedModifiers__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__UnorderedModifiers__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__UnorderedModifiers__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getUnorderedModifiersAccess().getUnorderedGroup_1()); }
	(rule__UnorderedModifiers__UnorderedGroup_1)
	{ after(grammarAccess.getUnorderedModifiersAccess().getUnorderedGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__UnorderedModifiers__UnorderedGroup_1
	@init {
		int stackSize = keepStackSize();
		getUnorderedGroupHelper().enter(grammarAccess.getUnorderedModifiersAccess().getUnorderedGroup_1());
	}
:
	rule__UnorderedModifiers__UnorderedGroup_1__0
	?
;
finally {
	getUnorderedGroupHelper().leave(grammarAccess.getUnorderedModifiersAccess().getUnorderedGroup_1());
	restoreStackSize(stackSize);
}

rule__UnorderedModifiers__UnorderedGroup_1__Impl
	@init {
		int stackSize = keepStackSize();
		boolean selected = false;
	}
:
		(
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getUnorderedModifiersAccess().getUnorderedGroup_1(), 0)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getUnorderedModifiersAccess().getUnorderedGroup_1(), 0);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getUnorderedModifiersAccess().getFinalAssignment_1_0()); }
					(rule__UnorderedModifiers__FinalAssignment_1_0)
					{ after(grammarAccess.getUnorderedModifiersAccess().getFinalAssignment_1_0()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getUnorderedModifiersAccess().getUnorderedGroup_1(), 1)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getUnorderedModifiersAccess().getUnorderedGroup_1(), 1);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getUnorderedModifiersAccess().getAbstractAssignment_1_1()); }
					(rule__UnorderedModifiers__AbstractAssignment_1_1)
					{ after(grammarAccess.getUnorderedModifiersAccess().getAbstractAssignment_1_1()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getUnorderedModifiersAccess().getUnorderedGroup_1(), 2)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getUnorderedModifiersAccess().getUnorderedGroup_1(), 2);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getUnorderedModifiersAccess().getExternAssignment_1_2()); }
					(rule__UnorderedModifiers__ExternAssignment_1_2)
					{ after(grammarAccess.getUnorderedModifiersAccess().getExternAssignment_1_2()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getUnorderedModifiersAccess().getUnorderedGroup_1(), 3)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getUnorderedModifiersAccess().getUnorderedGroup_1(), 3);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getUnorderedModifiersAccess().getVisibilityAssignment_1_3()); }
					(rule__UnorderedModifiers__VisibilityAssignment_1_3)
					{ after(grammarAccess.getUnorderedModifiersAccess().getVisibilityAssignment_1_3()); }
				)
			)
		)
		)
;
finally {
	if (selected)
		getUnorderedGroupHelper().returnFromSelection(grammarAccess.getUnorderedModifiersAccess().getUnorderedGroup_1());
	restoreStackSize(stackSize);
}

rule__UnorderedModifiers__UnorderedGroup_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__UnorderedModifiers__UnorderedGroup_1__Impl
	rule__UnorderedModifiers__UnorderedGroup_1__1?
;
finally {
	restoreStackSize(stackSize);
}

rule__UnorderedModifiers__UnorderedGroup_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__UnorderedModifiers__UnorderedGroup_1__Impl
	rule__UnorderedModifiers__UnorderedGroup_1__2?
;
finally {
	restoreStackSize(stackSize);
}

rule__UnorderedModifiers__UnorderedGroup_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__UnorderedModifiers__UnorderedGroup_1__Impl
	rule__UnorderedModifiers__UnorderedGroup_1__3?
;
finally {
	restoreStackSize(stackSize);
}

rule__UnorderedModifiers__UnorderedGroup_1__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__UnorderedModifiers__UnorderedGroup_1__Impl
;
finally {
	restoreStackSize(stackSize);
}


rule__Model__ElementAssignment_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getElementAlternativeParserRuleCall_0_1_0()); }
		ruleAlternative
		{ after(grammarAccess.getModelAccess().getElementAlternativeParserRuleCall_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__ElementAssignment_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getElementUnorderedParserRuleCall_1_1_0()); }
		ruleUnordered
		{ after(grammarAccess.getModelAccess().getElementUnorderedParserRuleCall_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Alternative__NameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAlternativeAccess().getNameFQNParserRuleCall_1_0()); }
		ruleFQN
		{ after(grammarAccess.getAlternativeAccess().getNameFQNParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Alternative__RootDeclarationAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAlternativeAccess().getRootDeclarationRecursiveClassDeclarationParserRuleCall_3_0()); }
		ruleRecursiveClassDeclaration
		{ after(grammarAccess.getAlternativeAccess().getRootDeclarationRecursiveClassDeclarationParserRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RecursiveClassDeclaration__ModifiersAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRecursiveClassDeclarationAccess().getModifiersAlternativeClassModifiersParserRuleCall_0_0()); }
		ruleAlternativeClassModifiers
		{ after(grammarAccess.getRecursiveClassDeclarationAccess().getModifiersAlternativeClassModifiersParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RecursiveClassDeclaration__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRecursiveClassDeclarationAccess().getNameIDTerminalRuleCall_2_0()); }
		RULE_ID
		{ after(grammarAccess.getRecursiveClassDeclarationAccess().getNameIDTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RecursiveClassDeclaration__MembersAssignment_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRecursiveClassDeclarationAccess().getMembersRecursiveClassDeclarationParserRuleCall_4_0()); }
		ruleRecursiveClassDeclaration
		{ after(grammarAccess.getRecursiveClassDeclarationAccess().getMembersRecursiveClassDeclarationParserRuleCall_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__AlternativeClassModifiers__FinalAssignment_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAlternativeClassModifiersAccess().getFinalFinalKeyword_1_0_0()); }
		(
			{ before(grammarAccess.getAlternativeClassModifiersAccess().getFinalFinalKeyword_1_0_0()); }
			'final'
			{ after(grammarAccess.getAlternativeClassModifiersAccess().getFinalFinalKeyword_1_0_0()); }
		)
		{ after(grammarAccess.getAlternativeClassModifiersAccess().getFinalFinalKeyword_1_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__AlternativeClassModifiers__AbstractAssignment_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAlternativeClassModifiersAccess().getAbstractAbstractKeyword_1_1_0()); }
		(
			{ before(grammarAccess.getAlternativeClassModifiersAccess().getAbstractAbstractKeyword_1_1_0()); }
			'abstract'
			{ after(grammarAccess.getAlternativeClassModifiersAccess().getAbstractAbstractKeyword_1_1_0()); }
		)
		{ after(grammarAccess.getAlternativeClassModifiersAccess().getAbstractAbstractKeyword_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__AlternativeClassModifiers__ExternAssignment_1_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAlternativeClassModifiersAccess().getExternExternKeyword_1_2_0()); }
		(
			{ before(grammarAccess.getAlternativeClassModifiersAccess().getExternExternKeyword_1_2_0()); }
			'extern'
			{ after(grammarAccess.getAlternativeClassModifiersAccess().getExternExternKeyword_1_2_0()); }
		)
		{ after(grammarAccess.getAlternativeClassModifiersAccess().getExternExternKeyword_1_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__AlternativeClassModifiers__VisibilityAssignment_1_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAlternativeClassModifiersAccess().getVisibilityVisibilityEnumRuleCall_1_3_0()); }
		ruleVisibility
		{ after(grammarAccess.getAlternativeClassModifiersAccess().getVisibilityVisibilityEnumRuleCall_1_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Unordered__NameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getUnorderedAccess().getNameFQNParserRuleCall_1_0()); }
		ruleFQN
		{ after(grammarAccess.getUnorderedAccess().getNameFQNParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Unordered__RootDeclarationAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getUnorderedAccess().getRootDeclarationSimpleClassDeclarationParserRuleCall_3_0()); }
		ruleSimpleClassDeclaration
		{ after(grammarAccess.getUnorderedAccess().getRootDeclarationSimpleClassDeclarationParserRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SimpleClassDeclaration__ModifiersAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSimpleClassDeclarationAccess().getModifiersUnorderedModifiersParserRuleCall_0_0()); }
		ruleUnorderedModifiers
		{ after(grammarAccess.getSimpleClassDeclarationAccess().getModifiersUnorderedModifiersParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SimpleClassDeclaration__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSimpleClassDeclarationAccess().getNameIDTerminalRuleCall_2_0()); }
		RULE_ID
		{ after(grammarAccess.getSimpleClassDeclarationAccess().getNameIDTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SimpleClassDeclaration__MembersAssignment_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSimpleClassDeclarationAccess().getMembersClassMemberParserRuleCall_4_0()); }
		ruleClassMember
		{ after(grammarAccess.getSimpleClassDeclarationAccess().getMembersClassMemberParserRuleCall_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassMember__ModifiersAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getClassMemberAccess().getModifiersUnorderedModifiersParserRuleCall_0_0()); }
		ruleUnorderedModifiers
		{ after(grammarAccess.getClassMemberAccess().getModifiersUnorderedModifiersParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ClassMember__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getClassMemberAccess().getNameIDTerminalRuleCall_2_0()); }
		RULE_ID
		{ after(grammarAccess.getClassMemberAccess().getNameIDTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__UnorderedModifiers__FinalAssignment_1_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getUnorderedModifiersAccess().getFinalFinalKeyword_1_0_0()); }
		(
			{ before(grammarAccess.getUnorderedModifiersAccess().getFinalFinalKeyword_1_0_0()); }
			'final'
			{ after(grammarAccess.getUnorderedModifiersAccess().getFinalFinalKeyword_1_0_0()); }
		)
		{ after(grammarAccess.getUnorderedModifiersAccess().getFinalFinalKeyword_1_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__UnorderedModifiers__AbstractAssignment_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getUnorderedModifiersAccess().getAbstractAbstractKeyword_1_1_0()); }
		(
			{ before(grammarAccess.getUnorderedModifiersAccess().getAbstractAbstractKeyword_1_1_0()); }
			'abstract'
			{ after(grammarAccess.getUnorderedModifiersAccess().getAbstractAbstractKeyword_1_1_0()); }
		)
		{ after(grammarAccess.getUnorderedModifiersAccess().getAbstractAbstractKeyword_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__UnorderedModifiers__ExternAssignment_1_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getUnorderedModifiersAccess().getExternExternKeyword_1_2_0()); }
		(
			{ before(grammarAccess.getUnorderedModifiersAccess().getExternExternKeyword_1_2_0()); }
			'extern'
			{ after(grammarAccess.getUnorderedModifiersAccess().getExternExternKeyword_1_2_0()); }
		)
		{ after(grammarAccess.getUnorderedModifiersAccess().getExternExternKeyword_1_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__UnorderedModifiers__VisibilityAssignment_1_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getUnorderedModifiersAccess().getVisibilityVisibilityEnumRuleCall_1_3_0()); }
		ruleVisibility
		{ after(grammarAccess.getUnorderedModifiersAccess().getVisibilityVisibilityEnumRuleCall_1_3_0()); }
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

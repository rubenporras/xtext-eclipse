/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalBug347012TestLanguage;

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
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug347012TestLanguageGrammarAccess;

}
@parser::members {
	private Bug347012TestLanguageGrammarAccess grammarAccess;

	public void setGrammarAccess(Bug347012TestLanguageGrammarAccess grammarAccess) {
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

// Entry rule entryRuleMyProgram
entryRuleMyProgram
:
{ before(grammarAccess.getMyProgramRule()); }
	 ruleMyProgram
{ after(grammarAccess.getMyProgramRule()); } 
	 EOF 
;

// Rule MyProgram
ruleMyProgram 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getMyProgramAccess().getGroup()); }
		(rule__MyProgram__Group__0)
		{ after(grammarAccess.getMyProgramAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleIdentifier
entryRuleIdentifier
:
{ before(grammarAccess.getIdentifierRule()); }
	 ruleIdentifier
{ after(grammarAccess.getIdentifierRule()); } 
	 EOF 
;

// Rule Identifier
ruleIdentifier 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getIdentifierAccess().getNameAssignment()); }
		(rule__Identifier__NameAssignment)
		{ after(grammarAccess.getIdentifierAccess().getNameAssignment()); }
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

// Entry rule entryRuleVirtualSemi
entryRuleVirtualSemi
:
{ before(grammarAccess.getVirtualSemiRule()); }
	 ruleVirtualSemi
{ after(grammarAccess.getVirtualSemiRule()); } 
	 EOF 
;

// Rule VirtualSemi
ruleVirtualSemi 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getVirtualSemiAccess().getAlternatives()); }
		(rule__VirtualSemi__Alternatives)
		{ after(grammarAccess.getVirtualSemiAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleLiteral
entryRuleLiteral
:
{ before(grammarAccess.getLiteralRule()); }
	 ruleLiteral
{ after(grammarAccess.getLiteralRule()); } 
	 EOF 
;

// Rule Literal
ruleLiteral 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getLiteralAccess().getAlternatives()); }
		(rule__Literal__Alternatives)
		{ after(grammarAccess.getLiteralAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleMyPrimary
entryRuleMyPrimary
:
{ before(grammarAccess.getMyPrimaryRule()); }
	 ruleMyPrimary
{ after(grammarAccess.getMyPrimaryRule()); } 
	 EOF 
;

// Rule MyPrimary
ruleMyPrimary 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getMyPrimaryAccess().getAlternatives()); }
		(rule__MyPrimary__Alternatives)
		{ after(grammarAccess.getMyPrimaryAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleMyPackage
entryRuleMyPackage
:
{ before(grammarAccess.getMyPackageRule()); }
	 ruleMyPackage
{ after(grammarAccess.getMyPackageRule()); } 
	 EOF 
;

// Rule MyPackage
ruleMyPackage 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getMyPackageAccess().getGroup()); }
		(rule__MyPackage__Group__0)
		{ after(grammarAccess.getMyPackageAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleMyClass
entryRuleMyClass
:
{ before(grammarAccess.getMyClassRule()); }
	 ruleMyClass
{ after(grammarAccess.getMyClassRule()); } 
	 EOF 
;

// Rule MyClass
ruleMyClass 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getMyClassAccess().getGroup()); }
		(rule__MyClass__Group__0)
		{ after(grammarAccess.getMyClassAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleMyAttribute
entryRuleMyAttribute
:
{ before(grammarAccess.getMyAttributeRule()); }
	 ruleMyAttribute
{ after(grammarAccess.getMyAttributeRule()); } 
	 EOF 
;

// Rule MyAttribute
ruleMyAttribute 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getMyAttributeAccess().getAlternatives()); }
		(rule__MyAttribute__Alternatives)
		{ after(grammarAccess.getMyAttributeAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleMyAttributes
entryRuleMyAttributes
:
{ before(grammarAccess.getMyAttributesRule()); }
	 ruleMyAttributes
{ after(grammarAccess.getMyAttributesRule()); } 
	 EOF 
;

// Rule MyAttributes
ruleMyAttributes 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getMyAttributesAccess().getGroup()); }
		(rule__MyAttributes__Group__0)
		{ after(grammarAccess.getMyAttributesAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleMyField
entryRuleMyField
:
{ before(grammarAccess.getMyFieldRule()); }
	 ruleMyField
{ after(grammarAccess.getMyFieldRule()); } 
	 EOF 
;

// Rule MyField
ruleMyField 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getMyFieldAccess().getGroup()); }
		(rule__MyField__Group__0)
		{ after(grammarAccess.getMyFieldAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleMyBinding
entryRuleMyBinding
:
{ before(grammarAccess.getMyBindingRule()); }
	 ruleMyBinding
{ after(grammarAccess.getMyBindingRule()); } 
	 EOF 
;

// Rule MyBinding
ruleMyBinding 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getMyBindingAccess().getGroup()); }
		(rule__MyBinding__Group__0)
		{ after(grammarAccess.getMyBindingAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__VirtualSemi__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getVirtualSemiAccess().getSemicolonKeyword_0()); }
		';'
		{ after(grammarAccess.getVirtualSemiAccess().getSemicolonKeyword_0()); }
	)
	|
	(
		{ before(grammarAccess.getVirtualSemiAccess().getLTTerminalRuleCall_1()); }
		RULE_LT
		{ after(grammarAccess.getVirtualSemiAccess().getLTTerminalRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Literal__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLiteralAccess().getNumAssignment_0()); }
		(rule__Literal__NumAssignment_0)
		{ after(grammarAccess.getLiteralAccess().getNumAssignment_0()); }
	)
	|
	(
		{ before(grammarAccess.getLiteralAccess().getStrAssignment_1()); }
		(rule__Literal__StrAssignment_1)
		{ after(grammarAccess.getLiteralAccess().getStrAssignment_1()); }
	)
	|
	(
		{ before(grammarAccess.getLiteralAccess().getBoolAssignment_2()); }
		(rule__Literal__BoolAssignment_2)
		{ after(grammarAccess.getLiteralAccess().getBoolAssignment_2()); }
	)
	|
	(
		{ before(grammarAccess.getLiteralAccess().getBoolAssignment_3()); }
		(rule__Literal__BoolAssignment_3)
		{ after(grammarAccess.getLiteralAccess().getBoolAssignment_3()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyPrimary__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getMyPrimaryAccess().getLiteralParserRuleCall_0()); }
		ruleLiteral
		{ after(grammarAccess.getMyPrimaryAccess().getLiteralParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getMyPrimaryAccess().getIdentifierParserRuleCall_1()); }
		ruleIdentifier
		{ after(grammarAccess.getMyPrimaryAccess().getIdentifierParserRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyAttribute__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getMyAttributeAccess().getPUBLICAssignment_0()); }
		(rule__MyAttribute__PUBLICAssignment_0)
		{ after(grammarAccess.getMyAttributeAccess().getPUBLICAssignment_0()); }
	)
	|
	(
		{ before(grammarAccess.getMyAttributeAccess().getPRIVATEAssignment_1()); }
		(rule__MyAttribute__PRIVATEAssignment_1)
		{ after(grammarAccess.getMyAttributeAccess().getPRIVATEAssignment_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyProgram__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyProgram__Group__0__Impl
	rule__MyProgram__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MyProgram__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyProgramAccess().getMyProgramAction_0()); }
	()
	{ after(grammarAccess.getMyProgramAccess().getMyProgramAction_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyProgram__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyProgram__Group__1__Impl
	rule__MyProgram__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__MyProgram__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyProgramAccess().getLTTerminalRuleCall_1()); }
	(RULE_LT)*
	{ after(grammarAccess.getMyProgramAccess().getLTTerminalRuleCall_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyProgram__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyProgram__Group__2__Impl
	rule__MyProgram__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__MyProgram__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyProgramAccess().getPackageAssignment_2()); }
	(rule__MyProgram__PackageAssignment_2)
	{ after(grammarAccess.getMyProgramAccess().getPackageAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyProgram__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyProgram__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MyProgram__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyProgramAccess().getLTTerminalRuleCall_3()); }
	(RULE_LT)*
	{ after(grammarAccess.getMyProgramAccess().getLTTerminalRuleCall_3()); }
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
	{ before(grammarAccess.getFQNAccess().getLTTerminalRuleCall_1_0()); }
	(RULE_LT)*
	{ after(grammarAccess.getFQNAccess().getLTTerminalRuleCall_1_0()); }
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
	rule__FQN__Group_1__2
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
	{ before(grammarAccess.getFQNAccess().getFullStopKeyword_1_1()); }
	'.'
	{ after(grammarAccess.getFQNAccess().getFullStopKeyword_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FQN__Group_1__2__Impl
	rule__FQN__Group_1__3
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFQNAccess().getLTTerminalRuleCall_1_2()); }
	(RULE_LT)*
	{ after(grammarAccess.getFQNAccess().getLTTerminalRuleCall_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group_1__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FQN__Group_1__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group_1__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFQNAccess().getIDTerminalRuleCall_1_3()); }
	RULE_ID
	{ after(grammarAccess.getFQNAccess().getIDTerminalRuleCall_1_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__MyPackage__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyPackage__Group__0__Impl
	rule__MyPackage__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MyPackage__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyPackageAccess().getPackageKeyword_0()); }
	'package'
	{ after(grammarAccess.getMyPackageAccess().getPackageKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyPackage__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyPackage__Group__1__Impl
	rule__MyPackage__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__MyPackage__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyPackageAccess().getLTTerminalRuleCall_1()); }
	(RULE_LT)*
	{ after(grammarAccess.getMyPackageAccess().getLTTerminalRuleCall_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyPackage__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyPackage__Group__2__Impl
	rule__MyPackage__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__MyPackage__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyPackageAccess().getNameAssignment_2()); }
	(rule__MyPackage__NameAssignment_2)
	{ after(grammarAccess.getMyPackageAccess().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyPackage__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyPackage__Group__3__Impl
	rule__MyPackage__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__MyPackage__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyPackageAccess().getLTTerminalRuleCall_3()); }
	(RULE_LT)*
	{ after(grammarAccess.getMyPackageAccess().getLTTerminalRuleCall_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyPackage__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyPackage__Group__4__Impl
	rule__MyPackage__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__MyPackage__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyPackageAccess().getLeftCurlyBracketKeyword_4()); }
	'{'
	{ after(grammarAccess.getMyPackageAccess().getLeftCurlyBracketKeyword_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyPackage__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyPackage__Group__5__Impl
	rule__MyPackage__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__MyPackage__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyPackageAccess().getLTTerminalRuleCall_5()); }
	(RULE_LT)*
	{ after(grammarAccess.getMyPackageAccess().getLTTerminalRuleCall_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyPackage__Group__6
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyPackage__Group__6__Impl
	rule__MyPackage__Group__7
;
finally {
	restoreStackSize(stackSize);
}

rule__MyPackage__Group__6__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyPackageAccess().getGroup_6()); }
	(rule__MyPackage__Group_6__0)*
	{ after(grammarAccess.getMyPackageAccess().getGroup_6()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyPackage__Group__7
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyPackage__Group__7__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MyPackage__Group__7__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyPackageAccess().getRightCurlyBracketKeyword_7()); }
	'}'
	{ after(grammarAccess.getMyPackageAccess().getRightCurlyBracketKeyword_7()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__MyPackage__Group_6__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyPackage__Group_6__0__Impl
	rule__MyPackage__Group_6__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MyPackage__Group_6__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyPackageAccess().getDirectivesAssignment_6_0()); }
	(rule__MyPackage__DirectivesAssignment_6_0)
	{ after(grammarAccess.getMyPackageAccess().getDirectivesAssignment_6_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyPackage__Group_6__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyPackage__Group_6__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MyPackage__Group_6__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyPackageAccess().getLTTerminalRuleCall_6_1()); }
	(RULE_LT)*
	{ after(grammarAccess.getMyPackageAccess().getLTTerminalRuleCall_6_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__MyClass__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyClass__Group__0__Impl
	rule__MyClass__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MyClass__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyClassAccess().getPublicKeyword_0()); }
	('public')?
	{ after(grammarAccess.getMyClassAccess().getPublicKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyClass__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyClass__Group__1__Impl
	rule__MyClass__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__MyClass__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyClassAccess().getClassKeyword_1()); }
	'class'
	{ after(grammarAccess.getMyClassAccess().getClassKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyClass__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyClass__Group__2__Impl
	rule__MyClass__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__MyClass__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyClassAccess().getLTTerminalRuleCall_2()); }
	(RULE_LT)*
	{ after(grammarAccess.getMyClassAccess().getLTTerminalRuleCall_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyClass__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyClass__Group__3__Impl
	rule__MyClass__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__MyClass__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyClassAccess().getNameAssignment_3()); }
	(rule__MyClass__NameAssignment_3)
	{ after(grammarAccess.getMyClassAccess().getNameAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyClass__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyClass__Group__4__Impl
	rule__MyClass__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__MyClass__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyClassAccess().getLTTerminalRuleCall_4()); }
	(RULE_LT)*
	{ after(grammarAccess.getMyClassAccess().getLTTerminalRuleCall_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyClass__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyClass__Group__5__Impl
	rule__MyClass__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__MyClass__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyClassAccess().getLeftCurlyBracketKeyword_5()); }
	'{'
	{ after(grammarAccess.getMyClassAccess().getLeftCurlyBracketKeyword_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyClass__Group__6
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyClass__Group__6__Impl
	rule__MyClass__Group__7
;
finally {
	restoreStackSize(stackSize);
}

rule__MyClass__Group__6__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyClassAccess().getLTTerminalRuleCall_6()); }
	(RULE_LT)*
	{ after(grammarAccess.getMyClassAccess().getLTTerminalRuleCall_6()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyClass__Group__7
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyClass__Group__7__Impl
	rule__MyClass__Group__8
;
finally {
	restoreStackSize(stackSize);
}

rule__MyClass__Group__7__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyClassAccess().getGroup_7()); }
	(rule__MyClass__Group_7__0)*
	{ after(grammarAccess.getMyClassAccess().getGroup_7()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyClass__Group__8
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyClass__Group__8__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MyClass__Group__8__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyClassAccess().getRightCurlyBracketKeyword_8()); }
	'}'
	{ after(grammarAccess.getMyClassAccess().getRightCurlyBracketKeyword_8()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__MyClass__Group_7__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyClass__Group_7__0__Impl
	rule__MyClass__Group_7__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MyClass__Group_7__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyClassAccess().getDirectivesAssignment_7_0()); }
	(rule__MyClass__DirectivesAssignment_7_0)
	{ after(grammarAccess.getMyClassAccess().getDirectivesAssignment_7_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyClass__Group_7__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyClass__Group_7__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MyClass__Group_7__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyClassAccess().getLTTerminalRuleCall_7_1()); }
	(RULE_LT)*
	{ after(grammarAccess.getMyClassAccess().getLTTerminalRuleCall_7_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__MyAttributes__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyAttributes__Group__0__Impl
	rule__MyAttributes__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MyAttributes__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyAttributesAccess().getMyAttributesAction_0()); }
	()
	{ after(grammarAccess.getMyAttributesAccess().getMyAttributesAction_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyAttributes__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyAttributes__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MyAttributes__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyAttributesAccess().getAttributesAssignment_1()); }
	(rule__MyAttributes__AttributesAssignment_1)*
	{ after(grammarAccess.getMyAttributesAccess().getAttributesAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__MyField__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyField__Group__0__Impl
	rule__MyField__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MyField__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyFieldAccess().getAttrAssignment_0()); }
	(rule__MyField__AttrAssignment_0)
	{ after(grammarAccess.getMyFieldAccess().getAttrAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyField__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyField__Group__1__Impl
	rule__MyField__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__MyField__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyFieldAccess().getVarKeyword_1()); }
	'var'
	{ after(grammarAccess.getMyFieldAccess().getVarKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyField__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyField__Group__2__Impl
	rule__MyField__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__MyField__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyFieldAccess().getLTTerminalRuleCall_2()); }
	(RULE_LT)*
	{ after(grammarAccess.getMyFieldAccess().getLTTerminalRuleCall_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyField__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyField__Group__3__Impl
	rule__MyField__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__MyField__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyFieldAccess().getBindingsAssignment_3()); }
	(rule__MyField__BindingsAssignment_3)
	{ after(grammarAccess.getMyFieldAccess().getBindingsAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyField__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyField__Group__4__Impl
	rule__MyField__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__MyField__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyFieldAccess().getGroup_4()); }
	(rule__MyField__Group_4__0)*
	{ after(grammarAccess.getMyFieldAccess().getGroup_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyField__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyField__Group__5__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MyField__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyFieldAccess().getVirtualSemiParserRuleCall_5()); }
	ruleVirtualSemi
	{ after(grammarAccess.getMyFieldAccess().getVirtualSemiParserRuleCall_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__MyField__Group_4__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyField__Group_4__0__Impl
	rule__MyField__Group_4__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MyField__Group_4__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyFieldAccess().getLTTerminalRuleCall_4_0()); }
	(RULE_LT)*
	{ after(grammarAccess.getMyFieldAccess().getLTTerminalRuleCall_4_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyField__Group_4__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyField__Group_4__1__Impl
	rule__MyField__Group_4__2
;
finally {
	restoreStackSize(stackSize);
}

rule__MyField__Group_4__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyFieldAccess().getCommaKeyword_4_1()); }
	','
	{ after(grammarAccess.getMyFieldAccess().getCommaKeyword_4_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyField__Group_4__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyField__Group_4__2__Impl
	rule__MyField__Group_4__3
;
finally {
	restoreStackSize(stackSize);
}

rule__MyField__Group_4__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyFieldAccess().getLTTerminalRuleCall_4_2()); }
	(RULE_LT)*
	{ after(grammarAccess.getMyFieldAccess().getLTTerminalRuleCall_4_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyField__Group_4__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyField__Group_4__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MyField__Group_4__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyFieldAccess().getBindingsAssignment_4_3()); }
	(rule__MyField__BindingsAssignment_4_3)
	{ after(grammarAccess.getMyFieldAccess().getBindingsAssignment_4_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__MyBinding__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyBinding__Group__0__Impl
	rule__MyBinding__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MyBinding__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyBindingAccess().getNameAssignment_0()); }
	(rule__MyBinding__NameAssignment_0)
	{ after(grammarAccess.getMyBindingAccess().getNameAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyBinding__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyBinding__Group__1__Impl
	rule__MyBinding__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__MyBinding__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyBindingAccess().getGroup_1()); }
	(rule__MyBinding__Group_1__0)?
	{ after(grammarAccess.getMyBindingAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyBinding__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyBinding__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MyBinding__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyBindingAccess().getGroup_2()); }
	(rule__MyBinding__Group_2__0)?
	{ after(grammarAccess.getMyBindingAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__MyBinding__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyBinding__Group_1__0__Impl
	rule__MyBinding__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MyBinding__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyBindingAccess().getLTTerminalRuleCall_1_0()); }
	(RULE_LT)*
	{ after(grammarAccess.getMyBindingAccess().getLTTerminalRuleCall_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyBinding__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyBinding__Group_1__1__Impl
	rule__MyBinding__Group_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__MyBinding__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyBindingAccess().getColonKeyword_1_1()); }
	':'
	{ after(grammarAccess.getMyBindingAccess().getColonKeyword_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyBinding__Group_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyBinding__Group_1__2__Impl
	rule__MyBinding__Group_1__3
;
finally {
	restoreStackSize(stackSize);
}

rule__MyBinding__Group_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyBindingAccess().getLTTerminalRuleCall_1_2()); }
	(RULE_LT)*
	{ after(grammarAccess.getMyBindingAccess().getLTTerminalRuleCall_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyBinding__Group_1__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyBinding__Group_1__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MyBinding__Group_1__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyBindingAccess().getTypeAssignment_1_3()); }
	(rule__MyBinding__TypeAssignment_1_3)
	{ after(grammarAccess.getMyBindingAccess().getTypeAssignment_1_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__MyBinding__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyBinding__Group_2__0__Impl
	rule__MyBinding__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MyBinding__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyBindingAccess().getLTTerminalRuleCall_2_0()); }
	(RULE_LT)*
	{ after(grammarAccess.getMyBindingAccess().getLTTerminalRuleCall_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyBinding__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyBinding__Group_2__1__Impl
	rule__MyBinding__Group_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__MyBinding__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyBindingAccess().getEqualsSignKeyword_2_1()); }
	'='
	{ after(grammarAccess.getMyBindingAccess().getEqualsSignKeyword_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyBinding__Group_2__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyBinding__Group_2__2__Impl
	rule__MyBinding__Group_2__3
;
finally {
	restoreStackSize(stackSize);
}

rule__MyBinding__Group_2__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyBindingAccess().getLTTerminalRuleCall_2_2()); }
	(RULE_LT)*
	{ after(grammarAccess.getMyBindingAccess().getLTTerminalRuleCall_2_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyBinding__Group_2__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MyBinding__Group_2__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MyBinding__Group_2__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMyBindingAccess().getExpressionAssignment_2_3()); }
	(rule__MyBinding__ExpressionAssignment_2_3)
	{ after(grammarAccess.getMyBindingAccess().getExpressionAssignment_2_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__MyProgram__PackageAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getMyProgramAccess().getPackageMyPackageParserRuleCall_2_0()); }
		ruleMyPackage
		{ after(grammarAccess.getMyProgramAccess().getPackageMyPackageParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Identifier__NameAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getIdentifierAccess().getNameIDTerminalRuleCall_0()); }
		RULE_ID
		{ after(grammarAccess.getIdentifierAccess().getNameIDTerminalRuleCall_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Literal__NumAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLiteralAccess().getNumNUMBERTerminalRuleCall_0_0()); }
		RULE_NUMBER
		{ after(grammarAccess.getLiteralAccess().getNumNUMBERTerminalRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Literal__StrAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLiteralAccess().getStrSTRINGTerminalRuleCall_1_0()); }
		RULE_STRING
		{ after(grammarAccess.getLiteralAccess().getStrSTRINGTerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Literal__BoolAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLiteralAccess().getBoolTrueKeyword_2_0()); }
		(
			{ before(grammarAccess.getLiteralAccess().getBoolTrueKeyword_2_0()); }
			'true'
			{ after(grammarAccess.getLiteralAccess().getBoolTrueKeyword_2_0()); }
		)
		{ after(grammarAccess.getLiteralAccess().getBoolTrueKeyword_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Literal__BoolAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLiteralAccess().getBoolFalseKeyword_3_0()); }
		(
			{ before(grammarAccess.getLiteralAccess().getBoolFalseKeyword_3_0()); }
			'false'
			{ after(grammarAccess.getLiteralAccess().getBoolFalseKeyword_3_0()); }
		)
		{ after(grammarAccess.getLiteralAccess().getBoolFalseKeyword_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyPackage__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getMyPackageAccess().getNameFQNParserRuleCall_2_0()); }
		ruleFQN
		{ after(grammarAccess.getMyPackageAccess().getNameFQNParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyPackage__DirectivesAssignment_6_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getMyPackageAccess().getDirectivesMyClassParserRuleCall_6_0_0()); }
		ruleMyClass
		{ after(grammarAccess.getMyPackageAccess().getDirectivesMyClassParserRuleCall_6_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyClass__NameAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getMyClassAccess().getNameIDTerminalRuleCall_3_0()); }
		RULE_ID
		{ after(grammarAccess.getMyClassAccess().getNameIDTerminalRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyClass__DirectivesAssignment_7_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getMyClassAccess().getDirectivesMyFieldParserRuleCall_7_0_0()); }
		ruleMyField
		{ after(grammarAccess.getMyClassAccess().getDirectivesMyFieldParserRuleCall_7_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyAttribute__PUBLICAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getMyAttributeAccess().getPUBLICPublicKeyword_0_0()); }
		(
			{ before(grammarAccess.getMyAttributeAccess().getPUBLICPublicKeyword_0_0()); }
			'public'
			{ after(grammarAccess.getMyAttributeAccess().getPUBLICPublicKeyword_0_0()); }
		)
		{ after(grammarAccess.getMyAttributeAccess().getPUBLICPublicKeyword_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyAttribute__PRIVATEAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getMyAttributeAccess().getPRIVATEPrivateKeyword_1_0()); }
		(
			{ before(grammarAccess.getMyAttributeAccess().getPRIVATEPrivateKeyword_1_0()); }
			'private'
			{ after(grammarAccess.getMyAttributeAccess().getPRIVATEPrivateKeyword_1_0()); }
		)
		{ after(grammarAccess.getMyAttributeAccess().getPRIVATEPrivateKeyword_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyAttributes__AttributesAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getMyAttributesAccess().getAttributesMyAttributeParserRuleCall_1_0()); }
		ruleMyAttribute
		{ after(grammarAccess.getMyAttributesAccess().getAttributesMyAttributeParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyField__AttrAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getMyFieldAccess().getAttrMyAttributesParserRuleCall_0_0()); }
		ruleMyAttributes
		{ after(grammarAccess.getMyFieldAccess().getAttrMyAttributesParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyField__BindingsAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getMyFieldAccess().getBindingsMyBindingParserRuleCall_3_0()); }
		ruleMyBinding
		{ after(grammarAccess.getMyFieldAccess().getBindingsMyBindingParserRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyField__BindingsAssignment_4_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getMyFieldAccess().getBindingsMyBindingParserRuleCall_4_3_0()); }
		ruleMyBinding
		{ after(grammarAccess.getMyFieldAccess().getBindingsMyBindingParserRuleCall_4_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyBinding__NameAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getMyBindingAccess().getNameIDTerminalRuleCall_0_0()); }
		RULE_ID
		{ after(grammarAccess.getMyBindingAccess().getNameIDTerminalRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyBinding__TypeAssignment_1_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getMyBindingAccess().getTypeFQNParserRuleCall_1_3_0()); }
		ruleFQN
		{ after(grammarAccess.getMyBindingAccess().getTypeFQNParserRuleCall_1_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__MyBinding__ExpressionAssignment_2_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getMyBindingAccess().getExpressionMyPrimaryParserRuleCall_2_3_0()); }
		ruleMyPrimary
		{ after(grammarAccess.getMyBindingAccess().getExpressionMyPrimaryParserRuleCall_2_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

RULE_ID : RULE_IDPLAINCHAR (RULE_IDPLAINCHAR|RULE_DIGIT)*;

RULE_LT : ('\r' '\n'|'\r'|'\n');

RULE_WS : (' '|'\t')+;

RULE_STRING : '"' ('\\' RULE_ESCAPE|~(('\\'|'"')))* '"';

RULE_NUMBER : (RULE_DIGIT+ ('.' RULE_DIGIT+)?|'.' RULE_DIGIT+);

fragment RULE_DIGIT : '0'..'9';

fragment RULE_HEX : (RULE_DIGIT|'A'..'F'|'a'..'f');

fragment RULE_ESCAPE : ('b'|'t'|'n'|'f'|'v'|'r'|'"'|'\''|'\\'|'u' RULE_HEX RULE_HEX RULE_HEX RULE_HEX);

fragment RULE_IDPLAINCHAR : ('$'|'A'..'Z'|'_'|'a'..'z');

/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalBug303200TestLanguage;

options {
	superClass=AbstractInternalContentAssistParser;
	backtrack=true;
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
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug303200TestLanguageGrammarAccess;

}
@parser::members {
	private Bug303200TestLanguageGrammarAccess grammarAccess;

	public void setGrammarAccess(Bug303200TestLanguageGrammarAccess grammarAccess) {
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

// Entry rule entryRuleProgram
entryRuleProgram
:
{ before(grammarAccess.getProgramRule()); }
	 ruleProgram
{ after(grammarAccess.getProgramRule()); } 
	 EOF 
;

// Rule Program
ruleProgram 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getProgramAccess().getGroup()); }
		(rule__Program__Group__0)
		{ after(grammarAccess.getProgramAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleProgramDirective
entryRuleProgramDirective
:
{ before(grammarAccess.getProgramDirectiveRule()); }
	 ruleProgramDirective
{ after(grammarAccess.getProgramDirectiveRule()); } 
	 EOF 
;

// Rule ProgramDirective
ruleProgramDirective 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getProgramDirectiveAccess().getAlternatives()); }
		(rule__ProgramDirective__Alternatives)
		{ after(grammarAccess.getProgramDirectiveAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleFunctionDefinition
entryRuleFunctionDefinition
:
{ before(grammarAccess.getFunctionDefinitionRule()); }
	 ruleFunctionDefinition
{ after(grammarAccess.getFunctionDefinitionRule()); } 
	 EOF 
;

// Rule FunctionDefinition
ruleFunctionDefinition 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getFunctionDefinitionAccess().getGroup()); }
		(rule__FunctionDefinition__Group__0)
		{ after(grammarAccess.getFunctionDefinitionAccess().getGroup()); }
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
		{ before(grammarAccess.getAttributeAccess().getAlternatives()); }
		(rule__Attribute__Alternatives)
		{ after(grammarAccess.getAttributeAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleParameters
entryRuleParameters
:
{ before(grammarAccess.getParametersRule()); }
	 ruleParameters
{ after(grammarAccess.getParametersRule()); } 
	 EOF 
;

// Rule Parameters
ruleParameters 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getParametersAccess().getGroup()); }
		(rule__Parameters__Group__0)
		{ after(grammarAccess.getParametersAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleBlock
entryRuleBlock
:
{ before(grammarAccess.getBlockRule()); }
	 ruleBlock
{ after(grammarAccess.getBlockRule()); } 
	 EOF 
;

// Rule Block
ruleBlock 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getBlockAccess().getGroup()); }
		(rule__Block__Group__0)
		{ after(grammarAccess.getBlockAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleStatement
entryRuleStatement
:
{ before(grammarAccess.getStatementRule()); }
	 ruleStatement
{ after(grammarAccess.getStatementRule()); } 
	 EOF 
;

// Rule Statement
ruleStatement 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getStatementAccess().getAlternatives()); }
		(rule__Statement__Alternatives)
		{ after(grammarAccess.getStatementAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRulePostfixExpression
entryRulePostfixExpression
:
{ before(grammarAccess.getPostfixExpressionRule()); }
	 rulePostfixExpression
{ after(grammarAccess.getPostfixExpressionRule()); } 
	 EOF 
;

// Rule PostfixExpression
rulePostfixExpression 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getPostfixExpressionAccess().getGroup()); }
		(rule__PostfixExpression__Group__0)
		{ after(grammarAccess.getPostfixExpressionAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleListExpression
entryRuleListExpression
:
{ before(grammarAccess.getListExpressionRule()); }
	 ruleListExpression
{ after(grammarAccess.getListExpressionRule()); } 
	 EOF 
;

// Rule ListExpression
ruleListExpression 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getListExpressionAccess().getGroup()); }
		(rule__ListExpression__Group__0)
		{ after(grammarAccess.getListExpressionAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRulePropertyOperator
entryRulePropertyOperator
:
{ before(grammarAccess.getPropertyOperatorRule()); }
	 rulePropertyOperator
{ after(grammarAccess.getPropertyOperatorRule()); } 
	 EOF 
;

// Rule PropertyOperator
rulePropertyOperator 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getPropertyOperatorAccess().getAlternatives()); }
		(rule__PropertyOperator__Alternatives)
		{ after(grammarAccess.getPropertyOperatorAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRulePrimaryExpression
entryRulePrimaryExpression
:
{ before(grammarAccess.getPrimaryExpressionRule()); }
	 rulePrimaryExpression
{ after(grammarAccess.getPrimaryExpressionRule()); } 
	 EOF 
;

// Rule PrimaryExpression
rulePrimaryExpression 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getPrimaryExpressionAccess().getAlternatives()); }
		(rule__PrimaryExpression__Alternatives)
		{ after(grammarAccess.getPrimaryExpressionAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ProgramDirective__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getProgramDirectiveAccess().getFunctionDefinitionParserRuleCall_0()); }
		ruleFunctionDefinition
		{ after(grammarAccess.getProgramDirectiveAccess().getFunctionDefinitionParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getProgramDirectiveAccess().getStatementParserRuleCall_1()); }
		ruleStatement
		{ after(grammarAccess.getProgramDirectiveAccess().getStatementParserRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAttributeAccess().getIdentAssignment_0()); }
		(rule__Attribute__IdentAssignment_0)
		{ after(grammarAccess.getAttributeAccess().getIdentAssignment_0()); }
	)
	|
	(
		{ before(grammarAccess.getAttributeAccess().getGroup_1()); }
		(rule__Attribute__Group_1__0)
		{ after(grammarAccess.getAttributeAccess().getGroup_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Statement__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStatementAccess().getBlockParserRuleCall_0()); }
		ruleBlock
		{ after(grammarAccess.getStatementAccess().getBlockParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getStatementAccess().getGroup_1()); }
		(rule__Statement__Group_1__0)
		{ after(grammarAccess.getStatementAccess().getGroup_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Statement__Alternatives_1_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStatementAccess().getSemicolonKeyword_1_2_0()); }
		';'
		{ after(grammarAccess.getStatementAccess().getSemicolonKeyword_1_2_0()); }
	)
	|
	(
		{ before(grammarAccess.getStatementAccess().getLTTerminalRuleCall_1_2_1()); }
		RULE_LT
		{ after(grammarAccess.getStatementAccess().getLTTerminalRuleCall_1_2_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PostfixExpression__Alternatives_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPostfixExpressionAccess().getGroup_1_0()); }
		(rule__PostfixExpression__Group_1_0__0)
		{ after(grammarAccess.getPostfixExpressionAccess().getGroup_1_0()); }
	)
	|
	(
		{ before(grammarAccess.getPostfixExpressionAccess().getGroup_1_1()); }
		(rule__PostfixExpression__Group_1_1__0)
		{ after(grammarAccess.getPostfixExpressionAccess().getGroup_1_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyOperator__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPropertyOperatorAccess().getGroup_0()); }
		(rule__PropertyOperator__Group_0__0)
		{ after(grammarAccess.getPropertyOperatorAccess().getGroup_0()); }
	)
	|
	(
		{ before(grammarAccess.getPropertyOperatorAccess().getGroup_1()); }
		(rule__PropertyOperator__Group_1__0)
		{ after(grammarAccess.getPropertyOperatorAccess().getGroup_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PrimaryExpression__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPrimaryExpressionAccess().getGroup_0()); }
		(rule__PrimaryExpression__Group_0__0)
		{ after(grammarAccess.getPrimaryExpressionAccess().getGroup_0()); }
	)
	|
	(
		{ before(grammarAccess.getPrimaryExpressionAccess().getGroup_1()); }
		(rule__PrimaryExpression__Group_1__0)
		{ after(grammarAccess.getPrimaryExpressionAccess().getGroup_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Program__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Program__Group__0__Impl
	rule__Program__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Program__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getProgramAccess().getProgramAction_0()); }
	()
	{ after(grammarAccess.getProgramAccess().getProgramAction_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Program__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Program__Group__1__Impl
	rule__Program__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Program__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getProgramAccess().getGroup_1()); }
	(rule__Program__Group_1__0)*
	{ after(grammarAccess.getProgramAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Program__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Program__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Program__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getProgramAccess().getLTTerminalRuleCall_2()); }
	(RULE_LT)*
	{ after(grammarAccess.getProgramAccess().getLTTerminalRuleCall_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Program__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Program__Group_1__0__Impl
	rule__Program__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Program__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getProgramAccess().getLTTerminalRuleCall_1_0()); }
	(RULE_LT)*
	{ after(grammarAccess.getProgramAccess().getLTTerminalRuleCall_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Program__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Program__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Program__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getProgramAccess().getDirectivesAssignment_1_1()); }
	(rule__Program__DirectivesAssignment_1_1)
	{ after(grammarAccess.getProgramAccess().getDirectivesAssignment_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__FunctionDefinition__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FunctionDefinition__Group__0__Impl
	rule__FunctionDefinition__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__FunctionDefinition__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFunctionDefinitionAccess().getAttributesAssignment_0()); }
	(rule__FunctionDefinition__AttributesAssignment_0)*
	{ after(grammarAccess.getFunctionDefinitionAccess().getAttributesAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__FunctionDefinition__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FunctionDefinition__Group__1__Impl
	rule__FunctionDefinition__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__FunctionDefinition__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFunctionDefinitionAccess().getFunctionKeyword_1()); }
	'function'
	{ after(grammarAccess.getFunctionDefinitionAccess().getFunctionKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__FunctionDefinition__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FunctionDefinition__Group__2__Impl
	rule__FunctionDefinition__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__FunctionDefinition__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFunctionDefinitionAccess().getLTTerminalRuleCall_2()); }
	(RULE_LT)*
	{ after(grammarAccess.getFunctionDefinitionAccess().getLTTerminalRuleCall_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__FunctionDefinition__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FunctionDefinition__Group__3__Impl
	rule__FunctionDefinition__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__FunctionDefinition__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFunctionDefinitionAccess().getNameAssignment_3()); }
	(rule__FunctionDefinition__NameAssignment_3)
	{ after(grammarAccess.getFunctionDefinitionAccess().getNameAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__FunctionDefinition__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FunctionDefinition__Group__4__Impl
	rule__FunctionDefinition__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__FunctionDefinition__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFunctionDefinitionAccess().getLTTerminalRuleCall_4()); }
	(RULE_LT)*
	{ after(grammarAccess.getFunctionDefinitionAccess().getLTTerminalRuleCall_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__FunctionDefinition__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FunctionDefinition__Group__5__Impl
	rule__FunctionDefinition__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__FunctionDefinition__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFunctionDefinitionAccess().getParamsAssignment_5()); }
	(rule__FunctionDefinition__ParamsAssignment_5)
	{ after(grammarAccess.getFunctionDefinitionAccess().getParamsAssignment_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__FunctionDefinition__Group__6
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FunctionDefinition__Group__6__Impl
	rule__FunctionDefinition__Group__7
;
finally {
	restoreStackSize(stackSize);
}

rule__FunctionDefinition__Group__6__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFunctionDefinitionAccess().getLTTerminalRuleCall_6()); }
	(RULE_LT)*
	{ after(grammarAccess.getFunctionDefinitionAccess().getLTTerminalRuleCall_6()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__FunctionDefinition__Group__7
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FunctionDefinition__Group__7__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__FunctionDefinition__Group__7__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFunctionDefinitionAccess().getBodyAssignment_7()); }
	(rule__FunctionDefinition__BodyAssignment_7)
	{ after(grammarAccess.getFunctionDefinitionAccess().getBodyAssignment_7()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Attribute__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute__Group_1__0__Impl
	rule__Attribute__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttributeAccess().getBracketAttributeAction_1_0()); }
	()
	{ after(grammarAccess.getAttributeAccess().getBracketAttributeAction_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute__Group_1__1__Impl
	rule__Attribute__Group_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttributeAccess().getLeftSquareBracketKeyword_1_1()); }
	'['
	{ after(grammarAccess.getAttributeAccess().getLeftSquareBracketKeyword_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute__Group_1__2__Impl
	rule__Attribute__Group_1__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttributeAccess().getLTTerminalRuleCall_1_2()); }
	(RULE_LT)*
	{ after(grammarAccess.getAttributeAccess().getLTTerminalRuleCall_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group_1__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute__Group_1__3__Impl
	rule__Attribute__Group_1__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group_1__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttributeAccess().getExpressionAssignment_1_3()); }
	(rule__Attribute__ExpressionAssignment_1_3)
	{ after(grammarAccess.getAttributeAccess().getExpressionAssignment_1_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group_1__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute__Group_1__4__Impl
	rule__Attribute__Group_1__5
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group_1__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttributeAccess().getLTTerminalRuleCall_1_4()); }
	(RULE_LT)*
	{ after(grammarAccess.getAttributeAccess().getLTTerminalRuleCall_1_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group_1__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute__Group_1__5__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group_1__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttributeAccess().getRightSquareBracketKeyword_1_5()); }
	']'
	{ after(grammarAccess.getAttributeAccess().getRightSquareBracketKeyword_1_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Parameters__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Parameters__Group__0__Impl
	rule__Parameters__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Parameters__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParametersAccess().getParametersAction_0()); }
	()
	{ after(grammarAccess.getParametersAccess().getParametersAction_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Parameters__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Parameters__Group__1__Impl
	rule__Parameters__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Parameters__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParametersAccess().getLeftParenthesisKeyword_1()); }
	'('
	{ after(grammarAccess.getParametersAccess().getLeftParenthesisKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Parameters__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Parameters__Group__2__Impl
	rule__Parameters__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Parameters__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParametersAccess().getLTTerminalRuleCall_2()); }
	(RULE_LT)*
	{ after(grammarAccess.getParametersAccess().getLTTerminalRuleCall_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Parameters__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Parameters__Group__3__Impl
	rule__Parameters__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Parameters__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParametersAccess().getGroup_3()); }
	(rule__Parameters__Group_3__0)?
	{ after(grammarAccess.getParametersAccess().getGroup_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Parameters__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Parameters__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Parameters__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParametersAccess().getRightParenthesisKeyword_4()); }
	')'
	{ after(grammarAccess.getParametersAccess().getRightParenthesisKeyword_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Parameters__Group_3__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Parameters__Group_3__0__Impl
	rule__Parameters__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Parameters__Group_3__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParametersAccess().getParamsAssignment_3_0()); }
	(rule__Parameters__ParamsAssignment_3_0)
	{ after(grammarAccess.getParametersAccess().getParamsAssignment_3_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Parameters__Group_3__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Parameters__Group_3__1__Impl
	rule__Parameters__Group_3__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Parameters__Group_3__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParametersAccess().getLTTerminalRuleCall_3_1()); }
	(RULE_LT)*
	{ after(grammarAccess.getParametersAccess().getLTTerminalRuleCall_3_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Parameters__Group_3__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Parameters__Group_3__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Parameters__Group_3__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParametersAccess().getGroup_3_2()); }
	(rule__Parameters__Group_3_2__0)*
	{ after(grammarAccess.getParametersAccess().getGroup_3_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Parameters__Group_3_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Parameters__Group_3_2__0__Impl
	rule__Parameters__Group_3_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Parameters__Group_3_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParametersAccess().getCommaKeyword_3_2_0()); }
	','
	{ after(grammarAccess.getParametersAccess().getCommaKeyword_3_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Parameters__Group_3_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Parameters__Group_3_2__1__Impl
	rule__Parameters__Group_3_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Parameters__Group_3_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParametersAccess().getLTTerminalRuleCall_3_2_1()); }
	(RULE_LT)*
	{ after(grammarAccess.getParametersAccess().getLTTerminalRuleCall_3_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Parameters__Group_3_2__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Parameters__Group_3_2__2__Impl
	rule__Parameters__Group_3_2__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Parameters__Group_3_2__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParametersAccess().getParamsAssignment_3_2_2()); }
	(rule__Parameters__ParamsAssignment_3_2_2)
	{ after(grammarAccess.getParametersAccess().getParamsAssignment_3_2_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Parameters__Group_3_2__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Parameters__Group_3_2__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Parameters__Group_3_2__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getParametersAccess().getLTTerminalRuleCall_3_2_3()); }
	(RULE_LT)*
	{ after(grammarAccess.getParametersAccess().getLTTerminalRuleCall_3_2_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Block__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Block__Group__0__Impl
	rule__Block__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Block__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBlockAccess().getBlockAction_0()); }
	()
	{ after(grammarAccess.getBlockAccess().getBlockAction_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Block__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Block__Group__1__Impl
	rule__Block__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Block__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBlockAccess().getLeftCurlyBracketKeyword_1()); }
	'{'
	{ after(grammarAccess.getBlockAccess().getLeftCurlyBracketKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Block__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Block__Group__2__Impl
	rule__Block__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Block__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBlockAccess().getGroup_2()); }
	(rule__Block__Group_2__0)*
	{ after(grammarAccess.getBlockAccess().getGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Block__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Block__Group__3__Impl
	rule__Block__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Block__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBlockAccess().getLTTerminalRuleCall_3()); }
	(RULE_LT)*
	{ after(grammarAccess.getBlockAccess().getLTTerminalRuleCall_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Block__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Block__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Block__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBlockAccess().getRightCurlyBracketKeyword_4()); }
	'}'
	{ after(grammarAccess.getBlockAccess().getRightCurlyBracketKeyword_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Block__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Block__Group_2__0__Impl
	rule__Block__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Block__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBlockAccess().getLTTerminalRuleCall_2_0()); }
	(RULE_LT)*
	{ after(grammarAccess.getBlockAccess().getLTTerminalRuleCall_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Block__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Block__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Block__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBlockAccess().getDirectivesAssignment_2_1()); }
	(rule__Block__DirectivesAssignment_2_1)
	{ after(grammarAccess.getBlockAccess().getDirectivesAssignment_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Statement__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Statement__Group_1__0__Impl
	rule__Statement__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Statement__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStatementAccess().getExpressionStatementAction_1_0()); }
	()
	{ after(grammarAccess.getStatementAccess().getExpressionStatementAction_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Statement__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Statement__Group_1__1__Impl
	rule__Statement__Group_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Statement__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStatementAccess().getExpressionAssignment_1_1()); }
	(rule__Statement__ExpressionAssignment_1_1)
	{ after(grammarAccess.getStatementAccess().getExpressionAssignment_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Statement__Group_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Statement__Group_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Statement__Group_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getStatementAccess().getAlternatives_1_2()); }
	(rule__Statement__Alternatives_1_2)
	{ after(grammarAccess.getStatementAccess().getAlternatives_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__PostfixExpression__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PostfixExpression__Group__0__Impl
	rule__PostfixExpression__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PostfixExpression__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPostfixExpressionAccess().getPrimaryExpressionParserRuleCall_0()); }
	rulePrimaryExpression
	{ after(grammarAccess.getPostfixExpressionAccess().getPrimaryExpressionParserRuleCall_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PostfixExpression__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PostfixExpression__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PostfixExpression__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPostfixExpressionAccess().getAlternatives_1()); }
	(rule__PostfixExpression__Alternatives_1)*
	{ after(grammarAccess.getPostfixExpressionAccess().getAlternatives_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__PostfixExpression__Group_1_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PostfixExpression__Group_1_0__0__Impl
	rule__PostfixExpression__Group_1_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PostfixExpression__Group_1_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPostfixExpressionAccess().getPostfixExpressionExpressionAction_1_0_0()); }
	()
	{ after(grammarAccess.getPostfixExpressionAccess().getPostfixExpressionExpressionAction_1_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PostfixExpression__Group_1_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PostfixExpression__Group_1_0__1__Impl
	rule__PostfixExpression__Group_1_0__2
;
finally {
	restoreStackSize(stackSize);
}

rule__PostfixExpression__Group_1_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPostfixExpressionAccess().getLTTerminalRuleCall_1_0_1()); }
	(RULE_LT)*
	{ after(grammarAccess.getPostfixExpressionAccess().getLTTerminalRuleCall_1_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PostfixExpression__Group_1_0__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PostfixExpression__Group_1_0__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PostfixExpression__Group_1_0__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPostfixExpressionAccess().getPropertyAssignment_1_0_2()); }
	(rule__PostfixExpression__PropertyAssignment_1_0_2)
	{ after(grammarAccess.getPostfixExpressionAccess().getPropertyAssignment_1_0_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__PostfixExpression__Group_1_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PostfixExpression__Group_1_1__0__Impl
	rule__PostfixExpression__Group_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PostfixExpression__Group_1_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPostfixExpressionAccess().getInvocationExpressionAction_1_1_0()); }
	()
	{ after(grammarAccess.getPostfixExpressionAccess().getInvocationExpressionAction_1_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PostfixExpression__Group_1_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PostfixExpression__Group_1_1__1__Impl
	rule__PostfixExpression__Group_1_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__PostfixExpression__Group_1_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPostfixExpressionAccess().getLTTerminalRuleCall_1_1_1()); }
	(RULE_LT)*
	{ after(grammarAccess.getPostfixExpressionAccess().getLTTerminalRuleCall_1_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PostfixExpression__Group_1_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PostfixExpression__Group_1_1__2__Impl
	rule__PostfixExpression__Group_1_1__3
;
finally {
	restoreStackSize(stackSize);
}

rule__PostfixExpression__Group_1_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPostfixExpressionAccess().getLeftParenthesisKeyword_1_1_2()); }
	'('
	{ after(grammarAccess.getPostfixExpressionAccess().getLeftParenthesisKeyword_1_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PostfixExpression__Group_1_1__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PostfixExpression__Group_1_1__3__Impl
	rule__PostfixExpression__Group_1_1__4
;
finally {
	restoreStackSize(stackSize);
}

rule__PostfixExpression__Group_1_1__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPostfixExpressionAccess().getLTTerminalRuleCall_1_1_3()); }
	(RULE_LT)*
	{ after(grammarAccess.getPostfixExpressionAccess().getLTTerminalRuleCall_1_1_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PostfixExpression__Group_1_1__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PostfixExpression__Group_1_1__4__Impl
	rule__PostfixExpression__Group_1_1__5
;
finally {
	restoreStackSize(stackSize);
}

rule__PostfixExpression__Group_1_1__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPostfixExpressionAccess().getGroup_1_1_4()); }
	(rule__PostfixExpression__Group_1_1_4__0)?
	{ after(grammarAccess.getPostfixExpressionAccess().getGroup_1_1_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PostfixExpression__Group_1_1__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PostfixExpression__Group_1_1__5__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PostfixExpression__Group_1_1__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPostfixExpressionAccess().getRightParenthesisKeyword_1_1_5()); }
	')'
	{ after(grammarAccess.getPostfixExpressionAccess().getRightParenthesisKeyword_1_1_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__PostfixExpression__Group_1_1_4__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PostfixExpression__Group_1_1_4__0__Impl
	rule__PostfixExpression__Group_1_1_4__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PostfixExpression__Group_1_1_4__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPostfixExpressionAccess().getArgumentsAssignment_1_1_4_0()); }
	(rule__PostfixExpression__ArgumentsAssignment_1_1_4_0)
	{ after(grammarAccess.getPostfixExpressionAccess().getArgumentsAssignment_1_1_4_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PostfixExpression__Group_1_1_4__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PostfixExpression__Group_1_1_4__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PostfixExpression__Group_1_1_4__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPostfixExpressionAccess().getLTTerminalRuleCall_1_1_4_1()); }
	(RULE_LT)*
	{ after(grammarAccess.getPostfixExpressionAccess().getLTTerminalRuleCall_1_1_4_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ListExpression__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ListExpression__Group__0__Impl
	rule__ListExpression__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ListExpression__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getListExpressionAccess().getExpressionsAssignment_0()); }
	(rule__ListExpression__ExpressionsAssignment_0)
	{ after(grammarAccess.getListExpressionAccess().getExpressionsAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ListExpression__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ListExpression__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ListExpression__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getListExpressionAccess().getGroup_1()); }
	(rule__ListExpression__Group_1__0)*
	{ after(grammarAccess.getListExpressionAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ListExpression__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ListExpression__Group_1__0__Impl
	rule__ListExpression__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ListExpression__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getListExpressionAccess().getLTTerminalRuleCall_1_0()); }
	(RULE_LT)*
	{ after(grammarAccess.getListExpressionAccess().getLTTerminalRuleCall_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ListExpression__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ListExpression__Group_1__1__Impl
	rule__ListExpression__Group_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ListExpression__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getListExpressionAccess().getCommaKeyword_1_1()); }
	','
	{ after(grammarAccess.getListExpressionAccess().getCommaKeyword_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ListExpression__Group_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ListExpression__Group_1__2__Impl
	rule__ListExpression__Group_1__3
;
finally {
	restoreStackSize(stackSize);
}

rule__ListExpression__Group_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getListExpressionAccess().getLTTerminalRuleCall_1_2()); }
	(RULE_LT)*
	{ after(grammarAccess.getListExpressionAccess().getLTTerminalRuleCall_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ListExpression__Group_1__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ListExpression__Group_1__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ListExpression__Group_1__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getListExpressionAccess().getExpressionsAssignment_1_3()); }
	(rule__ListExpression__ExpressionsAssignment_1_3)
	{ after(grammarAccess.getListExpressionAccess().getExpressionsAssignment_1_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__PropertyOperator__Group_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyOperator__Group_0__0__Impl
	rule__PropertyOperator__Group_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyOperator__Group_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyOperatorAccess().getFullStopKeyword_0_0()); }
	'.'
	{ after(grammarAccess.getPropertyOperatorAccess().getFullStopKeyword_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyOperator__Group_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyOperator__Group_0__1__Impl
	rule__PropertyOperator__Group_0__2
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyOperator__Group_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyOperatorAccess().getLTTerminalRuleCall_0_1()); }
	(RULE_LT)*
	{ after(grammarAccess.getPropertyOperatorAccess().getLTTerminalRuleCall_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyOperator__Group_0__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyOperator__Group_0__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyOperator__Group_0__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyOperatorAccess().getNameAssignment_0_2()); }
	(rule__PropertyOperator__NameAssignment_0_2)
	{ after(grammarAccess.getPropertyOperatorAccess().getNameAssignment_0_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__PropertyOperator__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyOperator__Group_1__0__Impl
	rule__PropertyOperator__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyOperator__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyOperatorAccess().getLeftSquareBracketKeyword_1_0()); }
	'['
	{ after(grammarAccess.getPropertyOperatorAccess().getLeftSquareBracketKeyword_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyOperator__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyOperator__Group_1__1__Impl
	rule__PropertyOperator__Group_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyOperator__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyOperatorAccess().getLTTerminalRuleCall_1_1()); }
	(RULE_LT)*
	{ after(grammarAccess.getPropertyOperatorAccess().getLTTerminalRuleCall_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyOperator__Group_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyOperator__Group_1__2__Impl
	rule__PropertyOperator__Group_1__3
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyOperator__Group_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyOperatorAccess().getExpressionsAssignment_1_2()); }
	(rule__PropertyOperator__ExpressionsAssignment_1_2)
	{ after(grammarAccess.getPropertyOperatorAccess().getExpressionsAssignment_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyOperator__Group_1__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyOperator__Group_1__3__Impl
	rule__PropertyOperator__Group_1__4
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyOperator__Group_1__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyOperatorAccess().getLTTerminalRuleCall_1_3()); }
	(RULE_LT)*
	{ after(grammarAccess.getPropertyOperatorAccess().getLTTerminalRuleCall_1_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyOperator__Group_1__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PropertyOperator__Group_1__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyOperator__Group_1__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPropertyOperatorAccess().getRightSquareBracketKeyword_1_4()); }
	']'
	{ after(grammarAccess.getPropertyOperatorAccess().getRightSquareBracketKeyword_1_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__PrimaryExpression__Group_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PrimaryExpression__Group_0__0__Impl
	rule__PrimaryExpression__Group_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PrimaryExpression__Group_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPrimaryExpressionAccess().getIdentifierAction_0_0()); }
	()
	{ after(grammarAccess.getPrimaryExpressionAccess().getIdentifierAction_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PrimaryExpression__Group_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PrimaryExpression__Group_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PrimaryExpression__Group_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPrimaryExpressionAccess().getNameAssignment_0_1()); }
	(rule__PrimaryExpression__NameAssignment_0_1)
	{ after(grammarAccess.getPrimaryExpressionAccess().getNameAssignment_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__PrimaryExpression__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PrimaryExpression__Group_1__0__Impl
	rule__PrimaryExpression__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PrimaryExpression__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPrimaryExpressionAccess().getFunctionExpressionAction_1_0()); }
	()
	{ after(grammarAccess.getPrimaryExpressionAccess().getFunctionExpressionAction_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PrimaryExpression__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PrimaryExpression__Group_1__1__Impl
	rule__PrimaryExpression__Group_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__PrimaryExpression__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPrimaryExpressionAccess().getFunctionKeyword_1_1()); }
	'function'
	{ after(grammarAccess.getPrimaryExpressionAccess().getFunctionKeyword_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PrimaryExpression__Group_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PrimaryExpression__Group_1__2__Impl
	rule__PrimaryExpression__Group_1__3
;
finally {
	restoreStackSize(stackSize);
}

rule__PrimaryExpression__Group_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPrimaryExpressionAccess().getLTTerminalRuleCall_1_2()); }
	(RULE_LT)*
	{ after(grammarAccess.getPrimaryExpressionAccess().getLTTerminalRuleCall_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PrimaryExpression__Group_1__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PrimaryExpression__Group_1__3__Impl
	rule__PrimaryExpression__Group_1__4
;
finally {
	restoreStackSize(stackSize);
}

rule__PrimaryExpression__Group_1__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPrimaryExpressionAccess().getParamsAssignment_1_3()); }
	(rule__PrimaryExpression__ParamsAssignment_1_3)
	{ after(grammarAccess.getPrimaryExpressionAccess().getParamsAssignment_1_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PrimaryExpression__Group_1__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PrimaryExpression__Group_1__4__Impl
	rule__PrimaryExpression__Group_1__5
;
finally {
	restoreStackSize(stackSize);
}

rule__PrimaryExpression__Group_1__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPrimaryExpressionAccess().getLTTerminalRuleCall_1_4()); }
	(RULE_LT)*
	{ after(grammarAccess.getPrimaryExpressionAccess().getLTTerminalRuleCall_1_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PrimaryExpression__Group_1__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PrimaryExpression__Group_1__5__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PrimaryExpression__Group_1__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPrimaryExpressionAccess().getBodyAssignment_1_5()); }
	(rule__PrimaryExpression__BodyAssignment_1_5)
	{ after(grammarAccess.getPrimaryExpressionAccess().getBodyAssignment_1_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Program__DirectivesAssignment_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getProgramAccess().getDirectivesProgramDirectiveParserRuleCall_1_1_0()); }
		ruleProgramDirective
		{ after(grammarAccess.getProgramAccess().getDirectivesProgramDirectiveParserRuleCall_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__FunctionDefinition__AttributesAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getFunctionDefinitionAccess().getAttributesAttributeParserRuleCall_0_0()); }
		ruleAttribute
		{ after(grammarAccess.getFunctionDefinitionAccess().getAttributesAttributeParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__FunctionDefinition__NameAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getFunctionDefinitionAccess().getNameIDTerminalRuleCall_3_0()); }
		RULE_ID
		{ after(grammarAccess.getFunctionDefinitionAccess().getNameIDTerminalRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__FunctionDefinition__ParamsAssignment_5
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getFunctionDefinitionAccess().getParamsParametersParserRuleCall_5_0()); }
		ruleParameters
		{ after(grammarAccess.getFunctionDefinitionAccess().getParamsParametersParserRuleCall_5_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__FunctionDefinition__BodyAssignment_7
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getFunctionDefinitionAccess().getBodyBlockParserRuleCall_7_0()); }
		ruleBlock
		{ after(grammarAccess.getFunctionDefinitionAccess().getBodyBlockParserRuleCall_7_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__IdentAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAttributeAccess().getIdentIDTerminalRuleCall_0_0()); }
		RULE_ID
		{ after(grammarAccess.getAttributeAccess().getIdentIDTerminalRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__ExpressionAssignment_1_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAttributeAccess().getExpressionPostfixExpressionParserRuleCall_1_3_0()); }
		rulePostfixExpression
		{ after(grammarAccess.getAttributeAccess().getExpressionPostfixExpressionParserRuleCall_1_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Parameters__ParamsAssignment_3_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getParametersAccess().getParamsIDTerminalRuleCall_3_0_0()); }
		RULE_ID
		{ after(grammarAccess.getParametersAccess().getParamsIDTerminalRuleCall_3_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Parameters__ParamsAssignment_3_2_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getParametersAccess().getParamsIDTerminalRuleCall_3_2_2_0()); }
		RULE_ID
		{ after(grammarAccess.getParametersAccess().getParamsIDTerminalRuleCall_3_2_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Block__DirectivesAssignment_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getBlockAccess().getDirectivesStatementParserRuleCall_2_1_0()); }
		ruleStatement
		{ after(grammarAccess.getBlockAccess().getDirectivesStatementParserRuleCall_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Statement__ExpressionAssignment_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getStatementAccess().getExpressionPostfixExpressionParserRuleCall_1_1_0()); }
		rulePostfixExpression
		{ after(grammarAccess.getStatementAccess().getExpressionPostfixExpressionParserRuleCall_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PostfixExpression__PropertyAssignment_1_0_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPostfixExpressionAccess().getPropertyPropertyOperatorParserRuleCall_1_0_2_0()); }
		rulePropertyOperator
		{ after(grammarAccess.getPostfixExpressionAccess().getPropertyPropertyOperatorParserRuleCall_1_0_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PostfixExpression__ArgumentsAssignment_1_1_4_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPostfixExpressionAccess().getArgumentsListExpressionParserRuleCall_1_1_4_0_0()); }
		ruleListExpression
		{ after(grammarAccess.getPostfixExpressionAccess().getArgumentsListExpressionParserRuleCall_1_1_4_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ListExpression__ExpressionsAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getListExpressionAccess().getExpressionsPostfixExpressionParserRuleCall_0_0()); }
		rulePostfixExpression
		{ after(grammarAccess.getListExpressionAccess().getExpressionsPostfixExpressionParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ListExpression__ExpressionsAssignment_1_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getListExpressionAccess().getExpressionsPostfixExpressionParserRuleCall_1_3_0()); }
		rulePostfixExpression
		{ after(grammarAccess.getListExpressionAccess().getExpressionsPostfixExpressionParserRuleCall_1_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyOperator__NameAssignment_0_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPropertyOperatorAccess().getNameIDTerminalRuleCall_0_2_0()); }
		RULE_ID
		{ after(grammarAccess.getPropertyOperatorAccess().getNameIDTerminalRuleCall_0_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PropertyOperator__ExpressionsAssignment_1_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPropertyOperatorAccess().getExpressionsListExpressionParserRuleCall_1_2_0()); }
		ruleListExpression
		{ after(grammarAccess.getPropertyOperatorAccess().getExpressionsListExpressionParserRuleCall_1_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PrimaryExpression__NameAssignment_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPrimaryExpressionAccess().getNameIDTerminalRuleCall_0_1_0()); }
		RULE_ID
		{ after(grammarAccess.getPrimaryExpressionAccess().getNameIDTerminalRuleCall_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PrimaryExpression__ParamsAssignment_1_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPrimaryExpressionAccess().getParamsParametersParserRuleCall_1_3_0()); }
		ruleParameters
		{ after(grammarAccess.getPrimaryExpressionAccess().getParamsParametersParserRuleCall_1_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PrimaryExpression__BodyAssignment_1_5
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPrimaryExpressionAccess().getBodyBlockParserRuleCall_1_5_0()); }
		ruleBlock
		{ after(grammarAccess.getPrimaryExpressionAccess().getBodyBlockParserRuleCall_1_5_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

RULE_ID : ('a'..'z'|'A'..'Z')+;

RULE_WS : (' '|'\t')+;

RULE_LT : ('\r'|'\n');

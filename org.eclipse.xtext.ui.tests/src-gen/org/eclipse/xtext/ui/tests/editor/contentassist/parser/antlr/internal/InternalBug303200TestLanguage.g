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
	superClass=AbstractInternalAntlrParser;
	backtrack=true;
}

@lexer::header {
package org.eclipse.xtext.ui.tests.editor.contentassist.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.eclipse.xtext.ui.tests.editor.contentassist.parser.antlr.internal;

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug303200TestLanguageGrammarAccess;

}

@parser::members {

/*
  This grammar contains a lot of empty actions to work around a bug in ANTLR.
  Otherwise the ANTLR tool will create synpreds that cannot be compiled in some rare cases.
*/

 	private Bug303200TestLanguageGrammarAccess grammarAccess;

    public InternalBug303200TestLanguageParser(TokenStream input, Bug303200TestLanguageGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "Program";
   	}

   	@Override
   	protected Bug303200TestLanguageGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}

}

@rulecatch {
    catch (RecognitionException re) {
        recover(input,re);
        appendSkippedTokens();
    }
}

// Entry rule entryRuleProgram
entryRuleProgram returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getProgramRule()); }
	iv_ruleProgram=ruleProgram
	{ $current=$iv_ruleProgram.current; }
	EOF;

// Rule Program
ruleProgram returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				/* */
			}
			{
				$current = forceCreateModelElement(
					grammarAccess.getProgramAccess().getProgramAction_0(),
					$current);
			}
		)
		(
			(
				this_LT_1=RULE_LT
				{
					newLeafNode(this_LT_1, grammarAccess.getProgramAccess().getLTTerminalRuleCall_1_0());
				}
			)*
			(
				(
					{
						newCompositeNode(grammarAccess.getProgramAccess().getDirectivesProgramDirectiveParserRuleCall_1_1_0());
					}
					lv_directives_2_0=ruleProgramDirective
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getProgramRule());
						}
						add(
							$current,
							"directives",
							lv_directives_2_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug303200TestLanguage.ProgramDirective");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)*
		(
			this_LT_3=RULE_LT
			{
				newLeafNode(this_LT_3, grammarAccess.getProgramAccess().getLTTerminalRuleCall_2());
			}
		)*
	)
;

// Entry rule entryRuleProgramDirective
entryRuleProgramDirective returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getProgramDirectiveRule()); }
	iv_ruleProgramDirective=ruleProgramDirective
	{ $current=$iv_ruleProgramDirective.current; }
	EOF;

// Rule ProgramDirective
ruleProgramDirective returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getProgramDirectiveAccess().getFunctionDefinitionParserRuleCall_0());
		}
		this_FunctionDefinition_0=ruleFunctionDefinition
		{
			$current = $this_FunctionDefinition_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getProgramDirectiveAccess().getStatementParserRuleCall_1());
		}
		this_Statement_1=ruleStatement
		{
			$current = $this_Statement_1.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleFunctionDefinition
entryRuleFunctionDefinition returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getFunctionDefinitionRule()); }
	iv_ruleFunctionDefinition=ruleFunctionDefinition
	{ $current=$iv_ruleFunctionDefinition.current; }
	EOF;

// Rule FunctionDefinition
ruleFunctionDefinition returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					newCompositeNode(grammarAccess.getFunctionDefinitionAccess().getAttributesAttributeParserRuleCall_0_0());
				}
				lv_attributes_0_0=ruleAttribute
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getFunctionDefinitionRule());
					}
					add(
						$current,
						"attributes",
						lv_attributes_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug303200TestLanguage.Attribute");
					afterParserOrEnumRuleCall();
				}
			)
		)*
		otherlv_1='function'
		{
			newLeafNode(otherlv_1, grammarAccess.getFunctionDefinitionAccess().getFunctionKeyword_1());
		}
		(
			this_LT_2=RULE_LT
			{
				newLeafNode(this_LT_2, grammarAccess.getFunctionDefinitionAccess().getLTTerminalRuleCall_2());
			}
		)*
		(
			(
				lv_name_3_0=RULE_ID
				{
					newLeafNode(lv_name_3_0, grammarAccess.getFunctionDefinitionAccess().getNameIDTerminalRuleCall_3_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getFunctionDefinitionRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_3_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug303200TestLanguage.ID");
				}
			)
		)
		(
			this_LT_4=RULE_LT
			{
				newLeafNode(this_LT_4, grammarAccess.getFunctionDefinitionAccess().getLTTerminalRuleCall_4());
			}
		)*
		(
			(
				{
					newCompositeNode(grammarAccess.getFunctionDefinitionAccess().getParamsParametersParserRuleCall_5_0());
				}
				lv_params_5_0=ruleParameters
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getFunctionDefinitionRule());
					}
					set(
						$current,
						"params",
						lv_params_5_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug303200TestLanguage.Parameters");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			this_LT_6=RULE_LT
			{
				newLeafNode(this_LT_6, grammarAccess.getFunctionDefinitionAccess().getLTTerminalRuleCall_6());
			}
		)*
		(
			(
				{
					newCompositeNode(grammarAccess.getFunctionDefinitionAccess().getBodyBlockParserRuleCall_7_0());
				}
				lv_body_7_0=ruleBlock
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getFunctionDefinitionRule());
					}
					set(
						$current,
						"body",
						lv_body_7_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug303200TestLanguage.Block");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleAttribute
entryRuleAttribute returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getAttributeRule()); }
	iv_ruleAttribute=ruleAttribute
	{ $current=$iv_ruleAttribute.current; }
	EOF;

// Rule Attribute
ruleAttribute returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				lv_ident_0_0=RULE_ID
				{
					newLeafNode(lv_ident_0_0, grammarAccess.getAttributeAccess().getIdentIDTerminalRuleCall_0_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getAttributeRule());
					}
					setWithLastConsumed(
						$current,
						"ident",
						lv_ident_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug303200TestLanguage.ID");
				}
			)
		)
		    |
		(
			(
				{
					/* */
				}
				{
					$current = forceCreateModelElement(
						grammarAccess.getAttributeAccess().getBracketAttributeAction_1_0(),
						$current);
				}
			)
			otherlv_2='['
			{
				newLeafNode(otherlv_2, grammarAccess.getAttributeAccess().getLeftSquareBracketKeyword_1_1());
			}
			(
				this_LT_3=RULE_LT
				{
					newLeafNode(this_LT_3, grammarAccess.getAttributeAccess().getLTTerminalRuleCall_1_2());
				}
			)*
			(
				(
					{
						newCompositeNode(grammarAccess.getAttributeAccess().getExpressionPostfixExpressionParserRuleCall_1_3_0());
					}
					lv_expression_4_0=rulePostfixExpression
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getAttributeRule());
						}
						set(
							$current,
							"expression",
							lv_expression_4_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug303200TestLanguage.PostfixExpression");
						afterParserOrEnumRuleCall();
					}
				)
			)
			(
				this_LT_5=RULE_LT
				{
					newLeafNode(this_LT_5, grammarAccess.getAttributeAccess().getLTTerminalRuleCall_1_4());
				}
			)*
			otherlv_6=']'
			{
				newLeafNode(otherlv_6, grammarAccess.getAttributeAccess().getRightSquareBracketKeyword_1_5());
			}
		)
	)
;

// Entry rule entryRuleParameters
entryRuleParameters returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getParametersRule()); }
	iv_ruleParameters=ruleParameters
	{ $current=$iv_ruleParameters.current; }
	EOF;

// Rule Parameters
ruleParameters returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				/* */
			}
			{
				$current = forceCreateModelElement(
					grammarAccess.getParametersAccess().getParametersAction_0(),
					$current);
			}
		)
		otherlv_1='('
		{
			newLeafNode(otherlv_1, grammarAccess.getParametersAccess().getLeftParenthesisKeyword_1());
		}
		(
			this_LT_2=RULE_LT
			{
				newLeafNode(this_LT_2, grammarAccess.getParametersAccess().getLTTerminalRuleCall_2());
			}
		)*
		(
			(
				(
					lv_params_3_0=RULE_ID
					{
						newLeafNode(lv_params_3_0, grammarAccess.getParametersAccess().getParamsIDTerminalRuleCall_3_0_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getParametersRule());
						}
						addWithLastConsumed(
							$current,
							"params",
							lv_params_3_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug303200TestLanguage.ID");
					}
				)
			)
			(
				this_LT_4=RULE_LT
				{
					newLeafNode(this_LT_4, grammarAccess.getParametersAccess().getLTTerminalRuleCall_3_1());
				}
			)*
			(
				otherlv_5=','
				{
					newLeafNode(otherlv_5, grammarAccess.getParametersAccess().getCommaKeyword_3_2_0());
				}
				(
					this_LT_6=RULE_LT
					{
						newLeafNode(this_LT_6, grammarAccess.getParametersAccess().getLTTerminalRuleCall_3_2_1());
					}
				)*
				(
					(
						lv_params_7_0=RULE_ID
						{
							newLeafNode(lv_params_7_0, grammarAccess.getParametersAccess().getParamsIDTerminalRuleCall_3_2_2_0());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getParametersRule());
							}
							addWithLastConsumed(
								$current,
								"params",
								lv_params_7_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.Bug303200TestLanguage.ID");
						}
					)
				)
				(
					this_LT_8=RULE_LT
					{
						newLeafNode(this_LT_8, grammarAccess.getParametersAccess().getLTTerminalRuleCall_3_2_3());
					}
				)*
			)*
		)?
		otherlv_9=')'
		{
			newLeafNode(otherlv_9, grammarAccess.getParametersAccess().getRightParenthesisKeyword_4());
		}
	)
;

// Entry rule entryRuleBlock
entryRuleBlock returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getBlockRule()); }
	iv_ruleBlock=ruleBlock
	{ $current=$iv_ruleBlock.current; }
	EOF;

// Rule Block
ruleBlock returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				/* */
			}
			{
				$current = forceCreateModelElement(
					grammarAccess.getBlockAccess().getBlockAction_0(),
					$current);
			}
		)
		otherlv_1='{'
		{
			newLeafNode(otherlv_1, grammarAccess.getBlockAccess().getLeftCurlyBracketKeyword_1());
		}
		(
			(
				this_LT_2=RULE_LT
				{
					newLeafNode(this_LT_2, grammarAccess.getBlockAccess().getLTTerminalRuleCall_2_0());
				}
			)*
			(
				(
					{
						newCompositeNode(grammarAccess.getBlockAccess().getDirectivesStatementParserRuleCall_2_1_0());
					}
					lv_directives_3_0=ruleStatement
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getBlockRule());
						}
						add(
							$current,
							"directives",
							lv_directives_3_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug303200TestLanguage.Statement");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)*
		(
			this_LT_4=RULE_LT
			{
				newLeafNode(this_LT_4, grammarAccess.getBlockAccess().getLTTerminalRuleCall_3());
			}
		)*
		otherlv_5='}'
		{
			newLeafNode(otherlv_5, grammarAccess.getBlockAccess().getRightCurlyBracketKeyword_4());
		}
	)
;

// Entry rule entryRuleStatement
entryRuleStatement returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getStatementRule()); }
	iv_ruleStatement=ruleStatement
	{ $current=$iv_ruleStatement.current; }
	EOF;

// Rule Statement
ruleStatement returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getStatementAccess().getBlockParserRuleCall_0());
		}
		this_Block_0=ruleBlock
		{
			$current = $this_Block_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		(
			(
				{
					/* */
				}
				{
					$current = forceCreateModelElement(
						grammarAccess.getStatementAccess().getExpressionStatementAction_1_0(),
						$current);
				}
			)
			(
				(
					{
						newCompositeNode(grammarAccess.getStatementAccess().getExpressionPostfixExpressionParserRuleCall_1_1_0());
					}
					lv_expression_2_0=rulePostfixExpression
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getStatementRule());
						}
						set(
							$current,
							"expression",
							lv_expression_2_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug303200TestLanguage.PostfixExpression");
						afterParserOrEnumRuleCall();
					}
				)
			)
			(
				otherlv_3=';'
				{
					newLeafNode(otherlv_3, grammarAccess.getStatementAccess().getSemicolonKeyword_1_2_0());
				}
				    |
				this_LT_4=RULE_LT
				{
					newLeafNode(this_LT_4, grammarAccess.getStatementAccess().getLTTerminalRuleCall_1_2_1());
				}
			)
		)
	)
;

// Entry rule entryRulePostfixExpression
entryRulePostfixExpression returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getPostfixExpressionRule()); }
	iv_rulePostfixExpression=rulePostfixExpression
	{ $current=$iv_rulePostfixExpression.current; }
	EOF;

// Rule PostfixExpression
rulePostfixExpression returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getPostfixExpressionAccess().getPrimaryExpressionParserRuleCall_0());
		}
		this_PrimaryExpression_0=rulePrimaryExpression
		{
			$current = $this_PrimaryExpression_0.current;
			afterParserOrEnumRuleCall();
		}
		(
			(
				(
					{
						/* */
					}
					{
						$current = forceCreateModelElementAndSet(
							grammarAccess.getPostfixExpressionAccess().getPostfixExpressionExpressionAction_1_0_0(),
							$current);
					}
				)
				(
					this_LT_2=RULE_LT
					{
						newLeafNode(this_LT_2, grammarAccess.getPostfixExpressionAccess().getLTTerminalRuleCall_1_0_1());
					}
				)*
				(
					(
						{
							newCompositeNode(grammarAccess.getPostfixExpressionAccess().getPropertyPropertyOperatorParserRuleCall_1_0_2_0());
						}
						lv_property_3_0=rulePropertyOperator
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getPostfixExpressionRule());
							}
							set(
								$current,
								"property",
								lv_property_3_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.Bug303200TestLanguage.PropertyOperator");
							afterParserOrEnumRuleCall();
						}
					)
				)
			)
			    |
			(
				(
					{
						/* */
					}
					{
						$current = forceCreateModelElementAndSet(
							grammarAccess.getPostfixExpressionAccess().getInvocationExpressionAction_1_1_0(),
							$current);
					}
				)
				(
					this_LT_5=RULE_LT
					{
						newLeafNode(this_LT_5, grammarAccess.getPostfixExpressionAccess().getLTTerminalRuleCall_1_1_1());
					}
				)*
				otherlv_6='('
				{
					newLeafNode(otherlv_6, grammarAccess.getPostfixExpressionAccess().getLeftParenthesisKeyword_1_1_2());
				}
				(
					this_LT_7=RULE_LT
					{
						newLeafNode(this_LT_7, grammarAccess.getPostfixExpressionAccess().getLTTerminalRuleCall_1_1_3());
					}
				)*
				(
					(
						(
							{
								newCompositeNode(grammarAccess.getPostfixExpressionAccess().getArgumentsListExpressionParserRuleCall_1_1_4_0_0());
							}
							lv_arguments_8_0=ruleListExpression
							{
								if ($current==null) {
									$current = createModelElementForParent(grammarAccess.getPostfixExpressionRule());
								}
								set(
									$current,
									"arguments",
									lv_arguments_8_0,
									"org.eclipse.xtext.ui.tests.editor.contentassist.Bug303200TestLanguage.ListExpression");
								afterParserOrEnumRuleCall();
							}
						)
					)
					(
						this_LT_9=RULE_LT
						{
							newLeafNode(this_LT_9, grammarAccess.getPostfixExpressionAccess().getLTTerminalRuleCall_1_1_4_1());
						}
					)*
				)?
				otherlv_10=')'
				{
					newLeafNode(otherlv_10, grammarAccess.getPostfixExpressionAccess().getRightParenthesisKeyword_1_1_5());
				}
			)
		)*
	)
;

// Entry rule entryRuleListExpression
entryRuleListExpression returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getListExpressionRule()); }
	iv_ruleListExpression=ruleListExpression
	{ $current=$iv_ruleListExpression.current; }
	EOF;

// Rule ListExpression
ruleListExpression returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					newCompositeNode(grammarAccess.getListExpressionAccess().getExpressionsPostfixExpressionParserRuleCall_0_0());
				}
				lv_expressions_0_0=rulePostfixExpression
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getListExpressionRule());
					}
					add(
						$current,
						"expressions",
						lv_expressions_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug303200TestLanguage.PostfixExpression");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			(
				this_LT_1=RULE_LT
				{
					newLeafNode(this_LT_1, grammarAccess.getListExpressionAccess().getLTTerminalRuleCall_1_0());
				}
			)*
			otherlv_2=','
			{
				newLeafNode(otherlv_2, grammarAccess.getListExpressionAccess().getCommaKeyword_1_1());
			}
			(
				this_LT_3=RULE_LT
				{
					newLeafNode(this_LT_3, grammarAccess.getListExpressionAccess().getLTTerminalRuleCall_1_2());
				}
			)*
			(
				(
					{
						newCompositeNode(grammarAccess.getListExpressionAccess().getExpressionsPostfixExpressionParserRuleCall_1_3_0());
					}
					lv_expressions_4_0=rulePostfixExpression
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getListExpressionRule());
						}
						add(
							$current,
							"expressions",
							lv_expressions_4_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug303200TestLanguage.PostfixExpression");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)*
	)
;

// Entry rule entryRulePropertyOperator
entryRulePropertyOperator returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getPropertyOperatorRule()); }
	iv_rulePropertyOperator=rulePropertyOperator
	{ $current=$iv_rulePropertyOperator.current; }
	EOF;

// Rule PropertyOperator
rulePropertyOperator returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			otherlv_0='.'
			{
				newLeafNode(otherlv_0, grammarAccess.getPropertyOperatorAccess().getFullStopKeyword_0_0());
			}
			(
				this_LT_1=RULE_LT
				{
					newLeafNode(this_LT_1, grammarAccess.getPropertyOperatorAccess().getLTTerminalRuleCall_0_1());
				}
			)*
			(
				(
					lv_name_2_0=RULE_ID
					{
						newLeafNode(lv_name_2_0, grammarAccess.getPropertyOperatorAccess().getNameIDTerminalRuleCall_0_2_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getPropertyOperatorRule());
						}
						setWithLastConsumed(
							$current,
							"name",
							lv_name_2_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug303200TestLanguage.ID");
					}
				)
			)
		)
		    |
		(
			otherlv_3='['
			{
				newLeafNode(otherlv_3, grammarAccess.getPropertyOperatorAccess().getLeftSquareBracketKeyword_1_0());
			}
			(
				this_LT_4=RULE_LT
				{
					newLeafNode(this_LT_4, grammarAccess.getPropertyOperatorAccess().getLTTerminalRuleCall_1_1());
				}
			)*
			(
				(
					{
						newCompositeNode(grammarAccess.getPropertyOperatorAccess().getExpressionsListExpressionParserRuleCall_1_2_0());
					}
					lv_expressions_5_0=ruleListExpression
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getPropertyOperatorRule());
						}
						set(
							$current,
							"expressions",
							lv_expressions_5_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug303200TestLanguage.ListExpression");
						afterParserOrEnumRuleCall();
					}
				)
			)
			(
				this_LT_6=RULE_LT
				{
					newLeafNode(this_LT_6, grammarAccess.getPropertyOperatorAccess().getLTTerminalRuleCall_1_3());
				}
			)*
			otherlv_7=']'
			{
				newLeafNode(otherlv_7, grammarAccess.getPropertyOperatorAccess().getRightSquareBracketKeyword_1_4());
			}
		)
	)
;

// Entry rule entryRulePrimaryExpression
entryRulePrimaryExpression returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getPrimaryExpressionRule()); }
	iv_rulePrimaryExpression=rulePrimaryExpression
	{ $current=$iv_rulePrimaryExpression.current; }
	EOF;

// Rule PrimaryExpression
rulePrimaryExpression returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					/* */
				}
				{
					$current = forceCreateModelElement(
						grammarAccess.getPrimaryExpressionAccess().getIdentifierAction_0_0(),
						$current);
				}
			)
			(
				(
					lv_name_1_0=RULE_ID
					{
						newLeafNode(lv_name_1_0, grammarAccess.getPrimaryExpressionAccess().getNameIDTerminalRuleCall_0_1_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getPrimaryExpressionRule());
						}
						setWithLastConsumed(
							$current,
							"name",
							lv_name_1_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug303200TestLanguage.ID");
					}
				)
			)
		)
		    |
		(
			(
				{
					/* */
				}
				{
					$current = forceCreateModelElement(
						grammarAccess.getPrimaryExpressionAccess().getFunctionExpressionAction_1_0(),
						$current);
				}
			)
			otherlv_3='function'
			{
				newLeafNode(otherlv_3, grammarAccess.getPrimaryExpressionAccess().getFunctionKeyword_1_1());
			}
			(
				this_LT_4=RULE_LT
				{
					newLeafNode(this_LT_4, grammarAccess.getPrimaryExpressionAccess().getLTTerminalRuleCall_1_2());
				}
			)*
			(
				(
					{
						newCompositeNode(grammarAccess.getPrimaryExpressionAccess().getParamsParametersParserRuleCall_1_3_0());
					}
					lv_params_5_0=ruleParameters
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getPrimaryExpressionRule());
						}
						set(
							$current,
							"params",
							lv_params_5_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug303200TestLanguage.Parameters");
						afterParserOrEnumRuleCall();
					}
				)
			)
			(
				this_LT_6=RULE_LT
				{
					newLeafNode(this_LT_6, grammarAccess.getPrimaryExpressionAccess().getLTTerminalRuleCall_1_4());
				}
			)*
			(
				(
					{
						newCompositeNode(grammarAccess.getPrimaryExpressionAccess().getBodyBlockParserRuleCall_1_5_0());
					}
					lv_body_7_0=ruleBlock
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getPrimaryExpressionRule());
						}
						set(
							$current,
							"body",
							lv_body_7_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug303200TestLanguage.Block");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)
	)
;

RULE_ID : ('a'..'z'|'A'..'Z')+;

RULE_WS : (' '|'\t')+;

RULE_LT : ('\r'|'\n');

/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalLookAheadContentAssistTestLanguage;

options {
	superClass=AbstractInternalAntlrParser;
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
import org.eclipse.xtext.ui.tests.editor.contentassist.services.LookAheadContentAssistTestLanguageGrammarAccess;

}

@parser::members {

 	private LookAheadContentAssistTestLanguageGrammarAccess grammarAccess;

    public InternalLookAheadContentAssistTestLanguageParser(TokenStream input, LookAheadContentAssistTestLanguageGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "Model";
   	}

   	@Override
   	protected LookAheadContentAssistTestLanguageGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}

}

@rulecatch {
    catch (RecognitionException re) {
        recover(input,re);
        appendSkippedTokens();
    }
}

// Entry rule entryRuleModel
entryRuleModel returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getModelRule()); }
	iv_ruleModel=ruleModel
	{ $current=$iv_ruleModel.current; }
	EOF;

// Rule Model
ruleModel returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getModelAccess().getModelAction_0(),
					$current);
			}
		)
		(
			(
				otherlv_1='('
				{
					newLeafNode(otherlv_1, grammarAccess.getModelAccess().getLeftParenthesisKeyword_1_0_0());
				}
				(
					(
						{
							newCompositeNode(grammarAccess.getModelAccess().getAttributeAttributeParserRuleCall_1_0_1_0());
						}
						lv_attribute_2_0=ruleAttribute
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getModelRule());
							}
							add(
								$current,
								"attribute",
								lv_attribute_2_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.LookAheadContentAssistTestLanguage.Attribute");
							afterParserOrEnumRuleCall();
						}
					)
				)*
				(
					(
						{
							newCompositeNode(grammarAccess.getModelAccess().getAttributePairParserRuleCall_1_0_2_0());
						}
						lv_attribute_3_0=rulePair
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getModelRule());
							}
							add(
								$current,
								"attribute",
								lv_attribute_3_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.LookAheadContentAssistTestLanguage.Pair");
							afterParserOrEnumRuleCall();
						}
					)
				)*
				otherlv_4=')'
				{
					newLeafNode(otherlv_4, grammarAccess.getModelAccess().getRightParenthesisKeyword_1_0_3());
				}
			)
			    |
			(
				otherlv_5='['
				{
					newLeafNode(otherlv_5, grammarAccess.getModelAccess().getLeftSquareBracketKeyword_1_1_0());
				}
				(
					(
						{
							newCompositeNode(grammarAccess.getModelAccess().getAttributeAttributeParserRuleCall_1_1_1_0());
						}
						lv_attribute_6_0=ruleAttribute
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getModelRule());
							}
							add(
								$current,
								"attribute",
								lv_attribute_6_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.LookAheadContentAssistTestLanguage.Attribute");
							afterParserOrEnumRuleCall();
						}
					)
				)+
				(
					(
						{
							newCompositeNode(grammarAccess.getModelAccess().getAttributePairParserRuleCall_1_1_2_0());
						}
						lv_attribute_7_0=rulePair
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getModelRule());
							}
							add(
								$current,
								"attribute",
								lv_attribute_7_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.LookAheadContentAssistTestLanguage.Pair");
							afterParserOrEnumRuleCall();
						}
					)
				)*
				otherlv_8=']'
				{
					newLeafNode(otherlv_8, grammarAccess.getModelAccess().getRightSquareBracketKeyword_1_1_3());
				}
			)
			    |
			(
				otherlv_9='<'
				{
					newLeafNode(otherlv_9, grammarAccess.getModelAccess().getLessThanSignKeyword_1_2_0());
				}
				(
					(
						{
							newCompositeNode(grammarAccess.getModelAccess().getAttributeAttributeParserRuleCall_1_2_1_0());
						}
						lv_attribute_10_0=ruleAttribute
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getModelRule());
							}
							add(
								$current,
								"attribute",
								lv_attribute_10_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.LookAheadContentAssistTestLanguage.Attribute");
							afterParserOrEnumRuleCall();
						}
					)
				)*
				(
					(
						{
							newCompositeNode(grammarAccess.getModelAccess().getAttributePairParserRuleCall_1_2_2_0());
						}
						lv_attribute_11_0=rulePair
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getModelRule());
							}
							add(
								$current,
								"attribute",
								lv_attribute_11_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.LookAheadContentAssistTestLanguage.Pair");
							afterParserOrEnumRuleCall();
						}
					)
				)+
				otherlv_12='>'
				{
					newLeafNode(otherlv_12, grammarAccess.getModelAccess().getGreaterThanSignKeyword_1_2_3());
				}
			)
			    |
			(
				otherlv_13='{'
				{
					newLeafNode(otherlv_13, grammarAccess.getModelAccess().getLeftCurlyBracketKeyword_1_3_0());
				}
				(
					(
						{
							newCompositeNode(grammarAccess.getModelAccess().getAttributeAttributeParserRuleCall_1_3_1_0());
						}
						lv_attribute_14_0=ruleAttribute
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getModelRule());
							}
							add(
								$current,
								"attribute",
								lv_attribute_14_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.LookAheadContentAssistTestLanguage.Attribute");
							afterParserOrEnumRuleCall();
						}
					)
				)+
				(
					(
						{
							newCompositeNode(grammarAccess.getModelAccess().getAttributePairParserRuleCall_1_3_2_0());
						}
						lv_attribute_15_0=rulePair
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getModelRule());
							}
							add(
								$current,
								"attribute",
								lv_attribute_15_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.LookAheadContentAssistTestLanguage.Pair");
							afterParserOrEnumRuleCall();
						}
					)
				)+
				otherlv_16='}'
				{
					newLeafNode(otherlv_16, grammarAccess.getModelAccess().getRightCurlyBracketKeyword_1_3_3());
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
			lv_value_0_0=RULE_ID
			{
				newLeafNode(lv_value_0_0, grammarAccess.getAttributeAccess().getValueIDTerminalRuleCall_0());
			}
			{
				if ($current==null) {
					$current = createModelElement(grammarAccess.getAttributeRule());
				}
				setWithLastConsumed(
					$current,
					"value",
					lv_value_0_0,
					"org.eclipse.xtext.common.Terminals.ID");
			}
		)
	)
;

// Entry rule entryRulePair
entryRulePair returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getPairRule()); }
	iv_rulePair=rulePair
	{ $current=$iv_rulePair.current; }
	EOF;

// Rule Pair
rulePair returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				lv_name_0_0=RULE_ID
				{
					newLeafNode(lv_name_0_0, grammarAccess.getPairAccess().getNameIDTerminalRuleCall_0_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getPairRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_0_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_1='='
		{
			newLeafNode(otherlv_1, grammarAccess.getPairAccess().getEqualsSignKeyword_1());
		}
		(
			(
				lv_value_2_0=RULE_ID
				{
					newLeafNode(lv_value_2_0, grammarAccess.getPairAccess().getValueIDTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getPairRule());
					}
					setWithLastConsumed(
						$current,
						"value",
						lv_value_2_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
	)
;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;

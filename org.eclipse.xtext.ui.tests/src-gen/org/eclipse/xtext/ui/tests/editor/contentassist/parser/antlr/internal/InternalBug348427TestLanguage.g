/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalBug348427TestLanguage;

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
import org.eclipse.emf.common.util.Enumerator;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug348427TestLanguageGrammarAccess;

}

@parser::members {

 	private Bug348427TestLanguageGrammarAccess grammarAccess;

    public InternalBug348427TestLanguageParser(TokenStream input, Bug348427TestLanguageGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "Model";
   	}

   	@Override
   	protected Bug348427TestLanguageGrammarAccess getGrammarAccess() {
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
			(
				{
					newCompositeNode(grammarAccess.getModelAccess().getElement1Scenario1_1ParserRuleCall_0_0());
				}
				lv_element1_0_0=ruleScenario1_1
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getModelRule());
					}
					set(
						$current,
						"element1",
						lv_element1_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Scenario1_1");
					afterParserOrEnumRuleCall();
				}
			)
		)
		    |
		(
			(
				{
					newCompositeNode(grammarAccess.getModelAccess().getElement1Scenario1_2ParserRuleCall_1_0());
				}
				lv_element1_1_0=ruleScenario1_2
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getModelRule());
					}
					set(
						$current,
						"element1",
						lv_element1_1_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Scenario1_2");
					afterParserOrEnumRuleCall();
				}
			)
		)
		    |
		(
			(
				{
					newCompositeNode(grammarAccess.getModelAccess().getElement1Scenario1_3ParserRuleCall_2_0());
				}
				lv_element1_2_0=ruleScenario1_3
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getModelRule());
					}
					set(
						$current,
						"element1",
						lv_element1_2_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Scenario1_3");
					afterParserOrEnumRuleCall();
				}
			)
		)
		    |
		(
			(
				{
					newCompositeNode(grammarAccess.getModelAccess().getElement1Scenario1_4ParserRuleCall_3_0());
				}
				lv_element1_3_0=ruleScenario1_4
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getModelRule());
					}
					set(
						$current,
						"element1",
						lv_element1_3_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Scenario1_4");
					afterParserOrEnumRuleCall();
				}
			)
		)
		    |
		(
			(
				{
					newCompositeNode(grammarAccess.getModelAccess().getElement2Scenario2_1ParserRuleCall_4_0());
				}
				lv_element2_4_0=ruleScenario2_1
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getModelRule());
					}
					set(
						$current,
						"element2",
						lv_element2_4_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Scenario2_1");
					afterParserOrEnumRuleCall();
				}
			)
		)
		    |
		(
			(
				{
					newCompositeNode(grammarAccess.getModelAccess().getElement2Scenario2_2ParserRuleCall_5_0());
				}
				lv_element2_5_0=ruleScenario2_2
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getModelRule());
					}
					set(
						$current,
						"element2",
						lv_element2_5_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Scenario2_2");
					afterParserOrEnumRuleCall();
				}
			)
		)
		    |
		(
			(
				{
					newCompositeNode(grammarAccess.getModelAccess().getElement2Scenario2_3ParserRuleCall_6_0());
				}
				lv_element2_6_0=ruleScenario2_3
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getModelRule());
					}
					set(
						$current,
						"element2",
						lv_element2_6_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Scenario2_3");
					afterParserOrEnumRuleCall();
				}
			)
		)
		    |
		(
			(
				{
					newCompositeNode(grammarAccess.getModelAccess().getElement2Scenario2_4ParserRuleCall_7_0());
				}
				lv_element2_7_0=ruleScenario2_4
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getModelRule());
					}
					set(
						$current,
						"element2",
						lv_element2_7_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Scenario2_4");
					afterParserOrEnumRuleCall();
				}
			)
		)
		    |
		(
			(
				{
					newCompositeNode(grammarAccess.getModelAccess().getElement2Scenario2_5ParserRuleCall_8_0());
				}
				lv_element2_8_0=ruleScenario2_5
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getModelRule());
					}
					set(
						$current,
						"element2",
						lv_element2_8_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Scenario2_5");
					afterParserOrEnumRuleCall();
				}
			)
		)
		    |
		(
			(
				{
					newCompositeNode(grammarAccess.getModelAccess().getElement2Scenario2_6ParserRuleCall_9_0());
				}
				lv_element2_9_0=ruleScenario2_6
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getModelRule());
					}
					set(
						$current,
						"element2",
						lv_element2_9_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Scenario2_6");
					afterParserOrEnumRuleCall();
				}
			)
		)
		    |
		(
			(
				{
					newCompositeNode(grammarAccess.getModelAccess().getElement2Scenario2_7ParserRuleCall_10_0());
				}
				lv_element2_10_0=ruleScenario2_7
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getModelRule());
					}
					set(
						$current,
						"element2",
						lv_element2_10_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Scenario2_7");
					afterParserOrEnumRuleCall();
				}
			)
		)
		    |
		(
			(
				{
					newCompositeNode(grammarAccess.getModelAccess().getElement2Scenario2_8ParserRuleCall_11_0());
				}
				lv_element2_11_0=ruleScenario2_8
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getModelRule());
					}
					set(
						$current,
						"element2",
						lv_element2_11_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Scenario2_8");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleScenario1_1
entryRuleScenario1_1 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getScenario1_1Rule()); }
	iv_ruleScenario1_1=ruleScenario1_1
	{ $current=$iv_ruleScenario1_1.current; }
	EOF;

// Rule Scenario1_1
ruleScenario1_1 returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='1.1'
		{
			newLeafNode(otherlv_0, grammarAccess.getScenario1_1Access().getDigitOneFullStopDigitOneKeyword_0());
		}
		(
			(
				(
					{
						newCompositeNode(grammarAccess.getScenario1_1Access().getChildChild1_1ParserRuleCall_1_0_0());
					}
					lv_child_1_0=ruleChild1_1
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getScenario1_1Rule());
						}
						add(
							$current,
							"child",
							lv_child_1_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child1_1");
						afterParserOrEnumRuleCall();
					}
				)
			)
			    |
			(
				(
					{
						newCompositeNode(grammarAccess.getScenario1_1Access().getChildChild1_2ParserRuleCall_1_1_0());
					}
					lv_child_2_0=ruleChild1_2
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getScenario1_1Rule());
						}
						add(
							$current,
							"child",
							lv_child_2_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child1_2");
						afterParserOrEnumRuleCall();
					}
				)
			)
			    |
			(
				(
					{
						newCompositeNode(grammarAccess.getScenario1_1Access().getChildChild1_3ParserRuleCall_1_2_0());
					}
					lv_child_3_0=ruleChild1_3
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getScenario1_1Rule());
						}
						add(
							$current,
							"child",
							lv_child_3_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child1_3");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)
		otherlv_4='next'
		{
			newLeafNode(otherlv_4, grammarAccess.getScenario1_1Access().getNextKeyword_2());
		}
	)
;

// Entry rule entryRuleScenario1_2
entryRuleScenario1_2 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getScenario1_2Rule()); }
	iv_ruleScenario1_2=ruleScenario1_2
	{ $current=$iv_ruleScenario1_2.current; }
	EOF;

// Rule Scenario1_2
ruleScenario1_2 returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='1.2'
		{
			newLeafNode(otherlv_0, grammarAccess.getScenario1_2Access().getDigitOneFullStopDigitTwoKeyword_0());
		}
		(
			(
				(
					{
						newCompositeNode(grammarAccess.getScenario1_2Access().getChildChild1_1ParserRuleCall_1_0_0());
					}
					lv_child_1_0=ruleChild1_1
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getScenario1_2Rule());
						}
						add(
							$current,
							"child",
							lv_child_1_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child1_1");
						afterParserOrEnumRuleCall();
					}
				)
			)
			    |
			(
				(
					{
						newCompositeNode(grammarAccess.getScenario1_2Access().getChildChild1_2ParserRuleCall_1_1_0());
					}
					lv_child_2_0=ruleChild1_2
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getScenario1_2Rule());
						}
						add(
							$current,
							"child",
							lv_child_2_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child1_2");
						afterParserOrEnumRuleCall();
					}
				)
			)
			    |
			(
				(
					{
						newCompositeNode(grammarAccess.getScenario1_2Access().getChildChild1_3ParserRuleCall_1_2_0());
					}
					lv_child_3_0=ruleChild1_3
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getScenario1_2Rule());
						}
						add(
							$current,
							"child",
							lv_child_3_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child1_3");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)+
		otherlv_4='next'
		{
			newLeafNode(otherlv_4, grammarAccess.getScenario1_2Access().getNextKeyword_2());
		}
	)
;

// Entry rule entryRuleScenario1_3
entryRuleScenario1_3 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getScenario1_3Rule()); }
	iv_ruleScenario1_3=ruleScenario1_3
	{ $current=$iv_ruleScenario1_3.current; }
	EOF;

// Rule Scenario1_3
ruleScenario1_3 returns [EObject current=null]
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
					grammarAccess.getScenario1_3Access().getScenario1Action_0(),
					$current);
			}
		)
		otherlv_1='1.3'
		{
			newLeafNode(otherlv_1, grammarAccess.getScenario1_3Access().getDigitOneFullStopDigitThreeKeyword_1());
		}
		(
			(
				(
					{
						newCompositeNode(grammarAccess.getScenario1_3Access().getChildChild1_1ParserRuleCall_2_0_0());
					}
					lv_child_2_0=ruleChild1_1
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getScenario1_3Rule());
						}
						add(
							$current,
							"child",
							lv_child_2_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child1_1");
						afterParserOrEnumRuleCall();
					}
				)
			)
			    |
			(
				(
					{
						newCompositeNode(grammarAccess.getScenario1_3Access().getChildChild1_2ParserRuleCall_2_1_0());
					}
					lv_child_3_0=ruleChild1_2
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getScenario1_3Rule());
						}
						add(
							$current,
							"child",
							lv_child_3_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child1_2");
						afterParserOrEnumRuleCall();
					}
				)
			)
			    |
			(
				(
					{
						newCompositeNode(grammarAccess.getScenario1_3Access().getChildChild1_3ParserRuleCall_2_2_0());
					}
					lv_child_4_0=ruleChild1_3
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getScenario1_3Rule());
						}
						add(
							$current,
							"child",
							lv_child_4_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child1_3");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)*
		otherlv_5='next'
		{
			newLeafNode(otherlv_5, grammarAccess.getScenario1_3Access().getNextKeyword_3());
		}
	)
;

// Entry rule entryRuleScenario1_4
entryRuleScenario1_4 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getScenario1_4Rule()); }
	iv_ruleScenario1_4=ruleScenario1_4
	{ $current=$iv_ruleScenario1_4.current; }
	EOF;

// Rule Scenario1_4
ruleScenario1_4 returns [EObject current=null]
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
					grammarAccess.getScenario1_4Access().getScenario1Action_0(),
					$current);
			}
		)
		otherlv_1='1.4'
		{
			newLeafNode(otherlv_1, grammarAccess.getScenario1_4Access().getDigitOneFullStopDigitFourKeyword_1());
		}
		(
			(
				(
					{
						newCompositeNode(grammarAccess.getScenario1_4Access().getChildChild1_1ParserRuleCall_2_0_0());
					}
					lv_child_2_0=ruleChild1_1
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getScenario1_4Rule());
						}
						add(
							$current,
							"child",
							lv_child_2_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child1_1");
						afterParserOrEnumRuleCall();
					}
				)
			)
			    |
			(
				(
					{
						newCompositeNode(grammarAccess.getScenario1_4Access().getChildChild1_2ParserRuleCall_2_1_0());
					}
					lv_child_3_0=ruleChild1_2
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getScenario1_4Rule());
						}
						add(
							$current,
							"child",
							lv_child_3_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child1_2");
						afterParserOrEnumRuleCall();
					}
				)
			)
			    |
			(
				(
					{
						newCompositeNode(grammarAccess.getScenario1_4Access().getChildChild1_3ParserRuleCall_2_2_0());
					}
					lv_child_4_0=ruleChild1_3
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getScenario1_4Rule());
						}
						add(
							$current,
							"child",
							lv_child_4_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child1_3");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)?
		otherlv_5='next'
		{
			newLeafNode(otherlv_5, grammarAccess.getScenario1_4Access().getNextKeyword_3());
		}
	)
;

// Entry rule entryRuleChild1_1
entryRuleChild1_1 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getChild1_1Rule()); }
	iv_ruleChild1_1=ruleChild1_1
	{ $current=$iv_ruleChild1_1.current; }
	EOF;

// Rule Child1_1
ruleChild1_1 returns [EObject current=null]
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
					newLeafNode(lv_name_0_0, grammarAccess.getChild1_1Access().getNameIDTerminalRuleCall_0_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getChild1_1Rule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_0_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_1=':'
		{
			newLeafNode(otherlv_1, grammarAccess.getChild1_1Access().getColonKeyword_1());
		}
		(
			(
				(
					lv_bool_2_0='bool'
					{
						newLeafNode(lv_bool_2_0, grammarAccess.getChild1_1Access().getBoolBoolKeyword_2_0_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getChild1_1Rule());
						}
						setWithLastConsumed($current, "bool", lv_bool_2_0 != null, "bool");
					}
				)
			)
			otherlv_3='keyword'
			{
				newLeafNode(otherlv_3, grammarAccess.getChild1_1Access().getKeywordKeyword_2_1());
			}
		)?
		(
			(
				{
					newCompositeNode(grammarAccess.getChild1_1Access().getEnumTypeEnumTypeEnumRuleCall_3_0());
				}
				lv_enumType_4_0=ruleEnumType
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getChild1_1Rule());
					}
					set(
						$current,
						"enumType",
						lv_enumType_4_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.EnumType");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_5='child1'
		{
			newLeafNode(otherlv_5, grammarAccess.getChild1_1Access().getChild1Keyword_4());
		}
		otherlv_6='end'
		{
			newLeafNode(otherlv_6, grammarAccess.getChild1_1Access().getEndKeyword_5());
		}
	)
;

// Entry rule entryRuleChild1_2
entryRuleChild1_2 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getChild1_2Rule()); }
	iv_ruleChild1_2=ruleChild1_2
	{ $current=$iv_ruleChild1_2.current; }
	EOF;

// Rule Child1_2
ruleChild1_2 returns [EObject current=null]
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
					newLeafNode(lv_name_0_0, grammarAccess.getChild1_2Access().getNameIDTerminalRuleCall_0_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getChild1_2Rule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_0_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_1=':'
		{
			newLeafNode(otherlv_1, grammarAccess.getChild1_2Access().getColonKeyword_1());
		}
		(
			(
				(
					lv_bool_2_0='bool'
					{
						newLeafNode(lv_bool_2_0, grammarAccess.getChild1_2Access().getBoolBoolKeyword_2_0_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getChild1_2Rule());
						}
						setWithLastConsumed($current, "bool", lv_bool_2_0 != null, "bool");
					}
				)
			)
			otherlv_3='keyword'
			{
				newLeafNode(otherlv_3, grammarAccess.getChild1_2Access().getKeywordKeyword_2_1());
			}
		)?
		(
			(
				{
					newCompositeNode(grammarAccess.getChild1_2Access().getEnumTypeEnumTypeEnumRuleCall_3_0());
				}
				lv_enumType_4_0=ruleEnumType
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getChild1_2Rule());
					}
					set(
						$current,
						"enumType",
						lv_enumType_4_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.EnumType");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_5='child2'
		{
			newLeafNode(otherlv_5, grammarAccess.getChild1_2Access().getChild2Keyword_4());
		}
		otherlv_6='end'
		{
			newLeafNode(otherlv_6, grammarAccess.getChild1_2Access().getEndKeyword_5());
		}
	)
;

// Entry rule entryRuleChild1_3
entryRuleChild1_3 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getChild1_3Rule()); }
	iv_ruleChild1_3=ruleChild1_3
	{ $current=$iv_ruleChild1_3.current; }
	EOF;

// Rule Child1_3
ruleChild1_3 returns [EObject current=null]
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
					newLeafNode(lv_name_0_0, grammarAccess.getChild1_3Access().getNameIDTerminalRuleCall_0_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getChild1_3Rule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_0_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_1=':'
		{
			newLeafNode(otherlv_1, grammarAccess.getChild1_3Access().getColonKeyword_1());
		}
		(
			(
				(
					lv_bool_2_0='bool'
					{
						newLeafNode(lv_bool_2_0, grammarAccess.getChild1_3Access().getBoolBoolKeyword_2_0_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getChild1_3Rule());
						}
						setWithLastConsumed($current, "bool", lv_bool_2_0 != null, "bool");
					}
				)
			)
			otherlv_3='keyword'
			{
				newLeafNode(otherlv_3, grammarAccess.getChild1_3Access().getKeywordKeyword_2_1());
			}
		)?
		(
			(
				{
					newCompositeNode(grammarAccess.getChild1_3Access().getEnumTypeEnumTypeEnumRuleCall_3_0());
				}
				lv_enumType_4_0=ruleEnumType
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getChild1_3Rule());
					}
					set(
						$current,
						"enumType",
						lv_enumType_4_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.EnumType");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_5='child3'
		{
			newLeafNode(otherlv_5, grammarAccess.getChild1_3Access().getChild3Keyword_4());
		}
		otherlv_6='end'
		{
			newLeafNode(otherlv_6, grammarAccess.getChild1_3Access().getEndKeyword_5());
		}
	)
;

// Entry rule entryRuleScenario2_1
entryRuleScenario2_1 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getScenario2_1Rule()); }
	iv_ruleScenario2_1=ruleScenario2_1
	{ $current=$iv_ruleScenario2_1.current; }
	EOF;

// Rule Scenario2_1
ruleScenario2_1 returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='2.1'
		{
			newLeafNode(otherlv_0, grammarAccess.getScenario2_1Access().getDigitTwoFullStopDigitOneKeyword_0());
		}
		(
			(
				(
					{
						newCompositeNode(grammarAccess.getScenario2_1Access().getChildChild2_1ParserRuleCall_1_0_0());
					}
					lv_child_1_0=ruleChild2_1
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getScenario2_1Rule());
						}
						add(
							$current,
							"child",
							lv_child_1_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child2_1");
						afterParserOrEnumRuleCall();
					}
				)
			)
			    |
			(
				(
					{
						newCompositeNode(grammarAccess.getScenario2_1Access().getChildChild2_2ParserRuleCall_1_1_0());
					}
					lv_child_2_0=ruleChild2_2
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getScenario2_1Rule());
						}
						add(
							$current,
							"child",
							lv_child_2_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child2_2");
						afterParserOrEnumRuleCall();
					}
				)
			)
			    |
			(
				(
					{
						newCompositeNode(grammarAccess.getScenario2_1Access().getChildChild2_3ParserRuleCall_1_2_0());
					}
					lv_child_3_0=ruleChild2_3
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getScenario2_1Rule());
						}
						add(
							$current,
							"child",
							lv_child_3_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child2_3");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)
		otherlv_4='next'
		{
			newLeafNode(otherlv_4, grammarAccess.getScenario2_1Access().getNextKeyword_2());
		}
	)
;

// Entry rule entryRuleScenario2_2
entryRuleScenario2_2 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getScenario2_2Rule()); }
	iv_ruleScenario2_2=ruleScenario2_2
	{ $current=$iv_ruleScenario2_2.current; }
	EOF;

// Rule Scenario2_2
ruleScenario2_2 returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='2.2'
		{
			newLeafNode(otherlv_0, grammarAccess.getScenario2_2Access().getDigitTwoFullStopDigitTwoKeyword_0());
		}
		(
			(
				(
					{
						newCompositeNode(grammarAccess.getScenario2_2Access().getChildChild2_1ParserRuleCall_1_0_0());
					}
					lv_child_1_0=ruleChild2_1
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getScenario2_2Rule());
						}
						add(
							$current,
							"child",
							lv_child_1_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child2_1");
						afterParserOrEnumRuleCall();
					}
				)
			)
			    |
			(
				(
					{
						newCompositeNode(grammarAccess.getScenario2_2Access().getChildChild2_2ParserRuleCall_1_1_0());
					}
					lv_child_2_0=ruleChild2_2
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getScenario2_2Rule());
						}
						add(
							$current,
							"child",
							lv_child_2_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child2_2");
						afterParserOrEnumRuleCall();
					}
				)
			)
			    |
			(
				(
					{
						newCompositeNode(grammarAccess.getScenario2_2Access().getChildChild2_3ParserRuleCall_1_2_0());
					}
					lv_child_3_0=ruleChild2_3
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getScenario2_2Rule());
						}
						add(
							$current,
							"child",
							lv_child_3_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child2_3");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)+
		otherlv_4='next'
		{
			newLeafNode(otherlv_4, grammarAccess.getScenario2_2Access().getNextKeyword_2());
		}
	)
;

// Entry rule entryRuleScenario2_3
entryRuleScenario2_3 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getScenario2_3Rule()); }
	iv_ruleScenario2_3=ruleScenario2_3
	{ $current=$iv_ruleScenario2_3.current; }
	EOF;

// Rule Scenario2_3
ruleScenario2_3 returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='2.3'
		{
			newLeafNode(otherlv_0, grammarAccess.getScenario2_3Access().getDigitTwoFullStopDigitThreeKeyword_0());
		}
		(
			(
				(
					{
						newCompositeNode(grammarAccess.getScenario2_3Access().getChildChild2_4ParserRuleCall_1_0_0());
					}
					lv_child_1_0=ruleChild2_4
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getScenario2_3Rule());
						}
						add(
							$current,
							"child",
							lv_child_1_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child2_4");
						afterParserOrEnumRuleCall();
					}
				)
			)
			    |
			(
				(
					{
						newCompositeNode(grammarAccess.getScenario2_3Access().getChildChild2_5ParserRuleCall_1_1_0());
					}
					lv_child_2_0=ruleChild2_5
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getScenario2_3Rule());
						}
						add(
							$current,
							"child",
							lv_child_2_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child2_5");
						afterParserOrEnumRuleCall();
					}
				)
			)
			    |
			(
				(
					{
						newCompositeNode(grammarAccess.getScenario2_3Access().getChildChild2_6ParserRuleCall_1_2_0());
					}
					lv_child_3_0=ruleChild2_6
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getScenario2_3Rule());
						}
						add(
							$current,
							"child",
							lv_child_3_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child2_6");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)
		otherlv_4='next'
		{
			newLeafNode(otherlv_4, grammarAccess.getScenario2_3Access().getNextKeyword_2());
		}
	)
;

// Entry rule entryRuleScenario2_4
entryRuleScenario2_4 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getScenario2_4Rule()); }
	iv_ruleScenario2_4=ruleScenario2_4
	{ $current=$iv_ruleScenario2_4.current; }
	EOF;

// Rule Scenario2_4
ruleScenario2_4 returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='2.4'
		{
			newLeafNode(otherlv_0, grammarAccess.getScenario2_4Access().getDigitTwoFullStopDigitFourKeyword_0());
		}
		(
			(
				(
					{
						newCompositeNode(grammarAccess.getScenario2_4Access().getChildChild2_4ParserRuleCall_1_0_0());
					}
					lv_child_1_0=ruleChild2_4
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getScenario2_4Rule());
						}
						add(
							$current,
							"child",
							lv_child_1_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child2_4");
						afterParserOrEnumRuleCall();
					}
				)
			)
			    |
			(
				(
					{
						newCompositeNode(grammarAccess.getScenario2_4Access().getChildChild2_5ParserRuleCall_1_1_0());
					}
					lv_child_2_0=ruleChild2_5
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getScenario2_4Rule());
						}
						add(
							$current,
							"child",
							lv_child_2_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child2_5");
						afterParserOrEnumRuleCall();
					}
				)
			)
			    |
			(
				(
					{
						newCompositeNode(grammarAccess.getScenario2_4Access().getChildChild2_6ParserRuleCall_1_2_0());
					}
					lv_child_3_0=ruleChild2_6
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getScenario2_4Rule());
						}
						add(
							$current,
							"child",
							lv_child_3_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child2_6");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)+
		otherlv_4='next'
		{
			newLeafNode(otherlv_4, grammarAccess.getScenario2_4Access().getNextKeyword_2());
		}
	)
;

// Entry rule entryRuleScenario2_5
entryRuleScenario2_5 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getScenario2_5Rule()); }
	iv_ruleScenario2_5=ruleScenario2_5
	{ $current=$iv_ruleScenario2_5.current; }
	EOF;

// Rule Scenario2_5
ruleScenario2_5 returns [EObject current=null]
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
					grammarAccess.getScenario2_5Access().getScenario2Action_0(),
					$current);
			}
		)
		otherlv_1='2.5'
		{
			newLeafNode(otherlv_1, grammarAccess.getScenario2_5Access().getDigitTwoFullStopDigitFiveKeyword_1());
		}
		(
			(
				(
					{
						newCompositeNode(grammarAccess.getScenario2_5Access().getChildChild2_1ParserRuleCall_2_0_0());
					}
					lv_child_2_0=ruleChild2_1
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getScenario2_5Rule());
						}
						add(
							$current,
							"child",
							lv_child_2_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child2_1");
						afterParserOrEnumRuleCall();
					}
				)
			)
			    |
			(
				(
					{
						newCompositeNode(grammarAccess.getScenario2_5Access().getChildChild2_2ParserRuleCall_2_1_0());
					}
					lv_child_3_0=ruleChild2_2
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getScenario2_5Rule());
						}
						add(
							$current,
							"child",
							lv_child_3_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child2_2");
						afterParserOrEnumRuleCall();
					}
				)
			)
			    |
			(
				(
					{
						newCompositeNode(grammarAccess.getScenario2_5Access().getChildChild2_3ParserRuleCall_2_2_0());
					}
					lv_child_4_0=ruleChild2_3
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getScenario2_5Rule());
						}
						add(
							$current,
							"child",
							lv_child_4_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child2_3");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)?
		otherlv_5='next'
		{
			newLeafNode(otherlv_5, grammarAccess.getScenario2_5Access().getNextKeyword_3());
		}
	)
;

// Entry rule entryRuleScenario2_6
entryRuleScenario2_6 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getScenario2_6Rule()); }
	iv_ruleScenario2_6=ruleScenario2_6
	{ $current=$iv_ruleScenario2_6.current; }
	EOF;

// Rule Scenario2_6
ruleScenario2_6 returns [EObject current=null]
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
					grammarAccess.getScenario2_6Access().getScenario2Action_0(),
					$current);
			}
		)
		otherlv_1='2.6'
		{
			newLeafNode(otherlv_1, grammarAccess.getScenario2_6Access().getDigitTwoFullStopDigitSixKeyword_1());
		}
		(
			(
				(
					{
						newCompositeNode(grammarAccess.getScenario2_6Access().getChildChild2_1ParserRuleCall_2_0_0());
					}
					lv_child_2_0=ruleChild2_1
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getScenario2_6Rule());
						}
						add(
							$current,
							"child",
							lv_child_2_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child2_1");
						afterParserOrEnumRuleCall();
					}
				)
			)
			    |
			(
				(
					{
						newCompositeNode(grammarAccess.getScenario2_6Access().getChildChild2_2ParserRuleCall_2_1_0());
					}
					lv_child_3_0=ruleChild2_2
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getScenario2_6Rule());
						}
						add(
							$current,
							"child",
							lv_child_3_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child2_2");
						afterParserOrEnumRuleCall();
					}
				)
			)
			    |
			(
				(
					{
						newCompositeNode(grammarAccess.getScenario2_6Access().getChildChild2_3ParserRuleCall_2_2_0());
					}
					lv_child_4_0=ruleChild2_3
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getScenario2_6Rule());
						}
						add(
							$current,
							"child",
							lv_child_4_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child2_3");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)*
		otherlv_5='next'
		{
			newLeafNode(otherlv_5, grammarAccess.getScenario2_6Access().getNextKeyword_3());
		}
	)
;

// Entry rule entryRuleScenario2_7
entryRuleScenario2_7 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getScenario2_7Rule()); }
	iv_ruleScenario2_7=ruleScenario2_7
	{ $current=$iv_ruleScenario2_7.current; }
	EOF;

// Rule Scenario2_7
ruleScenario2_7 returns [EObject current=null]
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
					grammarAccess.getScenario2_7Access().getScenario2Action_0(),
					$current);
			}
		)
		otherlv_1='2.7'
		{
			newLeafNode(otherlv_1, grammarAccess.getScenario2_7Access().getDigitTwoFullStopDigitSevenKeyword_1());
		}
		(
			(
				(
					{
						newCompositeNode(grammarAccess.getScenario2_7Access().getChildChild2_4ParserRuleCall_2_0_0());
					}
					lv_child_2_0=ruleChild2_4
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getScenario2_7Rule());
						}
						add(
							$current,
							"child",
							lv_child_2_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child2_4");
						afterParserOrEnumRuleCall();
					}
				)
			)
			    |
			(
				(
					{
						newCompositeNode(grammarAccess.getScenario2_7Access().getChildChild2_5ParserRuleCall_2_1_0());
					}
					lv_child_3_0=ruleChild2_5
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getScenario2_7Rule());
						}
						add(
							$current,
							"child",
							lv_child_3_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child2_5");
						afterParserOrEnumRuleCall();
					}
				)
			)
			    |
			(
				(
					{
						newCompositeNode(grammarAccess.getScenario2_7Access().getChildChild2_6ParserRuleCall_2_2_0());
					}
					lv_child_4_0=ruleChild2_6
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getScenario2_7Rule());
						}
						add(
							$current,
							"child",
							lv_child_4_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child2_6");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)?
		otherlv_5='next'
		{
			newLeafNode(otherlv_5, grammarAccess.getScenario2_7Access().getNextKeyword_3());
		}
	)
;

// Entry rule entryRuleScenario2_8
entryRuleScenario2_8 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getScenario2_8Rule()); }
	iv_ruleScenario2_8=ruleScenario2_8
	{ $current=$iv_ruleScenario2_8.current; }
	EOF;

// Rule Scenario2_8
ruleScenario2_8 returns [EObject current=null]
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
					grammarAccess.getScenario2_8Access().getScenario2Action_0(),
					$current);
			}
		)
		otherlv_1='2.8'
		{
			newLeafNode(otherlv_1, grammarAccess.getScenario2_8Access().getDigitTwoFullStopDigitEightKeyword_1());
		}
		(
			(
				(
					{
						newCompositeNode(grammarAccess.getScenario2_8Access().getChildChild2_4ParserRuleCall_2_0_0());
					}
					lv_child_2_0=ruleChild2_4
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getScenario2_8Rule());
						}
						add(
							$current,
							"child",
							lv_child_2_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child2_4");
						afterParserOrEnumRuleCall();
					}
				)
			)
			    |
			(
				(
					{
						newCompositeNode(grammarAccess.getScenario2_8Access().getChildChild2_5ParserRuleCall_2_1_0());
					}
					lv_child_3_0=ruleChild2_5
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getScenario2_8Rule());
						}
						add(
							$current,
							"child",
							lv_child_3_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child2_5");
						afterParserOrEnumRuleCall();
					}
				)
			)
			    |
			(
				(
					{
						newCompositeNode(grammarAccess.getScenario2_8Access().getChildChild2_6ParserRuleCall_2_2_0());
					}
					lv_child_4_0=ruleChild2_6
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getScenario2_8Rule());
						}
						add(
							$current,
							"child",
							lv_child_4_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage.Child2_6");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)*
		otherlv_5='next'
		{
			newLeafNode(otherlv_5, grammarAccess.getScenario2_8Access().getNextKeyword_3());
		}
	)
;

// Entry rule entryRuleChild2_1
entryRuleChild2_1 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getChild2_1Rule()); }
	iv_ruleChild2_1=ruleChild2_1
	{ $current=$iv_ruleChild2_1.current; }
	EOF;

// Rule Child2_1
ruleChild2_1 returns [EObject current=null]
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
					newLeafNode(lv_name_0_0, grammarAccess.getChild2_1Access().getNameIDTerminalRuleCall_0_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getChild2_1Rule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_0_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_1=':'
		{
			newLeafNode(otherlv_1, grammarAccess.getChild2_1Access().getColonKeyword_1());
		}
		(
			(
				(
					lv_bool_2_0='bool'
					{
						newLeafNode(lv_bool_2_0, grammarAccess.getChild2_1Access().getBoolBoolKeyword_2_0_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getChild2_1Rule());
						}
						setWithLastConsumed($current, "bool", lv_bool_2_0 != null, "bool");
					}
				)
			)
			otherlv_3='keyword'
			{
				newLeafNode(otherlv_3, grammarAccess.getChild2_1Access().getKeywordKeyword_2_1());
			}
		)?
		(
			(
				(
					lv_string_4_1='a'
					{
						newLeafNode(lv_string_4_1, grammarAccess.getChild2_1Access().getStringAKeyword_3_0_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getChild2_1Rule());
						}
						setWithLastConsumed($current, "string", lv_string_4_1, null);
					}
					    |
					lv_string_4_2='b'
					{
						newLeafNode(lv_string_4_2, grammarAccess.getChild2_1Access().getStringBKeyword_3_0_1());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getChild2_1Rule());
						}
						setWithLastConsumed($current, "string", lv_string_4_2, null);
					}
				)
			)
		)
		otherlv_5='child1'
		{
			newLeafNode(otherlv_5, grammarAccess.getChild2_1Access().getChild1Keyword_4());
		}
		otherlv_6='end'
		{
			newLeafNode(otherlv_6, grammarAccess.getChild2_1Access().getEndKeyword_5());
		}
	)
;

// Entry rule entryRuleChild2_2
entryRuleChild2_2 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getChild2_2Rule()); }
	iv_ruleChild2_2=ruleChild2_2
	{ $current=$iv_ruleChild2_2.current; }
	EOF;

// Rule Child2_2
ruleChild2_2 returns [EObject current=null]
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
					newLeafNode(lv_name_0_0, grammarAccess.getChild2_2Access().getNameIDTerminalRuleCall_0_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getChild2_2Rule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_0_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_1=':'
		{
			newLeafNode(otherlv_1, grammarAccess.getChild2_2Access().getColonKeyword_1());
		}
		(
			(
				(
					lv_bool_2_0='bool'
					{
						newLeafNode(lv_bool_2_0, grammarAccess.getChild2_2Access().getBoolBoolKeyword_2_0_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getChild2_2Rule());
						}
						setWithLastConsumed($current, "bool", lv_bool_2_0 != null, "bool");
					}
				)
			)
			otherlv_3='keyword'
			{
				newLeafNode(otherlv_3, grammarAccess.getChild2_2Access().getKeywordKeyword_2_1());
			}
		)?
		(
			(
				(
					lv_string_4_1='a'
					{
						newLeafNode(lv_string_4_1, grammarAccess.getChild2_2Access().getStringAKeyword_3_0_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getChild2_2Rule());
						}
						setWithLastConsumed($current, "string", lv_string_4_1, null);
					}
					    |
					lv_string_4_2='b'
					{
						newLeafNode(lv_string_4_2, grammarAccess.getChild2_2Access().getStringBKeyword_3_0_1());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getChild2_2Rule());
						}
						setWithLastConsumed($current, "string", lv_string_4_2, null);
					}
				)
			)
		)
		otherlv_5='child2'
		{
			newLeafNode(otherlv_5, grammarAccess.getChild2_2Access().getChild2Keyword_4());
		}
		otherlv_6='end'
		{
			newLeafNode(otherlv_6, grammarAccess.getChild2_2Access().getEndKeyword_5());
		}
	)
;

// Entry rule entryRuleChild2_3
entryRuleChild2_3 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getChild2_3Rule()); }
	iv_ruleChild2_3=ruleChild2_3
	{ $current=$iv_ruleChild2_3.current; }
	EOF;

// Rule Child2_3
ruleChild2_3 returns [EObject current=null]
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
					newLeafNode(lv_name_0_0, grammarAccess.getChild2_3Access().getNameIDTerminalRuleCall_0_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getChild2_3Rule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_0_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_1=':'
		{
			newLeafNode(otherlv_1, grammarAccess.getChild2_3Access().getColonKeyword_1());
		}
		(
			(
				(
					lv_bool_2_0='bool'
					{
						newLeafNode(lv_bool_2_0, grammarAccess.getChild2_3Access().getBoolBoolKeyword_2_0_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getChild2_3Rule());
						}
						setWithLastConsumed($current, "bool", lv_bool_2_0 != null, "bool");
					}
				)
			)
			otherlv_3='keyword'
			{
				newLeafNode(otherlv_3, grammarAccess.getChild2_3Access().getKeywordKeyword_2_1());
			}
		)?
		(
			(
				(
					lv_string_4_1='a'
					{
						newLeafNode(lv_string_4_1, grammarAccess.getChild2_3Access().getStringAKeyword_3_0_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getChild2_3Rule());
						}
						setWithLastConsumed($current, "string", lv_string_4_1, null);
					}
					    |
					lv_string_4_2='b'
					{
						newLeafNode(lv_string_4_2, grammarAccess.getChild2_3Access().getStringBKeyword_3_0_1());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getChild2_3Rule());
						}
						setWithLastConsumed($current, "string", lv_string_4_2, null);
					}
				)
			)
		)
		otherlv_5='child3'
		{
			newLeafNode(otherlv_5, grammarAccess.getChild2_3Access().getChild3Keyword_4());
		}
		otherlv_6='end'
		{
			newLeafNode(otherlv_6, grammarAccess.getChild2_3Access().getEndKeyword_5());
		}
	)
;

// Entry rule entryRuleChild2_4
entryRuleChild2_4 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getChild2_4Rule()); }
	iv_ruleChild2_4=ruleChild2_4
	{ $current=$iv_ruleChild2_4.current; }
	EOF;

// Rule Child2_4
ruleChild2_4 returns [EObject current=null]
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
					newLeafNode(lv_name_0_0, grammarAccess.getChild2_4Access().getNameIDTerminalRuleCall_0_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getChild2_4Rule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_0_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_1=':'
		{
			newLeafNode(otherlv_1, grammarAccess.getChild2_4Access().getColonKeyword_1());
		}
		(
			(
				(
					lv_bool_2_0='bool'
					{
						newLeafNode(lv_bool_2_0, grammarAccess.getChild2_4Access().getBoolBoolKeyword_2_0_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getChild2_4Rule());
						}
						setWithLastConsumed($current, "bool", lv_bool_2_0 != null, "bool");
					}
				)
			)
			otherlv_3='keyword'
			{
				newLeafNode(otherlv_3, grammarAccess.getChild2_4Access().getKeywordKeyword_2_1());
			}
		)?
		(
			(
				(
					lv_string_4_0='a'
					{
						newLeafNode(lv_string_4_0, grammarAccess.getChild2_4Access().getStringAKeyword_3_0_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getChild2_4Rule());
						}
						setWithLastConsumed($current, "string", lv_string_4_0, "a");
					}
				)
			)
			    |
			(
				(
					lv_string_5_0='b'
					{
						newLeafNode(lv_string_5_0, grammarAccess.getChild2_4Access().getStringBKeyword_3_1_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getChild2_4Rule());
						}
						setWithLastConsumed($current, "string", lv_string_5_0, "b");
					}
				)
			)
		)
		otherlv_6='child1'
		{
			newLeafNode(otherlv_6, grammarAccess.getChild2_4Access().getChild1Keyword_4());
		}
		otherlv_7='end'
		{
			newLeafNode(otherlv_7, grammarAccess.getChild2_4Access().getEndKeyword_5());
		}
	)
;

// Entry rule entryRuleChild2_5
entryRuleChild2_5 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getChild2_5Rule()); }
	iv_ruleChild2_5=ruleChild2_5
	{ $current=$iv_ruleChild2_5.current; }
	EOF;

// Rule Child2_5
ruleChild2_5 returns [EObject current=null]
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
					newLeafNode(lv_name_0_0, grammarAccess.getChild2_5Access().getNameIDTerminalRuleCall_0_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getChild2_5Rule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_0_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_1=':'
		{
			newLeafNode(otherlv_1, grammarAccess.getChild2_5Access().getColonKeyword_1());
		}
		(
			(
				(
					lv_bool_2_0='bool'
					{
						newLeafNode(lv_bool_2_0, grammarAccess.getChild2_5Access().getBoolBoolKeyword_2_0_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getChild2_5Rule());
						}
						setWithLastConsumed($current, "bool", lv_bool_2_0 != null, "bool");
					}
				)
			)
			otherlv_3='keyword'
			{
				newLeafNode(otherlv_3, grammarAccess.getChild2_5Access().getKeywordKeyword_2_1());
			}
		)?
		(
			(
				(
					lv_string_4_0='a'
					{
						newLeafNode(lv_string_4_0, grammarAccess.getChild2_5Access().getStringAKeyword_3_0_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getChild2_5Rule());
						}
						setWithLastConsumed($current, "string", lv_string_4_0, "a");
					}
				)
			)
			    |
			(
				(
					lv_string_5_0='b'
					{
						newLeafNode(lv_string_5_0, grammarAccess.getChild2_5Access().getStringBKeyword_3_1_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getChild2_5Rule());
						}
						setWithLastConsumed($current, "string", lv_string_5_0, "b");
					}
				)
			)
		)
		otherlv_6='child2'
		{
			newLeafNode(otherlv_6, grammarAccess.getChild2_5Access().getChild2Keyword_4());
		}
		otherlv_7='end'
		{
			newLeafNode(otherlv_7, grammarAccess.getChild2_5Access().getEndKeyword_5());
		}
	)
;

// Entry rule entryRuleChild2_6
entryRuleChild2_6 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getChild2_6Rule()); }
	iv_ruleChild2_6=ruleChild2_6
	{ $current=$iv_ruleChild2_6.current; }
	EOF;

// Rule Child2_6
ruleChild2_6 returns [EObject current=null]
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
					newLeafNode(lv_name_0_0, grammarAccess.getChild2_6Access().getNameIDTerminalRuleCall_0_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getChild2_6Rule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_0_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_1=':'
		{
			newLeafNode(otherlv_1, grammarAccess.getChild2_6Access().getColonKeyword_1());
		}
		(
			(
				(
					lv_bool_2_0='bool'
					{
						newLeafNode(lv_bool_2_0, grammarAccess.getChild2_6Access().getBoolBoolKeyword_2_0_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getChild2_6Rule());
						}
						setWithLastConsumed($current, "bool", lv_bool_2_0 != null, "bool");
					}
				)
			)
			otherlv_3='keyword'
			{
				newLeafNode(otherlv_3, grammarAccess.getChild2_6Access().getKeywordKeyword_2_1());
			}
		)?
		(
			(
				(
					lv_string_4_0='a'
					{
						newLeafNode(lv_string_4_0, grammarAccess.getChild2_6Access().getStringAKeyword_3_0_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getChild2_6Rule());
						}
						setWithLastConsumed($current, "string", lv_string_4_0, "a");
					}
				)
			)
			    |
			(
				(
					lv_string_5_0='b'
					{
						newLeafNode(lv_string_5_0, grammarAccess.getChild2_6Access().getStringBKeyword_3_1_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getChild2_6Rule());
						}
						setWithLastConsumed($current, "string", lv_string_5_0, "b");
					}
				)
			)
		)
		otherlv_6='child3'
		{
			newLeafNode(otherlv_6, grammarAccess.getChild2_6Access().getChild3Keyword_4());
		}
		otherlv_7='end'
		{
			newLeafNode(otherlv_7, grammarAccess.getChild2_6Access().getEndKeyword_5());
		}
	)
;

// Rule EnumType
ruleEnumType returns [Enumerator current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			enumLiteral_0='a'
			{
				$current = grammarAccess.getEnumTypeAccess().getAEnumLiteralDeclaration_0().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_0, grammarAccess.getEnumTypeAccess().getAEnumLiteralDeclaration_0());
			}
		)
		    |
		(
			enumLiteral_1='b'
			{
				$current = grammarAccess.getEnumTypeAccess().getBEnumLiteralDeclaration_1().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_1, grammarAccess.getEnumTypeAccess().getBEnumLiteralDeclaration_1());
			}
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

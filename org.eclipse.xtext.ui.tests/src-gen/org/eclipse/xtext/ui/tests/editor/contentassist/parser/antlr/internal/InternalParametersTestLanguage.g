/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalParametersTestLanguage;

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
import org.eclipse.xtext.ui.tests.editor.contentassist.services.ParametersTestLanguageGrammarAccess;

}

@parser::members {

 	private ParametersTestLanguageGrammarAccess grammarAccess;

    public InternalParametersTestLanguageParser(TokenStream input, ParametersTestLanguageGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "ParserRuleParameters";
   	}

   	@Override
   	protected ParametersTestLanguageGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}

}

@rulecatch {
    catch (RecognitionException re) {
        recover(input,re);
        appendSkippedTokens();
    }
}

// Entry rule entryRuleParserRuleParameters
entryRuleParserRuleParameters returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getParserRuleParametersRule()); }
	iv_ruleParserRuleParameters=ruleParserRuleParameters
	{ $current=$iv_ruleParserRuleParameters.current; }
	EOF;

// Rule ParserRuleParameters
ruleParserRuleParameters returns [EObject current=null]
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
					grammarAccess.getParserRuleParametersAccess().getParserRuleParametersAction_0(),
					$current);
			}
		)
		(
			(
				otherlv_1='#1'
				{
					newLeafNode(otherlv_1, grammarAccess.getParserRuleParametersAccess().getNumberSignDigitOneKeyword_1_0_0());
				}
				(
					(
						{
							newCompositeNode(grammarAccess.getParserRuleParametersAccess().getScenarioScenario1ParserRuleCall_1_0_1_0());
						}
						lv_scenario_2_0=norm1_Scenario1
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getParserRuleParametersRule());
							}
							set(
								$current,
								"scenario",
								lv_scenario_2_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.ParametersTestLanguage.Scenario1");
							afterParserOrEnumRuleCall();
						}
					)
				)
			)
			    |
			(
				otherlv_3='#2'
				{
					newLeafNode(otherlv_3, grammarAccess.getParserRuleParametersAccess().getNumberSignDigitTwoKeyword_1_1_0());
				}
				(
					(
						{
							newCompositeNode(grammarAccess.getParserRuleParametersAccess().getScenarioScenario1ParserRuleCall_1_1_1_0());
						}
						lv_scenario_4_0=ruleScenario1
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getParserRuleParametersRule());
							}
							set(
								$current,
								"scenario",
								lv_scenario_4_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.ParametersTestLanguage.Scenario1");
							afterParserOrEnumRuleCall();
						}
					)
				)
			)
			    |
			(
				otherlv_5='#3'
				{
					newLeafNode(otherlv_5, grammarAccess.getParserRuleParametersAccess().getNumberSignDigitThreeKeyword_1_2_0());
				}
				(
					(
						{
							newCompositeNode(grammarAccess.getParserRuleParametersAccess().getScenarioScenario2ParserRuleCall_1_2_1_0());
						}
						lv_scenario_6_0=norm1_Scenario2
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getParserRuleParametersRule());
							}
							set(
								$current,
								"scenario",
								lv_scenario_6_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.ParametersTestLanguage.Scenario2");
							afterParserOrEnumRuleCall();
						}
					)
				)
			)
			    |
			(
				otherlv_7='#4'
				{
					newLeafNode(otherlv_7, grammarAccess.getParserRuleParametersAccess().getNumberSignDigitFourKeyword_1_3_0());
				}
				(
					(
						{
							newCompositeNode(grammarAccess.getParserRuleParametersAccess().getScenarioScenario2ParserRuleCall_1_3_1_0());
						}
						lv_scenario_8_0=ruleScenario2
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getParserRuleParametersRule());
							}
							set(
								$current,
								"scenario",
								lv_scenario_8_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.ParametersTestLanguage.Scenario2");
							afterParserOrEnumRuleCall();
						}
					)
				)
			)
			    |
			(
				((
					'#5'
					(
						(
							norm1_Scenario2
						)
					)
				)
				)=>
				(
					otherlv_9='#5'
					{
						newLeafNode(otherlv_9, grammarAccess.getParserRuleParametersAccess().getNumberSignDigitFiveKeyword_1_4_0_0());
					}
					(
						(
							{
								newCompositeNode(grammarAccess.getParserRuleParametersAccess().getScenarioScenario2ParserRuleCall_1_4_0_1_0());
							}
							lv_scenario_10_0=norm1_Scenario2
							{
								if ($current==null) {
									$current = createModelElementForParent(grammarAccess.getParserRuleParametersRule());
								}
								set(
									$current,
									"scenario",
									lv_scenario_10_0,
									"org.eclipse.xtext.ui.tests.editor.contentassist.ParametersTestLanguage.Scenario2");
								afterParserOrEnumRuleCall();
							}
						)
					)
				)
			)
			    |
			(
				((
					'#6'
					(
						(
							ruleScenario2
						)
					)
				)
				)=>
				(
					otherlv_11='#6'
					{
						newLeafNode(otherlv_11, grammarAccess.getParserRuleParametersAccess().getNumberSignDigitSixKeyword_1_5_0_0());
					}
					(
						(
							{
								newCompositeNode(grammarAccess.getParserRuleParametersAccess().getScenarioScenario2ParserRuleCall_1_5_0_1_0());
							}
							lv_scenario_12_0=ruleScenario2
							{
								if ($current==null) {
									$current = createModelElementForParent(grammarAccess.getParserRuleParametersRule());
								}
								set(
									$current,
									"scenario",
									lv_scenario_12_0,
									"org.eclipse.xtext.ui.tests.editor.contentassist.ParametersTestLanguage.Scenario2");
								afterParserOrEnumRuleCall();
							}
						)
					)
				)
			)
			    |
			(
				otherlv_13='#7'
				{
					newLeafNode(otherlv_13, grammarAccess.getParserRuleParametersAccess().getNumberSignDigitSevenKeyword_1_6_0());
				}
				(
					(
						{
							newCompositeNode(grammarAccess.getParserRuleParametersAccess().getScenarioScenario3ParserRuleCall_1_6_1_0());
						}
						lv_scenario_14_0=norm1_Scenario3
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getParserRuleParametersRule());
							}
							set(
								$current,
								"scenario",
								lv_scenario_14_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.ParametersTestLanguage.Scenario3");
							afterParserOrEnumRuleCall();
						}
					)
				)
			)
			    |
			(
				otherlv_15='#8'
				{
					newLeafNode(otherlv_15, grammarAccess.getParserRuleParametersAccess().getNumberSignDigitEightKeyword_1_7_0());
				}
				(
					(
						{
							newCompositeNode(grammarAccess.getParserRuleParametersAccess().getScenarioScenario3ParserRuleCall_1_7_1_0());
						}
						lv_scenario_16_0=ruleScenario3
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getParserRuleParametersRule());
							}
							set(
								$current,
								"scenario",
								lv_scenario_16_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.ParametersTestLanguage.Scenario3");
							afterParserOrEnumRuleCall();
						}
					)
				)
			)
			    |
			(
				otherlv_17='#9'
				{
					newLeafNode(otherlv_17, grammarAccess.getParserRuleParametersAccess().getNumberSignDigitNineKeyword_1_8_0());
				}
				(
					(
						((
							norm1_IdOrKeyword
						)
						)=>
						(
							{
								newCompositeNode(grammarAccess.getParserRuleParametersAccess().getScenarioScenario4ParserRuleCall_1_8_1_0_0());
							}
							lv_scenario_18_0=norm1_Scenario4
							{
								if ($current==null) {
									$current = createModelElementForParent(grammarAccess.getParserRuleParametersRule());
								}
								set(
									$current,
									"scenario",
									lv_scenario_18_0,
									"org.eclipse.xtext.ui.tests.editor.contentassist.ParametersTestLanguage.Scenario4");
								afterParserOrEnumRuleCall();
							}
						)
					)
					    |
					(
						(
							(
								{
									newCompositeNode(grammarAccess.getParserRuleParametersAccess().getScenarioScenario2ParserRuleCall_1_8_1_1_0_0());
								}
								lv_scenario_19_0=norm1_Scenario2
								{
									if ($current==null) {
										$current = createModelElementForParent(grammarAccess.getParserRuleParametersRule());
									}
									set(
										$current,
										"scenario",
										lv_scenario_19_0,
										"org.eclipse.xtext.ui.tests.editor.contentassist.ParametersTestLanguage.Scenario2");
									afterParserOrEnumRuleCall();
								}
							)
						)
						(
							otherlv_20='trailing'
							{
								newLeafNode(otherlv_20, grammarAccess.getParserRuleParametersAccess().getTrailingKeyword_1_8_1_1_1());
							}
						)?
					)
				)
			)
			    |
			(
				otherlv_21='#10'
				{
					newLeafNode(otherlv_21, grammarAccess.getParserRuleParametersAccess().getNumberSignDigitOneDigitZeroKeyword_1_9_0());
				}
				(
					(
						((
							norm1_IdOrKeyword
						)
						)=>
						(
							{
								newCompositeNode(grammarAccess.getParserRuleParametersAccess().getScenarioScenario4ParserRuleCall_1_9_1_0_0());
							}
							lv_scenario_22_0=norm1_Scenario4
							{
								if ($current==null) {
									$current = createModelElementForParent(grammarAccess.getParserRuleParametersRule());
								}
								set(
									$current,
									"scenario",
									lv_scenario_22_0,
									"org.eclipse.xtext.ui.tests.editor.contentassist.ParametersTestLanguage.Scenario4");
								afterParserOrEnumRuleCall();
							}
						)
					)
					    |
					(
						(
							(
								{
									newCompositeNode(grammarAccess.getParserRuleParametersAccess().getScenarioScenario2ParserRuleCall_1_9_1_1_0_0());
								}
								lv_scenario_23_0=ruleScenario2
								{
									if ($current==null) {
										$current = createModelElementForParent(grammarAccess.getParserRuleParametersRule());
									}
									set(
										$current,
										"scenario",
										lv_scenario_23_0,
										"org.eclipse.xtext.ui.tests.editor.contentassist.ParametersTestLanguage.Scenario2");
									afterParserOrEnumRuleCall();
								}
							)
						)
						(
							otherlv_24='trailing'
							{
								newLeafNode(otherlv_24, grammarAccess.getParserRuleParametersAccess().getTrailingKeyword_1_9_1_1_1());
							}
						)?
					)
				)
			)
			    |
			(
				otherlv_25='#11'
				{
					newLeafNode(otherlv_25, grammarAccess.getParserRuleParametersAccess().getNumberSignDigitOneDigitOneKeyword_1_10_0());
				}
				(
					(
						((
							ruleIdOrKeyword
						)
						)=>
						(
							{
								newCompositeNode(grammarAccess.getParserRuleParametersAccess().getScenarioScenario4ParserRuleCall_1_10_1_0_0());
							}
							lv_scenario_26_0=ruleScenario4
							{
								if ($current==null) {
									$current = createModelElementForParent(grammarAccess.getParserRuleParametersRule());
								}
								set(
									$current,
									"scenario",
									lv_scenario_26_0,
									"org.eclipse.xtext.ui.tests.editor.contentassist.ParametersTestLanguage.Scenario4");
								afterParserOrEnumRuleCall();
							}
						)
					)
					    |
					(
						(
							(
								{
									newCompositeNode(grammarAccess.getParserRuleParametersAccess().getScenarioScenario2ParserRuleCall_1_10_1_1_0_0());
								}
								lv_scenario_27_0=norm1_Scenario2
								{
									if ($current==null) {
										$current = createModelElementForParent(grammarAccess.getParserRuleParametersRule());
									}
									set(
										$current,
										"scenario",
										lv_scenario_27_0,
										"org.eclipse.xtext.ui.tests.editor.contentassist.ParametersTestLanguage.Scenario2");
									afterParserOrEnumRuleCall();
								}
							)
						)
						(
							otherlv_28='trailing'
							{
								newLeafNode(otherlv_28, grammarAccess.getParserRuleParametersAccess().getTrailingKeyword_1_10_1_1_1());
							}
						)?
					)
				)
			)
			    |
			(
				otherlv_29='#12'
				{
					newLeafNode(otherlv_29, grammarAccess.getParserRuleParametersAccess().getNumberSignDigitOneDigitTwoKeyword_1_11_0());
				}
				(
					(
						((
							ruleIdOrKeyword
						)
						)=>
						(
							{
								newCompositeNode(grammarAccess.getParserRuleParametersAccess().getScenarioScenario4ParserRuleCall_1_11_1_0_0());
							}
							lv_scenario_30_0=ruleScenario4
							{
								if ($current==null) {
									$current = createModelElementForParent(grammarAccess.getParserRuleParametersRule());
								}
								set(
									$current,
									"scenario",
									lv_scenario_30_0,
									"org.eclipse.xtext.ui.tests.editor.contentassist.ParametersTestLanguage.Scenario4");
								afterParserOrEnumRuleCall();
							}
						)
					)
					    |
					(
						(
							(
								{
									newCompositeNode(grammarAccess.getParserRuleParametersAccess().getScenarioScenario2ParserRuleCall_1_11_1_1_0_0());
								}
								lv_scenario_31_0=ruleScenario2
								{
									if ($current==null) {
										$current = createModelElementForParent(grammarAccess.getParserRuleParametersRule());
									}
									set(
										$current,
										"scenario",
										lv_scenario_31_0,
										"org.eclipse.xtext.ui.tests.editor.contentassist.ParametersTestLanguage.Scenario2");
									afterParserOrEnumRuleCall();
								}
							)
						)
						(
							otherlv_32='trailing'
							{
								newLeafNode(otherlv_32, grammarAccess.getParserRuleParametersAccess().getTrailingKeyword_1_11_1_1_1());
							}
						)?
					)
				)
			)
			    |
			(
				otherlv_33='#13'
				{
					newLeafNode(otherlv_33, grammarAccess.getParserRuleParametersAccess().getNumberSignDigitOneDigitThreeKeyword_1_12_0());
				}
				(
					(
						{
							newCompositeNode(grammarAccess.getParserRuleParametersAccess().getScenarioScenario5ParserRuleCall_1_12_1_0());
						}
						lv_scenario_34_0=ruleScenario5
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getParserRuleParametersRule());
							}
							set(
								$current,
								"scenario",
								lv_scenario_34_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.ParametersTestLanguage.Scenario5");
							afterParserOrEnumRuleCall();
						}
					)
				)
			)
			    |
			(
				otherlv_35='#14'
				{
					newLeafNode(otherlv_35, grammarAccess.getParserRuleParametersAccess().getNumberSignDigitOneDigitFourKeyword_1_13_0());
				}
				(
					(
						{
							newCompositeNode(grammarAccess.getParserRuleParametersAccess().getScenarioScenario5ParserRuleCall_1_13_1_0());
						}
						lv_scenario_36_0=norm1_Scenario5
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getParserRuleParametersRule());
							}
							set(
								$current,
								"scenario",
								lv_scenario_36_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.ParametersTestLanguage.Scenario5");
							afterParserOrEnumRuleCall();
						}
					)
				)
			)
		)
	)
;

// Entry rule entryRuleScenario1
entryRuleScenario1 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getScenario1Rule()); }
	iv_ruleScenario1=ruleScenario1
	{ $current=$iv_ruleScenario1.current; }
	EOF;

// Rule Scenario1
ruleScenario1 returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			lv_second_0_0=RULE_ID
			{
				newLeafNode(lv_second_0_0, grammarAccess.getScenario1Access().getSecondIDTerminalRuleCall_1_0_0());
			}
			{
				if ($current==null) {
					$current = createModelElement(grammarAccess.getScenario1Rule());
				}
				setWithLastConsumed(
					$current,
					"second",
					lv_second_0_0,
					"org.eclipse.xtext.common.Terminals.ID");
			}
		)
	)
;


// Rule Scenario1
norm1_Scenario1 returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			lv_first_0_0=RULE_ID
			{
				newLeafNode(lv_first_0_0, grammarAccess.getScenario1Access().getFirstIDTerminalRuleCall_0_0_0());
			}
			{
				if ($current==null) {
					$current = createModelElement(grammarAccess.getScenario1Rule());
				}
				setWithLastConsumed(
					$current,
					"first",
					lv_first_0_0,
					"org.eclipse.xtext.common.Terminals.ID");
			}
		)
	)
;

// Entry rule entryRuleScenario2
entryRuleScenario2 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getScenario2Rule()); }
	iv_ruleScenario2=ruleScenario2
	{ $current=$iv_ruleScenario2.current; }
	EOF;

// Rule Scenario2
ruleScenario2 returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				newCompositeNode(grammarAccess.getScenario2Access().getFirstIdOrKeywordParserRuleCall_0());
			}
			lv_first_0_0=ruleIdOrKeyword
			{
				if ($current==null) {
					$current = createModelElementForParent(grammarAccess.getScenario2Rule());
				}
				set(
					$current,
					"first",
					lv_first_0_0,
					"org.eclipse.xtext.ui.tests.editor.contentassist.ParametersTestLanguage.IdOrKeyword");
				afterParserOrEnumRuleCall();
			}
		)
	)
;


// Rule Scenario2
norm1_Scenario2 returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				newCompositeNode(grammarAccess.getScenario2Access().getFirstIdOrKeywordParserRuleCall_0());
			}
			lv_first_0_0=norm1_IdOrKeyword
			{
				if ($current==null) {
					$current = createModelElementForParent(grammarAccess.getScenario2Rule());
				}
				set(
					$current,
					"first",
					lv_first_0_0,
					"org.eclipse.xtext.ui.tests.editor.contentassist.ParametersTestLanguage.IdOrKeyword");
				afterParserOrEnumRuleCall();
			}
		)
	)
;

// Entry rule entryRuleScenario3
entryRuleScenario3 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getScenario3Rule()); }
	iv_ruleScenario3=ruleScenario3
	{ $current=$iv_ruleScenario3.current; }
	EOF;

// Rule Scenario3
ruleScenario3 returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			((
				ruleIdOrKeyword
			)
			)=>
			(
				{
					newCompositeNode(grammarAccess.getScenario3Access().getFirstIdOrKeywordParserRuleCall_0_0());
				}
				lv_first_0_0=ruleIdOrKeyword
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getScenario3Rule());
					}
					set(
						$current,
						"first",
						lv_first_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.ParametersTestLanguage.IdOrKeyword");
					afterParserOrEnumRuleCall();
				}
			)
		)
		    |
		(
			(
				lv_second_1_0='scenario3'
				{
					newLeafNode(lv_second_1_0, grammarAccess.getScenario3Access().getSecondScenario3Keyword_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getScenario3Rule());
					}
					setWithLastConsumed($current, "second", lv_second_1_0, "scenario3");
				}
			)
		)
	)
;


// Rule Scenario3
norm1_Scenario3 returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			((
				norm1_IdOrKeyword
			)
			)=>
			(
				{
					newCompositeNode(grammarAccess.getScenario3Access().getFirstIdOrKeywordParserRuleCall_0_0());
				}
				lv_first_0_0=norm1_IdOrKeyword
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getScenario3Rule());
					}
					set(
						$current,
						"first",
						lv_first_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.ParametersTestLanguage.IdOrKeyword");
					afterParserOrEnumRuleCall();
				}
			)
		)
		    |
		(
			(
				lv_second_1_0='scenario3'
				{
					newLeafNode(lv_second_1_0, grammarAccess.getScenario3Access().getSecondScenario3Keyword_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getScenario3Rule());
					}
					setWithLastConsumed($current, "second", lv_second_1_0, "scenario3");
				}
			)
		)
	)
;

// Entry rule entryRuleScenario4
entryRuleScenario4 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getScenario4Rule()); }
	iv_ruleScenario4=ruleScenario4
	{ $current=$iv_ruleScenario4.current; }
	EOF;

// Rule Scenario4
ruleScenario4 returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			((
				ruleIdOrKeyword
			)
			)=>
			(
				{
					newCompositeNode(grammarAccess.getScenario4Access().getSecondIdOrKeywordParserRuleCall_0_0());
				}
				lv_second_0_0=ruleIdOrKeyword
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getScenario4Rule());
					}
					set(
						$current,
						"second",
						lv_second_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.ParametersTestLanguage.IdOrKeyword");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_1='scenario4'
		{
			newLeafNode(otherlv_1, grammarAccess.getScenario4Access().getScenario4Keyword_1());
		}
	)
;


// Rule Scenario4
norm1_Scenario4 returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			((
				norm1_IdOrKeyword
			)
			)=>
			(
				{
					newCompositeNode(grammarAccess.getScenario4Access().getSecondIdOrKeywordParserRuleCall_0_0());
				}
				lv_second_0_0=norm1_IdOrKeyword
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getScenario4Rule());
					}
					set(
						$current,
						"second",
						lv_second_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.ParametersTestLanguage.IdOrKeyword");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_1='scenario4'
		{
			newLeafNode(otherlv_1, grammarAccess.getScenario4Access().getScenario4Keyword_1());
		}
	)
;

// Entry rule entryRuleScenario5
entryRuleScenario5 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getScenario5Rule()); }
	iv_ruleScenario5=ruleScenario5
	{ $current=$iv_ruleScenario5.current; }
	EOF;

// Rule Scenario5
ruleScenario5 returns [EObject current=null]
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
					$current = forceCreateModelElement(
						grammarAccess.getScenario5Access().getScenarioAction_1_0(),
						$current);
				}
			)
			otherlv_1='trailing'
			{
				newLeafNode(otherlv_1, grammarAccess.getScenario5Access().getTrailingKeyword_1_1());
			}
		)
		    |
		(
			(
				{
					$current = forceCreateModelElement(
						grammarAccess.getScenario5Access().getScenarioAction_2_0(),
						$current);
				}
			)
			otherlv_3='scenario5'
			{
				newLeafNode(otherlv_3, grammarAccess.getScenario5Access().getScenario5Keyword_2_1());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getScenario5Access().getFirstIdOrKeywordParserRuleCall_2_3_0());
					}
					lv_first_4_0=norm1_IdOrKeyword
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getScenario5Rule());
						}
						set(
							$current,
							"first",
							lv_first_4_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.ParametersTestLanguage.IdOrKeyword");
						afterParserOrEnumRuleCall();
					}
				)
			)
			(
				(
					{
						newCompositeNode(grammarAccess.getScenario5Access().getSecondIdOrKeywordParserRuleCall_2_4_0());
					}
					lv_second_5_0=ruleIdOrKeyword
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getScenario5Rule());
						}
						set(
							$current,
							"second",
							lv_second_5_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.ParametersTestLanguage.IdOrKeyword");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)
		    |
		(
			(
				{
					$current = forceCreateModelElement(
						grammarAccess.getScenario5Access().getScenarioAction_3_0(),
						$current);
				}
			)
			otherlv_7='scenario5'
			{
				newLeafNode(otherlv_7, grammarAccess.getScenario5Access().getScenario5Keyword_3_1());
			}
			otherlv_8='fragment'
			{
				newLeafNode(otherlv_8, grammarAccess.getScenario5Access().getFragmentKeyword_3_2());
			}
			{
				if ($current==null) {
					$current = createModelElement(grammarAccess.getScenario5Rule());
				}
				newCompositeNode(grammarAccess.getScenario5Access().getScenario5BodyParserRuleCall_3_3());
			}
			this_Scenario5Body_9=ruleScenario5Body[$current]
			{
				$current = $this_Scenario5Body_9.current;
				afterParserOrEnumRuleCall();
			}
			otherlv_10='trailing'
			{
				newLeafNode(otherlv_10, grammarAccess.getScenario5Access().getTrailingKeyword_3_4());
			}
		)
	)
;


// Rule Scenario5
norm1_Scenario5 returns [EObject current=null]
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
					$current = forceCreateModelElement(
						grammarAccess.getScenario5Access().getScenarioAction_0_0(),
						$current);
				}
			)
			otherlv_1='include'
			{
				newLeafNode(otherlv_1, grammarAccess.getScenario5Access().getIncludeKeyword_0_1());
			}
		)
		    |
		(
			(
				{
					$current = forceCreateModelElement(
						grammarAccess.getScenario5Access().getScenarioAction_1_0(),
						$current);
				}
			)
			otherlv_3='trailing'
			{
				newLeafNode(otherlv_3, grammarAccess.getScenario5Access().getTrailingKeyword_1_1());
			}
		)
		    |
		(
			(
				{
					$current = forceCreateModelElement(
						grammarAccess.getScenario5Access().getScenarioAction_2_0(),
						$current);
				}
			)
			otherlv_5='scenario5'
			{
				newLeafNode(otherlv_5, grammarAccess.getScenario5Access().getScenario5Keyword_2_1());
			}
			(
				otherlv_6='include'
				{
					newLeafNode(otherlv_6, grammarAccess.getScenario5Access().getIncludeKeyword_2_2_0());
				}
			)?
			(
				(
					{
						newCompositeNode(grammarAccess.getScenario5Access().getFirstIdOrKeywordParserRuleCall_2_3_0());
					}
					lv_first_7_0=norm1_IdOrKeyword
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getScenario5Rule());
						}
						set(
							$current,
							"first",
							lv_first_7_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.ParametersTestLanguage.IdOrKeyword");
						afterParserOrEnumRuleCall();
					}
				)
			)
			(
				(
					{
						newCompositeNode(grammarAccess.getScenario5Access().getSecondIdOrKeywordParserRuleCall_2_4_0());
					}
					lv_second_8_0=ruleIdOrKeyword
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getScenario5Rule());
						}
						set(
							$current,
							"second",
							lv_second_8_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.ParametersTestLanguage.IdOrKeyword");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)
		    |
		(
			(
				{
					$current = forceCreateModelElement(
						grammarAccess.getScenario5Access().getScenarioAction_3_0(),
						$current);
				}
			)
			otherlv_10='scenario5'
			{
				newLeafNode(otherlv_10, grammarAccess.getScenario5Access().getScenario5Keyword_3_1());
			}
			otherlv_11='fragment'
			{
				newLeafNode(otherlv_11, grammarAccess.getScenario5Access().getFragmentKeyword_3_2());
			}
			{
				if ($current==null) {
					$current = createModelElement(grammarAccess.getScenario5Rule());
				}
				newCompositeNode(grammarAccess.getScenario5Access().getScenario5BodyParserRuleCall_3_3());
			}
			this_Scenario5Body_12=norm1_Scenario5Body[$current]
			{
				$current = $this_Scenario5Body_12.current;
				afterParserOrEnumRuleCall();
			}
			otherlv_13='trailing'
			{
				newLeafNode(otherlv_13, grammarAccess.getScenario5Access().getTrailingKeyword_3_4());
			}
		)
	)
;


// Rule Scenario5Body
ruleScenario5Body[EObject in_current]  returns [EObject current=in_current]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='fragment'
		{
			newLeafNode(otherlv_0, grammarAccess.getScenario5BodyAccess().getFragmentKeyword_1_0());
		}
	)?
;


// Rule Scenario5Body
norm1_Scenario5Body[EObject in_current]  returns [EObject current=in_current]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	otherlv_0='include'
	{
		newLeafNode(otherlv_0, grammarAccess.getScenario5BodyAccess().getIncludeKeyword_0_0());
	}
;

// Entry rule entryRuleIdOrKeyword
entryRuleIdOrKeyword returns [String current=null]:
	{ newCompositeNode(grammarAccess.getIdOrKeywordRule()); }
	iv_ruleIdOrKeyword=ruleIdOrKeyword
	{ $current=$iv_ruleIdOrKeyword.current.getText(); }
	EOF;

// Rule IdOrKeyword
ruleIdOrKeyword returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	this_ID_0=RULE_ID
	{
		$current.merge(this_ID_0);
	}
	{
		newLeafNode(this_ID_0, grammarAccess.getIdOrKeywordAccess().getIDTerminalRuleCall_1());
	}
;


// Rule IdOrKeyword
norm1_IdOrKeyword returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		kw='keyword'
		{
			$current.merge(kw);
			newLeafNode(kw, grammarAccess.getIdOrKeywordAccess().getKeywordKeyword_0_0());
		}
		    |
		this_ID_1=RULE_ID
		{
			$current.merge(this_ID_1);
		}
		{
			newLeafNode(this_ID_1, grammarAccess.getIdOrKeywordAccess().getIDTerminalRuleCall_1());
		}
	)
;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;

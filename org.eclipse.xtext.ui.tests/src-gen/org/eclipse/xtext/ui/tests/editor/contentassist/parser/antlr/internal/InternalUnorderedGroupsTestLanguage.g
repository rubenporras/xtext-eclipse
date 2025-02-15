/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalUnorderedGroupsTestLanguage;

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
import org.eclipse.xtext.ui.tests.editor.contentassist.services.UnorderedGroupsTestLanguageGrammarAccess;

}

@parser::members {

 	private UnorderedGroupsTestLanguageGrammarAccess grammarAccess;

    public InternalUnorderedGroupsTestLanguageParser(TokenStream input, UnorderedGroupsTestLanguageGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "Model";
   	}

   	@Override
   	protected UnorderedGroupsTestLanguageGrammarAccess getGrammarAccess() {
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
			otherlv_0='1'
			{
				newLeafNode(otherlv_0, grammarAccess.getModelAccess().getDigitOneKeyword_0_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getModelAccess().getFirstSimpleModelParserRuleCall_0_1_0());
					}
					lv_first_1_0=ruleSimpleModel
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getModelRule());
						}
						set(
							$current,
							"first",
							lv_first_1_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.UnorderedGroupsTestLanguage.SimpleModel");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)
		    |
		(
			otherlv_2='2'
			{
				newLeafNode(otherlv_2, grammarAccess.getModelAccess().getDigitTwoKeyword_1_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getModelAccess().getSecondMandatoryModelParserRuleCall_1_1_0());
					}
					lv_second_3_0=ruleMandatoryModel
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getModelRule());
						}
						set(
							$current,
							"second",
							lv_second_3_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.UnorderedGroupsTestLanguage.MandatoryModel");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)
		    |
		(
			otherlv_4='3'
			{
				newLeafNode(otherlv_4, grammarAccess.getModelAccess().getDigitThreeKeyword_2_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getModelAccess().getThrirdLoopedModelParserRuleCall_2_1_0());
					}
					lv_thrird_5_0=ruleLoopedModel
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getModelRule());
						}
						set(
							$current,
							"thrird",
							lv_thrird_5_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.UnorderedGroupsTestLanguage.LoopedModel");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)
		    |
		(
			otherlv_6='4'
			{
				newLeafNode(otherlv_6, grammarAccess.getModelAccess().getDigitFourKeyword_3_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getModelAccess().getForthGroupLoopedModelParserRuleCall_3_1_0());
					}
					lv_forth_7_0=ruleGroupLoopedModel
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getModelRule());
						}
						set(
							$current,
							"forth",
							lv_forth_7_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.UnorderedGroupsTestLanguage.GroupLoopedModel");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)
		    |
		(
			otherlv_8='5'
			{
				newLeafNode(otherlv_8, grammarAccess.getModelAccess().getDigitFiveKeyword_4_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getModelAccess().getFifthLoopedAlternativeModelParserRuleCall_4_1_0());
					}
					lv_fifth_9_0=ruleLoopedAlternativeModel
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getModelRule());
						}
						set(
							$current,
							"fifth",
							lv_fifth_9_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.UnorderedGroupsTestLanguage.LoopedAlternativeModel");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)
		    |
		(
			otherlv_10='bug304681'
			{
				newLeafNode(otherlv_10, grammarAccess.getModelAccess().getBug304681Keyword_5_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getModelAccess().getModelBug304681ModelParserRuleCall_5_1_0());
					}
					lv_model_11_0=ruleBug304681Model
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getModelRule());
						}
						set(
							$current,
							"model",
							lv_model_11_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.UnorderedGroupsTestLanguage.Bug304681Model");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)
	)
;

// Entry rule entryRuleSimpleModel
entryRuleSimpleModel returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getSimpleModelRule()); }
	iv_ruleSimpleModel=ruleSimpleModel
	{ $current=$iv_ruleSimpleModel.current; }
	EOF;

// Rule SimpleModel
ruleSimpleModel returns [EObject current=null]
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
				  getUnorderedGroupHelper().enter(grammarAccess.getSimpleModelAccess().getUnorderedGroup_0());
				}
				(
					(
			(
				{getUnorderedGroupHelper().canSelect(grammarAccess.getSimpleModelAccess().getUnorderedGroup_0(), 0)}?=>(
					{
						getUnorderedGroupHelper().select(grammarAccess.getSimpleModelAccess().getUnorderedGroup_0(), 0);
					}
								({true}?=>((
									(
										lv_visibility_1_1='public'
										{
											newLeafNode(lv_visibility_1_1, grammarAccess.getSimpleModelAccess().getVisibilityPublicKeyword_0_0_0_0());
										}
										{
											if ($current==null) {
												$current = createModelElement(grammarAccess.getSimpleModelRule());
											}
											setWithLastConsumed($current, "visibility", lv_visibility_1_1, null);
										}
										    |
										lv_visibility_1_2='private'
										{
											newLeafNode(lv_visibility_1_2, grammarAccess.getSimpleModelAccess().getVisibilityPrivateKeyword_0_0_0_1());
										}
										{
											if ($current==null) {
												$current = createModelElement(grammarAccess.getSimpleModelRule());
											}
											setWithLastConsumed($current, "visibility", lv_visibility_1_2, null);
										}
										    |
										lv_visibility_1_3='protected'
										{
											newLeafNode(lv_visibility_1_3, grammarAccess.getSimpleModelAccess().getVisibilityProtectedKeyword_0_0_0_2());
										}
										{
											if ($current==null) {
												$current = createModelElement(grammarAccess.getSimpleModelRule());
											}
											setWithLastConsumed($current, "visibility", lv_visibility_1_3, null);
										}
									)
								)
								))
					{ 
						getUnorderedGroupHelper().returnFromSelection(grammarAccess.getSimpleModelAccess().getUnorderedGroup_0());
					}
				)
			)|
			(
				{getUnorderedGroupHelper().canSelect(grammarAccess.getSimpleModelAccess().getUnorderedGroup_0(), 1)}?=>(
					{
						getUnorderedGroupHelper().select(grammarAccess.getSimpleModelAccess().getUnorderedGroup_0(), 1);
					}
								({true}?=>((
									lv_static_2_0='static'
									{
										newLeafNode(lv_static_2_0, grammarAccess.getSimpleModelAccess().getStaticStaticKeyword_0_1_0());
									}
									{
										if ($current==null) {
											$current = createModelElement(grammarAccess.getSimpleModelRule());
										}
										setWithLastConsumed($current, "static", lv_static_2_0 != null, "static");
									}
								)
								))
					{ 
						getUnorderedGroupHelper().returnFromSelection(grammarAccess.getSimpleModelAccess().getUnorderedGroup_0());
					}
				)
			)|
			(
				{getUnorderedGroupHelper().canSelect(grammarAccess.getSimpleModelAccess().getUnorderedGroup_0(), 2)}?=>(
					{
						getUnorderedGroupHelper().select(grammarAccess.getSimpleModelAccess().getUnorderedGroup_0(), 2);
					}
								({true}?=>((
									lv_synchronized_3_0='synchronized'
									{
										newLeafNode(lv_synchronized_3_0, grammarAccess.getSimpleModelAccess().getSynchronizedSynchronizedKeyword_0_2_0());
									}
									{
										if ($current==null) {
											$current = createModelElement(grammarAccess.getSimpleModelRule());
										}
										setWithLastConsumed($current, "synchronized", lv_synchronized_3_0 != null, "synchronized");
									}
								)
								))
					{ 
						getUnorderedGroupHelper().returnFromSelection(grammarAccess.getSimpleModelAccess().getUnorderedGroup_0());
					}
				)
			)|
			(
				{getUnorderedGroupHelper().canSelect(grammarAccess.getSimpleModelAccess().getUnorderedGroup_0(), 3)}?=>(
					{
						getUnorderedGroupHelper().select(grammarAccess.getSimpleModelAccess().getUnorderedGroup_0(), 3);
					}
								({true}?=>((
									(
										lv_abstract_4_0='abstract'
										{
											newLeafNode(lv_abstract_4_0, grammarAccess.getSimpleModelAccess().getAbstractAbstractKeyword_0_3_0_0());
										}
										{
											if ($current==null) {
												$current = createModelElement(grammarAccess.getSimpleModelRule());
											}
											setWithLastConsumed($current, "abstract", lv_abstract_4_0 != null, "abstract");
										}
									)
								)
								    |
								(
									(
										lv_final_5_0='final'
										{
											newLeafNode(lv_final_5_0, grammarAccess.getSimpleModelAccess().getFinalFinalKeyword_0_3_1_0());
										}
										{
											if ($current==null) {
												$current = createModelElement(grammarAccess.getSimpleModelRule());
											}
											setWithLastConsumed($current, "final", lv_final_5_0 != null, "final");
										}
									)
								)
								))
					{ 
						getUnorderedGroupHelper().returnFromSelection(grammarAccess.getSimpleModelAccess().getUnorderedGroup_0());
					}
				)
			)
					)*
				)
			)
				{ 
				  getUnorderedGroupHelper().leave(grammarAccess.getSimpleModelAccess().getUnorderedGroup_0());
				}
		)
		otherlv_6='class'
		{
			newLeafNode(otherlv_6, grammarAccess.getSimpleModelAccess().getClassKeyword_1());
		}
		(
			(
				lv_name_7_0=RULE_ID
				{
					newLeafNode(lv_name_7_0, grammarAccess.getSimpleModelAccess().getNameIDTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getSimpleModelRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_7_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_8='{'
		{
			newLeafNode(otherlv_8, grammarAccess.getSimpleModelAccess().getLeftCurlyBracketKeyword_3());
		}
		otherlv_9='}'
		{
			newLeafNode(otherlv_9, grammarAccess.getSimpleModelAccess().getRightCurlyBracketKeyword_4());
		}
	)
;

// Entry rule entryRuleMandatoryModel
entryRuleMandatoryModel returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getMandatoryModelRule()); }
	iv_ruleMandatoryModel=ruleMandatoryModel
	{ $current=$iv_ruleMandatoryModel.current; }
	EOF;

// Rule MandatoryModel
ruleMandatoryModel returns [EObject current=null]
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
				  getUnorderedGroupHelper().enter(grammarAccess.getMandatoryModelAccess().getUnorderedGroup_0());
				}
				(
					(
			(
				{getUnorderedGroupHelper().canSelect(grammarAccess.getMandatoryModelAccess().getUnorderedGroup_0(), 0)}?=>(
					{
						getUnorderedGroupHelper().select(grammarAccess.getMandatoryModelAccess().getUnorderedGroup_0(), 0);
					}
								({true}?=>((
									(
										lv_visibility_1_1='public'
										{
											newLeafNode(lv_visibility_1_1, grammarAccess.getMandatoryModelAccess().getVisibilityPublicKeyword_0_0_0_0());
										}
										{
											if ($current==null) {
												$current = createModelElement(grammarAccess.getMandatoryModelRule());
											}
											setWithLastConsumed($current, "visibility", lv_visibility_1_1, null);
										}
										    |
										lv_visibility_1_2='private'
										{
											newLeafNode(lv_visibility_1_2, grammarAccess.getMandatoryModelAccess().getVisibilityPrivateKeyword_0_0_0_1());
										}
										{
											if ($current==null) {
												$current = createModelElement(grammarAccess.getMandatoryModelRule());
											}
											setWithLastConsumed($current, "visibility", lv_visibility_1_2, null);
										}
										    |
										lv_visibility_1_3='protected'
										{
											newLeafNode(lv_visibility_1_3, grammarAccess.getMandatoryModelAccess().getVisibilityProtectedKeyword_0_0_0_2());
										}
										{
											if ($current==null) {
												$current = createModelElement(grammarAccess.getMandatoryModelRule());
											}
											setWithLastConsumed($current, "visibility", lv_visibility_1_3, null);
										}
									)
								)
								))
					{ 
						getUnorderedGroupHelper().returnFromSelection(grammarAccess.getMandatoryModelAccess().getUnorderedGroup_0());
					}
				)
			)|
			(
				{getUnorderedGroupHelper().canSelect(grammarAccess.getMandatoryModelAccess().getUnorderedGroup_0(), 1)}?=>(
					{
						getUnorderedGroupHelper().select(grammarAccess.getMandatoryModelAccess().getUnorderedGroup_0(), 1);
					}
								({true}?=>((
									lv_static_2_0='static'
									{
										newLeafNode(lv_static_2_0, grammarAccess.getMandatoryModelAccess().getStaticStaticKeyword_0_1_0());
									}
									{
										if ($current==null) {
											$current = createModelElement(grammarAccess.getMandatoryModelRule());
										}
										setWithLastConsumed($current, "static", lv_static_2_0 != null, "static");
									}
								)
								))
					{ 
						getUnorderedGroupHelper().returnFromSelection(grammarAccess.getMandatoryModelAccess().getUnorderedGroup_0());
					}
				)
			)|
			(
				{getUnorderedGroupHelper().canSelect(grammarAccess.getMandatoryModelAccess().getUnorderedGroup_0(), 2)}?=>(
					{
						getUnorderedGroupHelper().select(grammarAccess.getMandatoryModelAccess().getUnorderedGroup_0(), 2);
					}
								({true}?=>((
									lv_synchronized_3_0='synchronized'
									{
										newLeafNode(lv_synchronized_3_0, grammarAccess.getMandatoryModelAccess().getSynchronizedSynchronizedKeyword_0_2_0());
									}
									{
										if ($current==null) {
											$current = createModelElement(grammarAccess.getMandatoryModelRule());
										}
										setWithLastConsumed($current, "synchronized", lv_synchronized_3_0 != null, "synchronized");
									}
								)
								))
					{ 
						getUnorderedGroupHelper().returnFromSelection(grammarAccess.getMandatoryModelAccess().getUnorderedGroup_0());
					}
				)
			)|
			(
				{getUnorderedGroupHelper().canSelect(grammarAccess.getMandatoryModelAccess().getUnorderedGroup_0(), 3)}?=>(
					{
						getUnorderedGroupHelper().select(grammarAccess.getMandatoryModelAccess().getUnorderedGroup_0(), 3);
					}
								({true}?=>((
									(
										lv_abstract_4_0='abstract'
										{
											newLeafNode(lv_abstract_4_0, grammarAccess.getMandatoryModelAccess().getAbstractAbstractKeyword_0_3_0_0());
										}
										{
											if ($current==null) {
												$current = createModelElement(grammarAccess.getMandatoryModelRule());
											}
											setWithLastConsumed($current, "abstract", lv_abstract_4_0 != null, "abstract");
										}
									)
								)
								    |
								(
									(
										lv_final_5_0='final'
										{
											newLeafNode(lv_final_5_0, grammarAccess.getMandatoryModelAccess().getFinalFinalKeyword_0_3_1_0());
										}
										{
											if ($current==null) {
												$current = createModelElement(grammarAccess.getMandatoryModelRule());
											}
											setWithLastConsumed($current, "final", lv_final_5_0 != null, "final");
										}
									)
								)
								))
					{ 
						getUnorderedGroupHelper().returnFromSelection(grammarAccess.getMandatoryModelAccess().getUnorderedGroup_0());
					}
				)
			)
					)+
					{getUnorderedGroupHelper().canLeave(grammarAccess.getMandatoryModelAccess().getUnorderedGroup_0())}?
				)
			)
				{ 
				  getUnorderedGroupHelper().leave(grammarAccess.getMandatoryModelAccess().getUnorderedGroup_0());
				}
		)
		otherlv_6='class'
		{
			newLeafNode(otherlv_6, grammarAccess.getMandatoryModelAccess().getClassKeyword_1());
		}
		(
			(
				lv_name_7_0=RULE_ID
				{
					newLeafNode(lv_name_7_0, grammarAccess.getMandatoryModelAccess().getNameIDTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getMandatoryModelRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_7_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_8='{'
		{
			newLeafNode(otherlv_8, grammarAccess.getMandatoryModelAccess().getLeftCurlyBracketKeyword_3());
		}
		otherlv_9='}'
		{
			newLeafNode(otherlv_9, grammarAccess.getMandatoryModelAccess().getRightCurlyBracketKeyword_4());
		}
	)
;

// Entry rule entryRuleLoopedModel
entryRuleLoopedModel returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getLoopedModelRule()); }
	iv_ruleLoopedModel=ruleLoopedModel
	{ $current=$iv_ruleLoopedModel.current; }
	EOF;

// Rule LoopedModel
ruleLoopedModel returns [EObject current=null]
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
				  getUnorderedGroupHelper().enter(grammarAccess.getLoopedModelAccess().getUnorderedGroup_0());
				}
				(
					(
			(
				{getUnorderedGroupHelper().canSelect(grammarAccess.getLoopedModelAccess().getUnorderedGroup_0(), 0)}?=>(
					{
						getUnorderedGroupHelper().select(grammarAccess.getLoopedModelAccess().getUnorderedGroup_0(), 0);
					}
								({true}?=>((
									(
										lv_visibility_1_1='public'
										{
											newLeafNode(lv_visibility_1_1, grammarAccess.getLoopedModelAccess().getVisibilityPublicKeyword_0_0_0_0());
										}
										{
											if ($current==null) {
												$current = createModelElement(grammarAccess.getLoopedModelRule());
											}
											addWithLastConsumed($current, "visibility", lv_visibility_1_1, null);
										}
										    |
										lv_visibility_1_2='private'
										{
											newLeafNode(lv_visibility_1_2, grammarAccess.getLoopedModelAccess().getVisibilityPrivateKeyword_0_0_0_1());
										}
										{
											if ($current==null) {
												$current = createModelElement(grammarAccess.getLoopedModelRule());
											}
											addWithLastConsumed($current, "visibility", lv_visibility_1_2, null);
										}
										    |
										lv_visibility_1_3='protected'
										{
											newLeafNode(lv_visibility_1_3, grammarAccess.getLoopedModelAccess().getVisibilityProtectedKeyword_0_0_0_2());
										}
										{
											if ($current==null) {
												$current = createModelElement(grammarAccess.getLoopedModelRule());
											}
											addWithLastConsumed($current, "visibility", lv_visibility_1_3, null);
										}
									)
								)
								))+
					{ 
						getUnorderedGroupHelper().returnFromSelection(grammarAccess.getLoopedModelAccess().getUnorderedGroup_0());
					}
				)
			)|
			(
				{getUnorderedGroupHelper().canSelect(grammarAccess.getLoopedModelAccess().getUnorderedGroup_0(), 1)}?=>(
					{
						getUnorderedGroupHelper().select(grammarAccess.getLoopedModelAccess().getUnorderedGroup_0(), 1);
					}
								({true}?=>((
									lv_static_2_0='static'
									{
										newLeafNode(lv_static_2_0, grammarAccess.getLoopedModelAccess().getStaticStaticKeyword_0_1_0());
									}
									{
										if ($current==null) {
											$current = createModelElement(grammarAccess.getLoopedModelRule());
										}
										addWithLastConsumed($current, "static", lv_static_2_0, "static");
									}
								)
								))+
					{ 
						getUnorderedGroupHelper().returnFromSelection(grammarAccess.getLoopedModelAccess().getUnorderedGroup_0());
					}
				)
			)|
			(
				{getUnorderedGroupHelper().canSelect(grammarAccess.getLoopedModelAccess().getUnorderedGroup_0(), 2)}?=>(
					{
						getUnorderedGroupHelper().select(grammarAccess.getLoopedModelAccess().getUnorderedGroup_0(), 2);
					}
								({true}?=>((
									lv_synchronized_3_0='synchronized'
									{
										newLeafNode(lv_synchronized_3_0, grammarAccess.getLoopedModelAccess().getSynchronizedSynchronizedKeyword_0_2_0());
									}
									{
										if ($current==null) {
											$current = createModelElement(grammarAccess.getLoopedModelRule());
										}
										addWithLastConsumed($current, "synchronized", lv_synchronized_3_0, "synchronized");
									}
								)
								))+
					{ 
						getUnorderedGroupHelper().returnFromSelection(grammarAccess.getLoopedModelAccess().getUnorderedGroup_0());
					}
				)
			)|
			(
				{getUnorderedGroupHelper().canSelect(grammarAccess.getLoopedModelAccess().getUnorderedGroup_0(), 3)}?=>(
					{
						getUnorderedGroupHelper().select(grammarAccess.getLoopedModelAccess().getUnorderedGroup_0(), 3);
					}
								({true}?=>((
									(
										lv_abstract_4_0='abstract'
										{
											newLeafNode(lv_abstract_4_0, grammarAccess.getLoopedModelAccess().getAbstractAbstractKeyword_0_3_0_0());
										}
										{
											if ($current==null) {
												$current = createModelElement(grammarAccess.getLoopedModelRule());
											}
											addWithLastConsumed($current, "abstract", lv_abstract_4_0, "abstract");
										}
									)
								)
								    |
								(
									(
										lv_final_5_0='final'
										{
											newLeafNode(lv_final_5_0, grammarAccess.getLoopedModelAccess().getFinalFinalKeyword_0_3_1_0());
										}
										{
											if ($current==null) {
												$current = createModelElement(grammarAccess.getLoopedModelRule());
											}
											addWithLastConsumed($current, "final", lv_final_5_0, "final");
										}
									)
								)
								))+
					{ 
						getUnorderedGroupHelper().returnFromSelection(grammarAccess.getLoopedModelAccess().getUnorderedGroup_0());
					}
				)
			)
					)*
				)
			)
				{ 
				  getUnorderedGroupHelper().leave(grammarAccess.getLoopedModelAccess().getUnorderedGroup_0());
				}
		)
		otherlv_6='class'
		{
			newLeafNode(otherlv_6, grammarAccess.getLoopedModelAccess().getClassKeyword_1());
		}
		(
			(
				lv_name_7_0=RULE_ID
				{
					newLeafNode(lv_name_7_0, grammarAccess.getLoopedModelAccess().getNameIDTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getLoopedModelRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_7_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_8='{'
		{
			newLeafNode(otherlv_8, grammarAccess.getLoopedModelAccess().getLeftCurlyBracketKeyword_3());
		}
		otherlv_9='}'
		{
			newLeafNode(otherlv_9, grammarAccess.getLoopedModelAccess().getRightCurlyBracketKeyword_4());
		}
	)
;

// Entry rule entryRuleGroupLoopedModel
entryRuleGroupLoopedModel returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getGroupLoopedModelRule()); }
	iv_ruleGroupLoopedModel=ruleGroupLoopedModel
	{ $current=$iv_ruleGroupLoopedModel.current; }
	EOF;

// Rule GroupLoopedModel
ruleGroupLoopedModel returns [EObject current=null]
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
				  getUnorderedGroupHelper().enter(grammarAccess.getGroupLoopedModelAccess().getUnorderedGroup_0());
				}
				(
					(
			(
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGroupLoopedModelAccess().getUnorderedGroup_0(), 0)}?=>(
					{
						getUnorderedGroupHelper().select(grammarAccess.getGroupLoopedModelAccess().getUnorderedGroup_0(), 0);
					}
								({true}?=>((
									(
										lv_visibility_1_1='public'
										{
											newLeafNode(lv_visibility_1_1, grammarAccess.getGroupLoopedModelAccess().getVisibilityPublicKeyword_0_0_0_0());
										}
										{
											if ($current==null) {
												$current = createModelElement(grammarAccess.getGroupLoopedModelRule());
											}
											addWithLastConsumed($current, "visibility", lv_visibility_1_1, null);
										}
										    |
										lv_visibility_1_2='private'
										{
											newLeafNode(lv_visibility_1_2, grammarAccess.getGroupLoopedModelAccess().getVisibilityPrivateKeyword_0_0_0_1());
										}
										{
											if ($current==null) {
												$current = createModelElement(grammarAccess.getGroupLoopedModelRule());
											}
											addWithLastConsumed($current, "visibility", lv_visibility_1_2, null);
										}
										    |
										lv_visibility_1_3='protected'
										{
											newLeafNode(lv_visibility_1_3, grammarAccess.getGroupLoopedModelAccess().getVisibilityProtectedKeyword_0_0_0_2());
										}
										{
											if ($current==null) {
												$current = createModelElement(grammarAccess.getGroupLoopedModelRule());
											}
											addWithLastConsumed($current, "visibility", lv_visibility_1_3, null);
										}
									)
								)
								))
					{ 
						getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGroupLoopedModelAccess().getUnorderedGroup_0());
					}
				)
			)|
			(
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGroupLoopedModelAccess().getUnorderedGroup_0(), 1)}?=>(
					{
						getUnorderedGroupHelper().select(grammarAccess.getGroupLoopedModelAccess().getUnorderedGroup_0(), 1);
					}
								({true}?=>((
									lv_static_2_0='static'
									{
										newLeafNode(lv_static_2_0, grammarAccess.getGroupLoopedModelAccess().getStaticStaticKeyword_0_1_0());
									}
									{
										if ($current==null) {
											$current = createModelElement(grammarAccess.getGroupLoopedModelRule());
										}
										addWithLastConsumed($current, "static", lv_static_2_0, "static");
									}
								)
								))
					{ 
						getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGroupLoopedModelAccess().getUnorderedGroup_0());
					}
				)
			)|
			(
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGroupLoopedModelAccess().getUnorderedGroup_0(), 2)}?=>(
					{
						getUnorderedGroupHelper().select(grammarAccess.getGroupLoopedModelAccess().getUnorderedGroup_0(), 2);
					}
								({true}?=>((
									lv_synchronized_3_0='synchronized'
									{
										newLeafNode(lv_synchronized_3_0, grammarAccess.getGroupLoopedModelAccess().getSynchronizedSynchronizedKeyword_0_2_0());
									}
									{
										if ($current==null) {
											$current = createModelElement(grammarAccess.getGroupLoopedModelRule());
										}
										addWithLastConsumed($current, "synchronized", lv_synchronized_3_0, "synchronized");
									}
								)
								))
					{ 
						getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGroupLoopedModelAccess().getUnorderedGroup_0());
					}
				)
			)|
			(
				{getUnorderedGroupHelper().canSelect(grammarAccess.getGroupLoopedModelAccess().getUnorderedGroup_0(), 3)}?=>(
					{
						getUnorderedGroupHelper().select(grammarAccess.getGroupLoopedModelAccess().getUnorderedGroup_0(), 3);
					}
								({true}?=>((
									(
										lv_abstract_4_0='abstract'
										{
											newLeafNode(lv_abstract_4_0, grammarAccess.getGroupLoopedModelAccess().getAbstractAbstractKeyword_0_3_0_0());
										}
										{
											if ($current==null) {
												$current = createModelElement(grammarAccess.getGroupLoopedModelRule());
											}
											addWithLastConsumed($current, "abstract", lv_abstract_4_0, "abstract");
										}
									)
								)
								    |
								(
									(
										lv_final_5_0='final'
										{
											newLeafNode(lv_final_5_0, grammarAccess.getGroupLoopedModelAccess().getFinalFinalKeyword_0_3_1_0());
										}
										{
											if ($current==null) {
												$current = createModelElement(grammarAccess.getGroupLoopedModelRule());
											}
											addWithLastConsumed($current, "final", lv_final_5_0, "final");
										}
									)
								)
								))
					{ 
						getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGroupLoopedModelAccess().getUnorderedGroup_0());
					}
				)
			)
					)+
					{getUnorderedGroupHelper().canLeave(grammarAccess.getGroupLoopedModelAccess().getUnorderedGroup_0())}?
				)
			)
				{ 
				  getUnorderedGroupHelper().leave(grammarAccess.getGroupLoopedModelAccess().getUnorderedGroup_0());
				}
		)*
		otherlv_6='class'
		{
			newLeafNode(otherlv_6, grammarAccess.getGroupLoopedModelAccess().getClassKeyword_1());
		}
		(
			(
				lv_name_7_0=RULE_ID
				{
					newLeafNode(lv_name_7_0, grammarAccess.getGroupLoopedModelAccess().getNameIDTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getGroupLoopedModelRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_7_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_8='{'
		{
			newLeafNode(otherlv_8, grammarAccess.getGroupLoopedModelAccess().getLeftCurlyBracketKeyword_3());
		}
		otherlv_9='}'
		{
			newLeafNode(otherlv_9, grammarAccess.getGroupLoopedModelAccess().getRightCurlyBracketKeyword_4());
		}
	)
;

// Entry rule entryRuleLoopedAlternativeModel
entryRuleLoopedAlternativeModel returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getLoopedAlternativeModelRule()); }
	iv_ruleLoopedAlternativeModel=ruleLoopedAlternativeModel
	{ $current=$iv_ruleLoopedAlternativeModel.current; }
	EOF;

// Rule LoopedAlternativeModel
ruleLoopedAlternativeModel returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				(
					(
						lv_visibility_0_1='public'
						{
							newLeafNode(lv_visibility_0_1, grammarAccess.getLoopedAlternativeModelAccess().getVisibilityPublicKeyword_0_0_0_0());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getLoopedAlternativeModelRule());
							}
							addWithLastConsumed($current, "visibility", lv_visibility_0_1, null);
						}
						    |
						lv_visibility_0_2='private'
						{
							newLeafNode(lv_visibility_0_2, grammarAccess.getLoopedAlternativeModelAccess().getVisibilityPrivateKeyword_0_0_0_1());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getLoopedAlternativeModelRule());
							}
							addWithLastConsumed($current, "visibility", lv_visibility_0_2, null);
						}
						    |
						lv_visibility_0_3='protected'
						{
							newLeafNode(lv_visibility_0_3, grammarAccess.getLoopedAlternativeModelAccess().getVisibilityProtectedKeyword_0_0_0_2());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getLoopedAlternativeModelRule());
							}
							addWithLastConsumed($current, "visibility", lv_visibility_0_3, null);
						}
					)
				)
			)
			    |
			(
				(
					lv_static_1_0='static'
					{
						newLeafNode(lv_static_1_0, grammarAccess.getLoopedAlternativeModelAccess().getStaticStaticKeyword_0_1_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getLoopedAlternativeModelRule());
						}
						addWithLastConsumed($current, "static", lv_static_1_0, "static");
					}
				)
			)
			    |
			(
				(
					lv_synchronized_2_0='synchronized'
					{
						newLeafNode(lv_synchronized_2_0, grammarAccess.getLoopedAlternativeModelAccess().getSynchronizedSynchronizedKeyword_0_2_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getLoopedAlternativeModelRule());
						}
						addWithLastConsumed($current, "synchronized", lv_synchronized_2_0, "synchronized");
					}
				)
			)
			    |
			(
				(
					(
						lv_abstract_3_0='abstract'
						{
							newLeafNode(lv_abstract_3_0, grammarAccess.getLoopedAlternativeModelAccess().getAbstractAbstractKeyword_0_3_0_0());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getLoopedAlternativeModelRule());
							}
							addWithLastConsumed($current, "abstract", lv_abstract_3_0, "abstract");
						}
					)
				)
				    |
				(
					(
						lv_final_4_0='final'
						{
							newLeafNode(lv_final_4_0, grammarAccess.getLoopedAlternativeModelAccess().getFinalFinalKeyword_0_3_1_0());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getLoopedAlternativeModelRule());
							}
							addWithLastConsumed($current, "final", lv_final_4_0, "final");
						}
					)
				)
			)
			    |
			(
				otherlv_5='before'
				{
					newLeafNode(otherlv_5, grammarAccess.getLoopedAlternativeModelAccess().getBeforeKeyword_0_4_0());
				}
				(
					otherlv_6='after'
					{
						newLeafNode(otherlv_6, grammarAccess.getLoopedAlternativeModelAccess().getAfterKeyword_0_4_1());
					}
				)*
			)
		)*
		otherlv_7='class'
		{
			newLeafNode(otherlv_7, grammarAccess.getLoopedAlternativeModelAccess().getClassKeyword_1());
		}
		(
			(
				lv_name_8_0=RULE_ID
				{
					newLeafNode(lv_name_8_0, grammarAccess.getLoopedAlternativeModelAccess().getNameIDTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getLoopedAlternativeModelRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_8_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_9='{'
		{
			newLeafNode(otherlv_9, grammarAccess.getLoopedAlternativeModelAccess().getLeftCurlyBracketKeyword_3());
		}
		otherlv_10='}'
		{
			newLeafNode(otherlv_10, grammarAccess.getLoopedAlternativeModelAccess().getRightCurlyBracketKeyword_4());
		}
	)
;

// Entry rule entryRuleBug304681Model
entryRuleBug304681Model returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getBug304681ModelRule()); }
	iv_ruleBug304681Model=ruleBug304681Model
	{ $current=$iv_ruleBug304681Model.current; }
	EOF;

// Rule Bug304681Model
ruleBug304681Model returns [EObject current=null]
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
					grammarAccess.getBug304681ModelAccess().getBug304681ModelAction_0(),
					$current);
			}
		)
		otherlv_1='{'
		{
			newLeafNode(otherlv_1, grammarAccess.getBug304681ModelAccess().getLeftCurlyBracketKeyword_1());
		}
		(
			(
				{ 
				  getUnorderedGroupHelper().enter(grammarAccess.getBug304681ModelAccess().getUnorderedGroup_2());
				}
				(
					(
			(
				{getUnorderedGroupHelper().canSelect(grammarAccess.getBug304681ModelAccess().getUnorderedGroup_2(), 0)}?=>(
					{
						getUnorderedGroupHelper().select(grammarAccess.getBug304681ModelAccess().getUnorderedGroup_2(), 0);
					}
								({true}?=>(otherlv_3='short'
								{
									newLeafNode(otherlv_3, grammarAccess.getBug304681ModelAccess().getShortKeyword_2_0_0());
								}
								(
									(
										lv_shortDescription_4_0=RULE_STRING
										{
											newLeafNode(lv_shortDescription_4_0, grammarAccess.getBug304681ModelAccess().getShortDescriptionSTRINGTerminalRuleCall_2_0_1_0());
										}
										{
											if ($current==null) {
												$current = createModelElement(grammarAccess.getBug304681ModelRule());
											}
											setWithLastConsumed(
												$current,
												"shortDescription",
												lv_shortDescription_4_0,
												"org.eclipse.xtext.common.Terminals.STRING");
										}
									)
								)
								otherlv_5=';'
								{
									newLeafNode(otherlv_5, grammarAccess.getBug304681ModelAccess().getSemicolonKeyword_2_0_2());
								}
								))
					{ 
						getUnorderedGroupHelper().returnFromSelection(grammarAccess.getBug304681ModelAccess().getUnorderedGroup_2());
					}
				)
			)|
			(
				{getUnorderedGroupHelper().canSelect(grammarAccess.getBug304681ModelAccess().getUnorderedGroup_2(), 1)}?=>(
					{
						getUnorderedGroupHelper().select(grammarAccess.getBug304681ModelAccess().getUnorderedGroup_2(), 1);
					}
								({true}?=>(otherlv_6='long'
								{
									newLeafNode(otherlv_6, grammarAccess.getBug304681ModelAccess().getLongKeyword_2_1_0());
								}
								(
									(
										lv_longDescription_7_0=RULE_STRING
										{
											newLeafNode(lv_longDescription_7_0, grammarAccess.getBug304681ModelAccess().getLongDescriptionSTRINGTerminalRuleCall_2_1_1_0());
										}
										{
											if ($current==null) {
												$current = createModelElement(grammarAccess.getBug304681ModelRule());
											}
											setWithLastConsumed(
												$current,
												"longDescription",
												lv_longDescription_7_0,
												"org.eclipse.xtext.common.Terminals.STRING");
										}
									)
								)
								otherlv_8=';'
								{
									newLeafNode(otherlv_8, grammarAccess.getBug304681ModelAccess().getSemicolonKeyword_2_1_2());
								}
								))
					{ 
						getUnorderedGroupHelper().returnFromSelection(grammarAccess.getBug304681ModelAccess().getUnorderedGroup_2());
					}
				)
			)|
			(
				{getUnorderedGroupHelper().canSelect(grammarAccess.getBug304681ModelAccess().getUnorderedGroup_2(), 2)}?=>(
					{
						getUnorderedGroupHelper().select(grammarAccess.getBug304681ModelAccess().getUnorderedGroup_2(), 2);
					}
								({true}?=>(otherlv_9='uid'
								{
									newLeafNode(otherlv_9, grammarAccess.getBug304681ModelAccess().getUidKeyword_2_2_0());
								}
								(
									(
										lv_uid_10_0=RULE_STRING
										{
											newLeafNode(lv_uid_10_0, grammarAccess.getBug304681ModelAccess().getUidSTRINGTerminalRuleCall_2_2_1_0());
										}
										{
											if ($current==null) {
												$current = createModelElement(grammarAccess.getBug304681ModelRule());
											}
											setWithLastConsumed(
												$current,
												"uid",
												lv_uid_10_0,
												"org.eclipse.xtext.common.Terminals.STRING");
										}
									)
								)
								otherlv_11=';'
								{
									newLeafNode(otherlv_11, grammarAccess.getBug304681ModelAccess().getSemicolonKeyword_2_2_2());
								}
								))
					{ 
						getUnorderedGroupHelper().returnFromSelection(grammarAccess.getBug304681ModelAccess().getUnorderedGroup_2());
					}
				)
			)|
			(
				{getUnorderedGroupHelper().canSelect(grammarAccess.getBug304681ModelAccess().getUnorderedGroup_2(), 3)}?=>(
					{
						getUnorderedGroupHelper().select(grammarAccess.getBug304681ModelAccess().getUnorderedGroup_2(), 3);
					}
								({true}?=>((
									(
										lv_flag_12_0='flag'
										{
											newLeafNode(lv_flag_12_0, grammarAccess.getBug304681ModelAccess().getFlagFlagKeyword_2_3_0_0());
										}
										{
											if ($current==null) {
												$current = createModelElement(grammarAccess.getBug304681ModelRule());
											}
											setWithLastConsumed($current, "flag", lv_flag_12_0 != null, "flag");
										}
									)
								)
								otherlv_13=';'
								{
									newLeafNode(otherlv_13, grammarAccess.getBug304681ModelAccess().getSemicolonKeyword_2_3_1());
								}
								))
					{ 
						getUnorderedGroupHelper().returnFromSelection(grammarAccess.getBug304681ModelAccess().getUnorderedGroup_2());
					}
				)
			)|
			(
				{getUnorderedGroupHelper().canSelect(grammarAccess.getBug304681ModelAccess().getUnorderedGroup_2(), 4)}?=>(
					{
						getUnorderedGroupHelper().select(grammarAccess.getBug304681ModelAccess().getUnorderedGroup_2(), 4);
					}
								({true}?=>((
									{
										newCompositeNode(grammarAccess.getBug304681ModelAccess().getFeaturesBug304681FeatureParserRuleCall_2_4_0());
									}
									lv_features_14_0=ruleBug304681Feature
									{
										if ($current==null) {
											$current = createModelElementForParent(grammarAccess.getBug304681ModelRule());
										}
										add(
											$current,
											"features",
											lv_features_14_0,
											"org.eclipse.xtext.ui.tests.editor.contentassist.UnorderedGroupsTestLanguage.Bug304681Feature");
										afterParserOrEnumRuleCall();
									}
								)
								))+
					{ 
						getUnorderedGroupHelper().returnFromSelection(grammarAccess.getBug304681ModelAccess().getUnorderedGroup_2());
					}
				)
			)
					)*
				)
			)
				{ 
				  getUnorderedGroupHelper().leave(grammarAccess.getBug304681ModelAccess().getUnorderedGroup_2());
				}
		)
		otherlv_15='}'
		{
			newLeafNode(otherlv_15, grammarAccess.getBug304681ModelAccess().getRightCurlyBracketKeyword_3());
		}
	)
;

// Entry rule entryRuleBug304681Feature
entryRuleBug304681Feature returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getBug304681FeatureRule()); }
	iv_ruleBug304681Feature=ruleBug304681Feature
	{ $current=$iv_ruleBug304681Feature.current; }
	EOF;

// Rule Bug304681Feature
ruleBug304681Feature returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getBug304681FeatureAccess().getBug304681AttributeParserRuleCall_0());
		}
		this_Bug304681Attribute_0=ruleBug304681Attribute
		{
			$current = $this_Bug304681Attribute_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getBug304681FeatureAccess().getBug304681ReferenceParserRuleCall_1());
		}
		this_Bug304681Reference_1=ruleBug304681Reference
		{
			$current = $this_Bug304681Reference_1.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleBug304681Attribute
entryRuleBug304681Attribute returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getBug304681AttributeRule()); }
	iv_ruleBug304681Attribute=ruleBug304681Attribute
	{ $current=$iv_ruleBug304681Attribute.current; }
	EOF;

// Rule Bug304681Attribute
ruleBug304681Attribute returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='attr'
		{
			newLeafNode(otherlv_0, grammarAccess.getBug304681AttributeAccess().getAttrKeyword_0());
		}
		(
			(
				lv_name_1_0=RULE_ID
				{
					newLeafNode(lv_name_1_0, grammarAccess.getBug304681AttributeAccess().getNameIDTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getBug304681AttributeRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_1_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_2=';'
		{
			newLeafNode(otherlv_2, grammarAccess.getBug304681AttributeAccess().getSemicolonKeyword_2());
		}
	)
;

// Entry rule entryRuleBug304681Reference
entryRuleBug304681Reference returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getBug304681ReferenceRule()); }
	iv_ruleBug304681Reference=ruleBug304681Reference
	{ $current=$iv_ruleBug304681Reference.current; }
	EOF;

// Rule Bug304681Reference
ruleBug304681Reference returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='ref'
		{
			newLeafNode(otherlv_0, grammarAccess.getBug304681ReferenceAccess().getRefKeyword_0());
		}
		(
			(
				lv_name_1_0=RULE_ID
				{
					newLeafNode(lv_name_1_0, grammarAccess.getBug304681ReferenceAccess().getNameIDTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getBug304681ReferenceRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_1_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_2=';'
		{
			newLeafNode(otherlv_2, grammarAccess.getBug304681ReferenceAccess().getSemicolonKeyword_2());
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

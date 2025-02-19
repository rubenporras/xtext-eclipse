/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalBug291022TestLanguage;

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
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug291022TestLanguageGrammarAccess;

}

@parser::members {

 	private Bug291022TestLanguageGrammarAccess grammarAccess;

    public InternalBug291022TestLanguageParser(TokenStream input, Bug291022TestLanguageGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "RootModel";
   	}

   	@Override
   	protected Bug291022TestLanguageGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}

}

@rulecatch {
    catch (RecognitionException re) {
        recover(input,re);
        appendSkippedTokens();
    }
}

// Entry rule entryRuleRootModel
entryRuleRootModel returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getRootModelRule()); }
	iv_ruleRootModel=ruleRootModel
	{ $current=$iv_ruleRootModel.current; }
	EOF;

// Rule RootModel
ruleRootModel returns [EObject current=null]
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
					grammarAccess.getRootModelAccess().getRootModelAction_0(),
					$current);
			}
		)
		(
			(
				lv_name_1_0=RULE_ID
				{
					newLeafNode(lv_name_1_0, grammarAccess.getRootModelAccess().getNameIDTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getRootModelRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_1_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getRootModelRule());
					}
				}
				otherlv_2=RULE_ID
				{
					newLeafNode(otherlv_2, grammarAccess.getRootModelAccess().getTypeModelElementCrossReference_2_0());
				}
			)
		)?
		(
			otherlv_3='{'
			{
				newLeafNode(otherlv_3, grammarAccess.getRootModelAccess().getLeftCurlyBracketKeyword_3_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getRootModelAccess().getElementsModelAttributeParserRuleCall_3_1_0());
					}
					lv_elements_4_0=ruleModelAttribute
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getRootModelRule());
						}
						add(
							$current,
							"elements",
							lv_elements_4_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug291022TestLanguage.ModelAttribute");
						afterParserOrEnumRuleCall();
					}
				)
			)*
			otherlv_5='}'
			{
				newLeafNode(otherlv_5, grammarAccess.getRootModelAccess().getRightCurlyBracketKeyword_3_2());
			}
		)?
	)?
;

// Entry rule entryRuleModelElement
entryRuleModelElement returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getModelElementRule()); }
	iv_ruleModelElement=ruleModelElement
	{ $current=$iv_ruleModelElement.current; }
	EOF;

// Rule ModelElement
ruleModelElement returns [EObject current=null]
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
					if ($current==null) {
						$current = createModelElement(grammarAccess.getModelElementRule());
					}
				}
				otherlv_0=RULE_ID
				{
					newLeafNode(otherlv_0, grammarAccess.getModelElementAccess().getFirstReferenceModelElementCrossReference_0_0());
				}
			)
		)
		(
			otherlv_1=':'
			{
				newLeafNode(otherlv_1, grammarAccess.getModelElementAccess().getColonKeyword_1_0());
			}
			(
				(
					lv_name_2_0=RULE_ID
					{
						newLeafNode(lv_name_2_0, grammarAccess.getModelElementAccess().getNameIDTerminalRuleCall_1_1_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getModelElementRule());
						}
						setWithLastConsumed(
							$current,
							"name",
							lv_name_2_0,
							"org.eclipse.xtext.common.Terminals.ID");
					}
				)
			)
		)?
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getModelElementRule());
					}
				}
				otherlv_3=RULE_ID
				{
					newLeafNode(otherlv_3, grammarAccess.getModelElementAccess().getSecondReferenceModelElementCrossReference_2_0());
				}
			)
		)?
		(
			otherlv_4=';'
			{
				newLeafNode(otherlv_4, grammarAccess.getModelElementAccess().getSemicolonKeyword_3_0());
			}
			    |
			(
				otherlv_5='{'
				{
					newLeafNode(otherlv_5, grammarAccess.getModelElementAccess().getLeftCurlyBracketKeyword_3_1_0());
				}
				(
					(
						{
							newCompositeNode(grammarAccess.getModelElementAccess().getElementsModelAttributeParserRuleCall_3_1_1_0());
						}
						lv_elements_6_0=ruleModelAttribute
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getModelElementRule());
							}
							add(
								$current,
								"elements",
								lv_elements_6_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.Bug291022TestLanguage.ModelAttribute");
							afterParserOrEnumRuleCall();
						}
					)
				)*
				otherlv_7='}'
				{
					newLeafNode(otherlv_7, grammarAccess.getModelElementAccess().getRightCurlyBracketKeyword_3_1_2());
				}
			)
		)
	)
;

// Entry rule entryRuleModelAttribute
entryRuleModelAttribute returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getModelAttributeRule()); }
	iv_ruleModelAttribute=ruleModelAttribute
	{ $current=$iv_ruleModelAttribute.current; }
	EOF;

// Rule ModelAttribute
ruleModelAttribute returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getModelAttributeAccess().getModelElementParserRuleCall_0());
		}
		this_ModelElement_0=ruleModelElement
		{
			$current = $this_ModelElement_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getModelAttributeAccess().getAttributeParserRuleCall_1());
		}
		this_Attribute_1=ruleAttribute
		{
			$current = $this_Attribute_1.current;
			afterParserOrEnumRuleCall();
		}
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
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getAttributeRule());
					}
				}
				otherlv_0=RULE_ID
				{
					newLeafNode(otherlv_0, grammarAccess.getAttributeAccess().getFeatureModelElementCrossReference_0_0());
				}
			)
		)
		otherlv_1='='
		{
			newLeafNode(otherlv_1, grammarAccess.getAttributeAccess().getEqualsSignKeyword_1());
		}
		(
			(
				lv_value_2_0=RULE_STRING
				{
					newLeafNode(lv_value_2_0, grammarAccess.getAttributeAccess().getValueSTRINGTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getAttributeRule());
					}
					setWithLastConsumed(
						$current,
						"value",
						lv_value_2_0,
						"org.eclipse.xtext.common.Terminals.STRING");
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

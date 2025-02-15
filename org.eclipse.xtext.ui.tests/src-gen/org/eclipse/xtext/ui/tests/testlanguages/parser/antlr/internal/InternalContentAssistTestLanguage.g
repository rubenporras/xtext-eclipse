/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalContentAssistTestLanguage;

options {
	superClass=AbstractInternalAntlrParser;
}

@lexer::header {
package org.eclipse.xtext.ui.tests.testlanguages.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.eclipse.xtext.ui.tests.testlanguages.parser.antlr.internal;

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.eclipse.xtext.ui.tests.testlanguages.services.ContentAssistTestLanguageGrammarAccess;

}

@parser::members {

 	private ContentAssistTestLanguageGrammarAccess grammarAccess;

    public InternalContentAssistTestLanguageParser(TokenStream input, ContentAssistTestLanguageGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "Start";
   	}

   	@Override
   	protected ContentAssistTestLanguageGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}

}

@rulecatch {
    catch (RecognitionException re) {
        recover(input,re);
        appendSkippedTokens();
    }
}

// Entry rule entryRuleStart
entryRuleStart returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getStartRule()); }
	iv_ruleStart=ruleStart
	{ $current=$iv_ruleStart.current; }
	EOF;

// Rule Start
ruleStart returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='abstract rules'
		{
			newLeafNode(otherlv_0, grammarAccess.getStartAccess().getAbstractRulesKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getStartAccess().getRulesAbstractRuleParserRuleCall_1_0());
				}
				lv_rules_1_0=ruleAbstractRule
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getStartRule());
					}
					add(
						$current,
						"rules",
						lv_rules_1_0,
						"org.eclipse.xtext.ui.tests.testlanguages.ContentAssistTestLanguage.AbstractRule");
					afterParserOrEnumRuleCall();
				}
			)
		)+
		otherlv_2='end'
		{
			newLeafNode(otherlv_2, grammarAccess.getStartAccess().getEndKeyword_2());
		}
	)
;

// Entry rule entryRuleAbstractRule
entryRuleAbstractRule returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getAbstractRuleRule()); }
	iv_ruleAbstractRule=ruleAbstractRule
	{ $current=$iv_ruleAbstractRule.current; }
	EOF;

// Rule AbstractRule
ruleAbstractRule returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getAbstractRuleAccess().getFirstAbstractRuleChildParserRuleCall_0());
		}
		this_FirstAbstractRuleChild_0=ruleFirstAbstractRuleChild
		{
			$current = $this_FirstAbstractRuleChild_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getAbstractRuleAccess().getSecondAbstractRuleChildParserRuleCall_1());
		}
		this_SecondAbstractRuleChild_1=ruleSecondAbstractRuleChild
		{
			$current = $this_SecondAbstractRuleChild_1.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleFirstAbstractRuleChild
entryRuleFirstAbstractRuleChild returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getFirstAbstractRuleChildRule()); }
	iv_ruleFirstAbstractRuleChild=ruleFirstAbstractRuleChild
	{ $current=$iv_ruleFirstAbstractRuleChild.current; }
	EOF;

// Rule FirstAbstractRuleChild
ruleFirstAbstractRuleChild returns [EObject current=null]
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
					newLeafNode(lv_name_0_0, grammarAccess.getFirstAbstractRuleChildAccess().getNameIDTerminalRuleCall_0_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getFirstAbstractRuleChildRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_0_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_1='('
		{
			newLeafNode(otherlv_1, grammarAccess.getFirstAbstractRuleChildAccess().getLeftParenthesisKeyword_1());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getFirstAbstractRuleChildAccess().getElementsAbstractRuleParserRuleCall_2_0());
				}
				lv_elements_2_0=ruleAbstractRule
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getFirstAbstractRuleChildRule());
					}
					add(
						$current,
						"elements",
						lv_elements_2_0,
						"org.eclipse.xtext.ui.tests.testlanguages.ContentAssistTestLanguage.AbstractRule");
					afterParserOrEnumRuleCall();
				}
			)
		)+
		otherlv_3=')'
		{
			newLeafNode(otherlv_3, grammarAccess.getFirstAbstractRuleChildAccess().getRightParenthesisKeyword_3());
		}
		otherlv_4=';'
		{
			newLeafNode(otherlv_4, grammarAccess.getFirstAbstractRuleChildAccess().getSemicolonKeyword_4());
		}
	)
;

// Entry rule entryRuleSecondAbstractRuleChild
entryRuleSecondAbstractRuleChild returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getSecondAbstractRuleChildRule()); }
	iv_ruleSecondAbstractRuleChild=ruleSecondAbstractRuleChild
	{ $current=$iv_ruleSecondAbstractRuleChild.current; }
	EOF;

// Rule SecondAbstractRuleChild
ruleSecondAbstractRuleChild returns [EObject current=null]
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
					newLeafNode(lv_name_0_0, grammarAccess.getSecondAbstractRuleChildAccess().getNameIDTerminalRuleCall_0_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getSecondAbstractRuleChildRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_0_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		otherlv_1='rule'
		{
			newLeafNode(otherlv_1, grammarAccess.getSecondAbstractRuleChildAccess().getRuleKeyword_1());
		}
		otherlv_2=':'
		{
			newLeafNode(otherlv_2, grammarAccess.getSecondAbstractRuleChildAccess().getColonKeyword_2());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getSecondAbstractRuleChildAccess().getRuleAbstractRuleCallParserRuleCall_3_0());
				}
				lv_rule_3_0=ruleAbstractRuleCall
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getSecondAbstractRuleChildRule());
					}
					set(
						$current,
						"rule",
						lv_rule_3_0,
						"org.eclipse.xtext.ui.tests.testlanguages.ContentAssistTestLanguage.AbstractRuleCall");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_4=';'
		{
			newLeafNode(otherlv_4, grammarAccess.getSecondAbstractRuleChildAccess().getSemicolonKeyword_4());
		}
	)
;

// Entry rule entryRuleAbstractRuleCall
entryRuleAbstractRuleCall returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getAbstractRuleCallRule()); }
	iv_ruleAbstractRuleCall=ruleAbstractRuleCall
	{ $current=$iv_ruleAbstractRuleCall.current; }
	EOF;

// Rule AbstractRuleCall
ruleAbstractRuleCall returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				if ($current==null) {
					$current = createModelElement(grammarAccess.getAbstractRuleCallRule());
				}
			}
			otherlv_0=RULE_ID
			{
				newLeafNode(otherlv_0, grammarAccess.getAbstractRuleCallAccess().getRuleAbstractRuleCrossReference_0());
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

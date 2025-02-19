/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalReferenceGrammarUiTestLanguage;

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
import org.eclipse.xtext.ui.tests.testlanguages.services.ReferenceGrammarUiTestLanguageGrammarAccess;

}

@parser::members {

 	private ReferenceGrammarUiTestLanguageGrammarAccess grammarAccess;

    public InternalReferenceGrammarUiTestLanguageParser(TokenStream input, ReferenceGrammarUiTestLanguageGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "Spielplatz";
   	}

   	@Override
   	protected ReferenceGrammarUiTestLanguageGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}

}

@rulecatch {
    catch (RecognitionException re) {
        recover(input,re);
        appendSkippedTokens();
    }
}

// Entry rule entryRuleSpielplatz
entryRuleSpielplatz returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getSpielplatzRule()); }
	iv_ruleSpielplatz=ruleSpielplatz
	{ $current=$iv_ruleSpielplatz.current; }
	EOF;

// Rule Spielplatz
ruleSpielplatz returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='spielplatz'
		{
			newLeafNode(otherlv_0, grammarAccess.getSpielplatzAccess().getSpielplatzKeyword_0());
		}
		(
			(
				lv_groesse_1_0=RULE_INT
				{
					newLeafNode(lv_groesse_1_0, grammarAccess.getSpielplatzAccess().getGroesseINTTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getSpielplatzRule());
					}
					setWithLastConsumed(
						$current,
						"groesse",
						lv_groesse_1_0,
						"org.eclipse.xtext.common.Terminals.INT");
				}
			)
		)
		(
			(
				lv_beschreibung_2_0=RULE_STRING
				{
					newLeafNode(lv_beschreibung_2_0, grammarAccess.getSpielplatzAccess().getBeschreibungSTRINGTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getSpielplatzRule());
					}
					setWithLastConsumed(
						$current,
						"beschreibung",
						lv_beschreibung_2_0,
						"org.eclipse.xtext.common.Terminals.STRING");
				}
			)
		)?
		otherlv_3='{'
		{
			newLeafNode(otherlv_3, grammarAccess.getSpielplatzAccess().getLeftCurlyBracketKeyword_3());
		}
		(
			(
				(
					{
						newCompositeNode(grammarAccess.getSpielplatzAccess().getKinderKindParserRuleCall_4_0_0());
					}
					lv_kinder_4_0=ruleKind
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getSpielplatzRule());
						}
						add(
							$current,
							"kinder",
							lv_kinder_4_0,
							"org.eclipse.xtext.ui.tests.testlanguages.ReferenceGrammarUiTestLanguage.Kind");
						afterParserOrEnumRuleCall();
					}
				)
			)
			    |
			(
				(
					{
						newCompositeNode(grammarAccess.getSpielplatzAccess().getErzieherErwachsenerParserRuleCall_4_1_0());
					}
					lv_erzieher_5_0=ruleErwachsener
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getSpielplatzRule());
						}
						add(
							$current,
							"erzieher",
							lv_erzieher_5_0,
							"org.eclipse.xtext.ui.tests.testlanguages.ReferenceGrammarUiTestLanguage.Erwachsener");
						afterParserOrEnumRuleCall();
					}
				)
			)
			    |
			(
				(
					{
						newCompositeNode(grammarAccess.getSpielplatzAccess().getSpielzeugeSpielzeugParserRuleCall_4_2_0());
					}
					lv_spielzeuge_6_0=ruleSpielzeug
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getSpielplatzRule());
						}
						add(
							$current,
							"spielzeuge",
							lv_spielzeuge_6_0,
							"org.eclipse.xtext.ui.tests.testlanguages.ReferenceGrammarUiTestLanguage.Spielzeug");
						afterParserOrEnumRuleCall();
					}
				)
			)
			    |
			(
				(
					{
						newCompositeNode(grammarAccess.getSpielplatzAccess().getFamilieFamilieParserRuleCall_4_3_0());
					}
					lv_familie_7_0=ruleFamilie
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getSpielplatzRule());
						}
						add(
							$current,
							"familie",
							lv_familie_7_0,
							"org.eclipse.xtext.ui.tests.testlanguages.ReferenceGrammarUiTestLanguage.Familie");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)*
		otherlv_8='}'
		{
			newLeafNode(otherlv_8, grammarAccess.getSpielplatzAccess().getRightCurlyBracketKeyword_5());
		}
	)?
;

// Entry rule entryRuleKind
entryRuleKind returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getKindRule()); }
	iv_ruleKind=ruleKind
	{ $current=$iv_ruleKind.current; }
	EOF;

// Rule Kind
ruleKind returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='kind'
		{
			newLeafNode(otherlv_0, grammarAccess.getKindAccess().getKindKeyword_0());
		}
		otherlv_1='('
		{
			newLeafNode(otherlv_1, grammarAccess.getKindAccess().getLeftParenthesisKeyword_1());
		}
		(
			(
				lv_name_2_0=RULE_ID
				{
					newLeafNode(lv_name_2_0, grammarAccess.getKindAccess().getNameIDTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getKindRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_2_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		(
			(
				lv_age_3_0=RULE_INT
				{
					newLeafNode(lv_age_3_0, grammarAccess.getKindAccess().getAgeINTTerminalRuleCall_3_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getKindRule());
					}
					setWithLastConsumed(
						$current,
						"age",
						lv_age_3_0,
						"org.eclipse.xtext.common.Terminals.INT");
				}
			)
		)
		otherlv_4=')'
		{
			newLeafNode(otherlv_4, grammarAccess.getKindAccess().getRightParenthesisKeyword_4());
		}
	)
;

// Entry rule entryRuleErwachsener
entryRuleErwachsener returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getErwachsenerRule()); }
	iv_ruleErwachsener=ruleErwachsener
	{ $current=$iv_ruleErwachsener.current; }
	EOF;

// Rule Erwachsener
ruleErwachsener returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='erwachsener'
		{
			newLeafNode(otherlv_0, grammarAccess.getErwachsenerAccess().getErwachsenerKeyword_0());
		}
		otherlv_1='('
		{
			newLeafNode(otherlv_1, grammarAccess.getErwachsenerAccess().getLeftParenthesisKeyword_1());
		}
		(
			(
				lv_name_2_0=RULE_ID
				{
					newLeafNode(lv_name_2_0, grammarAccess.getErwachsenerAccess().getNameIDTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getErwachsenerRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_2_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		(
			(
				lv_age_3_0=RULE_INT
				{
					newLeafNode(lv_age_3_0, grammarAccess.getErwachsenerAccess().getAgeINTTerminalRuleCall_3_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getErwachsenerRule());
					}
					setWithLastConsumed(
						$current,
						"age",
						lv_age_3_0,
						"org.eclipse.xtext.common.Terminals.INT");
				}
			)
		)
		otherlv_4=')'
		{
			newLeafNode(otherlv_4, grammarAccess.getErwachsenerAccess().getRightParenthesisKeyword_4());
		}
	)
;

// Entry rule entryRuleSpielzeug
entryRuleSpielzeug returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getSpielzeugRule()); }
	iv_ruleSpielzeug=ruleSpielzeug
	{ $current=$iv_ruleSpielzeug.current; }
	EOF;

// Rule Spielzeug
ruleSpielzeug returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='spielzeug'
		{
			newLeafNode(otherlv_0, grammarAccess.getSpielzeugAccess().getSpielzeugKeyword_0());
		}
		otherlv_1='('
		{
			newLeafNode(otherlv_1, grammarAccess.getSpielzeugAccess().getLeftParenthesisKeyword_1());
		}
		(
			(
				lv_name_2_0=RULE_ID
				{
					newLeafNode(lv_name_2_0, grammarAccess.getSpielzeugAccess().getNameIDTerminalRuleCall_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getSpielzeugRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_2_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getSpielzeugAccess().getFarbeFarbeParserRuleCall_3_0());
				}
				lv_farbe_3_0=ruleFarbe
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getSpielzeugRule());
					}
					set(
						$current,
						"farbe",
						lv_farbe_3_0,
						"org.eclipse.xtext.ui.tests.testlanguages.ReferenceGrammarUiTestLanguage.Farbe");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_4=')'
		{
			newLeafNode(otherlv_4, grammarAccess.getSpielzeugAccess().getRightParenthesisKeyword_4());
		}
	)
;

// Entry rule entryRuleFarbe
entryRuleFarbe returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getFarbeRule()); }
	iv_ruleFarbe=ruleFarbe
	{ $current=$iv_ruleFarbe.current; }
	EOF;

// Rule Farbe
ruleFarbe returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				lv_wert_0_1='ROT'
				{
					newLeafNode(lv_wert_0_1, grammarAccess.getFarbeAccess().getWertROTKeyword_0_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getFarbeRule());
					}
					setWithLastConsumed($current, "wert", lv_wert_0_1, null);
				}
				    |
				lv_wert_0_2='BLAU'
				{
					newLeafNode(lv_wert_0_2, grammarAccess.getFarbeAccess().getWertBLAUKeyword_0_1());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getFarbeRule());
					}
					setWithLastConsumed($current, "wert", lv_wert_0_2, null);
				}
				    |
				lv_wert_0_3='GELB'
				{
					newLeafNode(lv_wert_0_3, grammarAccess.getFarbeAccess().getWertGELBKeyword_0_2());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getFarbeRule());
					}
					setWithLastConsumed($current, "wert", lv_wert_0_3, null);
				}
				    |
				lv_wert_0_4='GR\u00DCN'
				{
					newLeafNode(lv_wert_0_4, grammarAccess.getFarbeAccess().getWertGR�NKeyword_0_3());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getFarbeRule());
					}
					setWithLastConsumed($current, "wert", lv_wert_0_4, null);
				}
			)
		)
	)
;

// Entry rule entryRuleFamilie
entryRuleFamilie returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getFamilieRule()); }
	iv_ruleFamilie=ruleFamilie
	{ $current=$iv_ruleFamilie.current; }
	EOF;

// Rule Familie
ruleFamilie returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='familie'
		{
			newLeafNode(otherlv_0, grammarAccess.getFamilieAccess().getFamilieKeyword_0());
		}
		otherlv_1='('
		{
			newLeafNode(otherlv_1, grammarAccess.getFamilieAccess().getLeftParenthesisKeyword_1());
		}
		(
			(
				(
					lv_name_2_1='keyword'
					{
						newLeafNode(lv_name_2_1, grammarAccess.getFamilieAccess().getNameKeywordKeyword_2_0_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getFamilieRule());
						}
						setWithLastConsumed($current, "name", lv_name_2_1, null);
					}
					    |
					lv_name_2_2=RULE_STRING
					{
						newLeafNode(lv_name_2_2, grammarAccess.getFamilieAccess().getNameSTRINGTerminalRuleCall_2_0_1());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getFamilieRule());
						}
						setWithLastConsumed(
							$current,
							"name",
							lv_name_2_2,
							"org.eclipse.xtext.common.Terminals.STRING");
					}
					    |
					lv_name_2_3=RULE_ID
					{
						newLeafNode(lv_name_2_3, grammarAccess.getFamilieAccess().getNameIDTerminalRuleCall_2_0_2());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getFamilieRule());
						}
						setWithLastConsumed(
							$current,
							"name",
							lv_name_2_3,
							"org.eclipse.xtext.common.Terminals.ID");
					}
				)
			)
		)
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getFamilieRule());
					}
				}
				otherlv_3=RULE_ID
				{
					newLeafNode(otherlv_3, grammarAccess.getFamilieAccess().getMutterErwachsenerCrossReference_3_0());
				}
			)
		)
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getFamilieRule());
					}
				}
				otherlv_4=RULE_ID
				{
					newLeafNode(otherlv_4, grammarAccess.getFamilieAccess().getVaterErwachsenerCrossReference_4_0());
				}
			)
		)
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getFamilieRule());
					}
				}
				otherlv_5=RULE_ID
				{
					newLeafNode(otherlv_5, grammarAccess.getFamilieAccess().getKinderKindCrossReference_5_0());
				}
			)
		)
		(
			otherlv_6=','
			{
				newLeafNode(otherlv_6, grammarAccess.getFamilieAccess().getCommaKeyword_6_0());
			}
			(
				(
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getFamilieRule());
						}
					}
					otherlv_7=RULE_ID
					{
						newLeafNode(otherlv_7, grammarAccess.getFamilieAccess().getKinderKindCrossReference_6_1_0());
					}
				)
			)
		)*
		otherlv_8=')'
		{
			newLeafNode(otherlv_8, grammarAccess.getFamilieAccess().getRightParenthesisKeyword_7());
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

/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalBug286935TestLanguage;

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
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug286935TestLanguageGrammarAccess;

}

@parser::members {

 	private Bug286935TestLanguageGrammarAccess grammarAccess;

    public InternalBug286935TestLanguageParser(TokenStream input, Bug286935TestLanguageGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "State";
   	}

   	@Override
   	protected Bug286935TestLanguageGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}

}

@rulecatch {
    catch (RecognitionException re) {
        recover(input,re);
        appendSkippedTokens();
    }
}

// Entry rule entryRuleState
entryRuleState returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getStateRule()); }
	iv_ruleState=ruleState
	{ $current=$iv_ruleState.current; }
	EOF;

// Rule State
ruleState returns [EObject current=null]
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
					grammarAccess.getStateAccess().getStateAction_0(),
					$current);
			}
		)
		(
			(
				(
					lv_isInitial_1_0='init'
					{
						newLeafNode(lv_isInitial_1_0, grammarAccess.getStateAccess().getIsInitialInitKeyword_1_0_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getStateRule());
						}
						setWithLastConsumed($current, "isInitial", lv_isInitial_1_0 != null, "init");
					}
				)
			)
			    |
			(
				(
					lv_isFinal_2_0='final'
					{
						newLeafNode(lv_isFinal_2_0, grammarAccess.getStateAccess().getIsFinalFinalKeyword_1_1_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getStateRule());
						}
						setWithLastConsumed($current, "isFinal", lv_isFinal_2_0 != null, "final");
					}
				)
			)
			    |
			(
				(
					{
						newCompositeNode(grammarAccess.getStateAccess().getStateKindStateTypeEnumRuleCall_1_2_0());
					}
					lv_stateKind_3_0=ruleStateType
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getStateRule());
						}
						set(
							$current,
							"stateKind",
							lv_stateKind_3_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug286935TestLanguage.StateType");
						afterParserOrEnumRuleCall();
					}
				)
			)
			    |
			(
				(
					(
						lv_isInitial_4_0='init'
						{
							newLeafNode(lv_isInitial_4_0, grammarAccess.getStateAccess().getIsInitialInitKeyword_1_3_0_0());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getStateRule());
							}
							setWithLastConsumed($current, "isInitial", lv_isInitial_4_0 != null, "init");
						}
					)
				)
				(
					(
						{
							newCompositeNode(grammarAccess.getStateAccess().getStateKindStateTypeEnumRuleCall_1_3_1_0());
						}
						lv_stateKind_5_0=ruleStateType
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getStateRule());
							}
							set(
								$current,
								"stateKind",
								lv_stateKind_5_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.Bug286935TestLanguage.StateType");
							afterParserOrEnumRuleCall();
						}
					)
				)
			)
			    |
			(
				(
					(
						lv_isInitial_6_0='init'
						{
							newLeafNode(lv_isInitial_6_0, grammarAccess.getStateAccess().getIsInitialInitKeyword_1_4_0_0());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getStateRule());
							}
							setWithLastConsumed($current, "isInitial", lv_isInitial_6_0 != null, "init");
						}
					)
				)
				(
					(
						{
							newCompositeNode(grammarAccess.getStateAccess().getStateKindStateTypeEnumRuleCall_1_4_1_0());
						}
						lv_stateKind_7_0=ruleStateType
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getStateRule());
							}
							set(
								$current,
								"stateKind",
								lv_stateKind_7_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.Bug286935TestLanguage.StateType");
							afterParserOrEnumRuleCall();
						}
					)
				)
				(
					(
						lv_isFinal_8_0='final'
						{
							newLeafNode(lv_isFinal_8_0, grammarAccess.getStateAccess().getIsFinalFinalKeyword_1_4_2_0());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getStateRule());
							}
							setWithLastConsumed($current, "isFinal", lv_isFinal_8_0 != null, "final");
						}
					)
				)
			)
		)?
		(
			otherlv_9='state'
			{
				newLeafNode(otherlv_9, grammarAccess.getStateAccess().getStateKeyword_2());
			}
		)?
		(
			(
				lv_stateName_10_0=RULE_ID
				{
					newLeafNode(lv_stateName_10_0, grammarAccess.getStateAccess().getStateNameIDTerminalRuleCall_3_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getStateRule());
					}
					setWithLastConsumed(
						$current,
						"stateName",
						lv_stateName_10_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)?
		(
			(
				lv_label_11_0=RULE_STRING
				{
					newLeafNode(lv_label_11_0, grammarAccess.getStateAccess().getLabelSTRINGTerminalRuleCall_4_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getStateRule());
					}
					setWithLastConsumed(
						$current,
						"label",
						lv_label_11_0,
						"org.eclipse.xtext.common.Terminals.STRING");
				}
			)
		)?
	)
;

// Rule StateType
ruleStateType returns [Enumerator current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			enumLiteral_0='NORMAL'
			{
				$current = grammarAccess.getStateTypeAccess().getNORMALEnumLiteralDeclaration_0().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_0, grammarAccess.getStateTypeAccess().getNORMALEnumLiteralDeclaration_0());
			}
		)
		    |
		(
			enumLiteral_1='cond'
			{
				$current = grammarAccess.getStateTypeAccess().getPSEUDOEnumLiteralDeclaration_1().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_1, grammarAccess.getStateTypeAccess().getPSEUDOEnumLiteralDeclaration_1());
			}
		)
		    |
		(
			enumLiteral_2='reference'
			{
				$current = grammarAccess.getStateTypeAccess().getREFERENCEEnumLiteralDeclaration_2().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_2, grammarAccess.getStateTypeAccess().getREFERENCEEnumLiteralDeclaration_2());
			}
		)
		    |
		(
			enumLiteral_3='textual'
			{
				$current = grammarAccess.getStateTypeAccess().getTEXTUALEnumLiteralDeclaration_3().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_3, grammarAccess.getStateTypeAccess().getTEXTUALEnumLiteralDeclaration_3());
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

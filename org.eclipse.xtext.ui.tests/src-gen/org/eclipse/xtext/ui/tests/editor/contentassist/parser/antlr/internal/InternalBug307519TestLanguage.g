/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalBug307519TestLanguage;

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
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug307519TestLanguageGrammarAccess;

}

@parser::members {

 	private Bug307519TestLanguageGrammarAccess grammarAccess;

    public InternalBug307519TestLanguageParser(TokenStream input, Bug307519TestLanguageGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "Model";
   	}

   	@Override
   	protected Bug307519TestLanguageGrammarAccess getGrammarAccess() {
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
					newCompositeNode(grammarAccess.getModelAccess().getE1Elem1ParserRuleCall_0_0());
				}
				lv_e1_0_0=ruleElem1
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getModelRule());
					}
					add(
						$current,
						"e1",
						lv_e1_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug307519TestLanguage.Elem1");
					afterParserOrEnumRuleCall();
				}
			)
		)
		    |
		(
			(
				{
					newCompositeNode(grammarAccess.getModelAccess().getE2Elem2ParserRuleCall_1_0());
				}
				lv_e2_1_0=ruleElem2
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getModelRule());
					}
					add(
						$current,
						"e2",
						lv_e2_1_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug307519TestLanguage.Elem2");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)+
;

// Entry rule entryRuleElem1
entryRuleElem1 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getElem1Rule()); }
	iv_ruleElem1=ruleElem1
	{ $current=$iv_ruleElem1.current; }
	EOF;

// Rule Elem1
ruleElem1 returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				newCompositeNode(grammarAccess.getElem1Access().getValueEnumTEnumRuleCall_0());
			}
			lv_value_0_0=ruleEnumT
			{
				if ($current==null) {
					$current = createModelElementForParent(grammarAccess.getElem1Rule());
				}
				set(
					$current,
					"value",
					lv_value_0_0,
					"org.eclipse.xtext.ui.tests.editor.contentassist.Bug307519TestLanguage.EnumT");
				afterParserOrEnumRuleCall();
			}
		)
	)
;

// Entry rule entryRuleElem2
entryRuleElem2 returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getElem2Rule()); }
	iv_ruleElem2=ruleElem2
	{ $current=$iv_ruleElem2.current; }
	EOF;

// Rule Elem2
ruleElem2 returns [EObject current=null]
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
					newCompositeNode(grammarAccess.getElem2Access().getValueEnumTEnumRuleCall_0_0());
				}
				lv_value_0_0=ruleEnumT
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getElem2Rule());
					}
					set(
						$current,
						"value",
						lv_value_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug307519TestLanguage.EnumT");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_1='foo'
		{
			newLeafNode(otherlv_1, grammarAccess.getElem2Access().getFooKeyword_1());
		}
		otherlv_2='%'
		{
			newLeafNode(otherlv_2, grammarAccess.getElem2Access().getPercentSignKeyword_2());
		}
		otherlv_3='$'
		{
			newLeafNode(otherlv_3, grammarAccess.getElem2Access().getDollarSignKeyword_3());
		}
	)
;

// Rule EnumT
ruleEnumT returns [Enumerator current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			enumLiteral_0='T1'
			{
				$current = grammarAccess.getEnumTAccess().getT1EnumLiteralDeclaration_0().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_0, grammarAccess.getEnumTAccess().getT1EnumLiteralDeclaration_0());
			}
		)
		    |
		(
			enumLiteral_1='T2'
			{
				$current = grammarAccess.getEnumTAccess().getT2EnumLiteralDeclaration_1().getEnumLiteral().getInstance();
				newLeafNode(enumLiteral_1, grammarAccess.getEnumTAccess().getT2EnumLiteralDeclaration_1());
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

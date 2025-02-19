/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalKeywordsUiTestLanguage;

options {
	superClass=AbstractInternalAntlrParser;
}

@lexer::header {
package org.eclipse.xtext.ui.tests.parser.keywords.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.eclipse.xtext.ui.tests.parser.keywords.parser.antlr.internal;

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.eclipse.xtext.ui.tests.parser.keywords.services.KeywordsUiTestLanguageGrammarAccess;

}

@parser::members {

 	private KeywordsUiTestLanguageGrammarAccess grammarAccess;

    public InternalKeywordsUiTestLanguageParser(TokenStream input, KeywordsUiTestLanguageGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "Model";
   	}

   	@Override
   	protected KeywordsUiTestLanguageGrammarAccess getGrammarAccess() {
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
				lv_first_0_0='foo\\bar'
				{
					newLeafNode(lv_first_0_0, grammarAccess.getModelAccess().getFirstFooBarKeyword_0_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getModelRule());
					}
					setWithLastConsumed($current, "first", lv_first_0_0 != null, "foo\\bar");
				}
			)
		)
		    |
		(
			(
				lv_second_1_0='foo\\'
				{
					newLeafNode(lv_second_1_0, grammarAccess.getModelAccess().getSecondFooKeyword_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getModelRule());
					}
					setWithLastConsumed($current, "second", lv_second_1_0 != null, "foo\\");
				}
			)
		)
		    |
		(
			(
				lv_third_2_0='\\bar'
				{
					newLeafNode(lv_third_2_0, grammarAccess.getModelAccess().getThirdBarKeyword_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getModelRule());
					}
					setWithLastConsumed($current, "third", lv_third_2_0 != null, "\\bar");
				}
			)
		)
		    |
		(
			(
				lv_forth_3_0='\\'
				{
					newLeafNode(lv_forth_3_0, grammarAccess.getModelAccess().getForthBackslashKeyword_3_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getModelRule());
					}
					setWithLastConsumed($current, "forth", lv_forth_3_0 != null, "\\");
				}
			)
		)
		    |
		(
			(
				lv_fifth_4_0='"a"'
				{
					newLeafNode(lv_fifth_4_0, grammarAccess.getModelAccess().getFifthAKeyword_4_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getModelRule());
					}
					setWithLastConsumed($current, "fifth", lv_fifth_4_0 != null, "\"a\"");
				}
			)
		)
		    |
		(
			(
				lv_sixth_5_0='\'b\''
				{
					newLeafNode(lv_sixth_5_0, grammarAccess.getModelAccess().getSixthBKeyword_5_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getModelRule());
					}
					setWithLastConsumed($current, "sixth", lv_sixth_5_0 != null, "\'b\'");
				}
			)
		)
		    |
		(
			(
				lv_seventh_6_0='\'c\''
				{
					newLeafNode(lv_seventh_6_0, grammarAccess.getModelAccess().getSeventhCKeyword_6_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getModelRule());
					}
					setWithLastConsumed($current, "seventh", lv_seventh_6_0 != null, "\'c\'");
				}
			)
		)
		    |
		(
			(
				lv_eighth_7_0='"d"'
				{
					newLeafNode(lv_eighth_7_0, grammarAccess.getModelAccess().getEighthDKeyword_7_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getModelRule());
					}
					setWithLastConsumed($current, "eighth", lv_eighth_7_0 != null, "\"d\"");
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

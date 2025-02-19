/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalTestLanguage;

options {
	superClass=AbstractInternalAntlrParser;
}

@lexer::header {
package org.eclipse.xtext.ui.tests.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.eclipse.xtext.ui.tests.parser.antlr.internal;

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.eclipse.xtext.ui.tests.services.TestLanguageGrammarAccess;

}

@parser::members {

 	private TestLanguageGrammarAccess grammarAccess;

    public InternalTestLanguageParser(TokenStream input, TestLanguageGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "File";
   	}

   	@Override
   	protected TestLanguageGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}

}

@rulecatch {
    catch (RecognitionException re) {
        recover(input,re);
        appendSkippedTokens();
    }
}

// Entry rule entryRuleFile
entryRuleFile returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getFileRule()); }
	iv_ruleFile=ruleFile
	{ $current=$iv_ruleFile.current; }
	EOF;

// Rule File
ruleFile returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				newCompositeNode(grammarAccess.getFileAccess().getStuffStuffParserRuleCall_0());
			}
			lv_stuff_0_0=ruleStuff
			{
				if ($current==null) {
					$current = createModelElementForParent(grammarAccess.getFileRule());
				}
				add(
					$current,
					"stuff",
					lv_stuff_0_0,
					"org.eclipse.xtext.ui.tests.TestLanguage.Stuff");
				afterParserOrEnumRuleCall();
			}
		)
	)*
;

// Entry rule entryRuleStuff
entryRuleStuff returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getStuffRule()); }
	iv_ruleStuff=ruleStuff
	{ $current=$iv_ruleStuff.current; }
	EOF;

// Rule Stuff
ruleStuff returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='stuff'
		{
			newLeafNode(otherlv_0, grammarAccess.getStuffAccess().getStuffKeyword_0());
		}
		(
			(
				lv_name_1_0=RULE_ID
				{
					newLeafNode(lv_name_1_0, grammarAccess.getStuffAccess().getNameIDTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getStuffRule());
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
			otherlv_2='refs'
			{
				newLeafNode(otherlv_2, grammarAccess.getStuffAccess().getRefsKeyword_2_0());
			}
			(
				(
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getStuffRule());
						}
					}
					otherlv_3=RULE_ID
					{
						newLeafNode(otherlv_3, grammarAccess.getStuffAccess().getRefsStuffCrossReference_2_1_0());
					}
				)
			)
		)?
	)
;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;

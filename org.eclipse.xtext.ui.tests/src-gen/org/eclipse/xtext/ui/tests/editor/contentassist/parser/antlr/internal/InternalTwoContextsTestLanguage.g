/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalTwoContextsTestLanguage;

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
import org.eclipse.xtext.ui.tests.editor.contentassist.services.TwoContextsTestLanguageGrammarAccess;

}

@parser::members {

 	private TwoContextsTestLanguageGrammarAccess grammarAccess;

    public InternalTwoContextsTestLanguageParser(TokenStream input, TwoContextsTestLanguageGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "MainModel";
   	}

   	@Override
   	protected TwoContextsTestLanguageGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}

}

@rulecatch {
    catch (RecognitionException re) {
        recover(input,re);
        appendSkippedTokens();
    }
}

// Entry rule entryRuleMainModel
entryRuleMainModel returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getMainModelRule()); }
	iv_ruleMainModel=ruleMainModel
	{ $current=$iv_ruleMainModel.current; }
	EOF;

// Rule MainModel
ruleMainModel returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				newCompositeNode(grammarAccess.getMainModelAccess().getElementsAnElementParserRuleCall_0());
			}
			lv_elements_0_0=ruleAnElement
			{
				if ($current==null) {
					$current = createModelElementForParent(grammarAccess.getMainModelRule());
				}
				add(
					$current,
					"elements",
					lv_elements_0_0,
					"org.eclipse.xtext.ui.tests.editor.contentassist.TwoContextsTestLanguage.AnElement");
				afterParserOrEnumRuleCall();
			}
		)
	)*
;

// Entry rule entryRuleAnElement
entryRuleAnElement returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getAnElementRule()); }
	iv_ruleAnElement=ruleAnElement
	{ $current=$iv_ruleAnElement.current; }
	EOF;

// Rule AnElement
ruleAnElement returns [EObject current=null]
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
					newLeafNode(lv_name_0_0, grammarAccess.getAnElementAccess().getNameIDTerminalRuleCall_0_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getAnElementRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_0_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		(
			otherlv_1='refersTo'
			{
				newLeafNode(otherlv_1, grammarAccess.getAnElementAccess().getRefersToKeyword_1_0());
			}
			(
				(
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getAnElementRule());
						}
					}
					otherlv_2=RULE_ID
					{
						newLeafNode(otherlv_2, grammarAccess.getAnElementAccess().getReferredAnElementCrossReference_1_1_0());
					}
				)
			)
		)?
		otherlv_3=';'
		{
			newLeafNode(otherlv_3, grammarAccess.getAnElementAccess().getSemicolonKeyword_2());
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

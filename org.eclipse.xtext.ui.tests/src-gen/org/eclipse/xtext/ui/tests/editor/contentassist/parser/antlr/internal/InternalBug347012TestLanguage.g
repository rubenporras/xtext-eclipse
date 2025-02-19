/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalBug347012TestLanguage;

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
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug347012TestLanguageGrammarAccess;

}

@parser::members {

 	private Bug347012TestLanguageGrammarAccess grammarAccess;

    public InternalBug347012TestLanguageParser(TokenStream input, Bug347012TestLanguageGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "MyProgram";
   	}

   	@Override
   	protected Bug347012TestLanguageGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}

}

@rulecatch {
    catch (RecognitionException re) {
        recover(input,re);
        appendSkippedTokens();
    }
}

// Entry rule entryRuleMyProgram
entryRuleMyProgram returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getMyProgramRule()); }
	iv_ruleMyProgram=ruleMyProgram
	{ $current=$iv_ruleMyProgram.current; }
	EOF;

// Rule MyProgram
ruleMyProgram returns [EObject current=null]
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
					grammarAccess.getMyProgramAccess().getMyProgramAction_0(),
					$current);
			}
		)
		(
			this_LT_1=RULE_LT
			{
				newLeafNode(this_LT_1, grammarAccess.getMyProgramAccess().getLTTerminalRuleCall_1());
			}
		)*
		(
			(
				{
					newCompositeNode(grammarAccess.getMyProgramAccess().getPackageMyPackageParserRuleCall_2_0());
				}
				lv_package_2_0=ruleMyPackage
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getMyProgramRule());
					}
					set(
						$current,
						"package",
						lv_package_2_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug347012TestLanguage.MyPackage");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			this_LT_3=RULE_LT
			{
				newLeafNode(this_LT_3, grammarAccess.getMyProgramAccess().getLTTerminalRuleCall_3());
			}
		)*
	)
;

// Entry rule entryRuleIdentifier
entryRuleIdentifier returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getIdentifierRule()); }
	iv_ruleIdentifier=ruleIdentifier
	{ $current=$iv_ruleIdentifier.current; }
	EOF;

// Rule Identifier
ruleIdentifier returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			lv_name_0_0=RULE_ID
			{
				newLeafNode(lv_name_0_0, grammarAccess.getIdentifierAccess().getNameIDTerminalRuleCall_0());
			}
			{
				if ($current==null) {
					$current = createModelElement(grammarAccess.getIdentifierRule());
				}
				setWithLastConsumed(
					$current,
					"name",
					lv_name_0_0,
					"org.eclipse.xtext.ui.tests.editor.contentassist.Bug347012TestLanguage.ID");
			}
		)
	)
;

// Entry rule entryRuleFQN
entryRuleFQN returns [String current=null]:
	{ newCompositeNode(grammarAccess.getFQNRule()); }
	iv_ruleFQN=ruleFQN
	{ $current=$iv_ruleFQN.current.getText(); }
	EOF;

// Rule FQN
ruleFQN returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		this_ID_0=RULE_ID
		{
			$current.merge(this_ID_0);
		}
		{
			newLeafNode(this_ID_0, grammarAccess.getFQNAccess().getIDTerminalRuleCall_0());
		}
		(
			(
				this_LT_1=RULE_LT
				{
					$current.merge(this_LT_1);
				}
				{
					newLeafNode(this_LT_1, grammarAccess.getFQNAccess().getLTTerminalRuleCall_1_0());
				}
			)*
			kw='.'
			{
				$current.merge(kw);
				newLeafNode(kw, grammarAccess.getFQNAccess().getFullStopKeyword_1_1());
			}
			(
				this_LT_3=RULE_LT
				{
					$current.merge(this_LT_3);
				}
				{
					newLeafNode(this_LT_3, grammarAccess.getFQNAccess().getLTTerminalRuleCall_1_2());
				}
			)*
			this_ID_4=RULE_ID
			{
				$current.merge(this_ID_4);
			}
			{
				newLeafNode(this_ID_4, grammarAccess.getFQNAccess().getIDTerminalRuleCall_1_3());
			}
		)*
	)
;

// Entry rule entryRuleVirtualSemi
entryRuleVirtualSemi returns [String current=null]:
	{ newCompositeNode(grammarAccess.getVirtualSemiRule()); }
	iv_ruleVirtualSemi=ruleVirtualSemi
	{ $current=$iv_ruleVirtualSemi.current.getText(); }
	EOF;

// Rule VirtualSemi
ruleVirtualSemi returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		kw=';'
		{
			$current.merge(kw);
			newLeafNode(kw, grammarAccess.getVirtualSemiAccess().getSemicolonKeyword_0());
		}
		    |
		this_LT_1=RULE_LT
		{
			$current.merge(this_LT_1);
		}
		{
			newLeafNode(this_LT_1, grammarAccess.getVirtualSemiAccess().getLTTerminalRuleCall_1());
		}
	)
;

// Entry rule entryRuleLiteral
entryRuleLiteral returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getLiteralRule()); }
	iv_ruleLiteral=ruleLiteral
	{ $current=$iv_ruleLiteral.current; }
	EOF;

// Rule Literal
ruleLiteral returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				lv_num_0_0=RULE_NUMBER
				{
					newLeafNode(lv_num_0_0, grammarAccess.getLiteralAccess().getNumNUMBERTerminalRuleCall_0_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getLiteralRule());
					}
					setWithLastConsumed(
						$current,
						"num",
						lv_num_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug347012TestLanguage.NUMBER");
				}
			)
		)
		    |
		(
			(
				lv_str_1_0=RULE_STRING
				{
					newLeafNode(lv_str_1_0, grammarAccess.getLiteralAccess().getStrSTRINGTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getLiteralRule());
					}
					setWithLastConsumed(
						$current,
						"str",
						lv_str_1_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug347012TestLanguage.STRING");
				}
			)
		)
		    |
		(
			(
				lv_bool_2_0='true'
				{
					newLeafNode(lv_bool_2_0, grammarAccess.getLiteralAccess().getBoolTrueKeyword_2_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getLiteralRule());
					}
					setWithLastConsumed($current, "bool", lv_bool_2_0, "true");
				}
			)
		)
		    |
		(
			(
				lv_bool_3_0='false'
				{
					newLeafNode(lv_bool_3_0, grammarAccess.getLiteralAccess().getBoolFalseKeyword_3_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getLiteralRule());
					}
					setWithLastConsumed($current, "bool", lv_bool_3_0, "false");
				}
			)
		)
	)
;

// Entry rule entryRuleMyPrimary
entryRuleMyPrimary returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getMyPrimaryRule()); }
	iv_ruleMyPrimary=ruleMyPrimary
	{ $current=$iv_ruleMyPrimary.current; }
	EOF;

// Rule MyPrimary
ruleMyPrimary returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getMyPrimaryAccess().getLiteralParserRuleCall_0());
		}
		this_Literal_0=ruleLiteral
		{
			$current = $this_Literal_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getMyPrimaryAccess().getIdentifierParserRuleCall_1());
		}
		this_Identifier_1=ruleIdentifier
		{
			$current = $this_Identifier_1.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleMyPackage
entryRuleMyPackage returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getMyPackageRule()); }
	iv_ruleMyPackage=ruleMyPackage
	{ $current=$iv_ruleMyPackage.current; }
	EOF;

// Rule MyPackage
ruleMyPackage returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='package'
		{
			newLeafNode(otherlv_0, grammarAccess.getMyPackageAccess().getPackageKeyword_0());
		}
		(
			this_LT_1=RULE_LT
			{
				newLeafNode(this_LT_1, grammarAccess.getMyPackageAccess().getLTTerminalRuleCall_1());
			}
		)*
		(
			(
				{
					newCompositeNode(grammarAccess.getMyPackageAccess().getNameFQNParserRuleCall_2_0());
				}
				lv_name_2_0=ruleFQN
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getMyPackageRule());
					}
					set(
						$current,
						"name",
						lv_name_2_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug347012TestLanguage.FQN");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			this_LT_3=RULE_LT
			{
				newLeafNode(this_LT_3, grammarAccess.getMyPackageAccess().getLTTerminalRuleCall_3());
			}
		)*
		otherlv_4='{'
		{
			newLeafNode(otherlv_4, grammarAccess.getMyPackageAccess().getLeftCurlyBracketKeyword_4());
		}
		(
			this_LT_5=RULE_LT
			{
				newLeafNode(this_LT_5, grammarAccess.getMyPackageAccess().getLTTerminalRuleCall_5());
			}
		)*
		(
			(
				(
					{
						newCompositeNode(grammarAccess.getMyPackageAccess().getDirectivesMyClassParserRuleCall_6_0_0());
					}
					lv_directives_6_0=ruleMyClass
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getMyPackageRule());
						}
						add(
							$current,
							"directives",
							lv_directives_6_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug347012TestLanguage.MyClass");
						afterParserOrEnumRuleCall();
					}
				)
			)
			(
				this_LT_7=RULE_LT
				{
					newLeafNode(this_LT_7, grammarAccess.getMyPackageAccess().getLTTerminalRuleCall_6_1());
				}
			)*
		)*
		otherlv_8='}'
		{
			newLeafNode(otherlv_8, grammarAccess.getMyPackageAccess().getRightCurlyBracketKeyword_7());
		}
	)
;

// Entry rule entryRuleMyClass
entryRuleMyClass returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getMyClassRule()); }
	iv_ruleMyClass=ruleMyClass
	{ $current=$iv_ruleMyClass.current; }
	EOF;

// Rule MyClass
ruleMyClass returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			otherlv_0='public'
			{
				newLeafNode(otherlv_0, grammarAccess.getMyClassAccess().getPublicKeyword_0());
			}
		)?
		otherlv_1='class'
		{
			newLeafNode(otherlv_1, grammarAccess.getMyClassAccess().getClassKeyword_1());
		}
		(
			this_LT_2=RULE_LT
			{
				newLeafNode(this_LT_2, grammarAccess.getMyClassAccess().getLTTerminalRuleCall_2());
			}
		)*
		(
			(
				lv_name_3_0=RULE_ID
				{
					newLeafNode(lv_name_3_0, grammarAccess.getMyClassAccess().getNameIDTerminalRuleCall_3_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getMyClassRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_3_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug347012TestLanguage.ID");
				}
			)
		)
		(
			this_LT_4=RULE_LT
			{
				newLeafNode(this_LT_4, grammarAccess.getMyClassAccess().getLTTerminalRuleCall_4());
			}
		)*
		otherlv_5='{'
		{
			newLeafNode(otherlv_5, grammarAccess.getMyClassAccess().getLeftCurlyBracketKeyword_5());
		}
		(
			this_LT_6=RULE_LT
			{
				newLeafNode(this_LT_6, grammarAccess.getMyClassAccess().getLTTerminalRuleCall_6());
			}
		)*
		(
			(
				(
					{
						newCompositeNode(grammarAccess.getMyClassAccess().getDirectivesMyFieldParserRuleCall_7_0_0());
					}
					lv_directives_7_0=ruleMyField
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getMyClassRule());
						}
						add(
							$current,
							"directives",
							lv_directives_7_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug347012TestLanguage.MyField");
						afterParserOrEnumRuleCall();
					}
				)
			)
			(
				this_LT_8=RULE_LT
				{
					newLeafNode(this_LT_8, grammarAccess.getMyClassAccess().getLTTerminalRuleCall_7_1());
				}
			)*
		)*
		otherlv_9='}'
		{
			newLeafNode(otherlv_9, grammarAccess.getMyClassAccess().getRightCurlyBracketKeyword_8());
		}
	)
;

// Entry rule entryRuleMyAttribute
entryRuleMyAttribute returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getMyAttributeRule()); }
	iv_ruleMyAttribute=ruleMyAttribute
	{ $current=$iv_ruleMyAttribute.current; }
	EOF;

// Rule MyAttribute
ruleMyAttribute returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				lv_PUBLIC_0_0='public'
				{
					newLeafNode(lv_PUBLIC_0_0, grammarAccess.getMyAttributeAccess().getPUBLICPublicKeyword_0_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getMyAttributeRule());
					}
					setWithLastConsumed($current, "PUBLIC", lv_PUBLIC_0_0, "public");
				}
			)
		)
		    |
		(
			(
				lv_PRIVATE_1_0='private'
				{
					newLeafNode(lv_PRIVATE_1_0, grammarAccess.getMyAttributeAccess().getPRIVATEPrivateKeyword_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getMyAttributeRule());
					}
					setWithLastConsumed($current, "PRIVATE", lv_PRIVATE_1_0, "private");
				}
			)
		)
	)
;

// Entry rule entryRuleMyAttributes
entryRuleMyAttributes returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getMyAttributesRule()); }
	iv_ruleMyAttributes=ruleMyAttributes
	{ $current=$iv_ruleMyAttributes.current; }
	EOF;

// Rule MyAttributes
ruleMyAttributes returns [EObject current=null]
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
					grammarAccess.getMyAttributesAccess().getMyAttributesAction_0(),
					$current);
			}
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getMyAttributesAccess().getAttributesMyAttributeParserRuleCall_1_0());
				}
				lv_attributes_1_0=ruleMyAttribute
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getMyAttributesRule());
					}
					add(
						$current,
						"attributes",
						lv_attributes_1_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug347012TestLanguage.MyAttribute");
					afterParserOrEnumRuleCall();
				}
			)
		)*
	)
;

// Entry rule entryRuleMyField
entryRuleMyField returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getMyFieldRule()); }
	iv_ruleMyField=ruleMyField
	{ $current=$iv_ruleMyField.current; }
	EOF;

// Rule MyField
ruleMyField returns [EObject current=null]
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
					newCompositeNode(grammarAccess.getMyFieldAccess().getAttrMyAttributesParserRuleCall_0_0());
				}
				lv_attr_0_0=ruleMyAttributes
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getMyFieldRule());
					}
					set(
						$current,
						"attr",
						lv_attr_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug347012TestLanguage.MyAttributes");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_1='var'
		{
			newLeafNode(otherlv_1, grammarAccess.getMyFieldAccess().getVarKeyword_1());
		}
		(
			this_LT_2=RULE_LT
			{
				newLeafNode(this_LT_2, grammarAccess.getMyFieldAccess().getLTTerminalRuleCall_2());
			}
		)*
		(
			(
				{
					newCompositeNode(grammarAccess.getMyFieldAccess().getBindingsMyBindingParserRuleCall_3_0());
				}
				lv_bindings_3_0=ruleMyBinding
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getMyFieldRule());
					}
					add(
						$current,
						"bindings",
						lv_bindings_3_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug347012TestLanguage.MyBinding");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			(
				this_LT_4=RULE_LT
				{
					newLeafNode(this_LT_4, grammarAccess.getMyFieldAccess().getLTTerminalRuleCall_4_0());
				}
			)*
			otherlv_5=','
			{
				newLeafNode(otherlv_5, grammarAccess.getMyFieldAccess().getCommaKeyword_4_1());
			}
			(
				this_LT_6=RULE_LT
				{
					newLeafNode(this_LT_6, grammarAccess.getMyFieldAccess().getLTTerminalRuleCall_4_2());
				}
			)*
			(
				(
					{
						newCompositeNode(grammarAccess.getMyFieldAccess().getBindingsMyBindingParserRuleCall_4_3_0());
					}
					lv_bindings_7_0=ruleMyBinding
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getMyFieldRule());
						}
						add(
							$current,
							"bindings",
							lv_bindings_7_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug347012TestLanguage.MyBinding");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)*
		{
			newCompositeNode(grammarAccess.getMyFieldAccess().getVirtualSemiParserRuleCall_5());
		}
		ruleVirtualSemi
		{
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleMyBinding
entryRuleMyBinding returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getMyBindingRule()); }
	iv_ruleMyBinding=ruleMyBinding
	{ $current=$iv_ruleMyBinding.current; }
	EOF;

// Rule MyBinding
ruleMyBinding returns [EObject current=null]
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
					newLeafNode(lv_name_0_0, grammarAccess.getMyBindingAccess().getNameIDTerminalRuleCall_0_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getMyBindingRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.Bug347012TestLanguage.ID");
				}
			)
		)
		(
			(
				this_LT_1=RULE_LT
				{
					newLeafNode(this_LT_1, grammarAccess.getMyBindingAccess().getLTTerminalRuleCall_1_0());
				}
			)*
			otherlv_2=':'
			{
				newLeafNode(otherlv_2, grammarAccess.getMyBindingAccess().getColonKeyword_1_1());
			}
			(
				this_LT_3=RULE_LT
				{
					newLeafNode(this_LT_3, grammarAccess.getMyBindingAccess().getLTTerminalRuleCall_1_2());
				}
			)*
			(
				(
					{
						newCompositeNode(grammarAccess.getMyBindingAccess().getTypeFQNParserRuleCall_1_3_0());
					}
					lv_type_4_0=ruleFQN
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getMyBindingRule());
						}
						set(
							$current,
							"type",
							lv_type_4_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug347012TestLanguage.FQN");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)?
		(
			(
				this_LT_5=RULE_LT
				{
					newLeafNode(this_LT_5, grammarAccess.getMyBindingAccess().getLTTerminalRuleCall_2_0());
				}
			)*
			otherlv_6='='
			{
				newLeafNode(otherlv_6, grammarAccess.getMyBindingAccess().getEqualsSignKeyword_2_1());
			}
			(
				this_LT_7=RULE_LT
				{
					newLeafNode(this_LT_7, grammarAccess.getMyBindingAccess().getLTTerminalRuleCall_2_2());
				}
			)*
			(
				(
					{
						newCompositeNode(grammarAccess.getMyBindingAccess().getExpressionMyPrimaryParserRuleCall_2_3_0());
					}
					lv_expression_8_0=ruleMyPrimary
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getMyBindingRule());
						}
						set(
							$current,
							"expression",
							lv_expression_8_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.Bug347012TestLanguage.MyPrimary");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)?
	)
;

RULE_ID : RULE_IDPLAINCHAR (RULE_IDPLAINCHAR|RULE_DIGIT)*;

RULE_LT : ('\r' '\n'|'\r'|'\n');

RULE_WS : (' '|'\t')+;

RULE_STRING : '"' ('\\' RULE_ESCAPE|~(('\\'|'"')))* '"';

RULE_NUMBER : (RULE_DIGIT+ ('.' RULE_DIGIT+)?|'.' RULE_DIGIT+);

fragment RULE_DIGIT : '0'..'9';

fragment RULE_HEX : (RULE_DIGIT|'A'..'F'|'a'..'f');

fragment RULE_ESCAPE : ('b'|'t'|'n'|'f'|'v'|'r'|'"'|'\''|'\\'|'u' RULE_HEX RULE_HEX RULE_HEX RULE_HEX);

fragment RULE_IDPLAINCHAR : ('$'|'A'..'Z'|'_'|'a'..'z');

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
	superClass=AbstractInternalContentAssistParser;
}

@lexer::header {
package org.eclipse.xtext.ui.tests.editor.contentassist.ide.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package org.eclipse.xtext.ui.tests.editor.contentassist.ide.contentassist.antlr.internal;

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.DFA;
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug291022TestLanguageGrammarAccess;

}
@parser::members {
	private Bug291022TestLanguageGrammarAccess grammarAccess;

	public void setGrammarAccess(Bug291022TestLanguageGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}

	@Override
	protected Grammar getGrammar() {
		return grammarAccess.getGrammar();
	}

	@Override
	protected String getValueForTokenName(String tokenName) {
		return tokenName;
	}
}

// Entry rule entryRuleRootModel
entryRuleRootModel
:
{ before(grammarAccess.getRootModelRule()); }
	 ruleRootModel
{ after(grammarAccess.getRootModelRule()); } 
	 EOF 
;

// Rule RootModel
ruleRootModel 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getRootModelAccess().getGroup()); }
		(rule__RootModel__Group__0)?
		{ after(grammarAccess.getRootModelAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleModelElement
entryRuleModelElement
:
{ before(grammarAccess.getModelElementRule()); }
	 ruleModelElement
{ after(grammarAccess.getModelElementRule()); } 
	 EOF 
;

// Rule ModelElement
ruleModelElement 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getModelElementAccess().getGroup()); }
		(rule__ModelElement__Group__0)
		{ after(grammarAccess.getModelElementAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleModelAttribute
entryRuleModelAttribute
:
{ before(grammarAccess.getModelAttributeRule()); }
	 ruleModelAttribute
{ after(grammarAccess.getModelAttributeRule()); } 
	 EOF 
;

// Rule ModelAttribute
ruleModelAttribute 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getModelAttributeAccess().getAlternatives()); }
		(rule__ModelAttribute__Alternatives)
		{ after(grammarAccess.getModelAttributeAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleAttribute
entryRuleAttribute
:
{ before(grammarAccess.getAttributeRule()); }
	 ruleAttribute
{ after(grammarAccess.getAttributeRule()); } 
	 EOF 
;

// Rule Attribute
ruleAttribute 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getAttributeAccess().getGroup()); }
		(rule__Attribute__Group__0)
		{ after(grammarAccess.getAttributeAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ModelElement__Alternatives_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelElementAccess().getSemicolonKeyword_3_0()); }
		';'
		{ after(grammarAccess.getModelElementAccess().getSemicolonKeyword_3_0()); }
	)
	|
	(
		{ before(grammarAccess.getModelElementAccess().getGroup_3_1()); }
		(rule__ModelElement__Group_3_1__0)
		{ after(grammarAccess.getModelElementAccess().getGroup_3_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ModelAttribute__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAttributeAccess().getModelElementParserRuleCall_0()); }
		ruleModelElement
		{ after(grammarAccess.getModelAttributeAccess().getModelElementParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getModelAttributeAccess().getAttributeParserRuleCall_1()); }
		ruleAttribute
		{ after(grammarAccess.getModelAttributeAccess().getAttributeParserRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RootModel__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RootModel__Group__0__Impl
	rule__RootModel__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RootModel__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRootModelAccess().getRootModelAction_0()); }
	()
	{ after(grammarAccess.getRootModelAccess().getRootModelAction_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RootModel__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RootModel__Group__1__Impl
	rule__RootModel__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__RootModel__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRootModelAccess().getNameAssignment_1()); }
	(rule__RootModel__NameAssignment_1)
	{ after(grammarAccess.getRootModelAccess().getNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RootModel__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RootModel__Group__2__Impl
	rule__RootModel__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__RootModel__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRootModelAccess().getTypeAssignment_2()); }
	(rule__RootModel__TypeAssignment_2)?
	{ after(grammarAccess.getRootModelAccess().getTypeAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RootModel__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RootModel__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RootModel__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRootModelAccess().getGroup_3()); }
	(rule__RootModel__Group_3__0)?
	{ after(grammarAccess.getRootModelAccess().getGroup_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__RootModel__Group_3__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RootModel__Group_3__0__Impl
	rule__RootModel__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__RootModel__Group_3__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRootModelAccess().getLeftCurlyBracketKeyword_3_0()); }
	'{'
	{ after(grammarAccess.getRootModelAccess().getLeftCurlyBracketKeyword_3_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RootModel__Group_3__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RootModel__Group_3__1__Impl
	rule__RootModel__Group_3__2
;
finally {
	restoreStackSize(stackSize);
}

rule__RootModel__Group_3__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRootModelAccess().getElementsAssignment_3_1()); }
	(rule__RootModel__ElementsAssignment_3_1)*
	{ after(grammarAccess.getRootModelAccess().getElementsAssignment_3_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__RootModel__Group_3__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__RootModel__Group_3__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__RootModel__Group_3__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getRootModelAccess().getRightCurlyBracketKeyword_3_2()); }
	'}'
	{ after(grammarAccess.getRootModelAccess().getRightCurlyBracketKeyword_3_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ModelElement__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ModelElement__Group__0__Impl
	rule__ModelElement__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ModelElement__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelElementAccess().getFirstReferenceAssignment_0()); }
	(rule__ModelElement__FirstReferenceAssignment_0)
	{ after(grammarAccess.getModelElementAccess().getFirstReferenceAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ModelElement__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ModelElement__Group__1__Impl
	rule__ModelElement__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ModelElement__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelElementAccess().getGroup_1()); }
	(rule__ModelElement__Group_1__0)?
	{ after(grammarAccess.getModelElementAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ModelElement__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ModelElement__Group__2__Impl
	rule__ModelElement__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__ModelElement__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelElementAccess().getSecondReferenceAssignment_2()); }
	(rule__ModelElement__SecondReferenceAssignment_2)?
	{ after(grammarAccess.getModelElementAccess().getSecondReferenceAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ModelElement__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ModelElement__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ModelElement__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelElementAccess().getAlternatives_3()); }
	(rule__ModelElement__Alternatives_3)
	{ after(grammarAccess.getModelElementAccess().getAlternatives_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ModelElement__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ModelElement__Group_1__0__Impl
	rule__ModelElement__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ModelElement__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelElementAccess().getColonKeyword_1_0()); }
	':'
	{ after(grammarAccess.getModelElementAccess().getColonKeyword_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ModelElement__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ModelElement__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ModelElement__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelElementAccess().getNameAssignment_1_1()); }
	(rule__ModelElement__NameAssignment_1_1)
	{ after(grammarAccess.getModelElementAccess().getNameAssignment_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ModelElement__Group_3_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ModelElement__Group_3_1__0__Impl
	rule__ModelElement__Group_3_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ModelElement__Group_3_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelElementAccess().getLeftCurlyBracketKeyword_3_1_0()); }
	'{'
	{ after(grammarAccess.getModelElementAccess().getLeftCurlyBracketKeyword_3_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ModelElement__Group_3_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ModelElement__Group_3_1__1__Impl
	rule__ModelElement__Group_3_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ModelElement__Group_3_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelElementAccess().getElementsAssignment_3_1_1()); }
	(rule__ModelElement__ElementsAssignment_3_1_1)*
	{ after(grammarAccess.getModelElementAccess().getElementsAssignment_3_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ModelElement__Group_3_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ModelElement__Group_3_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ModelElement__Group_3_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelElementAccess().getRightCurlyBracketKeyword_3_1_2()); }
	'}'
	{ after(grammarAccess.getModelElementAccess().getRightCurlyBracketKeyword_3_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Attribute__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute__Group__0__Impl
	rule__Attribute__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttributeAccess().getFeatureAssignment_0()); }
	(rule__Attribute__FeatureAssignment_0)
	{ after(grammarAccess.getAttributeAccess().getFeatureAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute__Group__1__Impl
	rule__Attribute__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttributeAccess().getEqualsSignKeyword_1()); }
	'='
	{ after(grammarAccess.getAttributeAccess().getEqualsSignKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttributeAccess().getValueAssignment_2()); }
	(rule__Attribute__ValueAssignment_2)
	{ after(grammarAccess.getAttributeAccess().getValueAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__RootModel__NameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRootModelAccess().getNameIDTerminalRuleCall_1_0()); }
		RULE_ID
		{ after(grammarAccess.getRootModelAccess().getNameIDTerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RootModel__TypeAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRootModelAccess().getTypeModelElementCrossReference_2_0()); }
		(
			{ before(grammarAccess.getRootModelAccess().getTypeModelElementIDTerminalRuleCall_2_0_1()); }
			RULE_ID
			{ after(grammarAccess.getRootModelAccess().getTypeModelElementIDTerminalRuleCall_2_0_1()); }
		)
		{ after(grammarAccess.getRootModelAccess().getTypeModelElementCrossReference_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__RootModel__ElementsAssignment_3_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getRootModelAccess().getElementsModelAttributeParserRuleCall_3_1_0()); }
		ruleModelAttribute
		{ after(grammarAccess.getRootModelAccess().getElementsModelAttributeParserRuleCall_3_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ModelElement__FirstReferenceAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelElementAccess().getFirstReferenceModelElementCrossReference_0_0()); }
		(
			{ before(grammarAccess.getModelElementAccess().getFirstReferenceModelElementIDTerminalRuleCall_0_0_1()); }
			RULE_ID
			{ after(grammarAccess.getModelElementAccess().getFirstReferenceModelElementIDTerminalRuleCall_0_0_1()); }
		)
		{ after(grammarAccess.getModelElementAccess().getFirstReferenceModelElementCrossReference_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ModelElement__NameAssignment_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelElementAccess().getNameIDTerminalRuleCall_1_1_0()); }
		RULE_ID
		{ after(grammarAccess.getModelElementAccess().getNameIDTerminalRuleCall_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ModelElement__SecondReferenceAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelElementAccess().getSecondReferenceModelElementCrossReference_2_0()); }
		(
			{ before(grammarAccess.getModelElementAccess().getSecondReferenceModelElementIDTerminalRuleCall_2_0_1()); }
			RULE_ID
			{ after(grammarAccess.getModelElementAccess().getSecondReferenceModelElementIDTerminalRuleCall_2_0_1()); }
		)
		{ after(grammarAccess.getModelElementAccess().getSecondReferenceModelElementCrossReference_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ModelElement__ElementsAssignment_3_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelElementAccess().getElementsModelAttributeParserRuleCall_3_1_1_0()); }
		ruleModelAttribute
		{ after(grammarAccess.getModelElementAccess().getElementsModelAttributeParserRuleCall_3_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__FeatureAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAttributeAccess().getFeatureModelElementCrossReference_0_0()); }
		(
			{ before(grammarAccess.getAttributeAccess().getFeatureModelElementIDTerminalRuleCall_0_0_1()); }
			RULE_ID
			{ after(grammarAccess.getAttributeAccess().getFeatureModelElementIDTerminalRuleCall_0_0_1()); }
		)
		{ after(grammarAccess.getAttributeAccess().getFeatureModelElementCrossReference_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__ValueAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAttributeAccess().getValueSTRINGTerminalRuleCall_2_0()); }
		RULE_STRING
		{ after(grammarAccess.getAttributeAccess().getValueSTRINGTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;

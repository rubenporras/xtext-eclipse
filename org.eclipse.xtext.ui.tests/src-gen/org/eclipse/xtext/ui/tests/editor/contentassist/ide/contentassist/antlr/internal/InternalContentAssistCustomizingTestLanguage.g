/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalContentAssistCustomizingTestLanguage;

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
import org.eclipse.xtext.ui.tests.editor.contentassist.services.ContentAssistCustomizingTestLanguageGrammarAccess;

}
@parser::members {
	private ContentAssistCustomizingTestLanguageGrammarAccess grammarAccess;

	public void setGrammarAccess(ContentAssistCustomizingTestLanguageGrammarAccess grammarAccess) {
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

// Entry rule entryRuleModel
entryRuleModel
:
{ before(grammarAccess.getModelRule()); }
	 ruleModel
{ after(grammarAccess.getModelRule()); } 
	 EOF 
;

// Rule Model
ruleModel 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getModelAccess().getTypesAssignment()); }
		(rule__Model__TypesAssignment)*
		{ after(grammarAccess.getModelAccess().getTypesAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleType
entryRuleType
:
{ before(grammarAccess.getTypeRule()); }
	 ruleType
{ after(grammarAccess.getTypeRule()); } 
	 EOF 
;

// Rule Type
ruleType 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getTypeAccess().getGroup()); }
		(rule__Type__Group__0)
		{ after(grammarAccess.getTypeAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleTypeRef
entryRuleTypeRef
:
{ before(grammarAccess.getTypeRefRule()); }
	 ruleTypeRef
{ after(grammarAccess.getTypeRefRule()); } 
	 EOF 
;

// Rule TypeRef
ruleTypeRef 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getTypeRefAccess().getTypeAssignment()); }
		(rule__TypeRef__TypeAssignment)
		{ after(grammarAccess.getTypeRefAccess().getTypeAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleFQN
entryRuleFQN
:
{ before(grammarAccess.getFQNRule()); }
	 ruleFQN
{ after(grammarAccess.getFQNRule()); } 
	 EOF 
;

// Rule FQN
ruleFQN 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getFQNAccess().getGroup()); }
		(rule__FQN__Group__0)
		{ after(grammarAccess.getFQNAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Type__Alternatives_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTypeAccess().getNameAssignment_0_0()); }
		(rule__Type__NameAssignment_0_0)
		{ after(grammarAccess.getTypeAccess().getNameAssignment_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getTypeAccess().getNameAssignment_0_1()); }
		(rule__Type__NameAssignment_0_1)
		{ after(grammarAccess.getTypeAccess().getNameAssignment_0_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Type__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Type__Group__0__Impl
	rule__Type__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Type__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTypeAccess().getAlternatives_0()); }
	(rule__Type__Alternatives_0)
	{ after(grammarAccess.getTypeAccess().getAlternatives_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Type__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Type__Group__1__Impl
	rule__Type__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Type__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTypeAccess().getGroup_1()); }
	(rule__Type__Group_1__0)?
	{ after(grammarAccess.getTypeAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Type__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Type__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Type__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTypeAccess().getSemicolonKeyword_2()); }
	';'
	{ after(grammarAccess.getTypeAccess().getSemicolonKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Type__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Type__Group_1__0__Impl
	rule__Type__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Type__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTypeAccess().getExtendsKeyword_1_0()); }
	'extends'
	{ after(grammarAccess.getTypeAccess().getExtendsKeyword_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Type__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Type__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Type__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTypeAccess().getSuperTypeAssignment_1_1()); }
	(rule__Type__SuperTypeAssignment_1_1)
	{ after(grammarAccess.getTypeAccess().getSuperTypeAssignment_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__FQN__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FQN__Group__0__Impl
	rule__FQN__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFQNAccess().getIDTerminalRuleCall_0()); }
	RULE_ID
	{ after(grammarAccess.getFQNAccess().getIDTerminalRuleCall_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FQN__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFQNAccess().getGroup_1()); }
	(rule__FQN__Group_1__0)*
	{ after(grammarAccess.getFQNAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__FQN__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FQN__Group_1__0__Impl
	rule__FQN__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFQNAccess().getFullStopKeyword_1_0()); }
	'.'
	{ after(grammarAccess.getFQNAccess().getFullStopKeyword_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FQN__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__FQN__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFQNAccess().getIDTerminalRuleCall_1_1()); }
	RULE_ID
	{ after(grammarAccess.getFQNAccess().getIDTerminalRuleCall_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Model__TypesAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getTypesTypeParserRuleCall_0()); }
		ruleType
		{ after(grammarAccess.getModelAccess().getTypesTypeParserRuleCall_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Type__NameAssignment_0_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTypeAccess().getNameFQNParserRuleCall_0_0_0()); }
		ruleFQN
		{ after(grammarAccess.getTypeAccess().getNameFQNParserRuleCall_0_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Type__NameAssignment_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTypeAccess().getNameFQNKeyword_0_1_0()); }
		(
			{ before(grammarAccess.getTypeAccess().getNameFQNKeyword_0_1_0()); }
			'FQN'
			{ after(grammarAccess.getTypeAccess().getNameFQNKeyword_0_1_0()); }
		)
		{ after(grammarAccess.getTypeAccess().getNameFQNKeyword_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Type__SuperTypeAssignment_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTypeAccess().getSuperTypeTypeRefParserRuleCall_1_1_0()); }
		ruleTypeRef
		{ after(grammarAccess.getTypeAccess().getSuperTypeTypeRefParserRuleCall_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__TypeRef__TypeAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTypeRefAccess().getTypeTypeCrossReference_0()); }
		(
			{ before(grammarAccess.getTypeRefAccess().getTypeTypeFQNParserRuleCall_0_1()); }
			ruleFQN
			{ after(grammarAccess.getTypeRefAccess().getTypeTypeFQNParserRuleCall_0_1()); }
		)
		{ after(grammarAccess.getTypeRefAccess().getTypeTypeCrossReference_0()); }
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

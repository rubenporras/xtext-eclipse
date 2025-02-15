/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalOutlineTestLanguage;

options {
	superClass=AbstractInternalContentAssistParser;
}

@lexer::header {
package org.eclipse.xtext.ui.tests.editor.outline.ide.contentassist.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.Lexer;
}

@parser::header {
package org.eclipse.xtext.ui.tests.editor.outline.ide.contentassist.antlr.internal;

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
import org.eclipse.xtext.ui.tests.editor.outline.services.OutlineTestLanguageGrammarAccess;

}
@parser::members {
	private OutlineTestLanguageGrammarAccess grammarAccess;

	public void setGrammarAccess(OutlineTestLanguageGrammarAccess grammarAccess) {
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
		{ before(grammarAccess.getModelAccess().getElementsAssignment()); }
		(rule__Model__ElementsAssignment)*
		{ after(grammarAccess.getModelAccess().getElementsAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleElement
entryRuleElement
:
{ before(grammarAccess.getElementRule()); }
	 ruleElement
{ after(grammarAccess.getElementRule()); } 
	 EOF 
;

// Rule Element
ruleElement 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getElementAccess().getGroup()); }
		(rule__Element__Group__0)
		{ after(grammarAccess.getElementAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Element__Group__0__Impl
	rule__Element__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getElementAccess().getNameAssignment_0()); }
	(rule__Element__NameAssignment_0)
	{ after(grammarAccess.getElementAccess().getNameAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Element__Group__1__Impl
	rule__Element__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getElementAccess().getGroup_1()); }
	(rule__Element__Group_1__0)?
	{ after(grammarAccess.getElementAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Element__Group__2__Impl
	rule__Element__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getElementAccess().getLeftCurlyBracketKeyword_2()); }
	'{'
	{ after(grammarAccess.getElementAccess().getLeftCurlyBracketKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Element__Group__3__Impl
	rule__Element__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getElementAccess().getChildrenAssignment_3()); }
	(rule__Element__ChildrenAssignment_3)*
	{ after(grammarAccess.getElementAccess().getChildrenAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Element__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getElementAccess().getRightCurlyBracketKeyword_4()); }
	'}'
	{ after(grammarAccess.getElementAccess().getRightCurlyBracketKeyword_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Element__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Element__Group_1__0__Impl
	rule__Element__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getElementAccess().getLeftParenthesisKeyword_1_0()); }
	'('
	{ after(grammarAccess.getElementAccess().getLeftParenthesisKeyword_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Element__Group_1__1__Impl
	rule__Element__Group_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getElementAccess().getXrefsAssignment_1_1()); }
	(rule__Element__XrefsAssignment_1_1)*
	{ after(grammarAccess.getElementAccess().getXrefsAssignment_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Element__Group_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__Group_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getElementAccess().getRightParenthesisKeyword_1_2()); }
	')'
	{ after(grammarAccess.getElementAccess().getRightParenthesisKeyword_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Model__ElementsAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getElementsElementParserRuleCall_0()); }
		ruleElement
		{ after(grammarAccess.getModelAccess().getElementsElementParserRuleCall_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__NameAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getElementAccess().getNameIDTerminalRuleCall_0_0()); }
		RULE_ID
		{ after(grammarAccess.getElementAccess().getNameIDTerminalRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__XrefsAssignment_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getElementAccess().getXrefsElementCrossReference_1_1_0()); }
		(
			{ before(grammarAccess.getElementAccess().getXrefsElementIDTerminalRuleCall_1_1_0_1()); }
			RULE_ID
			{ after(grammarAccess.getElementAccess().getXrefsElementIDTerminalRuleCall_1_1_0_1()); }
		)
		{ after(grammarAccess.getElementAccess().getXrefsElementCrossReference_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Element__ChildrenAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getElementAccess().getChildrenElementParserRuleCall_3_0()); }
		ruleElement
		{ after(grammarAccess.getElementAccess().getChildrenElementParserRuleCall_3_0()); }
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

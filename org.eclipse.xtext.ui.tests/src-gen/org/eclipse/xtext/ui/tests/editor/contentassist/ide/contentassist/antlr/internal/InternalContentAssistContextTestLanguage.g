/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalContentAssistContextTestLanguage;

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
import org.eclipse.xtext.ui.tests.editor.contentassist.services.ContentAssistContextTestLanguageGrammarAccess;

}
@parser::members {
	private ContentAssistContextTestLanguageGrammarAccess grammarAccess;

	public void setGrammarAccess(ContentAssistContextTestLanguageGrammarAccess grammarAccess) {
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

// Entry rule entryRuleFirstLevel
entryRuleFirstLevel
:
{ before(grammarAccess.getFirstLevelRule()); }
	 ruleFirstLevel
{ after(grammarAccess.getFirstLevelRule()); } 
	 EOF 
;

// Rule FirstLevel
ruleFirstLevel 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getFirstLevelAccess().getGroup()); }
		(rule__FirstLevel__Group__0)
		{ after(grammarAccess.getFirstLevelAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleSecondLevelA
entryRuleSecondLevelA
:
{ before(grammarAccess.getSecondLevelARule()); }
	 ruleSecondLevelA
{ after(grammarAccess.getSecondLevelARule()); } 
	 EOF 
;

// Rule SecondLevelA
ruleSecondLevelA 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getSecondLevelAAccess().getGroup()); }
		(rule__SecondLevelA__Group__0)
		{ after(grammarAccess.getSecondLevelAAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleSecondLevelB
entryRuleSecondLevelB
:
{ before(grammarAccess.getSecondLevelBRule()); }
	 ruleSecondLevelB
{ after(grammarAccess.getSecondLevelBRule()); } 
	 EOF 
;

// Rule SecondLevelB
ruleSecondLevelB 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getSecondLevelBAccess().getGroup()); }
		(rule__SecondLevelB__Group__0)
		{ after(grammarAccess.getSecondLevelBAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleThirdLevelA1
entryRuleThirdLevelA1
:
{ before(grammarAccess.getThirdLevelA1Rule()); }
	 ruleThirdLevelA1
{ after(grammarAccess.getThirdLevelA1Rule()); } 
	 EOF 
;

// Rule ThirdLevelA1
ruleThirdLevelA1 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getThirdLevelA1Access().getGroup()); }
		(rule__ThirdLevelA1__Group__0)
		{ after(grammarAccess.getThirdLevelA1Access().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleThirdLevelA2
entryRuleThirdLevelA2
:
{ before(grammarAccess.getThirdLevelA2Rule()); }
	 ruleThirdLevelA2
{ after(grammarAccess.getThirdLevelA2Rule()); } 
	 EOF 
;

// Rule ThirdLevelA2
ruleThirdLevelA2 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getThirdLevelA2Access().getGroup()); }
		(rule__ThirdLevelA2__Group__0)
		{ after(grammarAccess.getThirdLevelA2Access().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleThirdLevelB1
entryRuleThirdLevelB1
:
{ before(grammarAccess.getThirdLevelB1Rule()); }
	 ruleThirdLevelB1
{ after(grammarAccess.getThirdLevelB1Rule()); } 
	 EOF 
;

// Rule ThirdLevelB1
ruleThirdLevelB1 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getThirdLevelB1Access().getGroup()); }
		(rule__ThirdLevelB1__Group__0)
		{ after(grammarAccess.getThirdLevelB1Access().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleThirdLevelB2
entryRuleThirdLevelB2
:
{ before(grammarAccess.getThirdLevelB2Rule()); }
	 ruleThirdLevelB2
{ after(grammarAccess.getThirdLevelB2Rule()); } 
	 EOF 
;

// Rule ThirdLevelB2
ruleThirdLevelB2 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getThirdLevelB2Access().getGroup()); }
		(rule__ThirdLevelB2__Group__0)
		{ after(grammarAccess.getThirdLevelB2Access().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__FirstLevel__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FirstLevel__Group__0__Impl
	rule__FirstLevel__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__FirstLevel__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFirstLevelAccess().getSecondLevelAAssignment_0()); }
	(rule__FirstLevel__SecondLevelAAssignment_0)*
	{ after(grammarAccess.getFirstLevelAccess().getSecondLevelAAssignment_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__FirstLevel__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__FirstLevel__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__FirstLevel__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getFirstLevelAccess().getSecondLevelBAssignment_1()); }
	(rule__FirstLevel__SecondLevelBAssignment_1)*
	{ after(grammarAccess.getFirstLevelAccess().getSecondLevelBAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__SecondLevelA__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SecondLevelA__Group__0__Impl
	rule__SecondLevelA__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SecondLevelA__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	(
		{ before(grammarAccess.getSecondLevelAAccess().getThirdLevelA1Assignment_0()); }
		(rule__SecondLevelA__ThirdLevelA1Assignment_0)
		{ after(grammarAccess.getSecondLevelAAccess().getThirdLevelA1Assignment_0()); }
	)
	(
		{ before(grammarAccess.getSecondLevelAAccess().getThirdLevelA1Assignment_0()); }
		(rule__SecondLevelA__ThirdLevelA1Assignment_0)*
		{ after(grammarAccess.getSecondLevelAAccess().getThirdLevelA1Assignment_0()); }
	)
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SecondLevelA__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SecondLevelA__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SecondLevelA__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	(
		{ before(grammarAccess.getSecondLevelAAccess().getThirdLevelA2Assignment_1()); }
		(rule__SecondLevelA__ThirdLevelA2Assignment_1)
		{ after(grammarAccess.getSecondLevelAAccess().getThirdLevelA2Assignment_1()); }
	)
	(
		{ before(grammarAccess.getSecondLevelAAccess().getThirdLevelA2Assignment_1()); }
		(rule__SecondLevelA__ThirdLevelA2Assignment_1)*
		{ after(grammarAccess.getSecondLevelAAccess().getThirdLevelA2Assignment_1()); }
	)
)
;
finally {
	restoreStackSize(stackSize);
}


rule__SecondLevelB__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SecondLevelB__Group__0__Impl
	rule__SecondLevelB__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SecondLevelB__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	(
		{ before(grammarAccess.getSecondLevelBAccess().getThirdLevelB1Assignment_0()); }
		(rule__SecondLevelB__ThirdLevelB1Assignment_0)
		{ after(grammarAccess.getSecondLevelBAccess().getThirdLevelB1Assignment_0()); }
	)
	(
		{ before(grammarAccess.getSecondLevelBAccess().getThirdLevelB1Assignment_0()); }
		(rule__SecondLevelB__ThirdLevelB1Assignment_0)*
		{ after(grammarAccess.getSecondLevelBAccess().getThirdLevelB1Assignment_0()); }
	)
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SecondLevelB__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SecondLevelB__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SecondLevelB__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	(
		{ before(grammarAccess.getSecondLevelBAccess().getThirdLevelB2Assignment_1()); }
		(rule__SecondLevelB__ThirdLevelB2Assignment_1)
		{ after(grammarAccess.getSecondLevelBAccess().getThirdLevelB2Assignment_1()); }
	)
	(
		{ before(grammarAccess.getSecondLevelBAccess().getThirdLevelB2Assignment_1()); }
		(rule__SecondLevelB__ThirdLevelB2Assignment_1)*
		{ after(grammarAccess.getSecondLevelBAccess().getThirdLevelB2Assignment_1()); }
	)
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ThirdLevelA1__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ThirdLevelA1__Group__0__Impl
	rule__ThirdLevelA1__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ThirdLevelA1__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getThirdLevelA1Access().getA1Keyword_0()); }
	'A1'
	{ after(grammarAccess.getThirdLevelA1Access().getA1Keyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ThirdLevelA1__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ThirdLevelA1__Group__1__Impl
	rule__ThirdLevelA1__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ThirdLevelA1__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getThirdLevelA1Access().getThirdLevelA1Action_1()); }
	()
	{ after(grammarAccess.getThirdLevelA1Access().getThirdLevelA1Action_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ThirdLevelA1__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ThirdLevelA1__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ThirdLevelA1__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getThirdLevelA1Access().getNameAssignment_2()); }
	(rule__ThirdLevelA1__NameAssignment_2)?
	{ after(grammarAccess.getThirdLevelA1Access().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ThirdLevelA2__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ThirdLevelA2__Group__0__Impl
	rule__ThirdLevelA2__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ThirdLevelA2__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getThirdLevelA2Access().getA2Keyword_0()); }
	'A2'
	{ after(grammarAccess.getThirdLevelA2Access().getA2Keyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ThirdLevelA2__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ThirdLevelA2__Group__1__Impl
	rule__ThirdLevelA2__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ThirdLevelA2__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getThirdLevelA2Access().getThirdLevelA2Action_1()); }
	()
	{ after(grammarAccess.getThirdLevelA2Access().getThirdLevelA2Action_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ThirdLevelA2__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ThirdLevelA2__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ThirdLevelA2__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getThirdLevelA2Access().getNameAssignment_2()); }
	(rule__ThirdLevelA2__NameAssignment_2)?
	{ after(grammarAccess.getThirdLevelA2Access().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ThirdLevelB1__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ThirdLevelB1__Group__0__Impl
	rule__ThirdLevelB1__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ThirdLevelB1__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getThirdLevelB1Access().getB1Keyword_0()); }
	'B1'
	{ after(grammarAccess.getThirdLevelB1Access().getB1Keyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ThirdLevelB1__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ThirdLevelB1__Group__1__Impl
	rule__ThirdLevelB1__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ThirdLevelB1__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getThirdLevelB1Access().getThirdLevelB1Action_1()); }
	()
	{ after(grammarAccess.getThirdLevelB1Access().getThirdLevelB1Action_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ThirdLevelB1__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ThirdLevelB1__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ThirdLevelB1__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getThirdLevelB1Access().getNameAssignment_2()); }
	(rule__ThirdLevelB1__NameAssignment_2)?
	{ after(grammarAccess.getThirdLevelB1Access().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ThirdLevelB2__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ThirdLevelB2__Group__0__Impl
	rule__ThirdLevelB2__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ThirdLevelB2__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getThirdLevelB2Access().getB2Keyword_0()); }
	'B2'
	{ after(grammarAccess.getThirdLevelB2Access().getB2Keyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ThirdLevelB2__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ThirdLevelB2__Group__1__Impl
	rule__ThirdLevelB2__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ThirdLevelB2__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getThirdLevelB2Access().getThirdLevelB2Action_1()); }
	()
	{ after(grammarAccess.getThirdLevelB2Access().getThirdLevelB2Action_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ThirdLevelB2__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ThirdLevelB2__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ThirdLevelB2__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getThirdLevelB2Access().getNameAssignment_2()); }
	(rule__ThirdLevelB2__NameAssignment_2)?
	{ after(grammarAccess.getThirdLevelB2Access().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__FirstLevel__SecondLevelAAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getFirstLevelAccess().getSecondLevelASecondLevelAParserRuleCall_0_0()); }
		ruleSecondLevelA
		{ after(grammarAccess.getFirstLevelAccess().getSecondLevelASecondLevelAParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__FirstLevel__SecondLevelBAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getFirstLevelAccess().getSecondLevelBSecondLevelBParserRuleCall_1_0()); }
		ruleSecondLevelB
		{ after(grammarAccess.getFirstLevelAccess().getSecondLevelBSecondLevelBParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SecondLevelA__ThirdLevelA1Assignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSecondLevelAAccess().getThirdLevelA1ThirdLevelA1ParserRuleCall_0_0()); }
		ruleThirdLevelA1
		{ after(grammarAccess.getSecondLevelAAccess().getThirdLevelA1ThirdLevelA1ParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SecondLevelA__ThirdLevelA2Assignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSecondLevelAAccess().getThirdLevelA2ThirdLevelA2ParserRuleCall_1_0()); }
		ruleThirdLevelA2
		{ after(grammarAccess.getSecondLevelAAccess().getThirdLevelA2ThirdLevelA2ParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SecondLevelB__ThirdLevelB1Assignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSecondLevelBAccess().getThirdLevelB1ThirdLevelB1ParserRuleCall_0_0()); }
		ruleThirdLevelB1
		{ after(grammarAccess.getSecondLevelBAccess().getThirdLevelB1ThirdLevelB1ParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SecondLevelB__ThirdLevelB2Assignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSecondLevelBAccess().getThirdLevelB2ThirdLevelB2ParserRuleCall_1_0()); }
		ruleThirdLevelB2
		{ after(grammarAccess.getSecondLevelBAccess().getThirdLevelB2ThirdLevelB2ParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ThirdLevelA1__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getThirdLevelA1Access().getNameIDTerminalRuleCall_2_0()); }
		RULE_ID
		{ after(grammarAccess.getThirdLevelA1Access().getNameIDTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ThirdLevelA2__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getThirdLevelA2Access().getNameIDTerminalRuleCall_2_0()); }
		RULE_ID
		{ after(grammarAccess.getThirdLevelA2Access().getNameIDTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ThirdLevelB1__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getThirdLevelB1Access().getNameIDTerminalRuleCall_2_0()); }
		RULE_ID
		{ after(grammarAccess.getThirdLevelB1Access().getNameIDTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ThirdLevelB2__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getThirdLevelB2Access().getNameIDTerminalRuleCall_2_0()); }
		RULE_ID
		{ after(grammarAccess.getThirdLevelB2Access().getNameIDTerminalRuleCall_2_0()); }
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

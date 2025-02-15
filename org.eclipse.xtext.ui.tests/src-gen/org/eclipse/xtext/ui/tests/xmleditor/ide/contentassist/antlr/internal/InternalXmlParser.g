/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
parser grammar InternalXmlParser;

options {
	tokenVocab=InternalXmlLexer;
	superClass=AbstractInternalContentAssistParser;
}

@header {
package org.eclipse.xtext.ui.tests.xmleditor.ide.contentassist.antlr.internal;
import java.util.Map;
import java.util.HashMap;

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
import org.eclipse.xtext.ui.tests.xmleditor.services.XmlGrammarAccess;

}
@members {
	private XmlGrammarAccess grammarAccess;
	private final Map<String, String> tokenNameToValue = new HashMap<String, String>();
	
	{
	}

	public void setGrammarAccess(XmlGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}

	@Override
	protected Grammar getGrammar() {
		return grammarAccess.getGrammar();
	}

	@Override
	protected String getValueForTokenName(String tokenName) {
		String result = tokenNameToValue.get(tokenName);
		if (result == null)
			result = tokenName;
		return result;
	}
}

// Entry rule entryRuleXmlDocument
entryRuleXmlDocument
:
{ before(grammarAccess.getXmlDocumentRule()); }
	 ruleXmlDocument
{ after(grammarAccess.getXmlDocumentRule()); } 
	 EOF 
;

// Rule XmlDocument
ruleXmlDocument 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getXmlDocumentAccess().getGroup()); }
		(rule__XmlDocument__Group__0)
		{ after(grammarAccess.getXmlDocumentAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleContent
entryRuleContent
:
{ before(grammarAccess.getContentRule()); }
	 ruleContent
{ after(grammarAccess.getContentRule()); } 
	 EOF 
;

// Rule Content
ruleContent 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getContentAccess().getAlternatives()); }
		(rule__Content__Alternatives)
		{ after(grammarAccess.getContentAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleTag
entryRuleTag
@init { 
	HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens("RULE_WS");
}
:
{ before(grammarAccess.getTagRule()); }
	 ruleTag
{ after(grammarAccess.getTagRule()); } 
	 EOF 
;
finally {
	myHiddenTokenState.restore();
}

// Rule Tag
ruleTag 
	@init {
		HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens("RULE_WS");
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getTagAccess().getGroup()); }
		(rule__Tag__Group__0)
		{ after(grammarAccess.getTagAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
	myHiddenTokenState.restore();
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

rule__Content__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getContentAccess().getTagAssignment_0()); }
		(rule__Content__TagAssignment_0)
		{ after(grammarAccess.getContentAccess().getTagAssignment_0()); }
	)
	|
	(
		{ before(grammarAccess.getContentAccess().getTextAssignment_1()); }
		(rule__Content__TextAssignment_1)
		{ after(grammarAccess.getContentAccess().getTextAssignment_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Tag__Alternatives_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTagAccess().getTAG_EMPTY_CLOSETerminalRuleCall_3_0()); }
		RULE_TAG_EMPTY_CLOSE
		{ after(grammarAccess.getTagAccess().getTAG_EMPTY_CLOSETerminalRuleCall_3_0()); }
	)
	|
	(
		{ before(grammarAccess.getTagAccess().getGroup_3_1()); }
		(rule__Tag__Group_3_1__0)
		{ after(grammarAccess.getTagAccess().getGroup_3_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__XmlDocument__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__XmlDocument__Group__0__Impl
	rule__XmlDocument__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__XmlDocument__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getXmlDocumentAccess().getXmlDocumentAction_0()); }
	()
	{ after(grammarAccess.getXmlDocumentAccess().getXmlDocumentAction_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__XmlDocument__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__XmlDocument__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__XmlDocument__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getXmlDocumentAccess().getContentsAssignment_1()); }
	(rule__XmlDocument__ContentsAssignment_1)*
	{ after(grammarAccess.getXmlDocumentAccess().getContentsAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Tag__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Tag__Group__0__Impl
	rule__Tag__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Tag__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTagAccess().getTAG_START_OPENTerminalRuleCall_0()); }
	RULE_TAG_START_OPEN
	{ after(grammarAccess.getTagAccess().getTAG_START_OPENTerminalRuleCall_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Tag__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Tag__Group__1__Impl
	rule__Tag__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Tag__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTagAccess().getNameAssignment_1()); }
	(rule__Tag__NameAssignment_1)
	{ after(grammarAccess.getTagAccess().getNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Tag__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Tag__Group__2__Impl
	rule__Tag__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Tag__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTagAccess().getAttributesAssignment_2()); }
	(rule__Tag__AttributesAssignment_2)*
	{ after(grammarAccess.getTagAccess().getAttributesAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Tag__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Tag__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Tag__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTagAccess().getAlternatives_3()); }
	(rule__Tag__Alternatives_3)
	{ after(grammarAccess.getTagAccess().getAlternatives_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Tag__Group_3_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Tag__Group_3_1__0__Impl
	rule__Tag__Group_3_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Tag__Group_3_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTagAccess().getTAG_CLOSETerminalRuleCall_3_1_0()); }
	RULE_TAG_CLOSE
	{ after(grammarAccess.getTagAccess().getTAG_CLOSETerminalRuleCall_3_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Tag__Group_3_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Tag__Group_3_1__1__Impl
	rule__Tag__Group_3_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Tag__Group_3_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTagAccess().getContentsAssignment_3_1_1()); }
	(rule__Tag__ContentsAssignment_3_1_1)*
	{ after(grammarAccess.getTagAccess().getContentsAssignment_3_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Tag__Group_3_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Tag__Group_3_1__2__Impl
	rule__Tag__Group_3_1__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Tag__Group_3_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTagAccess().getTAG_END_OPENTerminalRuleCall_3_1_2()); }
	RULE_TAG_END_OPEN
	{ after(grammarAccess.getTagAccess().getTAG_END_OPENTerminalRuleCall_3_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Tag__Group_3_1__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Tag__Group_3_1__3__Impl
	rule__Tag__Group_3_1__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Tag__Group_3_1__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTagAccess().getCloseNameAssignment_3_1_3()); }
	(rule__Tag__CloseNameAssignment_3_1_3)
	{ after(grammarAccess.getTagAccess().getCloseNameAssignment_3_1_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Tag__Group_3_1__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Tag__Group_3_1__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Tag__Group_3_1__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTagAccess().getTAG_CLOSETerminalRuleCall_3_1_4()); }
	RULE_TAG_CLOSE
	{ after(grammarAccess.getTagAccess().getTAG_CLOSETerminalRuleCall_3_1_4()); }
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
	{ before(grammarAccess.getAttributeAccess().getNameAssignment_0()); }
	(rule__Attribute__NameAssignment_0)
	{ after(grammarAccess.getAttributeAccess().getNameAssignment_0()); }
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
	{ before(grammarAccess.getAttributeAccess().getATTR_EQTerminalRuleCall_1()); }
	RULE_ATTR_EQ
	{ after(grammarAccess.getAttributeAccess().getATTR_EQTerminalRuleCall_1()); }
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


rule__XmlDocument__ContentsAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getXmlDocumentAccess().getContentsContentParserRuleCall_1_0()); }
		ruleContent
		{ after(grammarAccess.getXmlDocumentAccess().getContentsContentParserRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Content__TagAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getContentAccess().getTagTagParserRuleCall_0_0()); }
		ruleTag
		{ after(grammarAccess.getContentAccess().getTagTagParserRuleCall_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Content__TextAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getContentAccess().getTextPCDATATerminalRuleCall_1_0()); }
		RULE_PCDATA
		{ after(grammarAccess.getContentAccess().getTextPCDATATerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Tag__NameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTagAccess().getNameIDTerminalRuleCall_1_0()); }
		RULE_ID
		{ after(grammarAccess.getTagAccess().getNameIDTerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Tag__AttributesAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTagAccess().getAttributesAttributeParserRuleCall_2_0()); }
		ruleAttribute
		{ after(grammarAccess.getTagAccess().getAttributesAttributeParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Tag__ContentsAssignment_3_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTagAccess().getContentsContentParserRuleCall_3_1_1_0()); }
		ruleContent
		{ after(grammarAccess.getTagAccess().getContentsContentParserRuleCall_3_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Tag__CloseNameAssignment_3_1_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTagAccess().getCloseNameIDTerminalRuleCall_3_1_3_0()); }
		RULE_ID
		{ after(grammarAccess.getTagAccess().getCloseNameIDTerminalRuleCall_3_1_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__NameAssignment_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAttributeAccess().getNameIDTerminalRuleCall_0_0()); }
		RULE_ID
		{ after(grammarAccess.getAttributeAccess().getNameIDTerminalRuleCall_0_0()); }
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

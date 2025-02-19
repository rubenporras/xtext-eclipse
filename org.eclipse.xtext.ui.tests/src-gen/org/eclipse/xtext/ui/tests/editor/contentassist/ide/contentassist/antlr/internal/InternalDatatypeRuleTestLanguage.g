/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalDatatypeRuleTestLanguage;

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
import org.eclipse.xtext.ui.tests.editor.contentassist.services.DatatypeRuleTestLanguageGrammarAccess;

}
@parser::members {
	private DatatypeRuleTestLanguageGrammarAccess grammarAccess;

	public void setGrammarAccess(DatatypeRuleTestLanguageGrammarAccess grammarAccess) {
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
		{ before(grammarAccess.getModelAccess().getTypesParserRuleCall()); }
		ruleTypes
		{ after(grammarAccess.getModelAccess().getTypesParserRuleCall()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleTypes
entryRuleTypes
:
{ before(grammarAccess.getTypesRule()); }
	 ruleTypes
{ after(grammarAccess.getTypesRule()); } 
	 EOF 
;

// Rule Types
ruleTypes 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getTypesAccess().getGroup()); }
		(rule__Types__Group__0)
		{ after(grammarAccess.getTypesAccess().getGroup()); }
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
		{ before(grammarAccess.getTypeAccess().getAlternatives()); }
		(rule__Type__Alternatives)
		{ after(grammarAccess.getTypeAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleSimpleType
entryRuleSimpleType
:
{ before(grammarAccess.getSimpleTypeRule()); }
	 ruleSimpleType
{ after(grammarAccess.getSimpleTypeRule()); } 
	 EOF 
;

// Rule SimpleType
ruleSimpleType 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getSimpleTypeAccess().getGroup()); }
		(rule__SimpleType__Group__0)
		{ after(grammarAccess.getSimpleTypeAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleCompositeType
entryRuleCompositeType
:
{ before(grammarAccess.getCompositeTypeRule()); }
	 ruleCompositeType
{ after(grammarAccess.getCompositeTypeRule()); } 
	 EOF 
;

// Rule CompositeType
ruleCompositeType 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getCompositeTypeAccess().getGroup()); }
		(rule__CompositeType__Group__0)
		{ after(grammarAccess.getCompositeTypeAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleCompositeTypeEntry
entryRuleCompositeTypeEntry
:
{ before(grammarAccess.getCompositeTypeEntryRule()); }
	 ruleCompositeTypeEntry
{ after(grammarAccess.getCompositeTypeEntryRule()); } 
	 EOF 
;

// Rule CompositeTypeEntry
ruleCompositeTypeEntry 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getCompositeTypeEntryAccess().getDataTypeAssignment()); }
		(rule__CompositeTypeEntry__DataTypeAssignment)
		{ after(grammarAccess.getCompositeTypeEntryAccess().getDataTypeAssignment()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleTypeId
entryRuleTypeId
:
{ before(grammarAccess.getTypeIdRule()); }
	 ruleTypeId
{ after(grammarAccess.getTypeIdRule()); } 
	 EOF 
;

// Rule TypeId
ruleTypeId 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getTypeIdAccess().getGroup()); }
		(rule__TypeId__Group__0)
		{ after(grammarAccess.getTypeIdAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Type__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTypeAccess().getSimpleTypeParserRuleCall_0()); }
		ruleSimpleType
		{ after(grammarAccess.getTypeAccess().getSimpleTypeParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getTypeAccess().getCompositeTypeParserRuleCall_1()); }
		ruleCompositeType
		{ after(grammarAccess.getTypeAccess().getCompositeTypeParserRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Types__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Types__Group__0__Impl
	rule__Types__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Types__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTypesAccess().getTypesAction_0()); }
	()
	{ after(grammarAccess.getTypesAccess().getTypesAction_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Types__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Types__Group__1__Impl
	rule__Types__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Types__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTypesAccess().getTypesKeyword_1()); }
	'Types'
	{ after(grammarAccess.getTypesAccess().getTypesKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Types__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Types__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Types__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTypesAccess().getTypesAssignment_2()); }
	(rule__Types__TypesAssignment_2)*
	{ after(grammarAccess.getTypesAccess().getTypesAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__SimpleType__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SimpleType__Group__0__Impl
	rule__SimpleType__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SimpleType__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSimpleTypeAccess().getTypeKeyword_0()); }
	'Type'
	{ after(grammarAccess.getSimpleTypeAccess().getTypeKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SimpleType__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SimpleType__Group__1__Impl
	rule__SimpleType__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__SimpleType__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSimpleTypeAccess().getNameAssignment_1()); }
	(rule__SimpleType__NameAssignment_1)
	{ after(grammarAccess.getSimpleTypeAccess().getNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SimpleType__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SimpleType__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SimpleType__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSimpleTypeAccess().getSemicolonKeyword_2()); }
	';'
	{ after(grammarAccess.getSimpleTypeAccess().getSemicolonKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__CompositeType__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CompositeType__Group__0__Impl
	rule__CompositeType__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__CompositeType__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCompositeTypeAccess().getCompositeKeyword_0()); }
	'Composite'
	{ after(grammarAccess.getCompositeTypeAccess().getCompositeKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__CompositeType__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CompositeType__Group__1__Impl
	rule__CompositeType__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__CompositeType__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCompositeTypeAccess().getNameAssignment_1()); }
	(rule__CompositeType__NameAssignment_1)
	{ after(grammarAccess.getCompositeTypeAccess().getNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__CompositeType__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CompositeType__Group__2__Impl
	rule__CompositeType__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__CompositeType__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCompositeTypeAccess().getBaseKeyword_2()); }
	'base'
	{ after(grammarAccess.getCompositeTypeAccess().getBaseKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__CompositeType__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CompositeType__Group__3__Impl
	rule__CompositeType__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__CompositeType__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCompositeTypeAccess().getBaseTypeAssignment_3()); }
	(rule__CompositeType__BaseTypeAssignment_3)
	{ after(grammarAccess.getCompositeTypeAccess().getBaseTypeAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__CompositeType__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__CompositeType__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__CompositeType__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getCompositeTypeAccess().getSemicolonKeyword_4()); }
	';'
	{ after(grammarAccess.getCompositeTypeAccess().getSemicolonKeyword_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__TypeId__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TypeId__Group__0__Impl
	rule__TypeId__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TypeId__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTypeIdAccess().getIDTerminalRuleCall_0()); }
	RULE_ID
	{ after(grammarAccess.getTypeIdAccess().getIDTerminalRuleCall_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__TypeId__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TypeId__Group__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TypeId__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTypeIdAccess().getGroup_1()); }
	(rule__TypeId__Group_1__0)?
	{ after(grammarAccess.getTypeIdAccess().getGroup_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__TypeId__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TypeId__Group_1__0__Impl
	rule__TypeId__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TypeId__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTypeIdAccess().getLessThanSignKeyword_1_0()); }
	'<'
	{ after(grammarAccess.getTypeIdAccess().getLessThanSignKeyword_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__TypeId__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TypeId__Group_1__1__Impl
	rule__TypeId__Group_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__TypeId__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTypeIdAccess().getTypeIdParserRuleCall_1_1()); }
	ruleTypeId
	{ after(grammarAccess.getTypeIdAccess().getTypeIdParserRuleCall_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__TypeId__Group_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TypeId__Group_1__2__Impl
	rule__TypeId__Group_1__3
;
finally {
	restoreStackSize(stackSize);
}

rule__TypeId__Group_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTypeIdAccess().getGroup_1_2()); }
	(rule__TypeId__Group_1_2__0)*
	{ after(grammarAccess.getTypeIdAccess().getGroup_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__TypeId__Group_1__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TypeId__Group_1__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TypeId__Group_1__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTypeIdAccess().getGreaterThanSignKeyword_1_3()); }
	'>'
	{ after(grammarAccess.getTypeIdAccess().getGreaterThanSignKeyword_1_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__TypeId__Group_1_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TypeId__Group_1_2__0__Impl
	rule__TypeId__Group_1_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__TypeId__Group_1_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTypeIdAccess().getCommaKeyword_1_2_0()); }
	','
	{ after(grammarAccess.getTypeIdAccess().getCommaKeyword_1_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__TypeId__Group_1_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__TypeId__Group_1_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__TypeId__Group_1_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getTypeIdAccess().getTypeIdParserRuleCall_1_2_1()); }
	ruleTypeId
	{ after(grammarAccess.getTypeIdAccess().getTypeIdParserRuleCall_1_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Types__TypesAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getTypesAccess().getTypesTypeParserRuleCall_2_0()); }
		ruleType
		{ after(grammarAccess.getTypesAccess().getTypesTypeParserRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SimpleType__NameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSimpleTypeAccess().getNameIDTerminalRuleCall_1_0()); }
		RULE_ID
		{ after(grammarAccess.getSimpleTypeAccess().getNameIDTerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__CompositeType__NameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getCompositeTypeAccess().getNameIDTerminalRuleCall_1_0()); }
		RULE_ID
		{ after(grammarAccess.getCompositeTypeAccess().getNameIDTerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__CompositeType__BaseTypeAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getCompositeTypeAccess().getBaseTypeCompositeTypeEntryParserRuleCall_3_0()); }
		ruleCompositeTypeEntry
		{ after(grammarAccess.getCompositeTypeAccess().getBaseTypeCompositeTypeEntryParserRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__CompositeTypeEntry__DataTypeAssignment
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getCompositeTypeEntryAccess().getDataTypeTypeCrossReference_0()); }
		(
			{ before(grammarAccess.getCompositeTypeEntryAccess().getDataTypeTypeTypeIdParserRuleCall_0_1()); }
			ruleTypeId
			{ after(grammarAccess.getCompositeTypeEntryAccess().getDataTypeTypeTypeIdParserRuleCall_0_1()); }
		)
		{ after(grammarAccess.getCompositeTypeEntryAccess().getDataTypeTypeCrossReference_0()); }
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

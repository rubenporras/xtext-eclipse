/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalBug304681TestLanguage;

options {
	superClass=AbstractInternalContentAssistParser;
	backtrack=true;
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
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug304681TestLanguageGrammarAccess;

}
@parser::members {
	private Bug304681TestLanguageGrammarAccess grammarAccess;

	public void setGrammarAccess(Bug304681TestLanguageGrammarAccess grammarAccess) {
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
		{ before(grammarAccess.getModelAccess().getAlternatives()); }
		(rule__Model__Alternatives)
		{ after(grammarAccess.getModelAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRulePackageDefinition
entryRulePackageDefinition
:
{ before(grammarAccess.getPackageDefinitionRule()); }
	 rulePackageDefinition
{ after(grammarAccess.getPackageDefinitionRule()); } 
	 EOF 
;

// Rule PackageDefinition
rulePackageDefinition 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getPackageDefinitionAccess().getGroup()); }
		(rule__PackageDefinition__Group__0)
		{ after(grammarAccess.getPackageDefinitionAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleObject
entryRuleObject
:
{ before(grammarAccess.getObjectRule()); }
	 ruleObject
{ after(grammarAccess.getObjectRule()); } 
	 EOF 
;

// Rule Object
ruleObject 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getObjectAccess().getGroup()); }
		(rule__Object__Group__0)
		{ after(grammarAccess.getObjectAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleFeature
entryRuleFeature
:
{ before(grammarAccess.getFeatureRule()); }
	 ruleFeature
{ after(grammarAccess.getFeatureRule()); } 
	 EOF 
;

// Rule Feature
ruleFeature 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getFeatureAccess().getAlternatives()); }
		(rule__Feature__Alternatives)
		{ after(grammarAccess.getFeatureAccess().getAlternatives()); }
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

// Entry rule entryRuleReference
entryRuleReference
:
{ before(grammarAccess.getReferenceRule()); }
	 ruleReference
{ after(grammarAccess.getReferenceRule()); } 
	 EOF 
;

// Rule Reference
ruleReference 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getReferenceAccess().getGroup()); }
		(rule__Reference__Group__0)
		{ after(grammarAccess.getReferenceAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRulePackageDefinition2
entryRulePackageDefinition2
:
{ before(grammarAccess.getPackageDefinition2Rule()); }
	 rulePackageDefinition2
{ after(grammarAccess.getPackageDefinition2Rule()); } 
	 EOF 
;

// Rule PackageDefinition2
rulePackageDefinition2 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getPackageDefinition2Access().getGroup()); }
		(rule__PackageDefinition2__Group__0)
		{ after(grammarAccess.getPackageDefinition2Access().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleObject2
entryRuleObject2
:
{ before(grammarAccess.getObject2Rule()); }
	 ruleObject2
{ after(grammarAccess.getObject2Rule()); } 
	 EOF 
;

// Rule Object2
ruleObject2 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getObject2Access().getGroup()); }
		(rule__Object2__Group__0)
		{ after(grammarAccess.getObject2Access().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleFeature2
entryRuleFeature2
:
{ before(grammarAccess.getFeature2Rule()); }
	 ruleFeature2
{ after(grammarAccess.getFeature2Rule()); } 
	 EOF 
;

// Rule Feature2
ruleFeature2 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getFeature2Access().getAlternatives()); }
		(rule__Feature2__Alternatives)
		{ after(grammarAccess.getFeature2Access().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleAttribute2
entryRuleAttribute2
:
{ before(grammarAccess.getAttribute2Rule()); }
	 ruleAttribute2
{ after(grammarAccess.getAttribute2Rule()); } 
	 EOF 
;

// Rule Attribute2
ruleAttribute2 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getAttribute2Access().getGroup()); }
		(rule__Attribute2__Group__0)
		{ after(grammarAccess.getAttribute2Access().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleReference2
entryRuleReference2
:
{ before(grammarAccess.getReference2Rule()); }
	 ruleReference2
{ after(grammarAccess.getReference2Rule()); } 
	 EOF 
;

// Rule Reference2
ruleReference2 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getReference2Access().getGroup()); }
		(rule__Reference2__Group__0)
		{ after(grammarAccess.getReference2Access().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleConstraintDefinition
entryRuleConstraintDefinition
:
{ before(grammarAccess.getConstraintDefinitionRule()); }
	 ruleConstraintDefinition
{ after(grammarAccess.getConstraintDefinitionRule()); } 
	 EOF 
;

// Rule ConstraintDefinition
ruleConstraintDefinition 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getConstraintDefinitionAccess().getGroup()); }
		(rule__ConstraintDefinition__Group__0)
		{ after(grammarAccess.getConstraintDefinitionAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getGroup_0()); }
		(rule__Model__Group_0__0)
		{ after(grammarAccess.getModelAccess().getGroup_0()); }
	)
	|
	(
		{ before(grammarAccess.getModelAccess().getGroup_1()); }
		(rule__Model__Group_1__0)
		{ after(grammarAccess.getModelAccess().getGroup_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Alternatives_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getObjectAccess().getEnabledAssignment_0_0()); }
		(rule__Object__EnabledAssignment_0_0)
		{ after(grammarAccess.getObjectAccess().getEnabledAssignment_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getObjectAccess().getAbstractAssignment_0_1()); }
		(rule__Object__AbstractAssignment_0_1)
		{ after(grammarAccess.getObjectAccess().getAbstractAssignment_0_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Feature__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getFeatureAccess().getAttributeParserRuleCall_0()); }
		ruleAttribute
		{ after(grammarAccess.getFeatureAccess().getAttributeParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getFeatureAccess().getReferenceParserRuleCall_1()); }
		ruleReference
		{ after(grammarAccess.getFeatureAccess().getReferenceParserRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference__Alternatives_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getReferenceAccess().getGroup_4_0()); }
		(rule__Reference__Group_4_0__0)
		{ after(grammarAccess.getReferenceAccess().getGroup_4_0()); }
	)
	|
	(
		{ before(grammarAccess.getReferenceAccess().getSemicolonKeyword_4_1()); }
		';'
		{ after(grammarAccess.getReferenceAccess().getSemicolonKeyword_4_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__Alternatives_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getObject2Access().getEnabledAssignment_0_0()); }
		(rule__Object2__EnabledAssignment_0_0)
		{ after(grammarAccess.getObject2Access().getEnabledAssignment_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getObject2Access().getAbstractAssignment_0_1()); }
		(rule__Object2__AbstractAssignment_0_1)
		{ after(grammarAccess.getObject2Access().getAbstractAssignment_0_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Feature2__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getFeature2Access().getAttribute2ParserRuleCall_0()); }
		ruleAttribute2
		{ after(grammarAccess.getFeature2Access().getAttribute2ParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getFeature2Access().getReference2ParserRuleCall_1()); }
		ruleReference2
		{ after(grammarAccess.getFeature2Access().getReference2ParserRuleCall_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute2__Alternatives_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAttribute2Access().getGroup_3_0()); }
		(rule__Attribute2__Group_3_0__0)
		{ after(grammarAccess.getAttribute2Access().getGroup_3_0()); }
	)
	|
	(
		{ before(grammarAccess.getAttribute2Access().getSemicolonKeyword_3_1()); }
		';'
		{ after(grammarAccess.getAttribute2Access().getSemicolonKeyword_3_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference2__Alternatives_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getReference2Access().getGroup_4_0()); }
		(rule__Reference2__Group_4_0__0)
		{ after(grammarAccess.getReference2Access().getGroup_4_0()); }
	)
	|
	(
		{ before(grammarAccess.getReference2Access().getSemicolonKeyword_4_1()); }
		';'
		{ after(grammarAccess.getReference2Access().getSemicolonKeyword_4_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_0__0__Impl
	rule__Model__Group_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getDigitOneKeyword_0_0()); }
	'1'
	{ after(grammarAccess.getModelAccess().getDigitOneKeyword_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_0__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getDefinitionAssignment_0_1()); }
	(rule__Model__DefinitionAssignment_0_1)
	{ after(grammarAccess.getModelAccess().getDefinitionAssignment_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Model__Group_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1__0__Impl
	rule__Model__Group_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getDigitTwoKeyword_1_0()); }
	'2'
	{ after(grammarAccess.getModelAccess().getDigitTwoKeyword_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_1__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getDefinitionAssignment_1_1()); }
	(rule__Model__DefinitionAssignment_1_1)
	{ after(grammarAccess.getModelAccess().getDefinitionAssignment_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__PackageDefinition__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PackageDefinition__Group__0__Impl
	rule__PackageDefinition__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PackageDefinition__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPackageDefinitionAccess().getPackageDefinitionAction_0()); }
	()
	{ after(grammarAccess.getPackageDefinitionAccess().getPackageDefinitionAction_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PackageDefinition__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PackageDefinition__Group__1__Impl
	rule__PackageDefinition__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__PackageDefinition__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPackageDefinitionAccess().getPackageKeyword_1()); }
	'package'
	{ after(grammarAccess.getPackageDefinitionAccess().getPackageKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PackageDefinition__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PackageDefinition__Group__2__Impl
	rule__PackageDefinition__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__PackageDefinition__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPackageDefinitionAccess().getNamespaceAssignment_2()); }
	(rule__PackageDefinition__NamespaceAssignment_2)
	{ after(grammarAccess.getPackageDefinitionAccess().getNamespaceAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PackageDefinition__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PackageDefinition__Group__3__Impl
	rule__PackageDefinition__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__PackageDefinition__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPackageDefinitionAccess().getSemicolonKeyword_3()); }
	';'
	{ after(grammarAccess.getPackageDefinitionAccess().getSemicolonKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PackageDefinition__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PackageDefinition__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PackageDefinition__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPackageDefinitionAccess().getContentsAssignment_4()); }
	(rule__PackageDefinition__ContentsAssignment_4)*
	{ after(grammarAccess.getPackageDefinitionAccess().getContentsAssignment_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Object__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object__Group__0__Impl
	rule__Object__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObjectAccess().getAlternatives_0()); }
	(rule__Object__Alternatives_0)?
	{ after(grammarAccess.getObjectAccess().getAlternatives_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object__Group__1__Impl
	rule__Object__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObjectAccess().getObjectKeyword_1()); }
	'object'
	{ after(grammarAccess.getObjectAccess().getObjectKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object__Group__2__Impl
	rule__Object__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObjectAccess().getNameAssignment_2()); }
	(rule__Object__NameAssignment_2)
	{ after(grammarAccess.getObjectAccess().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object__Group__3__Impl
	rule__Object__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObjectAccess().getGroup_3()); }
	(rule__Object__Group_3__0)?
	{ after(grammarAccess.getObjectAccess().getGroup_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object__Group__4__Impl
	rule__Object__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObjectAccess().getLeftCurlyBracketKeyword_4()); }
	'{'
	{ after(grammarAccess.getObjectAccess().getLeftCurlyBracketKeyword_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object__Group__5__Impl
	rule__Object__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObjectAccess().getUnorderedGroup_5()); }
	(rule__Object__UnorderedGroup_5)
	{ after(grammarAccess.getObjectAccess().getUnorderedGroup_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group__6
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object__Group__6__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group__6__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObjectAccess().getRightCurlyBracketKeyword_6()); }
	'}'
	{ after(grammarAccess.getObjectAccess().getRightCurlyBracketKeyword_6()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Object__Group_3__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object__Group_3__0__Impl
	rule__Object__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group_3__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObjectAccess().getExtendsKeyword_3_0()); }
	'extends'
	{ after(grammarAccess.getObjectAccess().getExtendsKeyword_3_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group_3__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object__Group_3__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group_3__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObjectAccess().getParentAssignment_3_1()); }
	(rule__Object__ParentAssignment_3_1)
	{ after(grammarAccess.getObjectAccess().getParentAssignment_3_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Object__Group_5_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object__Group_5_0__0__Impl
	rule__Object__Group_5_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group_5_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObjectAccess().getShortDescriptionKeyword_5_0_0()); }
	'shortDescription'
	{ after(grammarAccess.getObjectAccess().getShortDescriptionKeyword_5_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group_5_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object__Group_5_0__1__Impl
	rule__Object__Group_5_0__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group_5_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObjectAccess().getShortDescriptionAssignment_5_0_1()); }
	(rule__Object__ShortDescriptionAssignment_5_0_1)
	{ after(grammarAccess.getObjectAccess().getShortDescriptionAssignment_5_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group_5_0__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object__Group_5_0__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group_5_0__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObjectAccess().getSemicolonKeyword_5_0_2()); }
	';'
	{ after(grammarAccess.getObjectAccess().getSemicolonKeyword_5_0_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Object__Group_5_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object__Group_5_1__0__Impl
	rule__Object__Group_5_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group_5_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObjectAccess().getLongDescriptionKeyword_5_1_0()); }
	'longDescription'
	{ after(grammarAccess.getObjectAccess().getLongDescriptionKeyword_5_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group_5_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object__Group_5_1__1__Impl
	rule__Object__Group_5_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group_5_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObjectAccess().getLongDescriptionAssignment_5_1_1()); }
	(rule__Object__LongDescriptionAssignment_5_1_1)
	{ after(grammarAccess.getObjectAccess().getLongDescriptionAssignment_5_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group_5_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object__Group_5_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group_5_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObjectAccess().getSemicolonKeyword_5_1_2()); }
	';'
	{ after(grammarAccess.getObjectAccess().getSemicolonKeyword_5_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Object__Group_5_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object__Group_5_2__0__Impl
	rule__Object__Group_5_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group_5_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObjectAccess().getSerialUIDKeyword_5_2_0()); }
	'serialUID'
	{ after(grammarAccess.getObjectAccess().getSerialUIDKeyword_5_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group_5_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object__Group_5_2__1__Impl
	rule__Object__Group_5_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group_5_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObjectAccess().getSerialVersionUIDAssignment_5_2_1()); }
	(rule__Object__SerialVersionUIDAssignment_5_2_1)
	{ after(grammarAccess.getObjectAccess().getSerialVersionUIDAssignment_5_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group_5_2__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object__Group_5_2__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group_5_2__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObjectAccess().getSemicolonKeyword_5_2_2()); }
	';'
	{ after(grammarAccess.getObjectAccess().getSemicolonKeyword_5_2_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Object__Group_5_3__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object__Group_5_3__0__Impl
	rule__Object__Group_5_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group_5_3__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObjectAccess().getCloneableAssignment_5_3_0()); }
	(rule__Object__CloneableAssignment_5_3_0)
	{ after(grammarAccess.getObjectAccess().getCloneableAssignment_5_3_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group_5_3__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object__Group_5_3__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group_5_3__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObjectAccess().getSemicolonKeyword_5_3_1()); }
	';'
	{ after(grammarAccess.getObjectAccess().getSemicolonKeyword_5_3_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Object__Group_5_5__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object__Group_5_5__0__Impl
	rule__Object__Group_5_5__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group_5_5__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObjectAccess().getBeforeKeyword_5_5_0()); }
	'before'
	{ after(grammarAccess.getObjectAccess().getBeforeKeyword_5_5_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group_5_5__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object__Group_5_5__1__Impl
	rule__Object__Group_5_5__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group_5_5__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObjectAccess().getFeaturesAssignment_5_5_1()); }
	(rule__Object__FeaturesAssignment_5_5_1)*
	{ after(grammarAccess.getObjectAccess().getFeaturesAssignment_5_5_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group_5_5__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object__Group_5_5__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group_5_5__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObjectAccess().getAfterKeyword_5_5_2()); }
	'after'
	{ after(grammarAccess.getObjectAccess().getAfterKeyword_5_5_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Object__Group_5_6__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object__Group_5_6__0__Impl
	rule__Object__Group_5_6__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group_5_6__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObjectAccess().getOptionalLoopKeyword_5_6_0()); }
	'optionalLoop'
	{ after(grammarAccess.getObjectAccess().getOptionalLoopKeyword_5_6_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group_5_6__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object__Group_5_6__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group_5_6__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObjectAccess().getFeaturesAssignment_5_6_1()); }
	(rule__Object__FeaturesAssignment_5_6_1)*
	{ after(grammarAccess.getObjectAccess().getFeaturesAssignment_5_6_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Object__Group_5_7__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object__Group_5_7__0__Impl
	rule__Object__Group_5_7__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group_5_7__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObjectAccess().getMandatoryLoopKeyword_5_7_0()); }
	'mandatoryLoop'
	{ after(grammarAccess.getObjectAccess().getMandatoryLoopKeyword_5_7_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group_5_7__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object__Group_5_7__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__Group_5_7__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	(
		{ before(grammarAccess.getObjectAccess().getFeaturesAssignment_5_7_1()); }
		(rule__Object__FeaturesAssignment_5_7_1)
		{ after(grammarAccess.getObjectAccess().getFeaturesAssignment_5_7_1()); }
	)
	(
		{ before(grammarAccess.getObjectAccess().getFeaturesAssignment_5_7_1()); }
		(rule__Object__FeaturesAssignment_5_7_1)*
		{ after(grammarAccess.getObjectAccess().getFeaturesAssignment_5_7_1()); }
	)
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
	{ before(grammarAccess.getAttributeAccess().getAttributeKeyword_0()); }
	'Attribute'
	{ after(grammarAccess.getAttributeAccess().getAttributeKeyword_0()); }
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
	{ before(grammarAccess.getAttributeAccess().getTypeAssignment_1()); }
	(rule__Attribute__TypeAssignment_1)
	{ after(grammarAccess.getAttributeAccess().getTypeAssignment_1()); }
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
	rule__Attribute__Group__3
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
	{ before(grammarAccess.getAttributeAccess().getNameAssignment_2()); }
	(rule__Attribute__NameAssignment_2)
	{ after(grammarAccess.getAttributeAccess().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttributeAccess().getSemicolonKeyword_3()); }
	';'
	{ after(grammarAccess.getAttributeAccess().getSemicolonKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Reference__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Reference__Group__0__Impl
	rule__Reference__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReferenceAccess().getReferenceKeyword_0()); }
	'Reference'
	{ after(grammarAccess.getReferenceAccess().getReferenceKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Reference__Group__1__Impl
	rule__Reference__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReferenceAccess().getTypeAssignment_1()); }
	(rule__Reference__TypeAssignment_1)
	{ after(grammarAccess.getReferenceAccess().getTypeAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Reference__Group__2__Impl
	rule__Reference__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReferenceAccess().getManyAssignment_2()); }
	(rule__Reference__ManyAssignment_2)?
	{ after(grammarAccess.getReferenceAccess().getManyAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Reference__Group__3__Impl
	rule__Reference__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReferenceAccess().getNameAssignment_3()); }
	(rule__Reference__NameAssignment_3)
	{ after(grammarAccess.getReferenceAccess().getNameAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Reference__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReferenceAccess().getAlternatives_4()); }
	(rule__Reference__Alternatives_4)
	{ after(grammarAccess.getReferenceAccess().getAlternatives_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Reference__Group_4_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Reference__Group_4_0__0__Impl
	rule__Reference__Group_4_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference__Group_4_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReferenceAccess().getLeftCurlyBracketKeyword_4_0_0()); }
	'{'
	{ after(grammarAccess.getReferenceAccess().getLeftCurlyBracketKeyword_4_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference__Group_4_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Reference__Group_4_0__1__Impl
	rule__Reference__Group_4_0__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference__Group_4_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReferenceAccess().getUnorderedGroup_4_0_1()); }
	(rule__Reference__UnorderedGroup_4_0_1)
	{ after(grammarAccess.getReferenceAccess().getUnorderedGroup_4_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference__Group_4_0__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Reference__Group_4_0__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference__Group_4_0__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReferenceAccess().getRightCurlyBracketKeyword_4_0_2()); }
	'}'
	{ after(grammarAccess.getReferenceAccess().getRightCurlyBracketKeyword_4_0_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Reference__Group_4_0_1_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Reference__Group_4_0_1_0__0__Impl
	rule__Reference__Group_4_0_1_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference__Group_4_0_1_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReferenceAccess().getShortDescriptionKeyword_4_0_1_0_0()); }
	'shortDescription'
	{ after(grammarAccess.getReferenceAccess().getShortDescriptionKeyword_4_0_1_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference__Group_4_0_1_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Reference__Group_4_0_1_0__1__Impl
	rule__Reference__Group_4_0_1_0__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference__Group_4_0_1_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReferenceAccess().getShortDescriptionAssignment_4_0_1_0_1()); }
	(rule__Reference__ShortDescriptionAssignment_4_0_1_0_1)
	{ after(grammarAccess.getReferenceAccess().getShortDescriptionAssignment_4_0_1_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference__Group_4_0_1_0__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Reference__Group_4_0_1_0__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference__Group_4_0_1_0__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReferenceAccess().getSemicolonKeyword_4_0_1_0_2()); }
	';'
	{ after(grammarAccess.getReferenceAccess().getSemicolonKeyword_4_0_1_0_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Reference__Group_4_0_1_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Reference__Group_4_0_1_1__0__Impl
	rule__Reference__Group_4_0_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference__Group_4_0_1_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReferenceAccess().getLongDescriptionKeyword_4_0_1_1_0()); }
	'longDescription'
	{ after(grammarAccess.getReferenceAccess().getLongDescriptionKeyword_4_0_1_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference__Group_4_0_1_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Reference__Group_4_0_1_1__1__Impl
	rule__Reference__Group_4_0_1_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference__Group_4_0_1_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReferenceAccess().getLongDescriptionAssignment_4_0_1_1_1()); }
	(rule__Reference__LongDescriptionAssignment_4_0_1_1_1)
	{ after(grammarAccess.getReferenceAccess().getLongDescriptionAssignment_4_0_1_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference__Group_4_0_1_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Reference__Group_4_0_1_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference__Group_4_0_1_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReferenceAccess().getSemicolonKeyword_4_0_1_1_2()); }
	';'
	{ after(grammarAccess.getReferenceAccess().getSemicolonKeyword_4_0_1_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__PackageDefinition2__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PackageDefinition2__Group__0__Impl
	rule__PackageDefinition2__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__PackageDefinition2__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPackageDefinition2Access().getPackageDefinitionAction_0()); }
	()
	{ after(grammarAccess.getPackageDefinition2Access().getPackageDefinitionAction_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PackageDefinition2__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PackageDefinition2__Group__1__Impl
	rule__PackageDefinition2__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__PackageDefinition2__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPackageDefinition2Access().getPackageKeyword_1()); }
	'package'
	{ after(grammarAccess.getPackageDefinition2Access().getPackageKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PackageDefinition2__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PackageDefinition2__Group__2__Impl
	rule__PackageDefinition2__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__PackageDefinition2__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPackageDefinition2Access().getNamespaceAssignment_2()); }
	(rule__PackageDefinition2__NamespaceAssignment_2)
	{ after(grammarAccess.getPackageDefinition2Access().getNamespaceAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PackageDefinition2__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PackageDefinition2__Group__3__Impl
	rule__PackageDefinition2__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__PackageDefinition2__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPackageDefinition2Access().getSemicolonKeyword_3()); }
	';'
	{ after(grammarAccess.getPackageDefinition2Access().getSemicolonKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__PackageDefinition2__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__PackageDefinition2__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__PackageDefinition2__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getPackageDefinition2Access().getContentsAssignment_4()); }
	(rule__PackageDefinition2__ContentsAssignment_4)*
	{ after(grammarAccess.getPackageDefinition2Access().getContentsAssignment_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Object2__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object2__Group__0__Impl
	rule__Object2__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObject2Access().getAlternatives_0()); }
	(rule__Object2__Alternatives_0)?
	{ after(grammarAccess.getObject2Access().getAlternatives_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object2__Group__1__Impl
	rule__Object2__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObject2Access().getObjectKeyword_1()); }
	'object'
	{ after(grammarAccess.getObject2Access().getObjectKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object2__Group__2__Impl
	rule__Object2__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObject2Access().getNameAssignment_2()); }
	(rule__Object2__NameAssignment_2)
	{ after(grammarAccess.getObject2Access().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object2__Group__3__Impl
	rule__Object2__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObject2Access().getGroup_3()); }
	(rule__Object2__Group_3__0)?
	{ after(grammarAccess.getObject2Access().getGroup_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object2__Group__4__Impl
	rule__Object2__Group__5
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObject2Access().getLeftCurlyBracketKeyword_4()); }
	'{'
	{ after(grammarAccess.getObject2Access().getLeftCurlyBracketKeyword_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__Group__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object2__Group__5__Impl
	rule__Object2__Group__6
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__Group__5__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObject2Access().getUnorderedGroup_5()); }
	(rule__Object2__UnorderedGroup_5)
	{ after(grammarAccess.getObject2Access().getUnorderedGroup_5()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__Group__6
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object2__Group__6__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__Group__6__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObject2Access().getRightCurlyBracketKeyword_6()); }
	'}'
	{ after(grammarAccess.getObject2Access().getRightCurlyBracketKeyword_6()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Object2__Group_3__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object2__Group_3__0__Impl
	rule__Object2__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__Group_3__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObject2Access().getExtendsKeyword_3_0()); }
	'extends'
	{ after(grammarAccess.getObject2Access().getExtendsKeyword_3_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__Group_3__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object2__Group_3__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__Group_3__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObject2Access().getParentAssignment_3_1()); }
	(rule__Object2__ParentAssignment_3_1)
	{ after(grammarAccess.getObject2Access().getParentAssignment_3_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Object2__Group_5_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object2__Group_5_0__0__Impl
	rule__Object2__Group_5_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__Group_5_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObject2Access().getShortDescriptionKeyword_5_0_0()); }
	'shortDescription'
	{ after(grammarAccess.getObject2Access().getShortDescriptionKeyword_5_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__Group_5_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object2__Group_5_0__1__Impl
	rule__Object2__Group_5_0__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__Group_5_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObject2Access().getShortDescriptionAssignment_5_0_1()); }
	(rule__Object2__ShortDescriptionAssignment_5_0_1)
	{ after(grammarAccess.getObject2Access().getShortDescriptionAssignment_5_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__Group_5_0__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object2__Group_5_0__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__Group_5_0__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObject2Access().getSemicolonKeyword_5_0_2()); }
	';'
	{ after(grammarAccess.getObject2Access().getSemicolonKeyword_5_0_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Object2__Group_5_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object2__Group_5_1__0__Impl
	rule__Object2__Group_5_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__Group_5_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObject2Access().getLongDescriptionKeyword_5_1_0()); }
	'longDescription'
	{ after(grammarAccess.getObject2Access().getLongDescriptionKeyword_5_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__Group_5_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object2__Group_5_1__1__Impl
	rule__Object2__Group_5_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__Group_5_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObject2Access().getLongDescriptionAssignment_5_1_1()); }
	(rule__Object2__LongDescriptionAssignment_5_1_1)
	{ after(grammarAccess.getObject2Access().getLongDescriptionAssignment_5_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__Group_5_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object2__Group_5_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__Group_5_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObject2Access().getSemicolonKeyword_5_1_2()); }
	';'
	{ after(grammarAccess.getObject2Access().getSemicolonKeyword_5_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Object2__Group_5_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object2__Group_5_2__0__Impl
	rule__Object2__Group_5_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__Group_5_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObject2Access().getSerialUIDKeyword_5_2_0()); }
	'serialUID'
	{ after(grammarAccess.getObject2Access().getSerialUIDKeyword_5_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__Group_5_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object2__Group_5_2__1__Impl
	rule__Object2__Group_5_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__Group_5_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObject2Access().getSerialVersionUIDAssignment_5_2_1()); }
	(rule__Object2__SerialVersionUIDAssignment_5_2_1)
	{ after(grammarAccess.getObject2Access().getSerialVersionUIDAssignment_5_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__Group_5_2__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object2__Group_5_2__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__Group_5_2__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObject2Access().getSemicolonKeyword_5_2_2()); }
	';'
	{ after(grammarAccess.getObject2Access().getSemicolonKeyword_5_2_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Object2__Group_5_3__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object2__Group_5_3__0__Impl
	rule__Object2__Group_5_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__Group_5_3__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObject2Access().getCloneableAssignment_5_3_0()); }
	(rule__Object2__CloneableAssignment_5_3_0)
	{ after(grammarAccess.getObject2Access().getCloneableAssignment_5_3_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__Group_5_3__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object2__Group_5_3__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__Group_5_3__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getObject2Access().getSemicolonKeyword_5_3_1()); }
	';'
	{ after(grammarAccess.getObject2Access().getSemicolonKeyword_5_3_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Attribute2__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute2__Group__0__Impl
	rule__Attribute2__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute2__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttribute2Access().getAttributeKeyword_0()); }
	'Attribute'
	{ after(grammarAccess.getAttribute2Access().getAttributeKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute2__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute2__Group__1__Impl
	rule__Attribute2__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute2__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttribute2Access().getTypeAssignment_1()); }
	(rule__Attribute2__TypeAssignment_1)
	{ after(grammarAccess.getAttribute2Access().getTypeAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute2__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute2__Group__2__Impl
	rule__Attribute2__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute2__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttribute2Access().getNameAssignment_2()); }
	(rule__Attribute2__NameAssignment_2)
	{ after(grammarAccess.getAttribute2Access().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute2__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute2__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute2__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttribute2Access().getAlternatives_3()); }
	(rule__Attribute2__Alternatives_3)
	{ after(grammarAccess.getAttribute2Access().getAlternatives_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Attribute2__Group_3_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute2__Group_3_0__0__Impl
	rule__Attribute2__Group_3_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute2__Group_3_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttribute2Access().getLeftCurlyBracketKeyword_3_0_0()); }
	'{'
	{ after(grammarAccess.getAttribute2Access().getLeftCurlyBracketKeyword_3_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute2__Group_3_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute2__Group_3_0__1__Impl
	rule__Attribute2__Group_3_0__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute2__Group_3_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttribute2Access().getUnorderedGroup_3_0_1()); }
	(rule__Attribute2__UnorderedGroup_3_0_1)
	{ after(grammarAccess.getAttribute2Access().getUnorderedGroup_3_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute2__Group_3_0__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute2__Group_3_0__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute2__Group_3_0__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttribute2Access().getRightCurlyBracketKeyword_3_0_2()); }
	'}'
	{ after(grammarAccess.getAttribute2Access().getRightCurlyBracketKeyword_3_0_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Attribute2__Group_3_0_1_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute2__Group_3_0_1_0__0__Impl
	rule__Attribute2__Group_3_0_1_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute2__Group_3_0_1_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttribute2Access().getShortDescriptionKeyword_3_0_1_0_0()); }
	'shortDescription'
	{ after(grammarAccess.getAttribute2Access().getShortDescriptionKeyword_3_0_1_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute2__Group_3_0_1_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute2__Group_3_0_1_0__1__Impl
	rule__Attribute2__Group_3_0_1_0__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute2__Group_3_0_1_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttribute2Access().getShortDescriptionAssignment_3_0_1_0_1()); }
	(rule__Attribute2__ShortDescriptionAssignment_3_0_1_0_1)
	{ after(grammarAccess.getAttribute2Access().getShortDescriptionAssignment_3_0_1_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute2__Group_3_0_1_0__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute2__Group_3_0_1_0__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute2__Group_3_0_1_0__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttribute2Access().getSemicolonKeyword_3_0_1_0_2()); }
	';'
	{ after(grammarAccess.getAttribute2Access().getSemicolonKeyword_3_0_1_0_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Attribute2__Group_3_0_1_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute2__Group_3_0_1_1__0__Impl
	rule__Attribute2__Group_3_0_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute2__Group_3_0_1_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttribute2Access().getLongDescriptionKeyword_3_0_1_1_0()); }
	'longDescription'
	{ after(grammarAccess.getAttribute2Access().getLongDescriptionKeyword_3_0_1_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute2__Group_3_0_1_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute2__Group_3_0_1_1__1__Impl
	rule__Attribute2__Group_3_0_1_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute2__Group_3_0_1_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttribute2Access().getLongDescriptionAssignment_3_0_1_1_1()); }
	(rule__Attribute2__LongDescriptionAssignment_3_0_1_1_1)
	{ after(grammarAccess.getAttribute2Access().getLongDescriptionAssignment_3_0_1_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute2__Group_3_0_1_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute2__Group_3_0_1_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute2__Group_3_0_1_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttribute2Access().getSemicolonKeyword_3_0_1_1_2()); }
	';'
	{ after(grammarAccess.getAttribute2Access().getSemicolonKeyword_3_0_1_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Attribute2__Group_3_0_1_3__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute2__Group_3_0_1_3__0__Impl
	rule__Attribute2__Group_3_0_1_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute2__Group_3_0_1_3__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttribute2Access().getRequiredAssignment_3_0_1_3_0()); }
	(rule__Attribute2__RequiredAssignment_3_0_1_3_0)
	{ after(grammarAccess.getAttribute2Access().getRequiredAssignment_3_0_1_3_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute2__Group_3_0_1_3__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute2__Group_3_0_1_3__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute2__Group_3_0_1_3__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttribute2Access().getSemicolonKeyword_3_0_1_3_1()); }
	';'
	{ after(grammarAccess.getAttribute2Access().getSemicolonKeyword_3_0_1_3_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Attribute2__Group_3_0_1_4__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute2__Group_3_0_1_4__0__Impl
	rule__Attribute2__Group_3_0_1_4__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute2__Group_3_0_1_4__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttribute2Access().getTechnicalAssignment_3_0_1_4_0()); }
	(rule__Attribute2__TechnicalAssignment_3_0_1_4_0)
	{ after(grammarAccess.getAttribute2Access().getTechnicalAssignment_3_0_1_4_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute2__Group_3_0_1_4__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute2__Group_3_0_1_4__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute2__Group_3_0_1_4__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getAttribute2Access().getSemicolonKeyword_3_0_1_4_1()); }
	';'
	{ after(grammarAccess.getAttribute2Access().getSemicolonKeyword_3_0_1_4_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Reference2__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Reference2__Group__0__Impl
	rule__Reference2__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference2__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReference2Access().getReferenceKeyword_0()); }
	'Reference'
	{ after(grammarAccess.getReference2Access().getReferenceKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference2__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Reference2__Group__1__Impl
	rule__Reference2__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference2__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReference2Access().getTypeAssignment_1()); }
	(rule__Reference2__TypeAssignment_1)
	{ after(grammarAccess.getReference2Access().getTypeAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference2__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Reference2__Group__2__Impl
	rule__Reference2__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference2__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReference2Access().getManyAssignment_2()); }
	(rule__Reference2__ManyAssignment_2)?
	{ after(grammarAccess.getReference2Access().getManyAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference2__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Reference2__Group__3__Impl
	rule__Reference2__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference2__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReference2Access().getNameAssignment_3()); }
	(rule__Reference2__NameAssignment_3)
	{ after(grammarAccess.getReference2Access().getNameAssignment_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference2__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Reference2__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference2__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReference2Access().getAlternatives_4()); }
	(rule__Reference2__Alternatives_4)
	{ after(grammarAccess.getReference2Access().getAlternatives_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Reference2__Group_4_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Reference2__Group_4_0__0__Impl
	rule__Reference2__Group_4_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference2__Group_4_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReference2Access().getLeftCurlyBracketKeyword_4_0_0()); }
	'{'
	{ after(grammarAccess.getReference2Access().getLeftCurlyBracketKeyword_4_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference2__Group_4_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Reference2__Group_4_0__1__Impl
	rule__Reference2__Group_4_0__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference2__Group_4_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReference2Access().getUnorderedGroup_4_0_1()); }
	(rule__Reference2__UnorderedGroup_4_0_1)
	{ after(grammarAccess.getReference2Access().getUnorderedGroup_4_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference2__Group_4_0__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Reference2__Group_4_0__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference2__Group_4_0__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReference2Access().getRightCurlyBracketKeyword_4_0_2()); }
	'}'
	{ after(grammarAccess.getReference2Access().getRightCurlyBracketKeyword_4_0_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Reference2__Group_4_0_1_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Reference2__Group_4_0_1_0__0__Impl
	rule__Reference2__Group_4_0_1_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference2__Group_4_0_1_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReference2Access().getShortDescriptionKeyword_4_0_1_0_0()); }
	'shortDescription'
	{ after(grammarAccess.getReference2Access().getShortDescriptionKeyword_4_0_1_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference2__Group_4_0_1_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Reference2__Group_4_0_1_0__1__Impl
	rule__Reference2__Group_4_0_1_0__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference2__Group_4_0_1_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReference2Access().getShortDescriptionAssignment_4_0_1_0_1()); }
	(rule__Reference2__ShortDescriptionAssignment_4_0_1_0_1)
	{ after(grammarAccess.getReference2Access().getShortDescriptionAssignment_4_0_1_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference2__Group_4_0_1_0__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Reference2__Group_4_0_1_0__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference2__Group_4_0_1_0__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReference2Access().getSemicolonKeyword_4_0_1_0_2()); }
	';'
	{ after(grammarAccess.getReference2Access().getSemicolonKeyword_4_0_1_0_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Reference2__Group_4_0_1_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Reference2__Group_4_0_1_1__0__Impl
	rule__Reference2__Group_4_0_1_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference2__Group_4_0_1_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReference2Access().getLongDescriptionKeyword_4_0_1_1_0()); }
	'longDescription'
	{ after(grammarAccess.getReference2Access().getLongDescriptionKeyword_4_0_1_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference2__Group_4_0_1_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Reference2__Group_4_0_1_1__1__Impl
	rule__Reference2__Group_4_0_1_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference2__Group_4_0_1_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReference2Access().getLongDescriptionAssignment_4_0_1_1_1()); }
	(rule__Reference2__LongDescriptionAssignment_4_0_1_1_1)
	{ after(grammarAccess.getReference2Access().getLongDescriptionAssignment_4_0_1_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference2__Group_4_0_1_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Reference2__Group_4_0_1_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference2__Group_4_0_1_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getReference2Access().getSemicolonKeyword_4_0_1_1_2()); }
	';'
	{ after(grammarAccess.getReference2Access().getSemicolonKeyword_4_0_1_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ConstraintDefinition__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ConstraintDefinition__Group__0__Impl
	rule__ConstraintDefinition__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ConstraintDefinition__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConstraintDefinitionAccess().getConstraintKeyword_0()); }
	'constraint'
	{ after(grammarAccess.getConstraintDefinitionAccess().getConstraintKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ConstraintDefinition__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ConstraintDefinition__Group__1__Impl
	rule__ConstraintDefinition__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ConstraintDefinition__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConstraintDefinitionAccess().getTypeAssignment_1()); }
	(rule__ConstraintDefinition__TypeAssignment_1)
	{ after(grammarAccess.getConstraintDefinitionAccess().getTypeAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ConstraintDefinition__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ConstraintDefinition__Group__2__Impl
	rule__ConstraintDefinition__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__ConstraintDefinition__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConstraintDefinitionAccess().getLeftCurlyBracketKeyword_2()); }
	'{'
	{ after(grammarAccess.getConstraintDefinitionAccess().getLeftCurlyBracketKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ConstraintDefinition__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ConstraintDefinition__Group__3__Impl
	rule__ConstraintDefinition__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__ConstraintDefinition__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConstraintDefinitionAccess().getUnorderedGroup_3()); }
	(rule__ConstraintDefinition__UnorderedGroup_3)
	{ after(grammarAccess.getConstraintDefinitionAccess().getUnorderedGroup_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ConstraintDefinition__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ConstraintDefinition__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ConstraintDefinition__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConstraintDefinitionAccess().getRightCurlyBracketKeyword_4()); }
	'}'
	{ after(grammarAccess.getConstraintDefinitionAccess().getRightCurlyBracketKeyword_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ConstraintDefinition__Group_3_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ConstraintDefinition__Group_3_0__0__Impl
	rule__ConstraintDefinition__Group_3_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ConstraintDefinition__Group_3_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConstraintDefinitionAccess().getParametersKeyword_3_0_0()); }
	'parameters'
	{ after(grammarAccess.getConstraintDefinitionAccess().getParametersKeyword_3_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ConstraintDefinition__Group_3_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ConstraintDefinition__Group_3_0__1__Impl
	rule__ConstraintDefinition__Group_3_0__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ConstraintDefinition__Group_3_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConstraintDefinitionAccess().getParametersAssignment_3_0_1()); }
	(rule__ConstraintDefinition__ParametersAssignment_3_0_1)*
	{ after(grammarAccess.getConstraintDefinitionAccess().getParametersAssignment_3_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ConstraintDefinition__Group_3_0__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ConstraintDefinition__Group_3_0__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ConstraintDefinition__Group_3_0__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConstraintDefinitionAccess().getSemicolonKeyword_3_0_2()); }
	';'
	{ after(grammarAccess.getConstraintDefinitionAccess().getSemicolonKeyword_3_0_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__ConstraintDefinition__Group_3_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ConstraintDefinition__Group_3_1__0__Impl
	rule__ConstraintDefinition__Group_3_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__ConstraintDefinition__Group_3_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConstraintDefinitionAccess().getMessageKeyword_3_1_0()); }
	'message'
	{ after(grammarAccess.getConstraintDefinitionAccess().getMessageKeyword_3_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ConstraintDefinition__Group_3_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ConstraintDefinition__Group_3_1__1__Impl
	rule__ConstraintDefinition__Group_3_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__ConstraintDefinition__Group_3_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConstraintDefinitionAccess().getMessageAssignment_3_1_1()); }
	(rule__ConstraintDefinition__MessageAssignment_3_1_1)
	{ after(grammarAccess.getConstraintDefinitionAccess().getMessageAssignment_3_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__ConstraintDefinition__Group_3_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ConstraintDefinition__Group_3_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__ConstraintDefinition__Group_3_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getConstraintDefinitionAccess().getSemicolonKeyword_3_1_2()); }
	';'
	{ after(grammarAccess.getConstraintDefinitionAccess().getSemicolonKeyword_3_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Object__UnorderedGroup_5
	@init {
		int stackSize = keepStackSize();
		getUnorderedGroupHelper().enter(grammarAccess.getObjectAccess().getUnorderedGroup_5());
	}
:
	rule__Object__UnorderedGroup_5__0
	?
;
finally {
	getUnorderedGroupHelper().leave(grammarAccess.getObjectAccess().getUnorderedGroup_5());
	restoreStackSize(stackSize);
}

rule__Object__UnorderedGroup_5__Impl
	@init {
		int stackSize = keepStackSize();
		boolean selected = false;
	}
:
		(
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getObjectAccess().getUnorderedGroup_5(), 0)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getObjectAccess().getUnorderedGroup_5(), 0);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getObjectAccess().getGroup_5_0()); }
					(rule__Object__Group_5_0__0)
					{ after(grammarAccess.getObjectAccess().getGroup_5_0()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getObjectAccess().getUnorderedGroup_5(), 1)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getObjectAccess().getUnorderedGroup_5(), 1);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getObjectAccess().getGroup_5_1()); }
					(rule__Object__Group_5_1__0)
					{ after(grammarAccess.getObjectAccess().getGroup_5_1()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getObjectAccess().getUnorderedGroup_5(), 2)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getObjectAccess().getUnorderedGroup_5(), 2);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getObjectAccess().getGroup_5_2()); }
					(rule__Object__Group_5_2__0)
					{ after(grammarAccess.getObjectAccess().getGroup_5_2()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getObjectAccess().getUnorderedGroup_5(), 3)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getObjectAccess().getUnorderedGroup_5(), 3);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getObjectAccess().getGroup_5_3()); }
					(rule__Object__Group_5_3__0)
					{ after(grammarAccess.getObjectAccess().getGroup_5_3()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getObjectAccess().getUnorderedGroup_5(), 4)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getObjectAccess().getUnorderedGroup_5(), 4);
				}
				{
					selected = true;
				}
				(
					(
						{ before(grammarAccess.getObjectAccess().getFeaturesAssignment_5_4()); }
						(rule__Object__FeaturesAssignment_5_4)
						{ after(grammarAccess.getObjectAccess().getFeaturesAssignment_5_4()); }
					)
					(
						{ before(grammarAccess.getObjectAccess().getFeaturesAssignment_5_4()); }
						((rule__Object__FeaturesAssignment_5_4)=>rule__Object__FeaturesAssignment_5_4)*
						{ after(grammarAccess.getObjectAccess().getFeaturesAssignment_5_4()); }
					)
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getObjectAccess().getUnorderedGroup_5(), 5)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getObjectAccess().getUnorderedGroup_5(), 5);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getObjectAccess().getGroup_5_5()); }
					(rule__Object__Group_5_5__0)
					{ after(grammarAccess.getObjectAccess().getGroup_5_5()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getObjectAccess().getUnorderedGroup_5(), 6)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getObjectAccess().getUnorderedGroup_5(), 6);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getObjectAccess().getGroup_5_6()); }
					(rule__Object__Group_5_6__0)
					{ after(grammarAccess.getObjectAccess().getGroup_5_6()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getObjectAccess().getUnorderedGroup_5(), 7)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getObjectAccess().getUnorderedGroup_5(), 7);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getObjectAccess().getGroup_5_7()); }
					(rule__Object__Group_5_7__0)
					{ after(grammarAccess.getObjectAccess().getGroup_5_7()); }
				)
			)
		)
		)
;
finally {
	if (selected)
		getUnorderedGroupHelper().returnFromSelection(grammarAccess.getObjectAccess().getUnorderedGroup_5());
	restoreStackSize(stackSize);
}

rule__Object__UnorderedGroup_5__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object__UnorderedGroup_5__Impl
	rule__Object__UnorderedGroup_5__1?
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__UnorderedGroup_5__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object__UnorderedGroup_5__Impl
	rule__Object__UnorderedGroup_5__2?
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__UnorderedGroup_5__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object__UnorderedGroup_5__Impl
	rule__Object__UnorderedGroup_5__3?
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__UnorderedGroup_5__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object__UnorderedGroup_5__Impl
	rule__Object__UnorderedGroup_5__4?
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__UnorderedGroup_5__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object__UnorderedGroup_5__Impl
	rule__Object__UnorderedGroup_5__5?
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__UnorderedGroup_5__5
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object__UnorderedGroup_5__Impl
	rule__Object__UnorderedGroup_5__6?
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__UnorderedGroup_5__6
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object__UnorderedGroup_5__Impl
	rule__Object__UnorderedGroup_5__7?
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__UnorderedGroup_5__7
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object__UnorderedGroup_5__Impl
;
finally {
	restoreStackSize(stackSize);
}


rule__Reference__UnorderedGroup_4_0_1
	@init {
		int stackSize = keepStackSize();
		getUnorderedGroupHelper().enter(grammarAccess.getReferenceAccess().getUnorderedGroup_4_0_1());
	}
:
	rule__Reference__UnorderedGroup_4_0_1__0
	?
;
finally {
	getUnorderedGroupHelper().leave(grammarAccess.getReferenceAccess().getUnorderedGroup_4_0_1());
	restoreStackSize(stackSize);
}

rule__Reference__UnorderedGroup_4_0_1__Impl
	@init {
		int stackSize = keepStackSize();
		boolean selected = false;
	}
:
		(
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getReferenceAccess().getUnorderedGroup_4_0_1(), 0)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getReferenceAccess().getUnorderedGroup_4_0_1(), 0);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getReferenceAccess().getGroup_4_0_1_0()); }
					(rule__Reference__Group_4_0_1_0__0)
					{ after(grammarAccess.getReferenceAccess().getGroup_4_0_1_0()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getReferenceAccess().getUnorderedGroup_4_0_1(), 1)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getReferenceAccess().getUnorderedGroup_4_0_1(), 1);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getReferenceAccess().getGroup_4_0_1_1()); }
					(rule__Reference__Group_4_0_1_1__0)
					{ after(grammarAccess.getReferenceAccess().getGroup_4_0_1_1()); }
				)
			)
		)
		)
;
finally {
	if (selected)
		getUnorderedGroupHelper().returnFromSelection(grammarAccess.getReferenceAccess().getUnorderedGroup_4_0_1());
	restoreStackSize(stackSize);
}

rule__Reference__UnorderedGroup_4_0_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Reference__UnorderedGroup_4_0_1__Impl
	rule__Reference__UnorderedGroup_4_0_1__1?
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference__UnorderedGroup_4_0_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Reference__UnorderedGroup_4_0_1__Impl
;
finally {
	restoreStackSize(stackSize);
}


rule__Object2__UnorderedGroup_5
	@init {
		int stackSize = keepStackSize();
		getUnorderedGroupHelper().enter(grammarAccess.getObject2Access().getUnorderedGroup_5());
	}
:
	rule__Object2__UnorderedGroup_5__0
	?
;
finally {
	getUnorderedGroupHelper().leave(grammarAccess.getObject2Access().getUnorderedGroup_5());
	restoreStackSize(stackSize);
}

rule__Object2__UnorderedGroup_5__Impl
	@init {
		int stackSize = keepStackSize();
		boolean selected = false;
	}
:
		(
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getObject2Access().getUnorderedGroup_5(), 0)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getObject2Access().getUnorderedGroup_5(), 0);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getObject2Access().getGroup_5_0()); }
					(rule__Object2__Group_5_0__0)
					{ after(grammarAccess.getObject2Access().getGroup_5_0()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getObject2Access().getUnorderedGroup_5(), 1)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getObject2Access().getUnorderedGroup_5(), 1);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getObject2Access().getGroup_5_1()); }
					(rule__Object2__Group_5_1__0)
					{ after(grammarAccess.getObject2Access().getGroup_5_1()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getObject2Access().getUnorderedGroup_5(), 2)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getObject2Access().getUnorderedGroup_5(), 2);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getObject2Access().getGroup_5_2()); }
					(rule__Object2__Group_5_2__0)
					{ after(grammarAccess.getObject2Access().getGroup_5_2()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getObject2Access().getUnorderedGroup_5(), 3)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getObject2Access().getUnorderedGroup_5(), 3);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getObject2Access().getGroup_5_3()); }
					(rule__Object2__Group_5_3__0)
					{ after(grammarAccess.getObject2Access().getGroup_5_3()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getObject2Access().getUnorderedGroup_5(), 4)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getObject2Access().getUnorderedGroup_5(), 4);
				}
				{
					selected = true;
				}
				(
					(
						{ before(grammarAccess.getObject2Access().getFeaturesAssignment_5_4()); }
						(rule__Object2__FeaturesAssignment_5_4)
						{ after(grammarAccess.getObject2Access().getFeaturesAssignment_5_4()); }
					)
					(
						{ before(grammarAccess.getObject2Access().getFeaturesAssignment_5_4()); }
						((rule__Object2__FeaturesAssignment_5_4)=>rule__Object2__FeaturesAssignment_5_4)*
						{ after(grammarAccess.getObject2Access().getFeaturesAssignment_5_4()); }
					)
				)
			)
		)
		)
;
finally {
	if (selected)
		getUnorderedGroupHelper().returnFromSelection(grammarAccess.getObject2Access().getUnorderedGroup_5());
	restoreStackSize(stackSize);
}

rule__Object2__UnorderedGroup_5__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object2__UnorderedGroup_5__Impl
	rule__Object2__UnorderedGroup_5__1?
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__UnorderedGroup_5__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object2__UnorderedGroup_5__Impl
	rule__Object2__UnorderedGroup_5__2?
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__UnorderedGroup_5__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object2__UnorderedGroup_5__Impl
	rule__Object2__UnorderedGroup_5__3?
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__UnorderedGroup_5__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object2__UnorderedGroup_5__Impl
	rule__Object2__UnorderedGroup_5__4?
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__UnorderedGroup_5__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Object2__UnorderedGroup_5__Impl
;
finally {
	restoreStackSize(stackSize);
}


rule__Attribute2__UnorderedGroup_3_0_1
	@init {
		int stackSize = keepStackSize();
		getUnorderedGroupHelper().enter(grammarAccess.getAttribute2Access().getUnorderedGroup_3_0_1());
	}
:
	rule__Attribute2__UnorderedGroup_3_0_1__0
	?
;
finally {
	getUnorderedGroupHelper().leave(grammarAccess.getAttribute2Access().getUnorderedGroup_3_0_1());
	restoreStackSize(stackSize);
}

rule__Attribute2__UnorderedGroup_3_0_1__Impl
	@init {
		int stackSize = keepStackSize();
		boolean selected = false;
	}
:
		(
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getAttribute2Access().getUnorderedGroup_3_0_1(), 0)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getAttribute2Access().getUnorderedGroup_3_0_1(), 0);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getAttribute2Access().getGroup_3_0_1_0()); }
					(rule__Attribute2__Group_3_0_1_0__0)
					{ after(grammarAccess.getAttribute2Access().getGroup_3_0_1_0()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getAttribute2Access().getUnorderedGroup_3_0_1(), 1)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getAttribute2Access().getUnorderedGroup_3_0_1(), 1);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getAttribute2Access().getGroup_3_0_1_1()); }
					(rule__Attribute2__Group_3_0_1_1__0)
					{ after(grammarAccess.getAttribute2Access().getGroup_3_0_1_1()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getAttribute2Access().getUnorderedGroup_3_0_1(), 2)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getAttribute2Access().getUnorderedGroup_3_0_1(), 2);
				}
				{
					selected = true;
				}
				(
					(
						{ before(grammarAccess.getAttribute2Access().getConstraintDefinitionsAssignment_3_0_1_2()); }
						(rule__Attribute2__ConstraintDefinitionsAssignment_3_0_1_2)
						{ after(grammarAccess.getAttribute2Access().getConstraintDefinitionsAssignment_3_0_1_2()); }
					)
					(
						{ before(grammarAccess.getAttribute2Access().getConstraintDefinitionsAssignment_3_0_1_2()); }
						((rule__Attribute2__ConstraintDefinitionsAssignment_3_0_1_2)=>rule__Attribute2__ConstraintDefinitionsAssignment_3_0_1_2)*
						{ after(grammarAccess.getAttribute2Access().getConstraintDefinitionsAssignment_3_0_1_2()); }
					)
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getAttribute2Access().getUnorderedGroup_3_0_1(), 3)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getAttribute2Access().getUnorderedGroup_3_0_1(), 3);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getAttribute2Access().getGroup_3_0_1_3()); }
					(rule__Attribute2__Group_3_0_1_3__0)
					{ after(grammarAccess.getAttribute2Access().getGroup_3_0_1_3()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getAttribute2Access().getUnorderedGroup_3_0_1(), 4)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getAttribute2Access().getUnorderedGroup_3_0_1(), 4);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getAttribute2Access().getGroup_3_0_1_4()); }
					(rule__Attribute2__Group_3_0_1_4__0)
					{ after(grammarAccess.getAttribute2Access().getGroup_3_0_1_4()); }
				)
			)
		)
		)
;
finally {
	if (selected)
		getUnorderedGroupHelper().returnFromSelection(grammarAccess.getAttribute2Access().getUnorderedGroup_3_0_1());
	restoreStackSize(stackSize);
}

rule__Attribute2__UnorderedGroup_3_0_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute2__UnorderedGroup_3_0_1__Impl
	rule__Attribute2__UnorderedGroup_3_0_1__1?
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute2__UnorderedGroup_3_0_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute2__UnorderedGroup_3_0_1__Impl
	rule__Attribute2__UnorderedGroup_3_0_1__2?
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute2__UnorderedGroup_3_0_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute2__UnorderedGroup_3_0_1__Impl
	rule__Attribute2__UnorderedGroup_3_0_1__3?
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute2__UnorderedGroup_3_0_1__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute2__UnorderedGroup_3_0_1__Impl
	rule__Attribute2__UnorderedGroup_3_0_1__4?
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute2__UnorderedGroup_3_0_1__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Attribute2__UnorderedGroup_3_0_1__Impl
;
finally {
	restoreStackSize(stackSize);
}


rule__Reference2__UnorderedGroup_4_0_1
	@init {
		int stackSize = keepStackSize();
		getUnorderedGroupHelper().enter(grammarAccess.getReference2Access().getUnorderedGroup_4_0_1());
	}
:
	rule__Reference2__UnorderedGroup_4_0_1__0
	?
;
finally {
	getUnorderedGroupHelper().leave(grammarAccess.getReference2Access().getUnorderedGroup_4_0_1());
	restoreStackSize(stackSize);
}

rule__Reference2__UnorderedGroup_4_0_1__Impl
	@init {
		int stackSize = keepStackSize();
		boolean selected = false;
	}
:
		(
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getReference2Access().getUnorderedGroup_4_0_1(), 0)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getReference2Access().getUnorderedGroup_4_0_1(), 0);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getReference2Access().getGroup_4_0_1_0()); }
					(rule__Reference2__Group_4_0_1_0__0)
					{ after(grammarAccess.getReference2Access().getGroup_4_0_1_0()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getReference2Access().getUnorderedGroup_4_0_1(), 1)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getReference2Access().getUnorderedGroup_4_0_1(), 1);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getReference2Access().getGroup_4_0_1_1()); }
					(rule__Reference2__Group_4_0_1_1__0)
					{ after(grammarAccess.getReference2Access().getGroup_4_0_1_1()); }
				)
			)
		)
		)
;
finally {
	if (selected)
		getUnorderedGroupHelper().returnFromSelection(grammarAccess.getReference2Access().getUnorderedGroup_4_0_1());
	restoreStackSize(stackSize);
}

rule__Reference2__UnorderedGroup_4_0_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Reference2__UnorderedGroup_4_0_1__Impl
	rule__Reference2__UnorderedGroup_4_0_1__1?
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference2__UnorderedGroup_4_0_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Reference2__UnorderedGroup_4_0_1__Impl
;
finally {
	restoreStackSize(stackSize);
}


rule__ConstraintDefinition__UnorderedGroup_3
	@init {
		int stackSize = keepStackSize();
		getUnorderedGroupHelper().enter(grammarAccess.getConstraintDefinitionAccess().getUnorderedGroup_3());
	}
:
	rule__ConstraintDefinition__UnorderedGroup_3__0
	{getUnorderedGroupHelper().canLeave(grammarAccess.getConstraintDefinitionAccess().getUnorderedGroup_3())}?
;
finally {
	getUnorderedGroupHelper().leave(grammarAccess.getConstraintDefinitionAccess().getUnorderedGroup_3());
	restoreStackSize(stackSize);
}

rule__ConstraintDefinition__UnorderedGroup_3__Impl
	@init {
		int stackSize = keepStackSize();
		boolean selected = false;
	}
:
		(
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getConstraintDefinitionAccess().getUnorderedGroup_3(), 0)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getConstraintDefinitionAccess().getUnorderedGroup_3(), 0);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getConstraintDefinitionAccess().getGroup_3_0()); }
					(rule__ConstraintDefinition__Group_3_0__0)
					{ after(grammarAccess.getConstraintDefinitionAccess().getGroup_3_0()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getConstraintDefinitionAccess().getUnorderedGroup_3(), 1)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getConstraintDefinitionAccess().getUnorderedGroup_3(), 1);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getConstraintDefinitionAccess().getGroup_3_1()); }
					(rule__ConstraintDefinition__Group_3_1__0)
					{ after(grammarAccess.getConstraintDefinitionAccess().getGroup_3_1()); }
				)
			)
		)
		)
;
finally {
	if (selected)
		getUnorderedGroupHelper().returnFromSelection(grammarAccess.getConstraintDefinitionAccess().getUnorderedGroup_3());
	restoreStackSize(stackSize);
}

rule__ConstraintDefinition__UnorderedGroup_3__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ConstraintDefinition__UnorderedGroup_3__Impl
	rule__ConstraintDefinition__UnorderedGroup_3__1?
;
finally {
	restoreStackSize(stackSize);
}

rule__ConstraintDefinition__UnorderedGroup_3__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__ConstraintDefinition__UnorderedGroup_3__Impl
;
finally {
	restoreStackSize(stackSize);
}


rule__Model__DefinitionAssignment_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getDefinitionPackageDefinitionParserRuleCall_0_1_0()); }
		rulePackageDefinition
		{ after(grammarAccess.getModelAccess().getDefinitionPackageDefinitionParserRuleCall_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__DefinitionAssignment_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getDefinitionPackageDefinition2ParserRuleCall_1_1_0()); }
		rulePackageDefinition2
		{ after(grammarAccess.getModelAccess().getDefinitionPackageDefinition2ParserRuleCall_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PackageDefinition__NamespaceAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPackageDefinitionAccess().getNamespaceIDTerminalRuleCall_2_0()); }
		RULE_ID
		{ after(grammarAccess.getPackageDefinitionAccess().getNamespaceIDTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PackageDefinition__ContentsAssignment_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPackageDefinitionAccess().getContentsObjectParserRuleCall_4_0()); }
		ruleObject
		{ after(grammarAccess.getPackageDefinitionAccess().getContentsObjectParserRuleCall_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__EnabledAssignment_0_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getObjectAccess().getEnabledEnabledKeyword_0_0_0()); }
		(
			{ before(grammarAccess.getObjectAccess().getEnabledEnabledKeyword_0_0_0()); }
			'enabled'
			{ after(grammarAccess.getObjectAccess().getEnabledEnabledKeyword_0_0_0()); }
		)
		{ after(grammarAccess.getObjectAccess().getEnabledEnabledKeyword_0_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__AbstractAssignment_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getObjectAccess().getAbstractAbstractKeyword_0_1_0()); }
		(
			{ before(grammarAccess.getObjectAccess().getAbstractAbstractKeyword_0_1_0()); }
			'abstract'
			{ after(grammarAccess.getObjectAccess().getAbstractAbstractKeyword_0_1_0()); }
		)
		{ after(grammarAccess.getObjectAccess().getAbstractAbstractKeyword_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getObjectAccess().getNameIDTerminalRuleCall_2_0()); }
		RULE_ID
		{ after(grammarAccess.getObjectAccess().getNameIDTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__ParentAssignment_3_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getObjectAccess().getParentObjectCrossReference_3_1_0()); }
		(
			{ before(grammarAccess.getObjectAccess().getParentObjectIDTerminalRuleCall_3_1_0_1()); }
			RULE_ID
			{ after(grammarAccess.getObjectAccess().getParentObjectIDTerminalRuleCall_3_1_0_1()); }
		)
		{ after(grammarAccess.getObjectAccess().getParentObjectCrossReference_3_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__ShortDescriptionAssignment_5_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getObjectAccess().getShortDescriptionSTRINGTerminalRuleCall_5_0_1_0()); }
		RULE_STRING
		{ after(grammarAccess.getObjectAccess().getShortDescriptionSTRINGTerminalRuleCall_5_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__LongDescriptionAssignment_5_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getObjectAccess().getLongDescriptionSTRINGTerminalRuleCall_5_1_1_0()); }
		RULE_STRING
		{ after(grammarAccess.getObjectAccess().getLongDescriptionSTRINGTerminalRuleCall_5_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__SerialVersionUIDAssignment_5_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getObjectAccess().getSerialVersionUIDINTTerminalRuleCall_5_2_1_0()); }
		RULE_INT
		{ after(grammarAccess.getObjectAccess().getSerialVersionUIDINTTerminalRuleCall_5_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__CloneableAssignment_5_3_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getObjectAccess().getCloneableCloneableKeyword_5_3_0_0()); }
		(
			{ before(grammarAccess.getObjectAccess().getCloneableCloneableKeyword_5_3_0_0()); }
			'cloneable'
			{ after(grammarAccess.getObjectAccess().getCloneableCloneableKeyword_5_3_0_0()); }
		)
		{ after(grammarAccess.getObjectAccess().getCloneableCloneableKeyword_5_3_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__FeaturesAssignment_5_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getObjectAccess().getFeaturesFeatureParserRuleCall_5_4_0()); }
		ruleFeature
		{ after(grammarAccess.getObjectAccess().getFeaturesFeatureParserRuleCall_5_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__FeaturesAssignment_5_5_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getObjectAccess().getFeaturesFeatureParserRuleCall_5_5_1_0()); }
		ruleFeature
		{ after(grammarAccess.getObjectAccess().getFeaturesFeatureParserRuleCall_5_5_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__FeaturesAssignment_5_6_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getObjectAccess().getFeaturesFeatureParserRuleCall_5_6_1_0()); }
		ruleFeature
		{ after(grammarAccess.getObjectAccess().getFeaturesFeatureParserRuleCall_5_6_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object__FeaturesAssignment_5_7_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getObjectAccess().getFeaturesFeatureParserRuleCall_5_7_1_0()); }
		ruleFeature
		{ after(grammarAccess.getObjectAccess().getFeaturesFeatureParserRuleCall_5_7_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__TypeAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAttributeAccess().getTypeIDTerminalRuleCall_1_0()); }
		RULE_ID
		{ after(grammarAccess.getAttributeAccess().getTypeIDTerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAttributeAccess().getNameIDTerminalRuleCall_2_0()); }
		RULE_ID
		{ after(grammarAccess.getAttributeAccess().getNameIDTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference__TypeAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getReferenceAccess().getTypeObjectCrossReference_1_0()); }
		(
			{ before(grammarAccess.getReferenceAccess().getTypeObjectIDTerminalRuleCall_1_0_1()); }
			RULE_ID
			{ after(grammarAccess.getReferenceAccess().getTypeObjectIDTerminalRuleCall_1_0_1()); }
		)
		{ after(grammarAccess.getReferenceAccess().getTypeObjectCrossReference_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference__ManyAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getReferenceAccess().getManyAsteriskKeyword_2_0()); }
		(
			{ before(grammarAccess.getReferenceAccess().getManyAsteriskKeyword_2_0()); }
			'*'
			{ after(grammarAccess.getReferenceAccess().getManyAsteriskKeyword_2_0()); }
		)
		{ after(grammarAccess.getReferenceAccess().getManyAsteriskKeyword_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference__NameAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getReferenceAccess().getNameIDTerminalRuleCall_3_0()); }
		RULE_ID
		{ after(grammarAccess.getReferenceAccess().getNameIDTerminalRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference__ShortDescriptionAssignment_4_0_1_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getReferenceAccess().getShortDescriptionSTRINGTerminalRuleCall_4_0_1_0_1_0()); }
		RULE_STRING
		{ after(grammarAccess.getReferenceAccess().getShortDescriptionSTRINGTerminalRuleCall_4_0_1_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference__LongDescriptionAssignment_4_0_1_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getReferenceAccess().getLongDescriptionSTRINGTerminalRuleCall_4_0_1_1_1_0()); }
		RULE_STRING
		{ after(grammarAccess.getReferenceAccess().getLongDescriptionSTRINGTerminalRuleCall_4_0_1_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PackageDefinition2__NamespaceAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPackageDefinition2Access().getNamespaceIDTerminalRuleCall_2_0()); }
		RULE_ID
		{ after(grammarAccess.getPackageDefinition2Access().getNamespaceIDTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__PackageDefinition2__ContentsAssignment_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getPackageDefinition2Access().getContentsObject2ParserRuleCall_4_0()); }
		ruleObject2
		{ after(grammarAccess.getPackageDefinition2Access().getContentsObject2ParserRuleCall_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__EnabledAssignment_0_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getObject2Access().getEnabledEnabledKeyword_0_0_0()); }
		(
			{ before(grammarAccess.getObject2Access().getEnabledEnabledKeyword_0_0_0()); }
			'enabled'
			{ after(grammarAccess.getObject2Access().getEnabledEnabledKeyword_0_0_0()); }
		)
		{ after(grammarAccess.getObject2Access().getEnabledEnabledKeyword_0_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__AbstractAssignment_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getObject2Access().getAbstractAbstractKeyword_0_1_0()); }
		(
			{ before(grammarAccess.getObject2Access().getAbstractAbstractKeyword_0_1_0()); }
			'abstract'
			{ after(grammarAccess.getObject2Access().getAbstractAbstractKeyword_0_1_0()); }
		)
		{ after(grammarAccess.getObject2Access().getAbstractAbstractKeyword_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getObject2Access().getNameIDTerminalRuleCall_2_0()); }
		RULE_ID
		{ after(grammarAccess.getObject2Access().getNameIDTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__ParentAssignment_3_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getObject2Access().getParentObjectCrossReference_3_1_0()); }
		(
			{ before(grammarAccess.getObject2Access().getParentObjectIDTerminalRuleCall_3_1_0_1()); }
			RULE_ID
			{ after(grammarAccess.getObject2Access().getParentObjectIDTerminalRuleCall_3_1_0_1()); }
		)
		{ after(grammarAccess.getObject2Access().getParentObjectCrossReference_3_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__ShortDescriptionAssignment_5_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getObject2Access().getShortDescriptionSTRINGTerminalRuleCall_5_0_1_0()); }
		RULE_STRING
		{ after(grammarAccess.getObject2Access().getShortDescriptionSTRINGTerminalRuleCall_5_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__LongDescriptionAssignment_5_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getObject2Access().getLongDescriptionSTRINGTerminalRuleCall_5_1_1_0()); }
		RULE_STRING
		{ after(grammarAccess.getObject2Access().getLongDescriptionSTRINGTerminalRuleCall_5_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__SerialVersionUIDAssignment_5_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getObject2Access().getSerialVersionUIDINTTerminalRuleCall_5_2_1_0()); }
		RULE_INT
		{ after(grammarAccess.getObject2Access().getSerialVersionUIDINTTerminalRuleCall_5_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__CloneableAssignment_5_3_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getObject2Access().getCloneableCloneableKeyword_5_3_0_0()); }
		(
			{ before(grammarAccess.getObject2Access().getCloneableCloneableKeyword_5_3_0_0()); }
			'cloneable'
			{ after(grammarAccess.getObject2Access().getCloneableCloneableKeyword_5_3_0_0()); }
		)
		{ after(grammarAccess.getObject2Access().getCloneableCloneableKeyword_5_3_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Object2__FeaturesAssignment_5_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getObject2Access().getFeaturesFeature2ParserRuleCall_5_4_0()); }
		ruleFeature2
		{ after(grammarAccess.getObject2Access().getFeaturesFeature2ParserRuleCall_5_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute2__TypeAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAttribute2Access().getTypeIDTerminalRuleCall_1_0()); }
		RULE_ID
		{ after(grammarAccess.getAttribute2Access().getTypeIDTerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute2__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAttribute2Access().getNameIDTerminalRuleCall_2_0()); }
		RULE_ID
		{ after(grammarAccess.getAttribute2Access().getNameIDTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute2__ShortDescriptionAssignment_3_0_1_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAttribute2Access().getShortDescriptionSTRINGTerminalRuleCall_3_0_1_0_1_0()); }
		RULE_STRING
		{ after(grammarAccess.getAttribute2Access().getShortDescriptionSTRINGTerminalRuleCall_3_0_1_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute2__LongDescriptionAssignment_3_0_1_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAttribute2Access().getLongDescriptionSTRINGTerminalRuleCall_3_0_1_1_1_0()); }
		RULE_STRING
		{ after(grammarAccess.getAttribute2Access().getLongDescriptionSTRINGTerminalRuleCall_3_0_1_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute2__ConstraintDefinitionsAssignment_3_0_1_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAttribute2Access().getConstraintDefinitionsConstraintDefinitionParserRuleCall_3_0_1_2_0()); }
		ruleConstraintDefinition
		{ after(grammarAccess.getAttribute2Access().getConstraintDefinitionsConstraintDefinitionParserRuleCall_3_0_1_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute2__RequiredAssignment_3_0_1_3_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAttribute2Access().getRequiredRequiredKeyword_3_0_1_3_0_0()); }
		(
			{ before(grammarAccess.getAttribute2Access().getRequiredRequiredKeyword_3_0_1_3_0_0()); }
			'required'
			{ after(grammarAccess.getAttribute2Access().getRequiredRequiredKeyword_3_0_1_3_0_0()); }
		)
		{ after(grammarAccess.getAttribute2Access().getRequiredRequiredKeyword_3_0_1_3_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Attribute2__TechnicalAssignment_3_0_1_4_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getAttribute2Access().getTechnicalTechnicalKeyword_3_0_1_4_0_0()); }
		(
			{ before(grammarAccess.getAttribute2Access().getTechnicalTechnicalKeyword_3_0_1_4_0_0()); }
			'technical'
			{ after(grammarAccess.getAttribute2Access().getTechnicalTechnicalKeyword_3_0_1_4_0_0()); }
		)
		{ after(grammarAccess.getAttribute2Access().getTechnicalTechnicalKeyword_3_0_1_4_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference2__TypeAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getReference2Access().getTypeObjectCrossReference_1_0()); }
		(
			{ before(grammarAccess.getReference2Access().getTypeObjectIDTerminalRuleCall_1_0_1()); }
			RULE_ID
			{ after(grammarAccess.getReference2Access().getTypeObjectIDTerminalRuleCall_1_0_1()); }
		)
		{ after(grammarAccess.getReference2Access().getTypeObjectCrossReference_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference2__ManyAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getReference2Access().getManyAsteriskKeyword_2_0()); }
		(
			{ before(grammarAccess.getReference2Access().getManyAsteriskKeyword_2_0()); }
			'*'
			{ after(grammarAccess.getReference2Access().getManyAsteriskKeyword_2_0()); }
		)
		{ after(grammarAccess.getReference2Access().getManyAsteriskKeyword_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference2__NameAssignment_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getReference2Access().getNameIDTerminalRuleCall_3_0()); }
		RULE_ID
		{ after(grammarAccess.getReference2Access().getNameIDTerminalRuleCall_3_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference2__ShortDescriptionAssignment_4_0_1_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getReference2Access().getShortDescriptionSTRINGTerminalRuleCall_4_0_1_0_1_0()); }
		RULE_STRING
		{ after(grammarAccess.getReference2Access().getShortDescriptionSTRINGTerminalRuleCall_4_0_1_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Reference2__LongDescriptionAssignment_4_0_1_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getReference2Access().getLongDescriptionSTRINGTerminalRuleCall_4_0_1_1_1_0()); }
		RULE_STRING
		{ after(grammarAccess.getReference2Access().getLongDescriptionSTRINGTerminalRuleCall_4_0_1_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ConstraintDefinition__TypeAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getConstraintDefinitionAccess().getTypeIDTerminalRuleCall_1_0()); }
		RULE_ID
		{ after(grammarAccess.getConstraintDefinitionAccess().getTypeIDTerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ConstraintDefinition__ParametersAssignment_3_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getConstraintDefinitionAccess().getParametersSTRINGTerminalRuleCall_3_0_1_0()); }
		RULE_STRING
		{ after(grammarAccess.getConstraintDefinitionAccess().getParametersSTRINGTerminalRuleCall_3_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__ConstraintDefinition__MessageAssignment_3_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getConstraintDefinitionAccess().getMessageSTRINGTerminalRuleCall_3_1_1_0()); }
		RULE_STRING
		{ after(grammarAccess.getConstraintDefinitionAccess().getMessageSTRINGTerminalRuleCall_3_1_1_0()); }
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

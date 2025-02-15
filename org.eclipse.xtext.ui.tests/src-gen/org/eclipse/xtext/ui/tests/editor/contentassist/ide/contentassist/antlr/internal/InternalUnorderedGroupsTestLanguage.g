/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalUnorderedGroupsTestLanguage;

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
import org.eclipse.xtext.ui.tests.editor.contentassist.services.UnorderedGroupsTestLanguageGrammarAccess;

}
@parser::members {
	private UnorderedGroupsTestLanguageGrammarAccess grammarAccess;

	public void setGrammarAccess(UnorderedGroupsTestLanguageGrammarAccess grammarAccess) {
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

// Entry rule entryRuleSimpleModel
entryRuleSimpleModel
:
{ before(grammarAccess.getSimpleModelRule()); }
	 ruleSimpleModel
{ after(grammarAccess.getSimpleModelRule()); } 
	 EOF 
;

// Rule SimpleModel
ruleSimpleModel 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getSimpleModelAccess().getGroup()); }
		(rule__SimpleModel__Group__0)
		{ after(grammarAccess.getSimpleModelAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleMandatoryModel
entryRuleMandatoryModel
:
{ before(grammarAccess.getMandatoryModelRule()); }
	 ruleMandatoryModel
{ after(grammarAccess.getMandatoryModelRule()); } 
	 EOF 
;

// Rule MandatoryModel
ruleMandatoryModel 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getMandatoryModelAccess().getGroup()); }
		(rule__MandatoryModel__Group__0)
		{ after(grammarAccess.getMandatoryModelAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleLoopedModel
entryRuleLoopedModel
:
{ before(grammarAccess.getLoopedModelRule()); }
	 ruleLoopedModel
{ after(grammarAccess.getLoopedModelRule()); } 
	 EOF 
;

// Rule LoopedModel
ruleLoopedModel 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getLoopedModelAccess().getGroup()); }
		(rule__LoopedModel__Group__0)
		{ after(grammarAccess.getLoopedModelAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleGroupLoopedModel
entryRuleGroupLoopedModel
:
{ before(grammarAccess.getGroupLoopedModelRule()); }
	 ruleGroupLoopedModel
{ after(grammarAccess.getGroupLoopedModelRule()); } 
	 EOF 
;

// Rule GroupLoopedModel
ruleGroupLoopedModel 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getGroupLoopedModelAccess().getGroup()); }
		(rule__GroupLoopedModel__Group__0)
		{ after(grammarAccess.getGroupLoopedModelAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleLoopedAlternativeModel
entryRuleLoopedAlternativeModel
:
{ before(grammarAccess.getLoopedAlternativeModelRule()); }
	 ruleLoopedAlternativeModel
{ after(grammarAccess.getLoopedAlternativeModelRule()); } 
	 EOF 
;

// Rule LoopedAlternativeModel
ruleLoopedAlternativeModel 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getLoopedAlternativeModelAccess().getGroup()); }
		(rule__LoopedAlternativeModel__Group__0)
		{ after(grammarAccess.getLoopedAlternativeModelAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleBug304681Model
entryRuleBug304681Model
:
{ before(grammarAccess.getBug304681ModelRule()); }
	 ruleBug304681Model
{ after(grammarAccess.getBug304681ModelRule()); } 
	 EOF 
;

// Rule Bug304681Model
ruleBug304681Model 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getBug304681ModelAccess().getGroup()); }
		(rule__Bug304681Model__Group__0)
		{ after(grammarAccess.getBug304681ModelAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleBug304681Feature
entryRuleBug304681Feature
:
{ before(grammarAccess.getBug304681FeatureRule()); }
	 ruleBug304681Feature
{ after(grammarAccess.getBug304681FeatureRule()); } 
	 EOF 
;

// Rule Bug304681Feature
ruleBug304681Feature 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getBug304681FeatureAccess().getAlternatives()); }
		(rule__Bug304681Feature__Alternatives)
		{ after(grammarAccess.getBug304681FeatureAccess().getAlternatives()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleBug304681Attribute
entryRuleBug304681Attribute
:
{ before(grammarAccess.getBug304681AttributeRule()); }
	 ruleBug304681Attribute
{ after(grammarAccess.getBug304681AttributeRule()); } 
	 EOF 
;

// Rule Bug304681Attribute
ruleBug304681Attribute 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getBug304681AttributeAccess().getGroup()); }
		(rule__Bug304681Attribute__Group__0)
		{ after(grammarAccess.getBug304681AttributeAccess().getGroup()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

// Entry rule entryRuleBug304681Reference
entryRuleBug304681Reference
:
{ before(grammarAccess.getBug304681ReferenceRule()); }
	 ruleBug304681Reference
{ after(grammarAccess.getBug304681ReferenceRule()); } 
	 EOF 
;

// Rule Bug304681Reference
ruleBug304681Reference 
	@init {
		int stackSize = keepStackSize();
	}
	:
	(
		{ before(grammarAccess.getBug304681ReferenceAccess().getGroup()); }
		(rule__Bug304681Reference__Group__0)
		{ after(grammarAccess.getBug304681ReferenceAccess().getGroup()); }
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
	|
	(
		{ before(grammarAccess.getModelAccess().getGroup_2()); }
		(rule__Model__Group_2__0)
		{ after(grammarAccess.getModelAccess().getGroup_2()); }
	)
	|
	(
		{ before(grammarAccess.getModelAccess().getGroup_3()); }
		(rule__Model__Group_3__0)
		{ after(grammarAccess.getModelAccess().getGroup_3()); }
	)
	|
	(
		{ before(grammarAccess.getModelAccess().getGroup_4()); }
		(rule__Model__Group_4__0)
		{ after(grammarAccess.getModelAccess().getGroup_4()); }
	)
	|
	(
		{ before(grammarAccess.getModelAccess().getGroup_5()); }
		(rule__Model__Group_5__0)
		{ after(grammarAccess.getModelAccess().getGroup_5()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SimpleModel__VisibilityAlternatives_0_0_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSimpleModelAccess().getVisibilityPublicKeyword_0_0_0_0()); }
		'public'
		{ after(grammarAccess.getSimpleModelAccess().getVisibilityPublicKeyword_0_0_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getSimpleModelAccess().getVisibilityPrivateKeyword_0_0_0_1()); }
		'private'
		{ after(grammarAccess.getSimpleModelAccess().getVisibilityPrivateKeyword_0_0_0_1()); }
	)
	|
	(
		{ before(grammarAccess.getSimpleModelAccess().getVisibilityProtectedKeyword_0_0_0_2()); }
		'protected'
		{ after(grammarAccess.getSimpleModelAccess().getVisibilityProtectedKeyword_0_0_0_2()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SimpleModel__Alternatives_0_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSimpleModelAccess().getAbstractAssignment_0_3_0()); }
		(rule__SimpleModel__AbstractAssignment_0_3_0)
		{ after(grammarAccess.getSimpleModelAccess().getAbstractAssignment_0_3_0()); }
	)
	|
	(
		{ before(grammarAccess.getSimpleModelAccess().getFinalAssignment_0_3_1()); }
		(rule__SimpleModel__FinalAssignment_0_3_1)
		{ after(grammarAccess.getSimpleModelAccess().getFinalAssignment_0_3_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__MandatoryModel__VisibilityAlternatives_0_0_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getMandatoryModelAccess().getVisibilityPublicKeyword_0_0_0_0()); }
		'public'
		{ after(grammarAccess.getMandatoryModelAccess().getVisibilityPublicKeyword_0_0_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getMandatoryModelAccess().getVisibilityPrivateKeyword_0_0_0_1()); }
		'private'
		{ after(grammarAccess.getMandatoryModelAccess().getVisibilityPrivateKeyword_0_0_0_1()); }
	)
	|
	(
		{ before(grammarAccess.getMandatoryModelAccess().getVisibilityProtectedKeyword_0_0_0_2()); }
		'protected'
		{ after(grammarAccess.getMandatoryModelAccess().getVisibilityProtectedKeyword_0_0_0_2()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__MandatoryModel__Alternatives_0_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getMandatoryModelAccess().getAbstractAssignment_0_3_0()); }
		(rule__MandatoryModel__AbstractAssignment_0_3_0)
		{ after(grammarAccess.getMandatoryModelAccess().getAbstractAssignment_0_3_0()); }
	)
	|
	(
		{ before(grammarAccess.getMandatoryModelAccess().getFinalAssignment_0_3_1()); }
		(rule__MandatoryModel__FinalAssignment_0_3_1)
		{ after(grammarAccess.getMandatoryModelAccess().getFinalAssignment_0_3_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__LoopedModel__VisibilityAlternatives_0_0_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLoopedModelAccess().getVisibilityPublicKeyword_0_0_0_0()); }
		'public'
		{ after(grammarAccess.getLoopedModelAccess().getVisibilityPublicKeyword_0_0_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getLoopedModelAccess().getVisibilityPrivateKeyword_0_0_0_1()); }
		'private'
		{ after(grammarAccess.getLoopedModelAccess().getVisibilityPrivateKeyword_0_0_0_1()); }
	)
	|
	(
		{ before(grammarAccess.getLoopedModelAccess().getVisibilityProtectedKeyword_0_0_0_2()); }
		'protected'
		{ after(grammarAccess.getLoopedModelAccess().getVisibilityProtectedKeyword_0_0_0_2()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__LoopedModel__Alternatives_0_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLoopedModelAccess().getAbstractAssignment_0_3_0()); }
		(rule__LoopedModel__AbstractAssignment_0_3_0)
		{ after(grammarAccess.getLoopedModelAccess().getAbstractAssignment_0_3_0()); }
	)
	|
	(
		{ before(grammarAccess.getLoopedModelAccess().getFinalAssignment_0_3_1()); }
		(rule__LoopedModel__FinalAssignment_0_3_1)
		{ after(grammarAccess.getLoopedModelAccess().getFinalAssignment_0_3_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__GroupLoopedModel__VisibilityAlternatives_0_0_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getGroupLoopedModelAccess().getVisibilityPublicKeyword_0_0_0_0()); }
		'public'
		{ after(grammarAccess.getGroupLoopedModelAccess().getVisibilityPublicKeyword_0_0_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getGroupLoopedModelAccess().getVisibilityPrivateKeyword_0_0_0_1()); }
		'private'
		{ after(grammarAccess.getGroupLoopedModelAccess().getVisibilityPrivateKeyword_0_0_0_1()); }
	)
	|
	(
		{ before(grammarAccess.getGroupLoopedModelAccess().getVisibilityProtectedKeyword_0_0_0_2()); }
		'protected'
		{ after(grammarAccess.getGroupLoopedModelAccess().getVisibilityProtectedKeyword_0_0_0_2()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__GroupLoopedModel__Alternatives_0_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getGroupLoopedModelAccess().getAbstractAssignment_0_3_0()); }
		(rule__GroupLoopedModel__AbstractAssignment_0_3_0)
		{ after(grammarAccess.getGroupLoopedModelAccess().getAbstractAssignment_0_3_0()); }
	)
	|
	(
		{ before(grammarAccess.getGroupLoopedModelAccess().getFinalAssignment_0_3_1()); }
		(rule__GroupLoopedModel__FinalAssignment_0_3_1)
		{ after(grammarAccess.getGroupLoopedModelAccess().getFinalAssignment_0_3_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__LoopedAlternativeModel__Alternatives_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLoopedAlternativeModelAccess().getVisibilityAssignment_0_0()); }
		(rule__LoopedAlternativeModel__VisibilityAssignment_0_0)
		{ after(grammarAccess.getLoopedAlternativeModelAccess().getVisibilityAssignment_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getLoopedAlternativeModelAccess().getStaticAssignment_0_1()); }
		(rule__LoopedAlternativeModel__StaticAssignment_0_1)
		{ after(grammarAccess.getLoopedAlternativeModelAccess().getStaticAssignment_0_1()); }
	)
	|
	(
		{ before(grammarAccess.getLoopedAlternativeModelAccess().getSynchronizedAssignment_0_2()); }
		(rule__LoopedAlternativeModel__SynchronizedAssignment_0_2)
		{ after(grammarAccess.getLoopedAlternativeModelAccess().getSynchronizedAssignment_0_2()); }
	)
	|
	(
		{ before(grammarAccess.getLoopedAlternativeModelAccess().getAlternatives_0_3()); }
		(rule__LoopedAlternativeModel__Alternatives_0_3)
		{ after(grammarAccess.getLoopedAlternativeModelAccess().getAlternatives_0_3()); }
	)
	|
	(
		{ before(grammarAccess.getLoopedAlternativeModelAccess().getGroup_0_4()); }
		(rule__LoopedAlternativeModel__Group_0_4__0)
		{ after(grammarAccess.getLoopedAlternativeModelAccess().getGroup_0_4()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__LoopedAlternativeModel__VisibilityAlternatives_0_0_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLoopedAlternativeModelAccess().getVisibilityPublicKeyword_0_0_0_0()); }
		'public'
		{ after(grammarAccess.getLoopedAlternativeModelAccess().getVisibilityPublicKeyword_0_0_0_0()); }
	)
	|
	(
		{ before(grammarAccess.getLoopedAlternativeModelAccess().getVisibilityPrivateKeyword_0_0_0_1()); }
		'private'
		{ after(grammarAccess.getLoopedAlternativeModelAccess().getVisibilityPrivateKeyword_0_0_0_1()); }
	)
	|
	(
		{ before(grammarAccess.getLoopedAlternativeModelAccess().getVisibilityProtectedKeyword_0_0_0_2()); }
		'protected'
		{ after(grammarAccess.getLoopedAlternativeModelAccess().getVisibilityProtectedKeyword_0_0_0_2()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__LoopedAlternativeModel__Alternatives_0_3
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLoopedAlternativeModelAccess().getAbstractAssignment_0_3_0()); }
		(rule__LoopedAlternativeModel__AbstractAssignment_0_3_0)
		{ after(grammarAccess.getLoopedAlternativeModelAccess().getAbstractAssignment_0_3_0()); }
	)
	|
	(
		{ before(grammarAccess.getLoopedAlternativeModelAccess().getFinalAssignment_0_3_1()); }
		(rule__LoopedAlternativeModel__FinalAssignment_0_3_1)
		{ after(grammarAccess.getLoopedAlternativeModelAccess().getFinalAssignment_0_3_1()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Feature__Alternatives
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getBug304681FeatureAccess().getBug304681AttributeParserRuleCall_0()); }
		ruleBug304681Attribute
		{ after(grammarAccess.getBug304681FeatureAccess().getBug304681AttributeParserRuleCall_0()); }
	)
	|
	(
		{ before(grammarAccess.getBug304681FeatureAccess().getBug304681ReferenceParserRuleCall_1()); }
		ruleBug304681Reference
		{ after(grammarAccess.getBug304681FeatureAccess().getBug304681ReferenceParserRuleCall_1()); }
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
	{ before(grammarAccess.getModelAccess().getFirstAssignment_0_1()); }
	(rule__Model__FirstAssignment_0_1)
	{ after(grammarAccess.getModelAccess().getFirstAssignment_0_1()); }
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
	{ before(grammarAccess.getModelAccess().getSecondAssignment_1_1()); }
	(rule__Model__SecondAssignment_1_1)
	{ after(grammarAccess.getModelAccess().getSecondAssignment_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Model__Group_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_2__0__Impl
	rule__Model__Group_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getDigitThreeKeyword_2_0()); }
	'3'
	{ after(grammarAccess.getModelAccess().getDigitThreeKeyword_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_2__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getThrirdAssignment_2_1()); }
	(rule__Model__ThrirdAssignment_2_1)
	{ after(grammarAccess.getModelAccess().getThrirdAssignment_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Model__Group_3__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_3__0__Impl
	rule__Model__Group_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_3__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getDigitFourKeyword_3_0()); }
	'4'
	{ after(grammarAccess.getModelAccess().getDigitFourKeyword_3_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_3__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_3__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_3__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getForthAssignment_3_1()); }
	(rule__Model__ForthAssignment_3_1)
	{ after(grammarAccess.getModelAccess().getForthAssignment_3_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Model__Group_4__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_4__0__Impl
	rule__Model__Group_4__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_4__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getDigitFiveKeyword_4_0()); }
	'5'
	{ after(grammarAccess.getModelAccess().getDigitFiveKeyword_4_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_4__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_4__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_4__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getFifthAssignment_4_1()); }
	(rule__Model__FifthAssignment_4_1)
	{ after(grammarAccess.getModelAccess().getFifthAssignment_4_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Model__Group_5__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_5__0__Impl
	rule__Model__Group_5__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_5__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getBug304681Keyword_5_0()); }
	'bug304681'
	{ after(grammarAccess.getModelAccess().getBug304681Keyword_5_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_5__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Model__Group_5__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__Group_5__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getModelAccess().getModelAssignment_5_1()); }
	(rule__Model__ModelAssignment_5_1)
	{ after(grammarAccess.getModelAccess().getModelAssignment_5_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__SimpleModel__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SimpleModel__Group__0__Impl
	rule__SimpleModel__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__SimpleModel__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSimpleModelAccess().getUnorderedGroup_0()); }
	(rule__SimpleModel__UnorderedGroup_0)
	{ after(grammarAccess.getSimpleModelAccess().getUnorderedGroup_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SimpleModel__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SimpleModel__Group__1__Impl
	rule__SimpleModel__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__SimpleModel__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSimpleModelAccess().getClassKeyword_1()); }
	'class'
	{ after(grammarAccess.getSimpleModelAccess().getClassKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SimpleModel__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SimpleModel__Group__2__Impl
	rule__SimpleModel__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__SimpleModel__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSimpleModelAccess().getNameAssignment_2()); }
	(rule__SimpleModel__NameAssignment_2)
	{ after(grammarAccess.getSimpleModelAccess().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SimpleModel__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SimpleModel__Group__3__Impl
	rule__SimpleModel__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__SimpleModel__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSimpleModelAccess().getLeftCurlyBracketKeyword_3()); }
	'{'
	{ after(grammarAccess.getSimpleModelAccess().getLeftCurlyBracketKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__SimpleModel__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SimpleModel__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__SimpleModel__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getSimpleModelAccess().getRightCurlyBracketKeyword_4()); }
	'}'
	{ after(grammarAccess.getSimpleModelAccess().getRightCurlyBracketKeyword_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__MandatoryModel__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MandatoryModel__Group__0__Impl
	rule__MandatoryModel__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__MandatoryModel__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMandatoryModelAccess().getUnorderedGroup_0()); }
	(rule__MandatoryModel__UnorderedGroup_0)
	{ after(grammarAccess.getMandatoryModelAccess().getUnorderedGroup_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MandatoryModel__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MandatoryModel__Group__1__Impl
	rule__MandatoryModel__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__MandatoryModel__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMandatoryModelAccess().getClassKeyword_1()); }
	'class'
	{ after(grammarAccess.getMandatoryModelAccess().getClassKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MandatoryModel__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MandatoryModel__Group__2__Impl
	rule__MandatoryModel__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__MandatoryModel__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMandatoryModelAccess().getNameAssignment_2()); }
	(rule__MandatoryModel__NameAssignment_2)
	{ after(grammarAccess.getMandatoryModelAccess().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MandatoryModel__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MandatoryModel__Group__3__Impl
	rule__MandatoryModel__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__MandatoryModel__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMandatoryModelAccess().getLeftCurlyBracketKeyword_3()); }
	'{'
	{ after(grammarAccess.getMandatoryModelAccess().getLeftCurlyBracketKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__MandatoryModel__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MandatoryModel__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__MandatoryModel__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getMandatoryModelAccess().getRightCurlyBracketKeyword_4()); }
	'}'
	{ after(grammarAccess.getMandatoryModelAccess().getRightCurlyBracketKeyword_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__LoopedModel__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LoopedModel__Group__0__Impl
	rule__LoopedModel__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__LoopedModel__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLoopedModelAccess().getUnorderedGroup_0()); }
	(rule__LoopedModel__UnorderedGroup_0)
	{ after(grammarAccess.getLoopedModelAccess().getUnorderedGroup_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__LoopedModel__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LoopedModel__Group__1__Impl
	rule__LoopedModel__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__LoopedModel__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLoopedModelAccess().getClassKeyword_1()); }
	'class'
	{ after(grammarAccess.getLoopedModelAccess().getClassKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__LoopedModel__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LoopedModel__Group__2__Impl
	rule__LoopedModel__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__LoopedModel__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLoopedModelAccess().getNameAssignment_2()); }
	(rule__LoopedModel__NameAssignment_2)
	{ after(grammarAccess.getLoopedModelAccess().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__LoopedModel__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LoopedModel__Group__3__Impl
	rule__LoopedModel__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__LoopedModel__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLoopedModelAccess().getLeftCurlyBracketKeyword_3()); }
	'{'
	{ after(grammarAccess.getLoopedModelAccess().getLeftCurlyBracketKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__LoopedModel__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LoopedModel__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__LoopedModel__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLoopedModelAccess().getRightCurlyBracketKeyword_4()); }
	'}'
	{ after(grammarAccess.getLoopedModelAccess().getRightCurlyBracketKeyword_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__GroupLoopedModel__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__GroupLoopedModel__Group__0__Impl
	rule__GroupLoopedModel__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__GroupLoopedModel__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getGroupLoopedModelAccess().getUnorderedGroup_0()); }
	(rule__GroupLoopedModel__UnorderedGroup_0)*
	{ after(grammarAccess.getGroupLoopedModelAccess().getUnorderedGroup_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__GroupLoopedModel__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__GroupLoopedModel__Group__1__Impl
	rule__GroupLoopedModel__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__GroupLoopedModel__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getGroupLoopedModelAccess().getClassKeyword_1()); }
	'class'
	{ after(grammarAccess.getGroupLoopedModelAccess().getClassKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__GroupLoopedModel__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__GroupLoopedModel__Group__2__Impl
	rule__GroupLoopedModel__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__GroupLoopedModel__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getGroupLoopedModelAccess().getNameAssignment_2()); }
	(rule__GroupLoopedModel__NameAssignment_2)
	{ after(grammarAccess.getGroupLoopedModelAccess().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__GroupLoopedModel__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__GroupLoopedModel__Group__3__Impl
	rule__GroupLoopedModel__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__GroupLoopedModel__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getGroupLoopedModelAccess().getLeftCurlyBracketKeyword_3()); }
	'{'
	{ after(grammarAccess.getGroupLoopedModelAccess().getLeftCurlyBracketKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__GroupLoopedModel__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__GroupLoopedModel__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__GroupLoopedModel__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getGroupLoopedModelAccess().getRightCurlyBracketKeyword_4()); }
	'}'
	{ after(grammarAccess.getGroupLoopedModelAccess().getRightCurlyBracketKeyword_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__LoopedAlternativeModel__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LoopedAlternativeModel__Group__0__Impl
	rule__LoopedAlternativeModel__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__LoopedAlternativeModel__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLoopedAlternativeModelAccess().getAlternatives_0()); }
	(rule__LoopedAlternativeModel__Alternatives_0)*
	{ after(grammarAccess.getLoopedAlternativeModelAccess().getAlternatives_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__LoopedAlternativeModel__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LoopedAlternativeModel__Group__1__Impl
	rule__LoopedAlternativeModel__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__LoopedAlternativeModel__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLoopedAlternativeModelAccess().getClassKeyword_1()); }
	'class'
	{ after(grammarAccess.getLoopedAlternativeModelAccess().getClassKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__LoopedAlternativeModel__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LoopedAlternativeModel__Group__2__Impl
	rule__LoopedAlternativeModel__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__LoopedAlternativeModel__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLoopedAlternativeModelAccess().getNameAssignment_2()); }
	(rule__LoopedAlternativeModel__NameAssignment_2)
	{ after(grammarAccess.getLoopedAlternativeModelAccess().getNameAssignment_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__LoopedAlternativeModel__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LoopedAlternativeModel__Group__3__Impl
	rule__LoopedAlternativeModel__Group__4
;
finally {
	restoreStackSize(stackSize);
}

rule__LoopedAlternativeModel__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLoopedAlternativeModelAccess().getLeftCurlyBracketKeyword_3()); }
	'{'
	{ after(grammarAccess.getLoopedAlternativeModelAccess().getLeftCurlyBracketKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__LoopedAlternativeModel__Group__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LoopedAlternativeModel__Group__4__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__LoopedAlternativeModel__Group__4__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLoopedAlternativeModelAccess().getRightCurlyBracketKeyword_4()); }
	'}'
	{ after(grammarAccess.getLoopedAlternativeModelAccess().getRightCurlyBracketKeyword_4()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__LoopedAlternativeModel__Group_0_4__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LoopedAlternativeModel__Group_0_4__0__Impl
	rule__LoopedAlternativeModel__Group_0_4__1
;
finally {
	restoreStackSize(stackSize);
}

rule__LoopedAlternativeModel__Group_0_4__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLoopedAlternativeModelAccess().getBeforeKeyword_0_4_0()); }
	'before'
	{ after(grammarAccess.getLoopedAlternativeModelAccess().getBeforeKeyword_0_4_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__LoopedAlternativeModel__Group_0_4__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LoopedAlternativeModel__Group_0_4__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__LoopedAlternativeModel__Group_0_4__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getLoopedAlternativeModelAccess().getAfterKeyword_0_4_1()); }
	('after')*
	{ after(grammarAccess.getLoopedAlternativeModelAccess().getAfterKeyword_0_4_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Bug304681Model__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Bug304681Model__Group__0__Impl
	rule__Bug304681Model__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Model__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBug304681ModelAccess().getBug304681ModelAction_0()); }
	()
	{ after(grammarAccess.getBug304681ModelAccess().getBug304681ModelAction_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Model__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Bug304681Model__Group__1__Impl
	rule__Bug304681Model__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Model__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBug304681ModelAccess().getLeftCurlyBracketKeyword_1()); }
	'{'
	{ after(grammarAccess.getBug304681ModelAccess().getLeftCurlyBracketKeyword_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Model__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Bug304681Model__Group__2__Impl
	rule__Bug304681Model__Group__3
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Model__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBug304681ModelAccess().getUnorderedGroup_2()); }
	(rule__Bug304681Model__UnorderedGroup_2)
	{ after(grammarAccess.getBug304681ModelAccess().getUnorderedGroup_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Model__Group__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Bug304681Model__Group__3__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Model__Group__3__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBug304681ModelAccess().getRightCurlyBracketKeyword_3()); }
	'}'
	{ after(grammarAccess.getBug304681ModelAccess().getRightCurlyBracketKeyword_3()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Bug304681Model__Group_2_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Bug304681Model__Group_2_0__0__Impl
	rule__Bug304681Model__Group_2_0__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Model__Group_2_0__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBug304681ModelAccess().getShortKeyword_2_0_0()); }
	'short'
	{ after(grammarAccess.getBug304681ModelAccess().getShortKeyword_2_0_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Model__Group_2_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Bug304681Model__Group_2_0__1__Impl
	rule__Bug304681Model__Group_2_0__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Model__Group_2_0__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBug304681ModelAccess().getShortDescriptionAssignment_2_0_1()); }
	(rule__Bug304681Model__ShortDescriptionAssignment_2_0_1)
	{ after(grammarAccess.getBug304681ModelAccess().getShortDescriptionAssignment_2_0_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Model__Group_2_0__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Bug304681Model__Group_2_0__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Model__Group_2_0__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBug304681ModelAccess().getSemicolonKeyword_2_0_2()); }
	';'
	{ after(grammarAccess.getBug304681ModelAccess().getSemicolonKeyword_2_0_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Bug304681Model__Group_2_1__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Bug304681Model__Group_2_1__0__Impl
	rule__Bug304681Model__Group_2_1__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Model__Group_2_1__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBug304681ModelAccess().getLongKeyword_2_1_0()); }
	'long'
	{ after(grammarAccess.getBug304681ModelAccess().getLongKeyword_2_1_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Model__Group_2_1__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Bug304681Model__Group_2_1__1__Impl
	rule__Bug304681Model__Group_2_1__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Model__Group_2_1__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBug304681ModelAccess().getLongDescriptionAssignment_2_1_1()); }
	(rule__Bug304681Model__LongDescriptionAssignment_2_1_1)
	{ after(grammarAccess.getBug304681ModelAccess().getLongDescriptionAssignment_2_1_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Model__Group_2_1__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Bug304681Model__Group_2_1__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Model__Group_2_1__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBug304681ModelAccess().getSemicolonKeyword_2_1_2()); }
	';'
	{ after(grammarAccess.getBug304681ModelAccess().getSemicolonKeyword_2_1_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Bug304681Model__Group_2_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Bug304681Model__Group_2_2__0__Impl
	rule__Bug304681Model__Group_2_2__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Model__Group_2_2__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBug304681ModelAccess().getUidKeyword_2_2_0()); }
	'uid'
	{ after(grammarAccess.getBug304681ModelAccess().getUidKeyword_2_2_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Model__Group_2_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Bug304681Model__Group_2_2__1__Impl
	rule__Bug304681Model__Group_2_2__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Model__Group_2_2__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBug304681ModelAccess().getUidAssignment_2_2_1()); }
	(rule__Bug304681Model__UidAssignment_2_2_1)
	{ after(grammarAccess.getBug304681ModelAccess().getUidAssignment_2_2_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Model__Group_2_2__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Bug304681Model__Group_2_2__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Model__Group_2_2__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBug304681ModelAccess().getSemicolonKeyword_2_2_2()); }
	';'
	{ after(grammarAccess.getBug304681ModelAccess().getSemicolonKeyword_2_2_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Bug304681Model__Group_2_3__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Bug304681Model__Group_2_3__0__Impl
	rule__Bug304681Model__Group_2_3__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Model__Group_2_3__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBug304681ModelAccess().getFlagAssignment_2_3_0()); }
	(rule__Bug304681Model__FlagAssignment_2_3_0)
	{ after(grammarAccess.getBug304681ModelAccess().getFlagAssignment_2_3_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Model__Group_2_3__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Bug304681Model__Group_2_3__1__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Model__Group_2_3__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBug304681ModelAccess().getSemicolonKeyword_2_3_1()); }
	';'
	{ after(grammarAccess.getBug304681ModelAccess().getSemicolonKeyword_2_3_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Bug304681Attribute__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Bug304681Attribute__Group__0__Impl
	rule__Bug304681Attribute__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Attribute__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBug304681AttributeAccess().getAttrKeyword_0()); }
	'attr'
	{ after(grammarAccess.getBug304681AttributeAccess().getAttrKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Attribute__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Bug304681Attribute__Group__1__Impl
	rule__Bug304681Attribute__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Attribute__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBug304681AttributeAccess().getNameAssignment_1()); }
	(rule__Bug304681Attribute__NameAssignment_1)
	{ after(grammarAccess.getBug304681AttributeAccess().getNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Attribute__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Bug304681Attribute__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Attribute__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBug304681AttributeAccess().getSemicolonKeyword_2()); }
	';'
	{ after(grammarAccess.getBug304681AttributeAccess().getSemicolonKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__Bug304681Reference__Group__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Bug304681Reference__Group__0__Impl
	rule__Bug304681Reference__Group__1
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Reference__Group__0__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBug304681ReferenceAccess().getRefKeyword_0()); }
	'ref'
	{ after(grammarAccess.getBug304681ReferenceAccess().getRefKeyword_0()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Reference__Group__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Bug304681Reference__Group__1__Impl
	rule__Bug304681Reference__Group__2
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Reference__Group__1__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBug304681ReferenceAccess().getNameAssignment_1()); }
	(rule__Bug304681Reference__NameAssignment_1)
	{ after(grammarAccess.getBug304681ReferenceAccess().getNameAssignment_1()); }
)
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Reference__Group__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Bug304681Reference__Group__2__Impl
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Reference__Group__2__Impl
	@init {
		int stackSize = keepStackSize();
	}
:
(
	{ before(grammarAccess.getBug304681ReferenceAccess().getSemicolonKeyword_2()); }
	';'
	{ after(grammarAccess.getBug304681ReferenceAccess().getSemicolonKeyword_2()); }
)
;
finally {
	restoreStackSize(stackSize);
}


rule__SimpleModel__UnorderedGroup_0
	@init {
		int stackSize = keepStackSize();
		getUnorderedGroupHelper().enter(grammarAccess.getSimpleModelAccess().getUnorderedGroup_0());
	}
:
	rule__SimpleModel__UnorderedGroup_0__0
	?
;
finally {
	getUnorderedGroupHelper().leave(grammarAccess.getSimpleModelAccess().getUnorderedGroup_0());
	restoreStackSize(stackSize);
}

rule__SimpleModel__UnorderedGroup_0__Impl
	@init {
		int stackSize = keepStackSize();
		boolean selected = false;
	}
:
		(
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getSimpleModelAccess().getUnorderedGroup_0(), 0)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getSimpleModelAccess().getUnorderedGroup_0(), 0);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getSimpleModelAccess().getVisibilityAssignment_0_0()); }
					(rule__SimpleModel__VisibilityAssignment_0_0)
					{ after(grammarAccess.getSimpleModelAccess().getVisibilityAssignment_0_0()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getSimpleModelAccess().getUnorderedGroup_0(), 1)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getSimpleModelAccess().getUnorderedGroup_0(), 1);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getSimpleModelAccess().getStaticAssignment_0_1()); }
					(rule__SimpleModel__StaticAssignment_0_1)
					{ after(grammarAccess.getSimpleModelAccess().getStaticAssignment_0_1()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getSimpleModelAccess().getUnorderedGroup_0(), 2)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getSimpleModelAccess().getUnorderedGroup_0(), 2);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getSimpleModelAccess().getSynchronizedAssignment_0_2()); }
					(rule__SimpleModel__SynchronizedAssignment_0_2)
					{ after(grammarAccess.getSimpleModelAccess().getSynchronizedAssignment_0_2()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getSimpleModelAccess().getUnorderedGroup_0(), 3)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getSimpleModelAccess().getUnorderedGroup_0(), 3);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getSimpleModelAccess().getAlternatives_0_3()); }
					(rule__SimpleModel__Alternatives_0_3)
					{ after(grammarAccess.getSimpleModelAccess().getAlternatives_0_3()); }
				)
			)
		)
		)
;
finally {
	if (selected)
		getUnorderedGroupHelper().returnFromSelection(grammarAccess.getSimpleModelAccess().getUnorderedGroup_0());
	restoreStackSize(stackSize);
}

rule__SimpleModel__UnorderedGroup_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SimpleModel__UnorderedGroup_0__Impl
	rule__SimpleModel__UnorderedGroup_0__1?
;
finally {
	restoreStackSize(stackSize);
}

rule__SimpleModel__UnorderedGroup_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SimpleModel__UnorderedGroup_0__Impl
	rule__SimpleModel__UnorderedGroup_0__2?
;
finally {
	restoreStackSize(stackSize);
}

rule__SimpleModel__UnorderedGroup_0__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SimpleModel__UnorderedGroup_0__Impl
	rule__SimpleModel__UnorderedGroup_0__3?
;
finally {
	restoreStackSize(stackSize);
}

rule__SimpleModel__UnorderedGroup_0__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__SimpleModel__UnorderedGroup_0__Impl
;
finally {
	restoreStackSize(stackSize);
}


rule__MandatoryModel__UnorderedGroup_0
	@init {
		int stackSize = keepStackSize();
		getUnorderedGroupHelper().enter(grammarAccess.getMandatoryModelAccess().getUnorderedGroup_0());
	}
:
	rule__MandatoryModel__UnorderedGroup_0__0
	{getUnorderedGroupHelper().canLeave(grammarAccess.getMandatoryModelAccess().getUnorderedGroup_0())}?
;
finally {
	getUnorderedGroupHelper().leave(grammarAccess.getMandatoryModelAccess().getUnorderedGroup_0());
	restoreStackSize(stackSize);
}

rule__MandatoryModel__UnorderedGroup_0__Impl
	@init {
		int stackSize = keepStackSize();
		boolean selected = false;
	}
:
		(
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getMandatoryModelAccess().getUnorderedGroup_0(), 0)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getMandatoryModelAccess().getUnorderedGroup_0(), 0);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getMandatoryModelAccess().getVisibilityAssignment_0_0()); }
					(rule__MandatoryModel__VisibilityAssignment_0_0)
					{ after(grammarAccess.getMandatoryModelAccess().getVisibilityAssignment_0_0()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getMandatoryModelAccess().getUnorderedGroup_0(), 1)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getMandatoryModelAccess().getUnorderedGroup_0(), 1);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getMandatoryModelAccess().getStaticAssignment_0_1()); }
					(rule__MandatoryModel__StaticAssignment_0_1)
					{ after(grammarAccess.getMandatoryModelAccess().getStaticAssignment_0_1()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getMandatoryModelAccess().getUnorderedGroup_0(), 2)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getMandatoryModelAccess().getUnorderedGroup_0(), 2);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getMandatoryModelAccess().getSynchronizedAssignment_0_2()); }
					(rule__MandatoryModel__SynchronizedAssignment_0_2)
					{ after(grammarAccess.getMandatoryModelAccess().getSynchronizedAssignment_0_2()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getMandatoryModelAccess().getUnorderedGroup_0(), 3)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getMandatoryModelAccess().getUnorderedGroup_0(), 3);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getMandatoryModelAccess().getAlternatives_0_3()); }
					(rule__MandatoryModel__Alternatives_0_3)
					{ after(grammarAccess.getMandatoryModelAccess().getAlternatives_0_3()); }
				)
			)
		)
		)
;
finally {
	if (selected)
		getUnorderedGroupHelper().returnFromSelection(grammarAccess.getMandatoryModelAccess().getUnorderedGroup_0());
	restoreStackSize(stackSize);
}

rule__MandatoryModel__UnorderedGroup_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MandatoryModel__UnorderedGroup_0__Impl
	rule__MandatoryModel__UnorderedGroup_0__1?
;
finally {
	restoreStackSize(stackSize);
}

rule__MandatoryModel__UnorderedGroup_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MandatoryModel__UnorderedGroup_0__Impl
	rule__MandatoryModel__UnorderedGroup_0__2?
;
finally {
	restoreStackSize(stackSize);
}

rule__MandatoryModel__UnorderedGroup_0__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MandatoryModel__UnorderedGroup_0__Impl
	rule__MandatoryModel__UnorderedGroup_0__3?
;
finally {
	restoreStackSize(stackSize);
}

rule__MandatoryModel__UnorderedGroup_0__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__MandatoryModel__UnorderedGroup_0__Impl
;
finally {
	restoreStackSize(stackSize);
}


rule__LoopedModel__UnorderedGroup_0
	@init {
		int stackSize = keepStackSize();
		getUnorderedGroupHelper().enter(grammarAccess.getLoopedModelAccess().getUnorderedGroup_0());
	}
:
	rule__LoopedModel__UnorderedGroup_0__0
	?
;
finally {
	getUnorderedGroupHelper().leave(grammarAccess.getLoopedModelAccess().getUnorderedGroup_0());
	restoreStackSize(stackSize);
}

rule__LoopedModel__UnorderedGroup_0__Impl
	@init {
		int stackSize = keepStackSize();
		boolean selected = false;
	}
:
		(
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getLoopedModelAccess().getUnorderedGroup_0(), 0)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getLoopedModelAccess().getUnorderedGroup_0(), 0);
				}
				{
					selected = true;
				}
				(
					(
						{ before(grammarAccess.getLoopedModelAccess().getVisibilityAssignment_0_0()); }
						(rule__LoopedModel__VisibilityAssignment_0_0)
						{ after(grammarAccess.getLoopedModelAccess().getVisibilityAssignment_0_0()); }
					)
					(
						{ before(grammarAccess.getLoopedModelAccess().getVisibilityAssignment_0_0()); }
						((rule__LoopedModel__VisibilityAssignment_0_0)=>rule__LoopedModel__VisibilityAssignment_0_0)*
						{ after(grammarAccess.getLoopedModelAccess().getVisibilityAssignment_0_0()); }
					)
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getLoopedModelAccess().getUnorderedGroup_0(), 1)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getLoopedModelAccess().getUnorderedGroup_0(), 1);
				}
				{
					selected = true;
				}
				(
					(
						{ before(grammarAccess.getLoopedModelAccess().getStaticAssignment_0_1()); }
						(rule__LoopedModel__StaticAssignment_0_1)
						{ after(grammarAccess.getLoopedModelAccess().getStaticAssignment_0_1()); }
					)
					(
						{ before(grammarAccess.getLoopedModelAccess().getStaticAssignment_0_1()); }
						((rule__LoopedModel__StaticAssignment_0_1)=>rule__LoopedModel__StaticAssignment_0_1)*
						{ after(grammarAccess.getLoopedModelAccess().getStaticAssignment_0_1()); }
					)
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getLoopedModelAccess().getUnorderedGroup_0(), 2)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getLoopedModelAccess().getUnorderedGroup_0(), 2);
				}
				{
					selected = true;
				}
				(
					(
						{ before(grammarAccess.getLoopedModelAccess().getSynchronizedAssignment_0_2()); }
						(rule__LoopedModel__SynchronizedAssignment_0_2)
						{ after(grammarAccess.getLoopedModelAccess().getSynchronizedAssignment_0_2()); }
					)
					(
						{ before(grammarAccess.getLoopedModelAccess().getSynchronizedAssignment_0_2()); }
						((rule__LoopedModel__SynchronizedAssignment_0_2)=>rule__LoopedModel__SynchronizedAssignment_0_2)*
						{ after(grammarAccess.getLoopedModelAccess().getSynchronizedAssignment_0_2()); }
					)
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getLoopedModelAccess().getUnorderedGroup_0(), 3)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getLoopedModelAccess().getUnorderedGroup_0(), 3);
				}
				{
					selected = true;
				}
				(
					(
						{ before(grammarAccess.getLoopedModelAccess().getAlternatives_0_3()); }
						(rule__LoopedModel__Alternatives_0_3)
						{ after(grammarAccess.getLoopedModelAccess().getAlternatives_0_3()); }
					)
					(
						{ before(grammarAccess.getLoopedModelAccess().getAlternatives_0_3()); }
						((rule__LoopedModel__Alternatives_0_3)=>rule__LoopedModel__Alternatives_0_3)*
						{ after(grammarAccess.getLoopedModelAccess().getAlternatives_0_3()); }
					)
				)
			)
		)
		)
;
finally {
	if (selected)
		getUnorderedGroupHelper().returnFromSelection(grammarAccess.getLoopedModelAccess().getUnorderedGroup_0());
	restoreStackSize(stackSize);
}

rule__LoopedModel__UnorderedGroup_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LoopedModel__UnorderedGroup_0__Impl
	rule__LoopedModel__UnorderedGroup_0__1?
;
finally {
	restoreStackSize(stackSize);
}

rule__LoopedModel__UnorderedGroup_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LoopedModel__UnorderedGroup_0__Impl
	rule__LoopedModel__UnorderedGroup_0__2?
;
finally {
	restoreStackSize(stackSize);
}

rule__LoopedModel__UnorderedGroup_0__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LoopedModel__UnorderedGroup_0__Impl
	rule__LoopedModel__UnorderedGroup_0__3?
;
finally {
	restoreStackSize(stackSize);
}

rule__LoopedModel__UnorderedGroup_0__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__LoopedModel__UnorderedGroup_0__Impl
;
finally {
	restoreStackSize(stackSize);
}


rule__GroupLoopedModel__UnorderedGroup_0
	@init {
		int stackSize = keepStackSize();
		getUnorderedGroupHelper().enter(grammarAccess.getGroupLoopedModelAccess().getUnorderedGroup_0());
	}
:
	rule__GroupLoopedModel__UnorderedGroup_0__0
	{getUnorderedGroupHelper().canLeave(grammarAccess.getGroupLoopedModelAccess().getUnorderedGroup_0())}?
;
finally {
	getUnorderedGroupHelper().leave(grammarAccess.getGroupLoopedModelAccess().getUnorderedGroup_0());
	restoreStackSize(stackSize);
}

rule__GroupLoopedModel__UnorderedGroup_0__Impl
	@init {
		int stackSize = keepStackSize();
		boolean selected = false;
	}
:
		(
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getGroupLoopedModelAccess().getUnorderedGroup_0(), 0)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getGroupLoopedModelAccess().getUnorderedGroup_0(), 0);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getGroupLoopedModelAccess().getVisibilityAssignment_0_0()); }
					(rule__GroupLoopedModel__VisibilityAssignment_0_0)
					{ after(grammarAccess.getGroupLoopedModelAccess().getVisibilityAssignment_0_0()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getGroupLoopedModelAccess().getUnorderedGroup_0(), 1)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getGroupLoopedModelAccess().getUnorderedGroup_0(), 1);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getGroupLoopedModelAccess().getStaticAssignment_0_1()); }
					(rule__GroupLoopedModel__StaticAssignment_0_1)
					{ after(grammarAccess.getGroupLoopedModelAccess().getStaticAssignment_0_1()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getGroupLoopedModelAccess().getUnorderedGroup_0(), 2)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getGroupLoopedModelAccess().getUnorderedGroup_0(), 2);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getGroupLoopedModelAccess().getSynchronizedAssignment_0_2()); }
					(rule__GroupLoopedModel__SynchronizedAssignment_0_2)
					{ after(grammarAccess.getGroupLoopedModelAccess().getSynchronizedAssignment_0_2()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getGroupLoopedModelAccess().getUnorderedGroup_0(), 3)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getGroupLoopedModelAccess().getUnorderedGroup_0(), 3);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getGroupLoopedModelAccess().getAlternatives_0_3()); }
					(rule__GroupLoopedModel__Alternatives_0_3)
					{ after(grammarAccess.getGroupLoopedModelAccess().getAlternatives_0_3()); }
				)
			)
		)
		)
;
finally {
	if (selected)
		getUnorderedGroupHelper().returnFromSelection(grammarAccess.getGroupLoopedModelAccess().getUnorderedGroup_0());
	restoreStackSize(stackSize);
}

rule__GroupLoopedModel__UnorderedGroup_0__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__GroupLoopedModel__UnorderedGroup_0__Impl
	rule__GroupLoopedModel__UnorderedGroup_0__1?
;
finally {
	restoreStackSize(stackSize);
}

rule__GroupLoopedModel__UnorderedGroup_0__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__GroupLoopedModel__UnorderedGroup_0__Impl
	rule__GroupLoopedModel__UnorderedGroup_0__2?
;
finally {
	restoreStackSize(stackSize);
}

rule__GroupLoopedModel__UnorderedGroup_0__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__GroupLoopedModel__UnorderedGroup_0__Impl
	rule__GroupLoopedModel__UnorderedGroup_0__3?
;
finally {
	restoreStackSize(stackSize);
}

rule__GroupLoopedModel__UnorderedGroup_0__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__GroupLoopedModel__UnorderedGroup_0__Impl
;
finally {
	restoreStackSize(stackSize);
}


rule__Bug304681Model__UnorderedGroup_2
	@init {
		int stackSize = keepStackSize();
		getUnorderedGroupHelper().enter(grammarAccess.getBug304681ModelAccess().getUnorderedGroup_2());
	}
:
	rule__Bug304681Model__UnorderedGroup_2__0
	?
;
finally {
	getUnorderedGroupHelper().leave(grammarAccess.getBug304681ModelAccess().getUnorderedGroup_2());
	restoreStackSize(stackSize);
}

rule__Bug304681Model__UnorderedGroup_2__Impl
	@init {
		int stackSize = keepStackSize();
		boolean selected = false;
	}
:
		(
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getBug304681ModelAccess().getUnorderedGroup_2(), 0)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getBug304681ModelAccess().getUnorderedGroup_2(), 0);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getBug304681ModelAccess().getGroup_2_0()); }
					(rule__Bug304681Model__Group_2_0__0)
					{ after(grammarAccess.getBug304681ModelAccess().getGroup_2_0()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getBug304681ModelAccess().getUnorderedGroup_2(), 1)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getBug304681ModelAccess().getUnorderedGroup_2(), 1);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getBug304681ModelAccess().getGroup_2_1()); }
					(rule__Bug304681Model__Group_2_1__0)
					{ after(grammarAccess.getBug304681ModelAccess().getGroup_2_1()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getBug304681ModelAccess().getUnorderedGroup_2(), 2)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getBug304681ModelAccess().getUnorderedGroup_2(), 2);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getBug304681ModelAccess().getGroup_2_2()); }
					(rule__Bug304681Model__Group_2_2__0)
					{ after(grammarAccess.getBug304681ModelAccess().getGroup_2_2()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getBug304681ModelAccess().getUnorderedGroup_2(), 3)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getBug304681ModelAccess().getUnorderedGroup_2(), 3);
				}
				{
					selected = true;
				}
				(
					{ before(grammarAccess.getBug304681ModelAccess().getGroup_2_3()); }
					(rule__Bug304681Model__Group_2_3__0)
					{ after(grammarAccess.getBug304681ModelAccess().getGroup_2_3()); }
				)
			)
		)|
		( 
			{getUnorderedGroupHelper().canSelect(grammarAccess.getBug304681ModelAccess().getUnorderedGroup_2(), 4)}?=>(
				{
					getUnorderedGroupHelper().select(grammarAccess.getBug304681ModelAccess().getUnorderedGroup_2(), 4);
				}
				{
					selected = true;
				}
				(
					(
						{ before(grammarAccess.getBug304681ModelAccess().getFeaturesAssignment_2_4()); }
						(rule__Bug304681Model__FeaturesAssignment_2_4)
						{ after(grammarAccess.getBug304681ModelAccess().getFeaturesAssignment_2_4()); }
					)
					(
						{ before(grammarAccess.getBug304681ModelAccess().getFeaturesAssignment_2_4()); }
						((rule__Bug304681Model__FeaturesAssignment_2_4)=>rule__Bug304681Model__FeaturesAssignment_2_4)*
						{ after(grammarAccess.getBug304681ModelAccess().getFeaturesAssignment_2_4()); }
					)
				)
			)
		)
		)
;
finally {
	if (selected)
		getUnorderedGroupHelper().returnFromSelection(grammarAccess.getBug304681ModelAccess().getUnorderedGroup_2());
	restoreStackSize(stackSize);
}

rule__Bug304681Model__UnorderedGroup_2__0
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Bug304681Model__UnorderedGroup_2__Impl
	rule__Bug304681Model__UnorderedGroup_2__1?
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Model__UnorderedGroup_2__1
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Bug304681Model__UnorderedGroup_2__Impl
	rule__Bug304681Model__UnorderedGroup_2__2?
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Model__UnorderedGroup_2__2
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Bug304681Model__UnorderedGroup_2__Impl
	rule__Bug304681Model__UnorderedGroup_2__3?
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Model__UnorderedGroup_2__3
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Bug304681Model__UnorderedGroup_2__Impl
	rule__Bug304681Model__UnorderedGroup_2__4?
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Model__UnorderedGroup_2__4
	@init {
		int stackSize = keepStackSize();
	}
:
	rule__Bug304681Model__UnorderedGroup_2__Impl
;
finally {
	restoreStackSize(stackSize);
}


rule__Model__FirstAssignment_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getFirstSimpleModelParserRuleCall_0_1_0()); }
		ruleSimpleModel
		{ after(grammarAccess.getModelAccess().getFirstSimpleModelParserRuleCall_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__SecondAssignment_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getSecondMandatoryModelParserRuleCall_1_1_0()); }
		ruleMandatoryModel
		{ after(grammarAccess.getModelAccess().getSecondMandatoryModelParserRuleCall_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__ThrirdAssignment_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getThrirdLoopedModelParserRuleCall_2_1_0()); }
		ruleLoopedModel
		{ after(grammarAccess.getModelAccess().getThrirdLoopedModelParserRuleCall_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__ForthAssignment_3_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getForthGroupLoopedModelParserRuleCall_3_1_0()); }
		ruleGroupLoopedModel
		{ after(grammarAccess.getModelAccess().getForthGroupLoopedModelParserRuleCall_3_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__FifthAssignment_4_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getFifthLoopedAlternativeModelParserRuleCall_4_1_0()); }
		ruleLoopedAlternativeModel
		{ after(grammarAccess.getModelAccess().getFifthLoopedAlternativeModelParserRuleCall_4_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Model__ModelAssignment_5_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getModelAccess().getModelBug304681ModelParserRuleCall_5_1_0()); }
		ruleBug304681Model
		{ after(grammarAccess.getModelAccess().getModelBug304681ModelParserRuleCall_5_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SimpleModel__VisibilityAssignment_0_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSimpleModelAccess().getVisibilityAlternatives_0_0_0()); }
		(rule__SimpleModel__VisibilityAlternatives_0_0_0)
		{ after(grammarAccess.getSimpleModelAccess().getVisibilityAlternatives_0_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SimpleModel__StaticAssignment_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSimpleModelAccess().getStaticStaticKeyword_0_1_0()); }
		(
			{ before(grammarAccess.getSimpleModelAccess().getStaticStaticKeyword_0_1_0()); }
			'static'
			{ after(grammarAccess.getSimpleModelAccess().getStaticStaticKeyword_0_1_0()); }
		)
		{ after(grammarAccess.getSimpleModelAccess().getStaticStaticKeyword_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SimpleModel__SynchronizedAssignment_0_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSimpleModelAccess().getSynchronizedSynchronizedKeyword_0_2_0()); }
		(
			{ before(grammarAccess.getSimpleModelAccess().getSynchronizedSynchronizedKeyword_0_2_0()); }
			'synchronized'
			{ after(grammarAccess.getSimpleModelAccess().getSynchronizedSynchronizedKeyword_0_2_0()); }
		)
		{ after(grammarAccess.getSimpleModelAccess().getSynchronizedSynchronizedKeyword_0_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SimpleModel__AbstractAssignment_0_3_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSimpleModelAccess().getAbstractAbstractKeyword_0_3_0_0()); }
		(
			{ before(grammarAccess.getSimpleModelAccess().getAbstractAbstractKeyword_0_3_0_0()); }
			'abstract'
			{ after(grammarAccess.getSimpleModelAccess().getAbstractAbstractKeyword_0_3_0_0()); }
		)
		{ after(grammarAccess.getSimpleModelAccess().getAbstractAbstractKeyword_0_3_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SimpleModel__FinalAssignment_0_3_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSimpleModelAccess().getFinalFinalKeyword_0_3_1_0()); }
		(
			{ before(grammarAccess.getSimpleModelAccess().getFinalFinalKeyword_0_3_1_0()); }
			'final'
			{ after(grammarAccess.getSimpleModelAccess().getFinalFinalKeyword_0_3_1_0()); }
		)
		{ after(grammarAccess.getSimpleModelAccess().getFinalFinalKeyword_0_3_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__SimpleModel__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getSimpleModelAccess().getNameIDTerminalRuleCall_2_0()); }
		RULE_ID
		{ after(grammarAccess.getSimpleModelAccess().getNameIDTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__MandatoryModel__VisibilityAssignment_0_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getMandatoryModelAccess().getVisibilityAlternatives_0_0_0()); }
		(rule__MandatoryModel__VisibilityAlternatives_0_0_0)
		{ after(grammarAccess.getMandatoryModelAccess().getVisibilityAlternatives_0_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__MandatoryModel__StaticAssignment_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getMandatoryModelAccess().getStaticStaticKeyword_0_1_0()); }
		(
			{ before(grammarAccess.getMandatoryModelAccess().getStaticStaticKeyword_0_1_0()); }
			'static'
			{ after(grammarAccess.getMandatoryModelAccess().getStaticStaticKeyword_0_1_0()); }
		)
		{ after(grammarAccess.getMandatoryModelAccess().getStaticStaticKeyword_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__MandatoryModel__SynchronizedAssignment_0_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getMandatoryModelAccess().getSynchronizedSynchronizedKeyword_0_2_0()); }
		(
			{ before(grammarAccess.getMandatoryModelAccess().getSynchronizedSynchronizedKeyword_0_2_0()); }
			'synchronized'
			{ after(grammarAccess.getMandatoryModelAccess().getSynchronizedSynchronizedKeyword_0_2_0()); }
		)
		{ after(grammarAccess.getMandatoryModelAccess().getSynchronizedSynchronizedKeyword_0_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__MandatoryModel__AbstractAssignment_0_3_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getMandatoryModelAccess().getAbstractAbstractKeyword_0_3_0_0()); }
		(
			{ before(grammarAccess.getMandatoryModelAccess().getAbstractAbstractKeyword_0_3_0_0()); }
			'abstract'
			{ after(grammarAccess.getMandatoryModelAccess().getAbstractAbstractKeyword_0_3_0_0()); }
		)
		{ after(grammarAccess.getMandatoryModelAccess().getAbstractAbstractKeyword_0_3_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__MandatoryModel__FinalAssignment_0_3_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getMandatoryModelAccess().getFinalFinalKeyword_0_3_1_0()); }
		(
			{ before(grammarAccess.getMandatoryModelAccess().getFinalFinalKeyword_0_3_1_0()); }
			'final'
			{ after(grammarAccess.getMandatoryModelAccess().getFinalFinalKeyword_0_3_1_0()); }
		)
		{ after(grammarAccess.getMandatoryModelAccess().getFinalFinalKeyword_0_3_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__MandatoryModel__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getMandatoryModelAccess().getNameIDTerminalRuleCall_2_0()); }
		RULE_ID
		{ after(grammarAccess.getMandatoryModelAccess().getNameIDTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__LoopedModel__VisibilityAssignment_0_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLoopedModelAccess().getVisibilityAlternatives_0_0_0()); }
		(rule__LoopedModel__VisibilityAlternatives_0_0_0)
		{ after(grammarAccess.getLoopedModelAccess().getVisibilityAlternatives_0_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__LoopedModel__StaticAssignment_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLoopedModelAccess().getStaticStaticKeyword_0_1_0()); }
		(
			{ before(grammarAccess.getLoopedModelAccess().getStaticStaticKeyword_0_1_0()); }
			'static'
			{ after(grammarAccess.getLoopedModelAccess().getStaticStaticKeyword_0_1_0()); }
		)
		{ after(grammarAccess.getLoopedModelAccess().getStaticStaticKeyword_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__LoopedModel__SynchronizedAssignment_0_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLoopedModelAccess().getSynchronizedSynchronizedKeyword_0_2_0()); }
		(
			{ before(grammarAccess.getLoopedModelAccess().getSynchronizedSynchronizedKeyword_0_2_0()); }
			'synchronized'
			{ after(grammarAccess.getLoopedModelAccess().getSynchronizedSynchronizedKeyword_0_2_0()); }
		)
		{ after(grammarAccess.getLoopedModelAccess().getSynchronizedSynchronizedKeyword_0_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__LoopedModel__AbstractAssignment_0_3_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLoopedModelAccess().getAbstractAbstractKeyword_0_3_0_0()); }
		(
			{ before(grammarAccess.getLoopedModelAccess().getAbstractAbstractKeyword_0_3_0_0()); }
			'abstract'
			{ after(grammarAccess.getLoopedModelAccess().getAbstractAbstractKeyword_0_3_0_0()); }
		)
		{ after(grammarAccess.getLoopedModelAccess().getAbstractAbstractKeyword_0_3_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__LoopedModel__FinalAssignment_0_3_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLoopedModelAccess().getFinalFinalKeyword_0_3_1_0()); }
		(
			{ before(grammarAccess.getLoopedModelAccess().getFinalFinalKeyword_0_3_1_0()); }
			'final'
			{ after(grammarAccess.getLoopedModelAccess().getFinalFinalKeyword_0_3_1_0()); }
		)
		{ after(grammarAccess.getLoopedModelAccess().getFinalFinalKeyword_0_3_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__LoopedModel__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLoopedModelAccess().getNameIDTerminalRuleCall_2_0()); }
		RULE_ID
		{ after(grammarAccess.getLoopedModelAccess().getNameIDTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__GroupLoopedModel__VisibilityAssignment_0_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getGroupLoopedModelAccess().getVisibilityAlternatives_0_0_0()); }
		(rule__GroupLoopedModel__VisibilityAlternatives_0_0_0)
		{ after(grammarAccess.getGroupLoopedModelAccess().getVisibilityAlternatives_0_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__GroupLoopedModel__StaticAssignment_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getGroupLoopedModelAccess().getStaticStaticKeyword_0_1_0()); }
		(
			{ before(grammarAccess.getGroupLoopedModelAccess().getStaticStaticKeyword_0_1_0()); }
			'static'
			{ after(grammarAccess.getGroupLoopedModelAccess().getStaticStaticKeyword_0_1_0()); }
		)
		{ after(grammarAccess.getGroupLoopedModelAccess().getStaticStaticKeyword_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__GroupLoopedModel__SynchronizedAssignment_0_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getGroupLoopedModelAccess().getSynchronizedSynchronizedKeyword_0_2_0()); }
		(
			{ before(grammarAccess.getGroupLoopedModelAccess().getSynchronizedSynchronizedKeyword_0_2_0()); }
			'synchronized'
			{ after(grammarAccess.getGroupLoopedModelAccess().getSynchronizedSynchronizedKeyword_0_2_0()); }
		)
		{ after(grammarAccess.getGroupLoopedModelAccess().getSynchronizedSynchronizedKeyword_0_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__GroupLoopedModel__AbstractAssignment_0_3_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getGroupLoopedModelAccess().getAbstractAbstractKeyword_0_3_0_0()); }
		(
			{ before(grammarAccess.getGroupLoopedModelAccess().getAbstractAbstractKeyword_0_3_0_0()); }
			'abstract'
			{ after(grammarAccess.getGroupLoopedModelAccess().getAbstractAbstractKeyword_0_3_0_0()); }
		)
		{ after(grammarAccess.getGroupLoopedModelAccess().getAbstractAbstractKeyword_0_3_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__GroupLoopedModel__FinalAssignment_0_3_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getGroupLoopedModelAccess().getFinalFinalKeyword_0_3_1_0()); }
		(
			{ before(grammarAccess.getGroupLoopedModelAccess().getFinalFinalKeyword_0_3_1_0()); }
			'final'
			{ after(grammarAccess.getGroupLoopedModelAccess().getFinalFinalKeyword_0_3_1_0()); }
		)
		{ after(grammarAccess.getGroupLoopedModelAccess().getFinalFinalKeyword_0_3_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__GroupLoopedModel__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getGroupLoopedModelAccess().getNameIDTerminalRuleCall_2_0()); }
		RULE_ID
		{ after(grammarAccess.getGroupLoopedModelAccess().getNameIDTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__LoopedAlternativeModel__VisibilityAssignment_0_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLoopedAlternativeModelAccess().getVisibilityAlternatives_0_0_0()); }
		(rule__LoopedAlternativeModel__VisibilityAlternatives_0_0_0)
		{ after(grammarAccess.getLoopedAlternativeModelAccess().getVisibilityAlternatives_0_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__LoopedAlternativeModel__StaticAssignment_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLoopedAlternativeModelAccess().getStaticStaticKeyword_0_1_0()); }
		(
			{ before(grammarAccess.getLoopedAlternativeModelAccess().getStaticStaticKeyword_0_1_0()); }
			'static'
			{ after(grammarAccess.getLoopedAlternativeModelAccess().getStaticStaticKeyword_0_1_0()); }
		)
		{ after(grammarAccess.getLoopedAlternativeModelAccess().getStaticStaticKeyword_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__LoopedAlternativeModel__SynchronizedAssignment_0_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLoopedAlternativeModelAccess().getSynchronizedSynchronizedKeyword_0_2_0()); }
		(
			{ before(grammarAccess.getLoopedAlternativeModelAccess().getSynchronizedSynchronizedKeyword_0_2_0()); }
			'synchronized'
			{ after(grammarAccess.getLoopedAlternativeModelAccess().getSynchronizedSynchronizedKeyword_0_2_0()); }
		)
		{ after(grammarAccess.getLoopedAlternativeModelAccess().getSynchronizedSynchronizedKeyword_0_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__LoopedAlternativeModel__AbstractAssignment_0_3_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLoopedAlternativeModelAccess().getAbstractAbstractKeyword_0_3_0_0()); }
		(
			{ before(grammarAccess.getLoopedAlternativeModelAccess().getAbstractAbstractKeyword_0_3_0_0()); }
			'abstract'
			{ after(grammarAccess.getLoopedAlternativeModelAccess().getAbstractAbstractKeyword_0_3_0_0()); }
		)
		{ after(grammarAccess.getLoopedAlternativeModelAccess().getAbstractAbstractKeyword_0_3_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__LoopedAlternativeModel__FinalAssignment_0_3_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLoopedAlternativeModelAccess().getFinalFinalKeyword_0_3_1_0()); }
		(
			{ before(grammarAccess.getLoopedAlternativeModelAccess().getFinalFinalKeyword_0_3_1_0()); }
			'final'
			{ after(grammarAccess.getLoopedAlternativeModelAccess().getFinalFinalKeyword_0_3_1_0()); }
		)
		{ after(grammarAccess.getLoopedAlternativeModelAccess().getFinalFinalKeyword_0_3_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__LoopedAlternativeModel__NameAssignment_2
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getLoopedAlternativeModelAccess().getNameIDTerminalRuleCall_2_0()); }
		RULE_ID
		{ after(grammarAccess.getLoopedAlternativeModelAccess().getNameIDTerminalRuleCall_2_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Model__ShortDescriptionAssignment_2_0_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getBug304681ModelAccess().getShortDescriptionSTRINGTerminalRuleCall_2_0_1_0()); }
		RULE_STRING
		{ after(grammarAccess.getBug304681ModelAccess().getShortDescriptionSTRINGTerminalRuleCall_2_0_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Model__LongDescriptionAssignment_2_1_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getBug304681ModelAccess().getLongDescriptionSTRINGTerminalRuleCall_2_1_1_0()); }
		RULE_STRING
		{ after(grammarAccess.getBug304681ModelAccess().getLongDescriptionSTRINGTerminalRuleCall_2_1_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Model__UidAssignment_2_2_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getBug304681ModelAccess().getUidSTRINGTerminalRuleCall_2_2_1_0()); }
		RULE_STRING
		{ after(grammarAccess.getBug304681ModelAccess().getUidSTRINGTerminalRuleCall_2_2_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Model__FlagAssignment_2_3_0
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getBug304681ModelAccess().getFlagFlagKeyword_2_3_0_0()); }
		(
			{ before(grammarAccess.getBug304681ModelAccess().getFlagFlagKeyword_2_3_0_0()); }
			'flag'
			{ after(grammarAccess.getBug304681ModelAccess().getFlagFlagKeyword_2_3_0_0()); }
		)
		{ after(grammarAccess.getBug304681ModelAccess().getFlagFlagKeyword_2_3_0_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Model__FeaturesAssignment_2_4
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getBug304681ModelAccess().getFeaturesBug304681FeatureParserRuleCall_2_4_0()); }
		ruleBug304681Feature
		{ after(grammarAccess.getBug304681ModelAccess().getFeaturesBug304681FeatureParserRuleCall_2_4_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Attribute__NameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getBug304681AttributeAccess().getNameIDTerminalRuleCall_1_0()); }
		RULE_ID
		{ after(grammarAccess.getBug304681AttributeAccess().getNameIDTerminalRuleCall_1_0()); }
	)
;
finally {
	restoreStackSize(stackSize);
}

rule__Bug304681Reference__NameAssignment_1
	@init {
		int stackSize = keepStackSize();
	}
:
	(
		{ before(grammarAccess.getBug304681ReferenceAccess().getNameIDTerminalRuleCall_1_0()); }
		RULE_ID
		{ after(grammarAccess.getBug304681ReferenceAccess().getNameIDTerminalRuleCall_1_0()); }
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

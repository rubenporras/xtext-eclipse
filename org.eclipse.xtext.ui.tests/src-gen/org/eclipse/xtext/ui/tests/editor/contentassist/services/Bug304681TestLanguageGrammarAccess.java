/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
package org.eclipse.xtext.ui.tests.editor.contentassist.services;

import com.google.inject.Inject;
import com.google.inject.Singleton;
import java.util.List;
import org.eclipse.xtext.Action;
import org.eclipse.xtext.Alternatives;
import org.eclipse.xtext.Assignment;
import org.eclipse.xtext.CrossReference;
import org.eclipse.xtext.Grammar;
import org.eclipse.xtext.GrammarUtil;
import org.eclipse.xtext.Group;
import org.eclipse.xtext.Keyword;
import org.eclipse.xtext.ParserRule;
import org.eclipse.xtext.RuleCall;
import org.eclipse.xtext.TerminalRule;
import org.eclipse.xtext.UnorderedGroup;
import org.eclipse.xtext.common.services.TerminalsGrammarAccess;
import org.eclipse.xtext.service.AbstractElementFinder;
import org.eclipse.xtext.service.GrammarProvider;

@Singleton
public class Bug304681TestLanguageGrammarAccess extends AbstractElementFinder.AbstractGrammarElementFinder {
	
	public class ModelElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug304681TestLanguage.Model");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final Group cGroup_0 = (Group)cAlternatives.eContents().get(0);
		private final Keyword cDigitOneKeyword_0_0 = (Keyword)cGroup_0.eContents().get(0);
		private final Assignment cDefinitionAssignment_0_1 = (Assignment)cGroup_0.eContents().get(1);
		private final RuleCall cDefinitionPackageDefinitionParserRuleCall_0_1_0 = (RuleCall)cDefinitionAssignment_0_1.eContents().get(0);
		private final Group cGroup_1 = (Group)cAlternatives.eContents().get(1);
		private final Keyword cDigitTwoKeyword_1_0 = (Keyword)cGroup_1.eContents().get(0);
		private final Assignment cDefinitionAssignment_1_1 = (Assignment)cGroup_1.eContents().get(1);
		private final RuleCall cDefinitionPackageDefinition2ParserRuleCall_1_1_0 = (RuleCall)cDefinitionAssignment_1_1.eContents().get(0);
		
		//Model:
		//    '1' definition = PackageDefinition
		//  | '2' definition = PackageDefinition2
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//  '1' definition = PackageDefinition
		//| '2' definition = PackageDefinition2
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//'1' definition = PackageDefinition
		public Group getGroup_0() { return cGroup_0; }
		
		//'1'
		public Keyword getDigitOneKeyword_0_0() { return cDigitOneKeyword_0_0; }
		
		//definition = PackageDefinition
		public Assignment getDefinitionAssignment_0_1() { return cDefinitionAssignment_0_1; }
		
		//PackageDefinition
		public RuleCall getDefinitionPackageDefinitionParserRuleCall_0_1_0() { return cDefinitionPackageDefinitionParserRuleCall_0_1_0; }
		
		//'2' definition = PackageDefinition2
		public Group getGroup_1() { return cGroup_1; }
		
		//'2'
		public Keyword getDigitTwoKeyword_1_0() { return cDigitTwoKeyword_1_0; }
		
		//definition = PackageDefinition2
		public Assignment getDefinitionAssignment_1_1() { return cDefinitionAssignment_1_1; }
		
		//PackageDefinition2
		public RuleCall getDefinitionPackageDefinition2ParserRuleCall_1_1_0() { return cDefinitionPackageDefinition2ParserRuleCall_1_1_0; }
	}
	public class PackageDefinitionElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug304681TestLanguage.PackageDefinition");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Action cPackageDefinitionAction_0 = (Action)cGroup.eContents().get(0);
		private final Keyword cPackageKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Assignment cNamespaceAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final RuleCall cNamespaceIDTerminalRuleCall_2_0 = (RuleCall)cNamespaceAssignment_2.eContents().get(0);
		private final Keyword cSemicolonKeyword_3 = (Keyword)cGroup.eContents().get(3);
		private final Assignment cContentsAssignment_4 = (Assignment)cGroup.eContents().get(4);
		private final RuleCall cContentsObjectParserRuleCall_4_0 = (RuleCall)cContentsAssignment_4.eContents().get(0);
		
		//PackageDefinition:
		//    {PackageDefinition} "package" namespace=ID  ";"
		//    (contents+=Object)*;
		@Override public ParserRule getRule() { return rule; }
		
		//{PackageDefinition} "package" namespace=ID  ";"
		//(contents+=Object)*
		public Group getGroup() { return cGroup; }
		
		//{PackageDefinition}
		public Action getPackageDefinitionAction_0() { return cPackageDefinitionAction_0; }
		
		//"package"
		public Keyword getPackageKeyword_1() { return cPackageKeyword_1; }
		
		//namespace=ID
		public Assignment getNamespaceAssignment_2() { return cNamespaceAssignment_2; }
		
		//ID
		public RuleCall getNamespaceIDTerminalRuleCall_2_0() { return cNamespaceIDTerminalRuleCall_2_0; }
		
		//";"
		public Keyword getSemicolonKeyword_3() { return cSemicolonKeyword_3; }
		
		//(contents+=Object)*
		public Assignment getContentsAssignment_4() { return cContentsAssignment_4; }
		
		//Object
		public RuleCall getContentsObjectParserRuleCall_4_0() { return cContentsObjectParserRuleCall_4_0; }
	}
	public class ObjectElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug304681TestLanguage.Object");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Alternatives cAlternatives_0 = (Alternatives)cGroup.eContents().get(0);
		private final Assignment cEnabledAssignment_0_0 = (Assignment)cAlternatives_0.eContents().get(0);
		private final Keyword cEnabledEnabledKeyword_0_0_0 = (Keyword)cEnabledAssignment_0_0.eContents().get(0);
		private final Assignment cAbstractAssignment_0_1 = (Assignment)cAlternatives_0.eContents().get(1);
		private final Keyword cAbstractAbstractKeyword_0_1_0 = (Keyword)cAbstractAssignment_0_1.eContents().get(0);
		private final Keyword cObjectKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Assignment cNameAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final RuleCall cNameIDTerminalRuleCall_2_0 = (RuleCall)cNameAssignment_2.eContents().get(0);
		private final Group cGroup_3 = (Group)cGroup.eContents().get(3);
		private final Keyword cExtendsKeyword_3_0 = (Keyword)cGroup_3.eContents().get(0);
		private final Assignment cParentAssignment_3_1 = (Assignment)cGroup_3.eContents().get(1);
		private final CrossReference cParentObjectCrossReference_3_1_0 = (CrossReference)cParentAssignment_3_1.eContents().get(0);
		private final RuleCall cParentObjectIDTerminalRuleCall_3_1_0_1 = (RuleCall)cParentObjectCrossReference_3_1_0.eContents().get(1);
		private final Keyword cLeftCurlyBracketKeyword_4 = (Keyword)cGroup.eContents().get(4);
		private final UnorderedGroup cUnorderedGroup_5 = (UnorderedGroup)cGroup.eContents().get(5);
		private final Group cGroup_5_0 = (Group)cUnorderedGroup_5.eContents().get(0);
		private final Keyword cShortDescriptionKeyword_5_0_0 = (Keyword)cGroup_5_0.eContents().get(0);
		private final Assignment cShortDescriptionAssignment_5_0_1 = (Assignment)cGroup_5_0.eContents().get(1);
		private final RuleCall cShortDescriptionSTRINGTerminalRuleCall_5_0_1_0 = (RuleCall)cShortDescriptionAssignment_5_0_1.eContents().get(0);
		private final Keyword cSemicolonKeyword_5_0_2 = (Keyword)cGroup_5_0.eContents().get(2);
		private final Group cGroup_5_1 = (Group)cUnorderedGroup_5.eContents().get(1);
		private final Keyword cLongDescriptionKeyword_5_1_0 = (Keyword)cGroup_5_1.eContents().get(0);
		private final Assignment cLongDescriptionAssignment_5_1_1 = (Assignment)cGroup_5_1.eContents().get(1);
		private final RuleCall cLongDescriptionSTRINGTerminalRuleCall_5_1_1_0 = (RuleCall)cLongDescriptionAssignment_5_1_1.eContents().get(0);
		private final Keyword cSemicolonKeyword_5_1_2 = (Keyword)cGroup_5_1.eContents().get(2);
		private final Group cGroup_5_2 = (Group)cUnorderedGroup_5.eContents().get(2);
		private final Keyword cSerialUIDKeyword_5_2_0 = (Keyword)cGroup_5_2.eContents().get(0);
		private final Assignment cSerialVersionUIDAssignment_5_2_1 = (Assignment)cGroup_5_2.eContents().get(1);
		private final RuleCall cSerialVersionUIDINTTerminalRuleCall_5_2_1_0 = (RuleCall)cSerialVersionUIDAssignment_5_2_1.eContents().get(0);
		private final Keyword cSemicolonKeyword_5_2_2 = (Keyword)cGroup_5_2.eContents().get(2);
		private final Group cGroup_5_3 = (Group)cUnorderedGroup_5.eContents().get(3);
		private final Assignment cCloneableAssignment_5_3_0 = (Assignment)cGroup_5_3.eContents().get(0);
		private final Keyword cCloneableCloneableKeyword_5_3_0_0 = (Keyword)cCloneableAssignment_5_3_0.eContents().get(0);
		private final Keyword cSemicolonKeyword_5_3_1 = (Keyword)cGroup_5_3.eContents().get(1);
		private final Assignment cFeaturesAssignment_5_4 = (Assignment)cUnorderedGroup_5.eContents().get(4);
		private final RuleCall cFeaturesFeatureParserRuleCall_5_4_0 = (RuleCall)cFeaturesAssignment_5_4.eContents().get(0);
		private final Group cGroup_5_5 = (Group)cUnorderedGroup_5.eContents().get(5);
		private final Keyword cBeforeKeyword_5_5_0 = (Keyword)cGroup_5_5.eContents().get(0);
		private final Assignment cFeaturesAssignment_5_5_1 = (Assignment)cGroup_5_5.eContents().get(1);
		private final RuleCall cFeaturesFeatureParserRuleCall_5_5_1_0 = (RuleCall)cFeaturesAssignment_5_5_1.eContents().get(0);
		private final Keyword cAfterKeyword_5_5_2 = (Keyword)cGroup_5_5.eContents().get(2);
		private final Group cGroup_5_6 = (Group)cUnorderedGroup_5.eContents().get(6);
		private final Keyword cOptionalLoopKeyword_5_6_0 = (Keyword)cGroup_5_6.eContents().get(0);
		private final Assignment cFeaturesAssignment_5_6_1 = (Assignment)cGroup_5_6.eContents().get(1);
		private final RuleCall cFeaturesFeatureParserRuleCall_5_6_1_0 = (RuleCall)cFeaturesAssignment_5_6_1.eContents().get(0);
		private final Group cGroup_5_7 = (Group)cUnorderedGroup_5.eContents().get(7);
		private final Keyword cMandatoryLoopKeyword_5_7_0 = (Keyword)cGroup_5_7.eContents().get(0);
		private final Assignment cFeaturesAssignment_5_7_1 = (Assignment)cGroup_5_7.eContents().get(1);
		private final RuleCall cFeaturesFeatureParserRuleCall_5_7_1_0 = (RuleCall)cFeaturesAssignment_5_7_1.eContents().get(0);
		private final Keyword cRightCurlyBracketKeyword_6 = (Keyword)cGroup.eContents().get(6);
		
		//Object:
		//    (enabled?="enabled" | abstract?="abstract")?
		//    "object" name=ID ("extends" parent=[Object])?
		//    "{"
		//    (
		//        ("shortDescription" shortDescription=STRING ";")? &
		//        ("longDescription" longDescription=STRING ";")? &
		//        ("serialUID" serialVersionUID=INT ";")? &
		//        (cloneable?="cloneable" ";")? &
		//        (features+=Feature*) &
		//        ("before" features+=Feature* "after")? &
		//        ("optionalLoop" features+=Feature*)? &
		//        ("mandatoryLoop" features+=Feature+)?
		//    )
		//    "}";
		@Override public ParserRule getRule() { return rule; }
		
		//(enabled?="enabled" | abstract?="abstract")?
		//"object" name=ID ("extends" parent=[Object])?
		//"{"
		//(
		//    ("shortDescription" shortDescription=STRING ";")? &
		//    ("longDescription" longDescription=STRING ";")? &
		//    ("serialUID" serialVersionUID=INT ";")? &
		//    (cloneable?="cloneable" ";")? &
		//    (features+=Feature*) &
		//    ("before" features+=Feature* "after")? &
		//    ("optionalLoop" features+=Feature*)? &
		//    ("mandatoryLoop" features+=Feature+)?
		//)
		//"}"
		public Group getGroup() { return cGroup; }
		
		//(enabled?="enabled" | abstract?="abstract")?
		public Alternatives getAlternatives_0() { return cAlternatives_0; }
		
		//enabled?="enabled"
		public Assignment getEnabledAssignment_0_0() { return cEnabledAssignment_0_0; }
		
		//"enabled"
		public Keyword getEnabledEnabledKeyword_0_0_0() { return cEnabledEnabledKeyword_0_0_0; }
		
		//abstract?="abstract"
		public Assignment getAbstractAssignment_0_1() { return cAbstractAssignment_0_1; }
		
		//"abstract"
		public Keyword getAbstractAbstractKeyword_0_1_0() { return cAbstractAbstractKeyword_0_1_0; }
		
		//"object"
		public Keyword getObjectKeyword_1() { return cObjectKeyword_1; }
		
		//name=ID
		public Assignment getNameAssignment_2() { return cNameAssignment_2; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_2_0() { return cNameIDTerminalRuleCall_2_0; }
		
		//("extends" parent=[Object])?
		public Group getGroup_3() { return cGroup_3; }
		
		//"extends"
		public Keyword getExtendsKeyword_3_0() { return cExtendsKeyword_3_0; }
		
		//parent=[Object]
		public Assignment getParentAssignment_3_1() { return cParentAssignment_3_1; }
		
		//[Object]
		public CrossReference getParentObjectCrossReference_3_1_0() { return cParentObjectCrossReference_3_1_0; }
		
		//ID
		public RuleCall getParentObjectIDTerminalRuleCall_3_1_0_1() { return cParentObjectIDTerminalRuleCall_3_1_0_1; }
		
		//"{"
		public Keyword getLeftCurlyBracketKeyword_4() { return cLeftCurlyBracketKeyword_4; }
		
		//(
		//    ("shortDescription" shortDescription=STRING ";")? &
		//    ("longDescription" longDescription=STRING ";")? &
		//    ("serialUID" serialVersionUID=INT ";")? &
		//    (cloneable?="cloneable" ";")? &
		//    (features+=Feature*) &
		//    ("before" features+=Feature* "after")? &
		//    ("optionalLoop" features+=Feature*)? &
		//    ("mandatoryLoop" features+=Feature+)?
		//)
		public UnorderedGroup getUnorderedGroup_5() { return cUnorderedGroup_5; }
		
		//("shortDescription" shortDescription=STRING ";")?
		public Group getGroup_5_0() { return cGroup_5_0; }
		
		//"shortDescription"
		public Keyword getShortDescriptionKeyword_5_0_0() { return cShortDescriptionKeyword_5_0_0; }
		
		//shortDescription=STRING
		public Assignment getShortDescriptionAssignment_5_0_1() { return cShortDescriptionAssignment_5_0_1; }
		
		//STRING
		public RuleCall getShortDescriptionSTRINGTerminalRuleCall_5_0_1_0() { return cShortDescriptionSTRINGTerminalRuleCall_5_0_1_0; }
		
		//";"
		public Keyword getSemicolonKeyword_5_0_2() { return cSemicolonKeyword_5_0_2; }
		
		//("longDescription" longDescription=STRING ";")?
		public Group getGroup_5_1() { return cGroup_5_1; }
		
		//"longDescription"
		public Keyword getLongDescriptionKeyword_5_1_0() { return cLongDescriptionKeyword_5_1_0; }
		
		//longDescription=STRING
		public Assignment getLongDescriptionAssignment_5_1_1() { return cLongDescriptionAssignment_5_1_1; }
		
		//STRING
		public RuleCall getLongDescriptionSTRINGTerminalRuleCall_5_1_1_0() { return cLongDescriptionSTRINGTerminalRuleCall_5_1_1_0; }
		
		//";"
		public Keyword getSemicolonKeyword_5_1_2() { return cSemicolonKeyword_5_1_2; }
		
		//("serialUID" serialVersionUID=INT ";")?
		public Group getGroup_5_2() { return cGroup_5_2; }
		
		//"serialUID"
		public Keyword getSerialUIDKeyword_5_2_0() { return cSerialUIDKeyword_5_2_0; }
		
		//serialVersionUID=INT
		public Assignment getSerialVersionUIDAssignment_5_2_1() { return cSerialVersionUIDAssignment_5_2_1; }
		
		//INT
		public RuleCall getSerialVersionUIDINTTerminalRuleCall_5_2_1_0() { return cSerialVersionUIDINTTerminalRuleCall_5_2_1_0; }
		
		//";"
		public Keyword getSemicolonKeyword_5_2_2() { return cSemicolonKeyword_5_2_2; }
		
		//(cloneable?="cloneable" ";")?
		public Group getGroup_5_3() { return cGroup_5_3; }
		
		//cloneable?="cloneable"
		public Assignment getCloneableAssignment_5_3_0() { return cCloneableAssignment_5_3_0; }
		
		//"cloneable"
		public Keyword getCloneableCloneableKeyword_5_3_0_0() { return cCloneableCloneableKeyword_5_3_0_0; }
		
		//";"
		public Keyword getSemicolonKeyword_5_3_1() { return cSemicolonKeyword_5_3_1; }
		
		//(features+=Feature*)
		public Assignment getFeaturesAssignment_5_4() { return cFeaturesAssignment_5_4; }
		
		//Feature
		public RuleCall getFeaturesFeatureParserRuleCall_5_4_0() { return cFeaturesFeatureParserRuleCall_5_4_0; }
		
		//("before" features+=Feature* "after")?
		public Group getGroup_5_5() { return cGroup_5_5; }
		
		//"before"
		public Keyword getBeforeKeyword_5_5_0() { return cBeforeKeyword_5_5_0; }
		
		//features+=Feature*
		public Assignment getFeaturesAssignment_5_5_1() { return cFeaturesAssignment_5_5_1; }
		
		//Feature
		public RuleCall getFeaturesFeatureParserRuleCall_5_5_1_0() { return cFeaturesFeatureParserRuleCall_5_5_1_0; }
		
		//"after"
		public Keyword getAfterKeyword_5_5_2() { return cAfterKeyword_5_5_2; }
		
		//("optionalLoop" features+=Feature*)?
		public Group getGroup_5_6() { return cGroup_5_6; }
		
		//"optionalLoop"
		public Keyword getOptionalLoopKeyword_5_6_0() { return cOptionalLoopKeyword_5_6_0; }
		
		//features+=Feature*
		public Assignment getFeaturesAssignment_5_6_1() { return cFeaturesAssignment_5_6_1; }
		
		//Feature
		public RuleCall getFeaturesFeatureParserRuleCall_5_6_1_0() { return cFeaturesFeatureParserRuleCall_5_6_1_0; }
		
		//("mandatoryLoop" features+=Feature+)?
		public Group getGroup_5_7() { return cGroup_5_7; }
		
		//"mandatoryLoop"
		public Keyword getMandatoryLoopKeyword_5_7_0() { return cMandatoryLoopKeyword_5_7_0; }
		
		//features+=Feature+
		public Assignment getFeaturesAssignment_5_7_1() { return cFeaturesAssignment_5_7_1; }
		
		//Feature
		public RuleCall getFeaturesFeatureParserRuleCall_5_7_1_0() { return cFeaturesFeatureParserRuleCall_5_7_1_0; }
		
		//"}"
		public Keyword getRightCurlyBracketKeyword_6() { return cRightCurlyBracketKeyword_6; }
	}
	public class FeatureElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug304681TestLanguage.Feature");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final RuleCall cAttributeParserRuleCall_0 = (RuleCall)cAlternatives.eContents().get(0);
		private final RuleCall cReferenceParserRuleCall_1 = (RuleCall)cAlternatives.eContents().get(1);
		
		//Feature:
		//    (Attribute | Reference);
		@Override public ParserRule getRule() { return rule; }
		
		//(Attribute | Reference)
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//Attribute
		public RuleCall getAttributeParserRuleCall_0() { return cAttributeParserRuleCall_0; }
		
		//Reference
		public RuleCall getReferenceParserRuleCall_1() { return cReferenceParserRuleCall_1; }
	}
	public class AttributeElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug304681TestLanguage.Attribute");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cAttributeKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Assignment cTypeAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cTypeIDTerminalRuleCall_1_0 = (RuleCall)cTypeAssignment_1.eContents().get(0);
		private final Assignment cNameAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final RuleCall cNameIDTerminalRuleCall_2_0 = (RuleCall)cNameAssignment_2.eContents().get(0);
		private final Keyword cSemicolonKeyword_3 = (Keyword)cGroup.eContents().get(3);
		
		//Attribute:
		//    "Attribute" type=ID name=ID    ";";
		@Override public ParserRule getRule() { return rule; }
		
		//"Attribute" type=ID name=ID	";"
		public Group getGroup() { return cGroup; }
		
		//"Attribute"
		public Keyword getAttributeKeyword_0() { return cAttributeKeyword_0; }
		
		//type=ID
		public Assignment getTypeAssignment_1() { return cTypeAssignment_1; }
		
		//ID
		public RuleCall getTypeIDTerminalRuleCall_1_0() { return cTypeIDTerminalRuleCall_1_0; }
		
		//name=ID
		public Assignment getNameAssignment_2() { return cNameAssignment_2; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_2_0() { return cNameIDTerminalRuleCall_2_0; }
		
		//";"
		public Keyword getSemicolonKeyword_3() { return cSemicolonKeyword_3; }
	}
	public class ReferenceElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug304681TestLanguage.Reference");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cReferenceKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Assignment cTypeAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final CrossReference cTypeObjectCrossReference_1_0 = (CrossReference)cTypeAssignment_1.eContents().get(0);
		private final RuleCall cTypeObjectIDTerminalRuleCall_1_0_1 = (RuleCall)cTypeObjectCrossReference_1_0.eContents().get(1);
		private final Assignment cManyAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final Keyword cManyAsteriskKeyword_2_0 = (Keyword)cManyAssignment_2.eContents().get(0);
		private final Assignment cNameAssignment_3 = (Assignment)cGroup.eContents().get(3);
		private final RuleCall cNameIDTerminalRuleCall_3_0 = (RuleCall)cNameAssignment_3.eContents().get(0);
		private final Alternatives cAlternatives_4 = (Alternatives)cGroup.eContents().get(4);
		private final Group cGroup_4_0 = (Group)cAlternatives_4.eContents().get(0);
		private final Keyword cLeftCurlyBracketKeyword_4_0_0 = (Keyword)cGroup_4_0.eContents().get(0);
		private final UnorderedGroup cUnorderedGroup_4_0_1 = (UnorderedGroup)cGroup_4_0.eContents().get(1);
		private final Group cGroup_4_0_1_0 = (Group)cUnorderedGroup_4_0_1.eContents().get(0);
		private final Keyword cShortDescriptionKeyword_4_0_1_0_0 = (Keyword)cGroup_4_0_1_0.eContents().get(0);
		private final Assignment cShortDescriptionAssignment_4_0_1_0_1 = (Assignment)cGroup_4_0_1_0.eContents().get(1);
		private final RuleCall cShortDescriptionSTRINGTerminalRuleCall_4_0_1_0_1_0 = (RuleCall)cShortDescriptionAssignment_4_0_1_0_1.eContents().get(0);
		private final Keyword cSemicolonKeyword_4_0_1_0_2 = (Keyword)cGroup_4_0_1_0.eContents().get(2);
		private final Group cGroup_4_0_1_1 = (Group)cUnorderedGroup_4_0_1.eContents().get(1);
		private final Keyword cLongDescriptionKeyword_4_0_1_1_0 = (Keyword)cGroup_4_0_1_1.eContents().get(0);
		private final Assignment cLongDescriptionAssignment_4_0_1_1_1 = (Assignment)cGroup_4_0_1_1.eContents().get(1);
		private final RuleCall cLongDescriptionSTRINGTerminalRuleCall_4_0_1_1_1_0 = (RuleCall)cLongDescriptionAssignment_4_0_1_1_1.eContents().get(0);
		private final Keyword cSemicolonKeyword_4_0_1_1_2 = (Keyword)cGroup_4_0_1_1.eContents().get(2);
		private final Keyword cRightCurlyBracketKeyword_4_0_2 = (Keyword)cGroup_4_0.eContents().get(2);
		private final Keyword cSemicolonKeyword_4_1 = (Keyword)cAlternatives_4.eContents().get(1);
		
		//Reference:
		//    "Reference" type=[Object] (many?="*")? name=ID ("{"
		//    (("shortDescription" shortDescription=STRING ";")? &
		//    ("longDescription" longDescription=STRING ";")?)
		//    "}" | ";");
		@Override public ParserRule getRule() { return rule; }
		
		//"Reference" type=[Object] (many?="*")? name=ID ("{"
		//(("shortDescription" shortDescription=STRING ";")? &
		//("longDescription" longDescription=STRING ";")?)
		//"}" | ";")
		public Group getGroup() { return cGroup; }
		
		//"Reference"
		public Keyword getReferenceKeyword_0() { return cReferenceKeyword_0; }
		
		//type=[Object]
		public Assignment getTypeAssignment_1() { return cTypeAssignment_1; }
		
		//[Object]
		public CrossReference getTypeObjectCrossReference_1_0() { return cTypeObjectCrossReference_1_0; }
		
		//ID
		public RuleCall getTypeObjectIDTerminalRuleCall_1_0_1() { return cTypeObjectIDTerminalRuleCall_1_0_1; }
		
		//(many?="*")?
		public Assignment getManyAssignment_2() { return cManyAssignment_2; }
		
		//"*"
		public Keyword getManyAsteriskKeyword_2_0() { return cManyAsteriskKeyword_2_0; }
		
		//name=ID
		public Assignment getNameAssignment_3() { return cNameAssignment_3; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_3_0() { return cNameIDTerminalRuleCall_3_0; }
		
		//("{"
		//   (("shortDescription" shortDescription=STRING ";")? &
		//   ("longDescription" longDescription=STRING ";")?)
		//   "}" | ";")
		public Alternatives getAlternatives_4() { return cAlternatives_4; }
		
		//"{"
		//    (("shortDescription" shortDescription=STRING ";")? &
		//    ("longDescription" longDescription=STRING ";")?)
		//    "}"
		public Group getGroup_4_0() { return cGroup_4_0; }
		
		//"{"
		public Keyword getLeftCurlyBracketKeyword_4_0_0() { return cLeftCurlyBracketKeyword_4_0_0; }
		
		//(("shortDescription" shortDescription=STRING ";")? &
		//("longDescription" longDescription=STRING ";")?)
		public UnorderedGroup getUnorderedGroup_4_0_1() { return cUnorderedGroup_4_0_1; }
		
		//("shortDescription" shortDescription=STRING ";")?
		public Group getGroup_4_0_1_0() { return cGroup_4_0_1_0; }
		
		//"shortDescription"
		public Keyword getShortDescriptionKeyword_4_0_1_0_0() { return cShortDescriptionKeyword_4_0_1_0_0; }
		
		//shortDescription=STRING
		public Assignment getShortDescriptionAssignment_4_0_1_0_1() { return cShortDescriptionAssignment_4_0_1_0_1; }
		
		//STRING
		public RuleCall getShortDescriptionSTRINGTerminalRuleCall_4_0_1_0_1_0() { return cShortDescriptionSTRINGTerminalRuleCall_4_0_1_0_1_0; }
		
		//";"
		public Keyword getSemicolonKeyword_4_0_1_0_2() { return cSemicolonKeyword_4_0_1_0_2; }
		
		//("longDescription" longDescription=STRING ";")?
		public Group getGroup_4_0_1_1() { return cGroup_4_0_1_1; }
		
		//"longDescription"
		public Keyword getLongDescriptionKeyword_4_0_1_1_0() { return cLongDescriptionKeyword_4_0_1_1_0; }
		
		//longDescription=STRING
		public Assignment getLongDescriptionAssignment_4_0_1_1_1() { return cLongDescriptionAssignment_4_0_1_1_1; }
		
		//STRING
		public RuleCall getLongDescriptionSTRINGTerminalRuleCall_4_0_1_1_1_0() { return cLongDescriptionSTRINGTerminalRuleCall_4_0_1_1_1_0; }
		
		//";"
		public Keyword getSemicolonKeyword_4_0_1_1_2() { return cSemicolonKeyword_4_0_1_1_2; }
		
		//"}"
		public Keyword getRightCurlyBracketKeyword_4_0_2() { return cRightCurlyBracketKeyword_4_0_2; }
		
		//";"
		public Keyword getSemicolonKeyword_4_1() { return cSemicolonKeyword_4_1; }
	}
	public class PackageDefinition2Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug304681TestLanguage.PackageDefinition2");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Action cPackageDefinitionAction_0 = (Action)cGroup.eContents().get(0);
		private final Keyword cPackageKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Assignment cNamespaceAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final RuleCall cNamespaceIDTerminalRuleCall_2_0 = (RuleCall)cNamespaceAssignment_2.eContents().get(0);
		private final Keyword cSemicolonKeyword_3 = (Keyword)cGroup.eContents().get(3);
		private final Assignment cContentsAssignment_4 = (Assignment)cGroup.eContents().get(4);
		private final RuleCall cContentsObject2ParserRuleCall_4_0 = (RuleCall)cContentsAssignment_4.eContents().get(0);
		
		//PackageDefinition2 returns PackageDefinition:
		//    {PackageDefinition} "package" namespace=ID  ";"
		//    (contents+=Object2)*;
		@Override public ParserRule getRule() { return rule; }
		
		//{PackageDefinition} "package" namespace=ID  ";"
		//(contents+=Object2)*
		public Group getGroup() { return cGroup; }
		
		//{PackageDefinition}
		public Action getPackageDefinitionAction_0() { return cPackageDefinitionAction_0; }
		
		//"package"
		public Keyword getPackageKeyword_1() { return cPackageKeyword_1; }
		
		//namespace=ID
		public Assignment getNamespaceAssignment_2() { return cNamespaceAssignment_2; }
		
		//ID
		public RuleCall getNamespaceIDTerminalRuleCall_2_0() { return cNamespaceIDTerminalRuleCall_2_0; }
		
		//";"
		public Keyword getSemicolonKeyword_3() { return cSemicolonKeyword_3; }
		
		//(contents+=Object2)*
		public Assignment getContentsAssignment_4() { return cContentsAssignment_4; }
		
		//Object2
		public RuleCall getContentsObject2ParserRuleCall_4_0() { return cContentsObject2ParserRuleCall_4_0; }
	}
	public class Object2Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug304681TestLanguage.Object2");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Alternatives cAlternatives_0 = (Alternatives)cGroup.eContents().get(0);
		private final Assignment cEnabledAssignment_0_0 = (Assignment)cAlternatives_0.eContents().get(0);
		private final Keyword cEnabledEnabledKeyword_0_0_0 = (Keyword)cEnabledAssignment_0_0.eContents().get(0);
		private final Assignment cAbstractAssignment_0_1 = (Assignment)cAlternatives_0.eContents().get(1);
		private final Keyword cAbstractAbstractKeyword_0_1_0 = (Keyword)cAbstractAssignment_0_1.eContents().get(0);
		private final Keyword cObjectKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Assignment cNameAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final RuleCall cNameIDTerminalRuleCall_2_0 = (RuleCall)cNameAssignment_2.eContents().get(0);
		private final Group cGroup_3 = (Group)cGroup.eContents().get(3);
		private final Keyword cExtendsKeyword_3_0 = (Keyword)cGroup_3.eContents().get(0);
		private final Assignment cParentAssignment_3_1 = (Assignment)cGroup_3.eContents().get(1);
		private final CrossReference cParentObjectCrossReference_3_1_0 = (CrossReference)cParentAssignment_3_1.eContents().get(0);
		private final RuleCall cParentObjectIDTerminalRuleCall_3_1_0_1 = (RuleCall)cParentObjectCrossReference_3_1_0.eContents().get(1);
		private final Keyword cLeftCurlyBracketKeyword_4 = (Keyword)cGroup.eContents().get(4);
		private final UnorderedGroup cUnorderedGroup_5 = (UnorderedGroup)cGroup.eContents().get(5);
		private final Group cGroup_5_0 = (Group)cUnorderedGroup_5.eContents().get(0);
		private final Keyword cShortDescriptionKeyword_5_0_0 = (Keyword)cGroup_5_0.eContents().get(0);
		private final Assignment cShortDescriptionAssignment_5_0_1 = (Assignment)cGroup_5_0.eContents().get(1);
		private final RuleCall cShortDescriptionSTRINGTerminalRuleCall_5_0_1_0 = (RuleCall)cShortDescriptionAssignment_5_0_1.eContents().get(0);
		private final Keyword cSemicolonKeyword_5_0_2 = (Keyword)cGroup_5_0.eContents().get(2);
		private final Group cGroup_5_1 = (Group)cUnorderedGroup_5.eContents().get(1);
		private final Keyword cLongDescriptionKeyword_5_1_0 = (Keyword)cGroup_5_1.eContents().get(0);
		private final Assignment cLongDescriptionAssignment_5_1_1 = (Assignment)cGroup_5_1.eContents().get(1);
		private final RuleCall cLongDescriptionSTRINGTerminalRuleCall_5_1_1_0 = (RuleCall)cLongDescriptionAssignment_5_1_1.eContents().get(0);
		private final Keyword cSemicolonKeyword_5_1_2 = (Keyword)cGroup_5_1.eContents().get(2);
		private final Group cGroup_5_2 = (Group)cUnorderedGroup_5.eContents().get(2);
		private final Keyword cSerialUIDKeyword_5_2_0 = (Keyword)cGroup_5_2.eContents().get(0);
		private final Assignment cSerialVersionUIDAssignment_5_2_1 = (Assignment)cGroup_5_2.eContents().get(1);
		private final RuleCall cSerialVersionUIDINTTerminalRuleCall_5_2_1_0 = (RuleCall)cSerialVersionUIDAssignment_5_2_1.eContents().get(0);
		private final Keyword cSemicolonKeyword_5_2_2 = (Keyword)cGroup_5_2.eContents().get(2);
		private final Group cGroup_5_3 = (Group)cUnorderedGroup_5.eContents().get(3);
		private final Assignment cCloneableAssignment_5_3_0 = (Assignment)cGroup_5_3.eContents().get(0);
		private final Keyword cCloneableCloneableKeyword_5_3_0_0 = (Keyword)cCloneableAssignment_5_3_0.eContents().get(0);
		private final Keyword cSemicolonKeyword_5_3_1 = (Keyword)cGroup_5_3.eContents().get(1);
		private final Assignment cFeaturesAssignment_5_4 = (Assignment)cUnorderedGroup_5.eContents().get(4);
		private final RuleCall cFeaturesFeature2ParserRuleCall_5_4_0 = (RuleCall)cFeaturesAssignment_5_4.eContents().get(0);
		private final Keyword cRightCurlyBracketKeyword_6 = (Keyword)cGroup.eContents().get(6);
		
		//Object2 returns Object:
		//    (enabled?="enabled" | abstract?="abstract")?
		//    "object" name=ID ("extends" parent=[Object])?
		//    "{"
		//    (
		//        ("shortDescription" shortDescription=STRING ";")? &
		//        ("longDescription" longDescription=STRING ";")? &
		//        ("serialUID" serialVersionUID=INT ";")? &
		//        (cloneable?="cloneable" ";")? &
		//        (features+=Feature2*)
		//    )
		//    "}";
		@Override public ParserRule getRule() { return rule; }
		
		//(enabled?="enabled" | abstract?="abstract")?
		//"object" name=ID ("extends" parent=[Object])?
		//"{"
		//(
		//    ("shortDescription" shortDescription=STRING ";")? &
		//    ("longDescription" longDescription=STRING ";")? &
		//    ("serialUID" serialVersionUID=INT ";")? &
		//    (cloneable?="cloneable" ";")? &
		//    (features+=Feature2*)
		//)
		//"}"
		public Group getGroup() { return cGroup; }
		
		//(enabled?="enabled" | abstract?="abstract")?
		public Alternatives getAlternatives_0() { return cAlternatives_0; }
		
		//enabled?="enabled"
		public Assignment getEnabledAssignment_0_0() { return cEnabledAssignment_0_0; }
		
		//"enabled"
		public Keyword getEnabledEnabledKeyword_0_0_0() { return cEnabledEnabledKeyword_0_0_0; }
		
		//abstract?="abstract"
		public Assignment getAbstractAssignment_0_1() { return cAbstractAssignment_0_1; }
		
		//"abstract"
		public Keyword getAbstractAbstractKeyword_0_1_0() { return cAbstractAbstractKeyword_0_1_0; }
		
		//"object"
		public Keyword getObjectKeyword_1() { return cObjectKeyword_1; }
		
		//name=ID
		public Assignment getNameAssignment_2() { return cNameAssignment_2; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_2_0() { return cNameIDTerminalRuleCall_2_0; }
		
		//("extends" parent=[Object])?
		public Group getGroup_3() { return cGroup_3; }
		
		//"extends"
		public Keyword getExtendsKeyword_3_0() { return cExtendsKeyword_3_0; }
		
		//parent=[Object]
		public Assignment getParentAssignment_3_1() { return cParentAssignment_3_1; }
		
		//[Object]
		public CrossReference getParentObjectCrossReference_3_1_0() { return cParentObjectCrossReference_3_1_0; }
		
		//ID
		public RuleCall getParentObjectIDTerminalRuleCall_3_1_0_1() { return cParentObjectIDTerminalRuleCall_3_1_0_1; }
		
		//"{"
		public Keyword getLeftCurlyBracketKeyword_4() { return cLeftCurlyBracketKeyword_4; }
		
		//(
		//    ("shortDescription" shortDescription=STRING ";")? &
		//    ("longDescription" longDescription=STRING ";")? &
		//    ("serialUID" serialVersionUID=INT ";")? &
		//    (cloneable?="cloneable" ";")? &
		//    (features+=Feature2*)
		//)
		public UnorderedGroup getUnorderedGroup_5() { return cUnorderedGroup_5; }
		
		//("shortDescription" shortDescription=STRING ";")?
		public Group getGroup_5_0() { return cGroup_5_0; }
		
		//"shortDescription"
		public Keyword getShortDescriptionKeyword_5_0_0() { return cShortDescriptionKeyword_5_0_0; }
		
		//shortDescription=STRING
		public Assignment getShortDescriptionAssignment_5_0_1() { return cShortDescriptionAssignment_5_0_1; }
		
		//STRING
		public RuleCall getShortDescriptionSTRINGTerminalRuleCall_5_0_1_0() { return cShortDescriptionSTRINGTerminalRuleCall_5_0_1_0; }
		
		//";"
		public Keyword getSemicolonKeyword_5_0_2() { return cSemicolonKeyword_5_0_2; }
		
		//("longDescription" longDescription=STRING ";")?
		public Group getGroup_5_1() { return cGroup_5_1; }
		
		//"longDescription"
		public Keyword getLongDescriptionKeyword_5_1_0() { return cLongDescriptionKeyword_5_1_0; }
		
		//longDescription=STRING
		public Assignment getLongDescriptionAssignment_5_1_1() { return cLongDescriptionAssignment_5_1_1; }
		
		//STRING
		public RuleCall getLongDescriptionSTRINGTerminalRuleCall_5_1_1_0() { return cLongDescriptionSTRINGTerminalRuleCall_5_1_1_0; }
		
		//";"
		public Keyword getSemicolonKeyword_5_1_2() { return cSemicolonKeyword_5_1_2; }
		
		//("serialUID" serialVersionUID=INT ";")?
		public Group getGroup_5_2() { return cGroup_5_2; }
		
		//"serialUID"
		public Keyword getSerialUIDKeyword_5_2_0() { return cSerialUIDKeyword_5_2_0; }
		
		//serialVersionUID=INT
		public Assignment getSerialVersionUIDAssignment_5_2_1() { return cSerialVersionUIDAssignment_5_2_1; }
		
		//INT
		public RuleCall getSerialVersionUIDINTTerminalRuleCall_5_2_1_0() { return cSerialVersionUIDINTTerminalRuleCall_5_2_1_0; }
		
		//";"
		public Keyword getSemicolonKeyword_5_2_2() { return cSemicolonKeyword_5_2_2; }
		
		//(cloneable?="cloneable" ";")?
		public Group getGroup_5_3() { return cGroup_5_3; }
		
		//cloneable?="cloneable"
		public Assignment getCloneableAssignment_5_3_0() { return cCloneableAssignment_5_3_0; }
		
		//"cloneable"
		public Keyword getCloneableCloneableKeyword_5_3_0_0() { return cCloneableCloneableKeyword_5_3_0_0; }
		
		//";"
		public Keyword getSemicolonKeyword_5_3_1() { return cSemicolonKeyword_5_3_1; }
		
		//(features+=Feature2*)
		public Assignment getFeaturesAssignment_5_4() { return cFeaturesAssignment_5_4; }
		
		//Feature2
		public RuleCall getFeaturesFeature2ParserRuleCall_5_4_0() { return cFeaturesFeature2ParserRuleCall_5_4_0; }
		
		//"}"
		public Keyword getRightCurlyBracketKeyword_6() { return cRightCurlyBracketKeyword_6; }
	}
	public class Feature2Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug304681TestLanguage.Feature2");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final RuleCall cAttribute2ParserRuleCall_0 = (RuleCall)cAlternatives.eContents().get(0);
		private final RuleCall cReference2ParserRuleCall_1 = (RuleCall)cAlternatives.eContents().get(1);
		
		//Feature2 returns Feature:
		//    (Attribute2 | Reference2);
		@Override public ParserRule getRule() { return rule; }
		
		//(Attribute2 | Reference2)
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//Attribute2
		public RuleCall getAttribute2ParserRuleCall_0() { return cAttribute2ParserRuleCall_0; }
		
		//Reference2
		public RuleCall getReference2ParserRuleCall_1() { return cReference2ParserRuleCall_1; }
	}
	public class Attribute2Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug304681TestLanguage.Attribute2");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cAttributeKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Assignment cTypeAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cTypeIDTerminalRuleCall_1_0 = (RuleCall)cTypeAssignment_1.eContents().get(0);
		private final Assignment cNameAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final RuleCall cNameIDTerminalRuleCall_2_0 = (RuleCall)cNameAssignment_2.eContents().get(0);
		private final Alternatives cAlternatives_3 = (Alternatives)cGroup.eContents().get(3);
		private final Group cGroup_3_0 = (Group)cAlternatives_3.eContents().get(0);
		private final Keyword cLeftCurlyBracketKeyword_3_0_0 = (Keyword)cGroup_3_0.eContents().get(0);
		private final UnorderedGroup cUnorderedGroup_3_0_1 = (UnorderedGroup)cGroup_3_0.eContents().get(1);
		private final Group cGroup_3_0_1_0 = (Group)cUnorderedGroup_3_0_1.eContents().get(0);
		private final Keyword cShortDescriptionKeyword_3_0_1_0_0 = (Keyword)cGroup_3_0_1_0.eContents().get(0);
		private final Assignment cShortDescriptionAssignment_3_0_1_0_1 = (Assignment)cGroup_3_0_1_0.eContents().get(1);
		private final RuleCall cShortDescriptionSTRINGTerminalRuleCall_3_0_1_0_1_0 = (RuleCall)cShortDescriptionAssignment_3_0_1_0_1.eContents().get(0);
		private final Keyword cSemicolonKeyword_3_0_1_0_2 = (Keyword)cGroup_3_0_1_0.eContents().get(2);
		private final Group cGroup_3_0_1_1 = (Group)cUnorderedGroup_3_0_1.eContents().get(1);
		private final Keyword cLongDescriptionKeyword_3_0_1_1_0 = (Keyword)cGroup_3_0_1_1.eContents().get(0);
		private final Assignment cLongDescriptionAssignment_3_0_1_1_1 = (Assignment)cGroup_3_0_1_1.eContents().get(1);
		private final RuleCall cLongDescriptionSTRINGTerminalRuleCall_3_0_1_1_1_0 = (RuleCall)cLongDescriptionAssignment_3_0_1_1_1.eContents().get(0);
		private final Keyword cSemicolonKeyword_3_0_1_1_2 = (Keyword)cGroup_3_0_1_1.eContents().get(2);
		private final Assignment cConstraintDefinitionsAssignment_3_0_1_2 = (Assignment)cUnorderedGroup_3_0_1.eContents().get(2);
		private final RuleCall cConstraintDefinitionsConstraintDefinitionParserRuleCall_3_0_1_2_0 = (RuleCall)cConstraintDefinitionsAssignment_3_0_1_2.eContents().get(0);
		private final Group cGroup_3_0_1_3 = (Group)cUnorderedGroup_3_0_1.eContents().get(3);
		private final Assignment cRequiredAssignment_3_0_1_3_0 = (Assignment)cGroup_3_0_1_3.eContents().get(0);
		private final Keyword cRequiredRequiredKeyword_3_0_1_3_0_0 = (Keyword)cRequiredAssignment_3_0_1_3_0.eContents().get(0);
		private final Keyword cSemicolonKeyword_3_0_1_3_1 = (Keyword)cGroup_3_0_1_3.eContents().get(1);
		private final Group cGroup_3_0_1_4 = (Group)cUnorderedGroup_3_0_1.eContents().get(4);
		private final Assignment cTechnicalAssignment_3_0_1_4_0 = (Assignment)cGroup_3_0_1_4.eContents().get(0);
		private final Keyword cTechnicalTechnicalKeyword_3_0_1_4_0_0 = (Keyword)cTechnicalAssignment_3_0_1_4_0.eContents().get(0);
		private final Keyword cSemicolonKeyword_3_0_1_4_1 = (Keyword)cGroup_3_0_1_4.eContents().get(1);
		private final Keyword cRightCurlyBracketKeyword_3_0_2 = (Keyword)cGroup_3_0.eContents().get(2);
		private final Keyword cSemicolonKeyword_3_1 = (Keyword)cAlternatives_3.eContents().get(1);
		
		//Attribute2 returns Attribut:
		//    "Attribute" type=ID name=ID ("{"
		//        (("shortDescription" shortDescription=STRING ";")? &
		//        ("longDescription" longDescription=STRING ";")? &
		//        (constraintDefinitions+=ConstraintDefinition)* &
		//        (required?="required" ";")? &
		//        (technical?="technical" ";")?)
		//    "}"|";");
		@Override public ParserRule getRule() { return rule; }
		
		//"Attribute" type=ID name=ID ("{"
		//    (("shortDescription" shortDescription=STRING ";")? &
		//    ("longDescription" longDescription=STRING ";")? &
		//    (constraintDefinitions+=ConstraintDefinition)* &
		//    (required?="required" ";")? &
		//    (technical?="technical" ";")?)
		//"}"|";")
		public Group getGroup() { return cGroup; }
		
		//"Attribute"
		public Keyword getAttributeKeyword_0() { return cAttributeKeyword_0; }
		
		//type=ID
		public Assignment getTypeAssignment_1() { return cTypeAssignment_1; }
		
		//ID
		public RuleCall getTypeIDTerminalRuleCall_1_0() { return cTypeIDTerminalRuleCall_1_0; }
		
		//name=ID
		public Assignment getNameAssignment_2() { return cNameAssignment_2; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_2_0() { return cNameIDTerminalRuleCall_2_0; }
		
		//("{"
		//       (("shortDescription" shortDescription=STRING ";")? &
		//       ("longDescription" longDescription=STRING ";")? &
		//       (constraintDefinitions+=ConstraintDefinition)* &
		//       (required?="required" ";")? &
		//       (technical?="technical" ";")?)
		//   "}"|";")
		public Alternatives getAlternatives_3() { return cAlternatives_3; }
		
		//"{"
		//        (("shortDescription" shortDescription=STRING ";")? &
		//        ("longDescription" longDescription=STRING ";")? &
		//        (constraintDefinitions+=ConstraintDefinition)* &
		//        (required?="required" ";")? &
		//        (technical?="technical" ";")?)
		//    "}"
		public Group getGroup_3_0() { return cGroup_3_0; }
		
		//"{"
		public Keyword getLeftCurlyBracketKeyword_3_0_0() { return cLeftCurlyBracketKeyword_3_0_0; }
		
		//(("shortDescription" shortDescription=STRING ";")? &
		//("longDescription" longDescription=STRING ";")? &
		//(constraintDefinitions+=ConstraintDefinition)* &
		//(required?="required" ";")? &
		//(technical?="technical" ";")?)
		public UnorderedGroup getUnorderedGroup_3_0_1() { return cUnorderedGroup_3_0_1; }
		
		//("shortDescription" shortDescription=STRING ";")?
		public Group getGroup_3_0_1_0() { return cGroup_3_0_1_0; }
		
		//"shortDescription"
		public Keyword getShortDescriptionKeyword_3_0_1_0_0() { return cShortDescriptionKeyword_3_0_1_0_0; }
		
		//shortDescription=STRING
		public Assignment getShortDescriptionAssignment_3_0_1_0_1() { return cShortDescriptionAssignment_3_0_1_0_1; }
		
		//STRING
		public RuleCall getShortDescriptionSTRINGTerminalRuleCall_3_0_1_0_1_0() { return cShortDescriptionSTRINGTerminalRuleCall_3_0_1_0_1_0; }
		
		//";"
		public Keyword getSemicolonKeyword_3_0_1_0_2() { return cSemicolonKeyword_3_0_1_0_2; }
		
		//("longDescription" longDescription=STRING ";")?
		public Group getGroup_3_0_1_1() { return cGroup_3_0_1_1; }
		
		//"longDescription"
		public Keyword getLongDescriptionKeyword_3_0_1_1_0() { return cLongDescriptionKeyword_3_0_1_1_0; }
		
		//longDescription=STRING
		public Assignment getLongDescriptionAssignment_3_0_1_1_1() { return cLongDescriptionAssignment_3_0_1_1_1; }
		
		//STRING
		public RuleCall getLongDescriptionSTRINGTerminalRuleCall_3_0_1_1_1_0() { return cLongDescriptionSTRINGTerminalRuleCall_3_0_1_1_1_0; }
		
		//";"
		public Keyword getSemicolonKeyword_3_0_1_1_2() { return cSemicolonKeyword_3_0_1_1_2; }
		
		//(constraintDefinitions+=ConstraintDefinition)*
		public Assignment getConstraintDefinitionsAssignment_3_0_1_2() { return cConstraintDefinitionsAssignment_3_0_1_2; }
		
		//ConstraintDefinition
		public RuleCall getConstraintDefinitionsConstraintDefinitionParserRuleCall_3_0_1_2_0() { return cConstraintDefinitionsConstraintDefinitionParserRuleCall_3_0_1_2_0; }
		
		//(required?="required" ";")?
		public Group getGroup_3_0_1_3() { return cGroup_3_0_1_3; }
		
		//required?="required"
		public Assignment getRequiredAssignment_3_0_1_3_0() { return cRequiredAssignment_3_0_1_3_0; }
		
		//"required"
		public Keyword getRequiredRequiredKeyword_3_0_1_3_0_0() { return cRequiredRequiredKeyword_3_0_1_3_0_0; }
		
		//";"
		public Keyword getSemicolonKeyword_3_0_1_3_1() { return cSemicolonKeyword_3_0_1_3_1; }
		
		//(technical?="technical" ";")?
		public Group getGroup_3_0_1_4() { return cGroup_3_0_1_4; }
		
		//technical?="technical"
		public Assignment getTechnicalAssignment_3_0_1_4_0() { return cTechnicalAssignment_3_0_1_4_0; }
		
		//"technical"
		public Keyword getTechnicalTechnicalKeyword_3_0_1_4_0_0() { return cTechnicalTechnicalKeyword_3_0_1_4_0_0; }
		
		//";"
		public Keyword getSemicolonKeyword_3_0_1_4_1() { return cSemicolonKeyword_3_0_1_4_1; }
		
		//"}"
		public Keyword getRightCurlyBracketKeyword_3_0_2() { return cRightCurlyBracketKeyword_3_0_2; }
		
		//";"
		public Keyword getSemicolonKeyword_3_1() { return cSemicolonKeyword_3_1; }
	}
	public class Reference2Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug304681TestLanguage.Reference2");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cReferenceKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Assignment cTypeAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final CrossReference cTypeObjectCrossReference_1_0 = (CrossReference)cTypeAssignment_1.eContents().get(0);
		private final RuleCall cTypeObjectIDTerminalRuleCall_1_0_1 = (RuleCall)cTypeObjectCrossReference_1_0.eContents().get(1);
		private final Assignment cManyAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final Keyword cManyAsteriskKeyword_2_0 = (Keyword)cManyAssignment_2.eContents().get(0);
		private final Assignment cNameAssignment_3 = (Assignment)cGroup.eContents().get(3);
		private final RuleCall cNameIDTerminalRuleCall_3_0 = (RuleCall)cNameAssignment_3.eContents().get(0);
		private final Alternatives cAlternatives_4 = (Alternatives)cGroup.eContents().get(4);
		private final Group cGroup_4_0 = (Group)cAlternatives_4.eContents().get(0);
		private final Keyword cLeftCurlyBracketKeyword_4_0_0 = (Keyword)cGroup_4_0.eContents().get(0);
		private final UnorderedGroup cUnorderedGroup_4_0_1 = (UnorderedGroup)cGroup_4_0.eContents().get(1);
		private final Group cGroup_4_0_1_0 = (Group)cUnorderedGroup_4_0_1.eContents().get(0);
		private final Keyword cShortDescriptionKeyword_4_0_1_0_0 = (Keyword)cGroup_4_0_1_0.eContents().get(0);
		private final Assignment cShortDescriptionAssignment_4_0_1_0_1 = (Assignment)cGroup_4_0_1_0.eContents().get(1);
		private final RuleCall cShortDescriptionSTRINGTerminalRuleCall_4_0_1_0_1_0 = (RuleCall)cShortDescriptionAssignment_4_0_1_0_1.eContents().get(0);
		private final Keyword cSemicolonKeyword_4_0_1_0_2 = (Keyword)cGroup_4_0_1_0.eContents().get(2);
		private final Group cGroup_4_0_1_1 = (Group)cUnorderedGroup_4_0_1.eContents().get(1);
		private final Keyword cLongDescriptionKeyword_4_0_1_1_0 = (Keyword)cGroup_4_0_1_1.eContents().get(0);
		private final Assignment cLongDescriptionAssignment_4_0_1_1_1 = (Assignment)cGroup_4_0_1_1.eContents().get(1);
		private final RuleCall cLongDescriptionSTRINGTerminalRuleCall_4_0_1_1_1_0 = (RuleCall)cLongDescriptionAssignment_4_0_1_1_1.eContents().get(0);
		private final Keyword cSemicolonKeyword_4_0_1_1_2 = (Keyword)cGroup_4_0_1_1.eContents().get(2);
		private final Keyword cRightCurlyBracketKeyword_4_0_2 = (Keyword)cGroup_4_0.eContents().get(2);
		private final Keyword cSemicolonKeyword_4_1 = (Keyword)cAlternatives_4.eContents().get(1);
		
		//Reference2 returns Reference:
		//    "Reference" type=[Object] (many?="*")? name=ID ("{"
		//    (("shortDescription" shortDescription=STRING ";")? &
		//    ("longDescription" longDescription=STRING ";")?)
		//    "}" | ";");
		@Override public ParserRule getRule() { return rule; }
		
		//"Reference" type=[Object] (many?="*")? name=ID ("{"
		//(("shortDescription" shortDescription=STRING ";")? &
		//("longDescription" longDescription=STRING ";")?)
		//"}" | ";")
		public Group getGroup() { return cGroup; }
		
		//"Reference"
		public Keyword getReferenceKeyword_0() { return cReferenceKeyword_0; }
		
		//type=[Object]
		public Assignment getTypeAssignment_1() { return cTypeAssignment_1; }
		
		//[Object]
		public CrossReference getTypeObjectCrossReference_1_0() { return cTypeObjectCrossReference_1_0; }
		
		//ID
		public RuleCall getTypeObjectIDTerminalRuleCall_1_0_1() { return cTypeObjectIDTerminalRuleCall_1_0_1; }
		
		//(many?="*")?
		public Assignment getManyAssignment_2() { return cManyAssignment_2; }
		
		//"*"
		public Keyword getManyAsteriskKeyword_2_0() { return cManyAsteriskKeyword_2_0; }
		
		//name=ID
		public Assignment getNameAssignment_3() { return cNameAssignment_3; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_3_0() { return cNameIDTerminalRuleCall_3_0; }
		
		//("{"
		//   (("shortDescription" shortDescription=STRING ";")? &
		//   ("longDescription" longDescription=STRING ";")?)
		//   "}" | ";")
		public Alternatives getAlternatives_4() { return cAlternatives_4; }
		
		//"{"
		//    (("shortDescription" shortDescription=STRING ";")? &
		//    ("longDescription" longDescription=STRING ";")?)
		//    "}"
		public Group getGroup_4_0() { return cGroup_4_0; }
		
		//"{"
		public Keyword getLeftCurlyBracketKeyword_4_0_0() { return cLeftCurlyBracketKeyword_4_0_0; }
		
		//(("shortDescription" shortDescription=STRING ";")? &
		//("longDescription" longDescription=STRING ";")?)
		public UnorderedGroup getUnorderedGroup_4_0_1() { return cUnorderedGroup_4_0_1; }
		
		//("shortDescription" shortDescription=STRING ";")?
		public Group getGroup_4_0_1_0() { return cGroup_4_0_1_0; }
		
		//"shortDescription"
		public Keyword getShortDescriptionKeyword_4_0_1_0_0() { return cShortDescriptionKeyword_4_0_1_0_0; }
		
		//shortDescription=STRING
		public Assignment getShortDescriptionAssignment_4_0_1_0_1() { return cShortDescriptionAssignment_4_0_1_0_1; }
		
		//STRING
		public RuleCall getShortDescriptionSTRINGTerminalRuleCall_4_0_1_0_1_0() { return cShortDescriptionSTRINGTerminalRuleCall_4_0_1_0_1_0; }
		
		//";"
		public Keyword getSemicolonKeyword_4_0_1_0_2() { return cSemicolonKeyword_4_0_1_0_2; }
		
		//("longDescription" longDescription=STRING ";")?
		public Group getGroup_4_0_1_1() { return cGroup_4_0_1_1; }
		
		//"longDescription"
		public Keyword getLongDescriptionKeyword_4_0_1_1_0() { return cLongDescriptionKeyword_4_0_1_1_0; }
		
		//longDescription=STRING
		public Assignment getLongDescriptionAssignment_4_0_1_1_1() { return cLongDescriptionAssignment_4_0_1_1_1; }
		
		//STRING
		public RuleCall getLongDescriptionSTRINGTerminalRuleCall_4_0_1_1_1_0() { return cLongDescriptionSTRINGTerminalRuleCall_4_0_1_1_1_0; }
		
		//";"
		public Keyword getSemicolonKeyword_4_0_1_1_2() { return cSemicolonKeyword_4_0_1_1_2; }
		
		//"}"
		public Keyword getRightCurlyBracketKeyword_4_0_2() { return cRightCurlyBracketKeyword_4_0_2; }
		
		//";"
		public Keyword getSemicolonKeyword_4_1() { return cSemicolonKeyword_4_1; }
	}
	public class ConstraintDefinitionElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug304681TestLanguage.ConstraintDefinition");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cConstraintKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Assignment cTypeAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cTypeIDTerminalRuleCall_1_0 = (RuleCall)cTypeAssignment_1.eContents().get(0);
		private final Keyword cLeftCurlyBracketKeyword_2 = (Keyword)cGroup.eContents().get(2);
		private final UnorderedGroup cUnorderedGroup_3 = (UnorderedGroup)cGroup.eContents().get(3);
		private final Group cGroup_3_0 = (Group)cUnorderedGroup_3.eContents().get(0);
		private final Keyword cParametersKeyword_3_0_0 = (Keyword)cGroup_3_0.eContents().get(0);
		private final Assignment cParametersAssignment_3_0_1 = (Assignment)cGroup_3_0.eContents().get(1);
		private final RuleCall cParametersSTRINGTerminalRuleCall_3_0_1_0 = (RuleCall)cParametersAssignment_3_0_1.eContents().get(0);
		private final Keyword cSemicolonKeyword_3_0_2 = (Keyword)cGroup_3_0.eContents().get(2);
		private final Group cGroup_3_1 = (Group)cUnorderedGroup_3.eContents().get(1);
		private final Keyword cMessageKeyword_3_1_0 = (Keyword)cGroup_3_1.eContents().get(0);
		private final Assignment cMessageAssignment_3_1_1 = (Assignment)cGroup_3_1.eContents().get(1);
		private final RuleCall cMessageSTRINGTerminalRuleCall_3_1_1_0 = (RuleCall)cMessageAssignment_3_1_1.eContents().get(0);
		private final Keyword cSemicolonKeyword_3_1_2 = (Keyword)cGroup_3_1.eContents().get(2);
		private final Keyword cRightCurlyBracketKeyword_4 = (Keyword)cGroup.eContents().get(4);
		
		//ConstraintDefinition  :
		//    "constraint" type=ID "{"
		//    ("parameters" (parameters+=STRING)* ";" &
		//    "message" message=STRING ";")
		//    "}";
		@Override public ParserRule getRule() { return rule; }
		
		//"constraint" type=ID "{"
		//("parameters" (parameters+=STRING)* ";" &
		//"message" message=STRING ";")
		//"}"
		public Group getGroup() { return cGroup; }
		
		//"constraint"
		public Keyword getConstraintKeyword_0() { return cConstraintKeyword_0; }
		
		//type=ID
		public Assignment getTypeAssignment_1() { return cTypeAssignment_1; }
		
		//ID
		public RuleCall getTypeIDTerminalRuleCall_1_0() { return cTypeIDTerminalRuleCall_1_0; }
		
		//"{"
		public Keyword getLeftCurlyBracketKeyword_2() { return cLeftCurlyBracketKeyword_2; }
		
		//("parameters" (parameters+=STRING)* ";" &
		//"message" message=STRING ";")
		public UnorderedGroup getUnorderedGroup_3() { return cUnorderedGroup_3; }
		
		//"parameters" (parameters+=STRING)* ";"
		public Group getGroup_3_0() { return cGroup_3_0; }
		
		//"parameters"
		public Keyword getParametersKeyword_3_0_0() { return cParametersKeyword_3_0_0; }
		
		//(parameters+=STRING)*
		public Assignment getParametersAssignment_3_0_1() { return cParametersAssignment_3_0_1; }
		
		//STRING
		public RuleCall getParametersSTRINGTerminalRuleCall_3_0_1_0() { return cParametersSTRINGTerminalRuleCall_3_0_1_0; }
		
		//";"
		public Keyword getSemicolonKeyword_3_0_2() { return cSemicolonKeyword_3_0_2; }
		
		//"message" message=STRING ";"
		public Group getGroup_3_1() { return cGroup_3_1; }
		
		//"message"
		public Keyword getMessageKeyword_3_1_0() { return cMessageKeyword_3_1_0; }
		
		//message=STRING
		public Assignment getMessageAssignment_3_1_1() { return cMessageAssignment_3_1_1; }
		
		//STRING
		public RuleCall getMessageSTRINGTerminalRuleCall_3_1_1_0() { return cMessageSTRINGTerminalRuleCall_3_1_1_0; }
		
		//";"
		public Keyword getSemicolonKeyword_3_1_2() { return cSemicolonKeyword_3_1_2; }
		
		//"}"
		public Keyword getRightCurlyBracketKeyword_4() { return cRightCurlyBracketKeyword_4; }
	}
	
	
	private final ModelElements pModel;
	private final PackageDefinitionElements pPackageDefinition;
	private final ObjectElements pObject;
	private final FeatureElements pFeature;
	private final AttributeElements pAttribute;
	private final ReferenceElements pReference;
	private final PackageDefinition2Elements pPackageDefinition2;
	private final Object2Elements pObject2;
	private final Feature2Elements pFeature2;
	private final Attribute2Elements pAttribute2;
	private final Reference2Elements pReference2;
	private final ConstraintDefinitionElements pConstraintDefinition;
	
	private final Grammar grammar;
	
	private final TerminalsGrammarAccess gaTerminals;

	@Inject
	public Bug304681TestLanguageGrammarAccess(GrammarProvider grammarProvider,
			TerminalsGrammarAccess gaTerminals) {
		this.grammar = internalFindGrammar(grammarProvider);
		this.gaTerminals = gaTerminals;
		this.pModel = new ModelElements();
		this.pPackageDefinition = new PackageDefinitionElements();
		this.pObject = new ObjectElements();
		this.pFeature = new FeatureElements();
		this.pAttribute = new AttributeElements();
		this.pReference = new ReferenceElements();
		this.pPackageDefinition2 = new PackageDefinition2Elements();
		this.pObject2 = new Object2Elements();
		this.pFeature2 = new Feature2Elements();
		this.pAttribute2 = new Attribute2Elements();
		this.pReference2 = new Reference2Elements();
		this.pConstraintDefinition = new ConstraintDefinitionElements();
	}
	
	protected Grammar internalFindGrammar(GrammarProvider grammarProvider) {
		Grammar grammar = grammarProvider.getGrammar(this);
		while (grammar != null) {
			if ("org.eclipse.xtext.ui.tests.editor.contentassist.Bug304681TestLanguage".equals(grammar.getName())) {
				return grammar;
			}
			List<Grammar> grammars = grammar.getUsedGrammars();
			if (!grammars.isEmpty()) {
				grammar = grammars.iterator().next();
			} else {
				return null;
			}
		}
		return grammar;
	}
	
	@Override
	public Grammar getGrammar() {
		return grammar;
	}
	
	
	public TerminalsGrammarAccess getTerminalsGrammarAccess() {
		return gaTerminals;
	}

	
	//Model:
	//    '1' definition = PackageDefinition
	//  | '2' definition = PackageDefinition2
	//;
	public ModelElements getModelAccess() {
		return pModel;
	}
	
	public ParserRule getModelRule() {
		return getModelAccess().getRule();
	}
	
	//PackageDefinition:
	//    {PackageDefinition} "package" namespace=ID  ";"
	//    (contents+=Object)*;
	public PackageDefinitionElements getPackageDefinitionAccess() {
		return pPackageDefinition;
	}
	
	public ParserRule getPackageDefinitionRule() {
		return getPackageDefinitionAccess().getRule();
	}
	
	//Object:
	//    (enabled?="enabled" | abstract?="abstract")?
	//    "object" name=ID ("extends" parent=[Object])?
	//    "{"
	//    (
	//        ("shortDescription" shortDescription=STRING ";")? &
	//        ("longDescription" longDescription=STRING ";")? &
	//        ("serialUID" serialVersionUID=INT ";")? &
	//        (cloneable?="cloneable" ";")? &
	//        (features+=Feature*) &
	//        ("before" features+=Feature* "after")? &
	//        ("optionalLoop" features+=Feature*)? &
	//        ("mandatoryLoop" features+=Feature+)?
	//    )
	//    "}";
	public ObjectElements getObjectAccess() {
		return pObject;
	}
	
	public ParserRule getObjectRule() {
		return getObjectAccess().getRule();
	}
	
	//Feature:
	//    (Attribute | Reference);
	public FeatureElements getFeatureAccess() {
		return pFeature;
	}
	
	public ParserRule getFeatureRule() {
		return getFeatureAccess().getRule();
	}
	
	//Attribute:
	//    "Attribute" type=ID name=ID    ";";
	public AttributeElements getAttributeAccess() {
		return pAttribute;
	}
	
	public ParserRule getAttributeRule() {
		return getAttributeAccess().getRule();
	}
	
	//Reference:
	//    "Reference" type=[Object] (many?="*")? name=ID ("{"
	//    (("shortDescription" shortDescription=STRING ";")? &
	//    ("longDescription" longDescription=STRING ";")?)
	//    "}" | ";");
	public ReferenceElements getReferenceAccess() {
		return pReference;
	}
	
	public ParserRule getReferenceRule() {
		return getReferenceAccess().getRule();
	}
	
	//PackageDefinition2 returns PackageDefinition:
	//    {PackageDefinition} "package" namespace=ID  ";"
	//    (contents+=Object2)*;
	public PackageDefinition2Elements getPackageDefinition2Access() {
		return pPackageDefinition2;
	}
	
	public ParserRule getPackageDefinition2Rule() {
		return getPackageDefinition2Access().getRule();
	}
	
	//Object2 returns Object:
	//    (enabled?="enabled" | abstract?="abstract")?
	//    "object" name=ID ("extends" parent=[Object])?
	//    "{"
	//    (
	//        ("shortDescription" shortDescription=STRING ";")? &
	//        ("longDescription" longDescription=STRING ";")? &
	//        ("serialUID" serialVersionUID=INT ";")? &
	//        (cloneable?="cloneable" ";")? &
	//        (features+=Feature2*)
	//    )
	//    "}";
	public Object2Elements getObject2Access() {
		return pObject2;
	}
	
	public ParserRule getObject2Rule() {
		return getObject2Access().getRule();
	}
	
	//Feature2 returns Feature:
	//    (Attribute2 | Reference2);
	public Feature2Elements getFeature2Access() {
		return pFeature2;
	}
	
	public ParserRule getFeature2Rule() {
		return getFeature2Access().getRule();
	}
	
	//Attribute2 returns Attribut:
	//    "Attribute" type=ID name=ID ("{"
	//        (("shortDescription" shortDescription=STRING ";")? &
	//        ("longDescription" longDescription=STRING ";")? &
	//        (constraintDefinitions+=ConstraintDefinition)* &
	//        (required?="required" ";")? &
	//        (technical?="technical" ";")?)
	//    "}"|";");
	public Attribute2Elements getAttribute2Access() {
		return pAttribute2;
	}
	
	public ParserRule getAttribute2Rule() {
		return getAttribute2Access().getRule();
	}
	
	//Reference2 returns Reference:
	//    "Reference" type=[Object] (many?="*")? name=ID ("{"
	//    (("shortDescription" shortDescription=STRING ";")? &
	//    ("longDescription" longDescription=STRING ";")?)
	//    "}" | ";");
	public Reference2Elements getReference2Access() {
		return pReference2;
	}
	
	public ParserRule getReference2Rule() {
		return getReference2Access().getRule();
	}
	
	//ConstraintDefinition  :
	//    "constraint" type=ID "{"
	//    ("parameters" (parameters+=STRING)* ";" &
	//    "message" message=STRING ";")
	//    "}";
	public ConstraintDefinitionElements getConstraintDefinitionAccess() {
		return pConstraintDefinition;
	}
	
	public ParserRule getConstraintDefinitionRule() {
		return getConstraintDefinitionAccess().getRule();
	}
	
	//terminal ID: '^'?('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;
	public TerminalRule getIDRule() {
		return gaTerminals.getIDRule();
	}
	
	//terminal INT returns ecore::EInt: ('0'..'9')+;
	public TerminalRule getINTRule() {
		return gaTerminals.getINTRule();
	}
	
	//terminal STRING:
	//            '"' ( '\\' . /* 'b'|'t'|'n'|'f'|'r'|'u'|'"'|"'"|'\\' */ | !('\\'|'"') )* '"' |
	//            "'" ( '\\' . /* 'b'|'t'|'n'|'f'|'r'|'u'|'"'|"'"|'\\' */ | !('\\'|"'") )* "'"
	//        ;
	public TerminalRule getSTRINGRule() {
		return gaTerminals.getSTRINGRule();
	}
	
	//terminal ML_COMMENT : '/*' -> '*/';
	public TerminalRule getML_COMMENTRule() {
		return gaTerminals.getML_COMMENTRule();
	}
	
	//terminal SL_COMMENT : '//' !('\n'|'\r')* ('\r'? '\n')?;
	public TerminalRule getSL_COMMENTRule() {
		return gaTerminals.getSL_COMMENTRule();
	}
	
	//terminal WS         : (' '|'\t'|'\r'|'\n')+;
	public TerminalRule getWSRule() {
		return gaTerminals.getWSRule();
	}
	
	//terminal ANY_OTHER: .;
	public TerminalRule getANY_OTHERRule() {
		return gaTerminals.getANY_OTHERRule();
	}
}

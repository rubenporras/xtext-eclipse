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
import org.eclipse.xtext.EnumLiteralDeclaration;
import org.eclipse.xtext.EnumRule;
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
public class Bug332217TestLanguageGrammarAccess extends AbstractElementFinder.AbstractGrammarElementFinder {
	
	public class ModelElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.Model");
		private final Assignment cElementsAssignment = (Assignment)rule.eContents().get(1);
		private final RuleCall cElementsTableViewParserRuleCall_0 = (RuleCall)cElementsAssignment.eContents().get(0);
		
		//Model:
		//    (elements+=TableView)*;
		@Override public ParserRule getRule() { return rule; }
		
		//(elements+=TableView)*
		public Assignment getElementsAssignment() { return cElementsAssignment; }
		
		//TableView
		public RuleCall getElementsTableViewParserRuleCall_0() { return cElementsTableViewParserRuleCall_0; }
	}
	public class PropertyPathPartElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.PropertyPathPart");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final RuleCall cParameterParserRuleCall_0 = (RuleCall)cAlternatives.eContents().get(0);
		private final RuleCall cCollectionIteratorParserRuleCall_1 = (RuleCall)cAlternatives.eContents().get(1);
		
		//// -------------------------------------------
		//// General
		//// common supertype to allow variableReferences
		//PropertyPathPart:
		//    Parameter | CollectionIterator;
		@Override public ParserRule getRule() { return rule; }
		
		//Parameter | CollectionIterator
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//Parameter
		public RuleCall getParameterParserRuleCall_0() { return cParameterParserRuleCall_0; }
		
		//CollectionIterator
		public RuleCall getCollectionIteratorParserRuleCall_1() { return cCollectionIteratorParserRuleCall_1; }
	}
	public class TypeDescriptionElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.TypeDescription");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cTypeAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cTypeIDTerminalRuleCall_0_0 = (RuleCall)cTypeAssignment_0.eContents().get(0);
		private final Assignment cManyAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final Keyword cManyLeftSquareBracketRightSquareBracketKeyword_1_0 = (Keyword)cManyAssignment_1.eContents().get(0);
		
		//TypeDescription:
		//    type=ID (many?='[]')?;
		@Override public ParserRule getRule() { return rule; }
		
		//type=ID (many?='[]')?
		public Group getGroup() { return cGroup; }
		
		//type=ID
		public Assignment getTypeAssignment_0() { return cTypeAssignment_0; }
		
		//ID
		public RuleCall getTypeIDTerminalRuleCall_0_0() { return cTypeIDTerminalRuleCall_0_0; }
		
		//(many?='[]')?
		public Assignment getManyAssignment_1() { return cManyAssignment_1; }
		
		//'[]'
		public Keyword getManyLeftSquareBracketRightSquareBracketKeyword_1_0() { return cManyLeftSquareBracketRightSquareBracketKeyword_1_0; }
	}
	public class ParameterElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.Parameter");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cDescriptionAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cDescriptionTypeDescriptionParserRuleCall_0_0 = (RuleCall)cDescriptionAssignment_0.eContents().get(0);
		private final Assignment cNameAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cNameIDTerminalRuleCall_1_0 = (RuleCall)cNameAssignment_1.eContents().get(0);
		
		//Parameter:
		//    description=TypeDescription name=ID;
		@Override public ParserRule getRule() { return rule; }
		
		//description=TypeDescription name=ID
		public Group getGroup() { return cGroup; }
		
		//description=TypeDescription
		public Assignment getDescriptionAssignment_0() { return cDescriptionAssignment_0; }
		
		//TypeDescription
		public RuleCall getDescriptionTypeDescriptionParserRuleCall_0_0() { return cDescriptionTypeDescriptionParserRuleCall_0_0; }
		
		//name=ID
		public Assignment getNameAssignment_1() { return cNameAssignment_1; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_1_0() { return cNameIDTerminalRuleCall_1_0; }
	}
	public class ObjectReferenceElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.ObjectReference");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cObjectAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final CrossReference cObjectPropertyPathPartCrossReference_0_0 = (CrossReference)cObjectAssignment_0.eContents().get(0);
		private final RuleCall cObjectPropertyPathPartIDTerminalRuleCall_0_0_1 = (RuleCall)cObjectPropertyPathPartCrossReference_0_0.eContents().get(1);
		private final Assignment cTailAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cTailNestedObjectReferenceParserRuleCall_1_0 = (RuleCall)cTailAssignment_1.eContents().get(0);
		
		//ObjectReference:
		//    object=[PropertyPathPart] tail=NestedObjectReference?;
		@Override public ParserRule getRule() { return rule; }
		
		//object=[PropertyPathPart] tail=NestedObjectReference?
		public Group getGroup() { return cGroup; }
		
		//object=[PropertyPathPart]
		public Assignment getObjectAssignment_0() { return cObjectAssignment_0; }
		
		//[PropertyPathPart]
		public CrossReference getObjectPropertyPathPartCrossReference_0_0() { return cObjectPropertyPathPartCrossReference_0_0; }
		
		//ID
		public RuleCall getObjectPropertyPathPartIDTerminalRuleCall_0_0_1() { return cObjectPropertyPathPartIDTerminalRuleCall_0_0_1; }
		
		//tail=NestedObjectReference?
		public Assignment getTailAssignment_1() { return cTailAssignment_1; }
		
		//NestedObjectReference
		public RuleCall getTailNestedObjectReferenceParserRuleCall_1_0() { return cTailNestedObjectReferenceParserRuleCall_1_0; }
	}
	public class NestedObjectReferenceElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.NestedObjectReference");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cFullStopKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Assignment cObjectAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final CrossReference cObjectPropertyPathPartCrossReference_1_0 = (CrossReference)cObjectAssignment_1.eContents().get(0);
		private final RuleCall cObjectPropertyPathPartIDTerminalRuleCall_1_0_1 = (RuleCall)cObjectPropertyPathPartCrossReference_1_0.eContents().get(1);
		private final Assignment cTailAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final RuleCall cTailNestedObjectReferenceParserRuleCall_2_0 = (RuleCall)cTailAssignment_2.eContents().get(0);
		
		////workaround: NestedObjectReference as separate rule to guide the content
		////   assist parser technically could have been include in ObjectReference like
		////   ObjectReference:
		////     object=[PropertyPathPart] ('.' tail=ObjectReference)?;
		//NestedObjectReference returns ObjectReference:
		//    '.' object=[PropertyPathPart] tail=NestedObjectReference?;
		@Override public ParserRule getRule() { return rule; }
		
		//'.' object=[PropertyPathPart] tail=NestedObjectReference?
		public Group getGroup() { return cGroup; }
		
		//'.'
		public Keyword getFullStopKeyword_0() { return cFullStopKeyword_0; }
		
		//object=[PropertyPathPart]
		public Assignment getObjectAssignment_1() { return cObjectAssignment_1; }
		
		//[PropertyPathPart]
		public CrossReference getObjectPropertyPathPartCrossReference_1_0() { return cObjectPropertyPathPartCrossReference_1_0; }
		
		//ID
		public RuleCall getObjectPropertyPathPartIDTerminalRuleCall_1_0_1() { return cObjectPropertyPathPartIDTerminalRuleCall_1_0_1; }
		
		//tail=NestedObjectReference?
		public Assignment getTailAssignment_2() { return cTailAssignment_2; }
		
		//NestedObjectReference
		public RuleCall getTailNestedObjectReferenceParserRuleCall_2_0() { return cTailNestedObjectReferenceParserRuleCall_2_0; }
	}
	public class ExpressionElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.Expression");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final RuleCall cStringLiteralParserRuleCall_0 = (RuleCall)cAlternatives.eContents().get(0);
		private final RuleCall cStringFunctionParserRuleCall_1 = (RuleCall)cAlternatives.eContents().get(1);
		private final RuleCall cCollectionLiteralParserRuleCall_2 = (RuleCall)cAlternatives.eContents().get(2);
		private final RuleCall cCollectionFunctionParserRuleCall_3 = (RuleCall)cAlternatives.eContents().get(3);
		private final RuleCall cObjectReferenceParserRuleCall_4 = (RuleCall)cAlternatives.eContents().get(4);
		
		////TODO: could this be ScalarExpression | CollectionExpression? and simplify rootParameter extension
		//Expression:
		//    StringLiteral | StringFunction | CollectionLiteral | CollectionFunction | ObjectReference;
		@Override public ParserRule getRule() { return rule; }
		
		//StringLiteral | StringFunction | CollectionLiteral | CollectionFunction | ObjectReference
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//StringLiteral
		public RuleCall getStringLiteralParserRuleCall_0() { return cStringLiteralParserRuleCall_0; }
		
		//StringFunction
		public RuleCall getStringFunctionParserRuleCall_1() { return cStringFunctionParserRuleCall_1; }
		
		//CollectionLiteral
		public RuleCall getCollectionLiteralParserRuleCall_2() { return cCollectionLiteralParserRuleCall_2; }
		
		//CollectionFunction
		public RuleCall getCollectionFunctionParserRuleCall_3() { return cCollectionFunctionParserRuleCall_3; }
		
		//ObjectReference
		public RuleCall getObjectReferenceParserRuleCall_4() { return cObjectReferenceParserRuleCall_4; }
	}
	public class ImageExpressionElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.ImageExpression");
		private final RuleCall cScalarExpressionParserRuleCall = (RuleCall)rule.eContents().get(1);
		
		//ImageExpression returns ScalarExpression:
		//    ScalarExpression;
		@Override public ParserRule getRule() { return rule; }
		
		//ScalarExpression
		public RuleCall getScalarExpressionParserRuleCall() { return cScalarExpressionParserRuleCall; }
	}
	public class ScalarExpressionElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.ScalarExpression");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final RuleCall cStringLiteralParserRuleCall_0 = (RuleCall)cAlternatives.eContents().get(0);
		private final RuleCall cStringFunctionParserRuleCall_1 = (RuleCall)cAlternatives.eContents().get(1);
		private final RuleCall cObjectReferenceParserRuleCall_2 = (RuleCall)cAlternatives.eContents().get(2);
		
		//ScalarExpression:
		//    StringLiteral | StringFunction | ObjectReference;
		@Override public ParserRule getRule() { return rule; }
		
		//StringLiteral | StringFunction | ObjectReference
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//StringLiteral
		public RuleCall getStringLiteralParserRuleCall_0() { return cStringLiteralParserRuleCall_0; }
		
		//StringFunction
		public RuleCall getStringFunctionParserRuleCall_1() { return cStringFunctionParserRuleCall_1; }
		
		//ObjectReference
		public RuleCall getObjectReferenceParserRuleCall_2() { return cObjectReferenceParserRuleCall_2; }
	}
	public class CollectionExpressionElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.CollectionExpression");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final RuleCall cCollectionLiteralParserRuleCall_0 = (RuleCall)cAlternatives.eContents().get(0);
		private final RuleCall cCollectionFunctionParserRuleCall_1 = (RuleCall)cAlternatives.eContents().get(1);
		private final RuleCall cObjectReferenceParserRuleCall_2 = (RuleCall)cAlternatives.eContents().get(2);
		
		//CollectionExpression:
		//    CollectionLiteral | CollectionFunction | ObjectReference;
		@Override public ParserRule getRule() { return rule; }
		
		//CollectionLiteral | CollectionFunction | ObjectReference
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//CollectionLiteral
		public RuleCall getCollectionLiteralParserRuleCall_0() { return cCollectionLiteralParserRuleCall_0; }
		
		//CollectionFunction
		public RuleCall getCollectionFunctionParserRuleCall_1() { return cCollectionFunctionParserRuleCall_1; }
		
		//ObjectReference
		public RuleCall getObjectReferenceParserRuleCall_2() { return cObjectReferenceParserRuleCall_2; }
	}
	public class StringLiteralElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.StringLiteral");
		private final Assignment cValueAssignment = (Assignment)rule.eContents().get(1);
		private final RuleCall cValueSTRINGTerminalRuleCall_0 = (RuleCall)cValueAssignment.eContents().get(0);
		
		//StringLiteral:
		//    value=STRING;
		@Override public ParserRule getRule() { return rule; }
		
		//value=STRING
		public Assignment getValueAssignment() { return cValueAssignment; }
		
		//STRING
		public RuleCall getValueSTRINGTerminalRuleCall_0() { return cValueSTRINGTerminalRuleCall_0; }
	}
	public class StringFunctionElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.StringFunction");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final Group cGroup_0 = (Group)cAlternatives.eContents().get(0);
		private final Action cStringConcatAction_0_0 = (Action)cGroup_0.eContents().get(0);
		private final Keyword cLeftParenthesisKeyword_0_1 = (Keyword)cGroup_0.eContents().get(1);
		private final Assignment cValuesAssignment_0_2 = (Assignment)cGroup_0.eContents().get(2);
		private final RuleCall cValuesScalarExpressionParserRuleCall_0_2_0 = (RuleCall)cValuesAssignment_0_2.eContents().get(0);
		private final Keyword cRightParenthesisKeyword_0_3 = (Keyword)cGroup_0.eContents().get(3);
		private final Group cGroup_1 = (Group)cAlternatives.eContents().get(1);
		private final Action cStringReplaceAction_1_0 = (Action)cGroup_1.eContents().get(0);
		private final Keyword cReplaceKeyword_1_1 = (Keyword)cGroup_1.eContents().get(1);
		private final Assignment cValueAssignment_1_2 = (Assignment)cGroup_1.eContents().get(2);
		private final RuleCall cValueScalarExpressionParserRuleCall_1_2_0 = (RuleCall)cValueAssignment_1_2.eContents().get(0);
		private final Keyword cCommaKeyword_1_3 = (Keyword)cGroup_1.eContents().get(3);
		private final Assignment cMatchAssignment_1_4 = (Assignment)cGroup_1.eContents().get(4);
		private final RuleCall cMatchScalarExpressionParserRuleCall_1_4_0 = (RuleCall)cMatchAssignment_1_4.eContents().get(0);
		private final Keyword cCommaKeyword_1_5 = (Keyword)cGroup_1.eContents().get(5);
		private final Assignment cReplacementAssignment_1_6 = (Assignment)cGroup_1.eContents().get(6);
		private final RuleCall cReplacementScalarExpressionParserRuleCall_1_6_0 = (RuleCall)cReplacementAssignment_1_6.eContents().get(0);
		private final Keyword cRightParenthesisKeyword_1_7 = (Keyword)cGroup_1.eContents().get(7);
		private final Group cGroup_2 = (Group)cAlternatives.eContents().get(2);
		private final Action cStringUrlConformAction_2_0 = (Action)cGroup_2.eContents().get(0);
		private final Keyword cUrlconformKeyword_2_1 = (Keyword)cGroup_2.eContents().get(1);
		private final Assignment cValueAssignment_2_2 = (Assignment)cGroup_2.eContents().get(2);
		private final RuleCall cValueScalarExpressionParserRuleCall_2_2_0 = (RuleCall)cValueAssignment_2_2.eContents().get(0);
		private final Keyword cRightParenthesisKeyword_2_3 = (Keyword)cGroup_2.eContents().get(3);
		
		//StringFunction:
		//    {StringConcat} '(' (values+=ScalarExpression)+ ')' |
		//    {StringReplace} 'replace(' value=ScalarExpression ',' match=ScalarExpression ',' replacement=ScalarExpression ')' |
		//    {StringUrlConform} 'urlconform(' value=ScalarExpression ')';
		@Override public ParserRule getRule() { return rule; }
		
		//{StringConcat} '(' (values+=ScalarExpression)+ ')' |
		//{StringReplace} 'replace(' value=ScalarExpression ',' match=ScalarExpression ',' replacement=ScalarExpression ')' |
		//{StringUrlConform} 'urlconform(' value=ScalarExpression ')'
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//{StringConcat} '(' (values+=ScalarExpression)+ ')'
		public Group getGroup_0() { return cGroup_0; }
		
		//{StringConcat}
		public Action getStringConcatAction_0_0() { return cStringConcatAction_0_0; }
		
		//'('
		public Keyword getLeftParenthesisKeyword_0_1() { return cLeftParenthesisKeyword_0_1; }
		
		//(values+=ScalarExpression)+
		public Assignment getValuesAssignment_0_2() { return cValuesAssignment_0_2; }
		
		//ScalarExpression
		public RuleCall getValuesScalarExpressionParserRuleCall_0_2_0() { return cValuesScalarExpressionParserRuleCall_0_2_0; }
		
		//')'
		public Keyword getRightParenthesisKeyword_0_3() { return cRightParenthesisKeyword_0_3; }
		
		//{StringReplace} 'replace(' value=ScalarExpression ',' match=ScalarExpression ',' replacement=ScalarExpression ')'
		public Group getGroup_1() { return cGroup_1; }
		
		//{StringReplace}
		public Action getStringReplaceAction_1_0() { return cStringReplaceAction_1_0; }
		
		//'replace('
		public Keyword getReplaceKeyword_1_1() { return cReplaceKeyword_1_1; }
		
		//value=ScalarExpression
		public Assignment getValueAssignment_1_2() { return cValueAssignment_1_2; }
		
		//ScalarExpression
		public RuleCall getValueScalarExpressionParserRuleCall_1_2_0() { return cValueScalarExpressionParserRuleCall_1_2_0; }
		
		//','
		public Keyword getCommaKeyword_1_3() { return cCommaKeyword_1_3; }
		
		//match=ScalarExpression
		public Assignment getMatchAssignment_1_4() { return cMatchAssignment_1_4; }
		
		//ScalarExpression
		public RuleCall getMatchScalarExpressionParserRuleCall_1_4_0() { return cMatchScalarExpressionParserRuleCall_1_4_0; }
		
		//','
		public Keyword getCommaKeyword_1_5() { return cCommaKeyword_1_5; }
		
		//replacement=ScalarExpression
		public Assignment getReplacementAssignment_1_6() { return cReplacementAssignment_1_6; }
		
		//ScalarExpression
		public RuleCall getReplacementScalarExpressionParserRuleCall_1_6_0() { return cReplacementScalarExpressionParserRuleCall_1_6_0; }
		
		//')'
		public Keyword getRightParenthesisKeyword_1_7() { return cRightParenthesisKeyword_1_7; }
		
		//{StringUrlConform} 'urlconform(' value=ScalarExpression ')'
		public Group getGroup_2() { return cGroup_2; }
		
		//{StringUrlConform}
		public Action getStringUrlConformAction_2_0() { return cStringUrlConformAction_2_0; }
		
		//'urlconform('
		public Keyword getUrlconformKeyword_2_1() { return cUrlconformKeyword_2_1; }
		
		//value=ScalarExpression
		public Assignment getValueAssignment_2_2() { return cValueAssignment_2_2; }
		
		//ScalarExpression
		public RuleCall getValueScalarExpressionParserRuleCall_2_2_0() { return cValueScalarExpressionParserRuleCall_2_2_0; }
		
		//')'
		public Keyword getRightParenthesisKeyword_2_3() { return cRightParenthesisKeyword_2_3; }
	}
	public class CollectionLiteralElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.CollectionLiteral");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cLeftSquareBracketKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Assignment cItemsAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cItemsScalarExpressionParserRuleCall_1_0 = (RuleCall)cItemsAssignment_1.eContents().get(0);
		private final Group cGroup_2 = (Group)cGroup.eContents().get(2);
		private final Keyword cCommaKeyword_2_0 = (Keyword)cGroup_2.eContents().get(0);
		private final Assignment cItemsAssignment_2_1 = (Assignment)cGroup_2.eContents().get(1);
		private final RuleCall cItemsScalarExpressionParserRuleCall_2_1_0 = (RuleCall)cItemsAssignment_2_1.eContents().get(0);
		private final Keyword cRightSquareBracketKeyword_3 = (Keyword)cGroup.eContents().get(3);
		
		//CollectionLiteral:
		//    '[' items+=ScalarExpression (',' items+=ScalarExpression)* ']';
		@Override public ParserRule getRule() { return rule; }
		
		//'[' items+=ScalarExpression (',' items+=ScalarExpression)* ']'
		public Group getGroup() { return cGroup; }
		
		//'['
		public Keyword getLeftSquareBracketKeyword_0() { return cLeftSquareBracketKeyword_0; }
		
		//items+=ScalarExpression
		public Assignment getItemsAssignment_1() { return cItemsAssignment_1; }
		
		//ScalarExpression
		public RuleCall getItemsScalarExpressionParserRuleCall_1_0() { return cItemsScalarExpressionParserRuleCall_1_0; }
		
		//(',' items+=ScalarExpression)*
		public Group getGroup_2() { return cGroup_2; }
		
		//','
		public Keyword getCommaKeyword_2_0() { return cCommaKeyword_2_0; }
		
		//items+=ScalarExpression
		public Assignment getItemsAssignment_2_1() { return cItemsAssignment_2_1; }
		
		//ScalarExpression
		public RuleCall getItemsScalarExpressionParserRuleCall_2_1_0() { return cItemsScalarExpressionParserRuleCall_2_1_0; }
		
		//']'
		public Keyword getRightSquareBracketKeyword_3() { return cRightSquareBracketKeyword_3; }
	}
	public class CollectionFunctionElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.CollectionFunction");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Action cStringSplitAction_0 = (Action)cGroup.eContents().get(0);
		private final Keyword cSplitKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Assignment cValueAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final RuleCall cValueScalarExpressionParserRuleCall_2_0 = (RuleCall)cValueAssignment_2.eContents().get(0);
		private final Keyword cCommaKeyword_3 = (Keyword)cGroup.eContents().get(3);
		private final Assignment cDelimiterAssignment_4 = (Assignment)cGroup.eContents().get(4);
		private final RuleCall cDelimiterScalarExpressionParserRuleCall_4_0 = (RuleCall)cDelimiterAssignment_4.eContents().get(0);
		private final Keyword cRightParenthesisKeyword_5 = (Keyword)cGroup.eContents().get(5);
		
		//CollectionFunction:
		//    {StringSplit} 'split(' value=ScalarExpression ',' delimiter=ScalarExpression ')'
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//{StringSplit} 'split(' value=ScalarExpression ',' delimiter=ScalarExpression ')'
		public Group getGroup() { return cGroup; }
		
		//{StringSplit}
		public Action getStringSplitAction_0() { return cStringSplitAction_0; }
		
		//'split('
		public Keyword getSplitKeyword_1() { return cSplitKeyword_1; }
		
		//value=ScalarExpression
		public Assignment getValueAssignment_2() { return cValueAssignment_2; }
		
		//ScalarExpression
		public RuleCall getValueScalarExpressionParserRuleCall_2_0() { return cValueScalarExpressionParserRuleCall_2_0; }
		
		//','
		public Keyword getCommaKeyword_3() { return cCommaKeyword_3; }
		
		//delimiter=ScalarExpression
		public Assignment getDelimiterAssignment_4() { return cDelimiterAssignment_4; }
		
		//ScalarExpression
		public RuleCall getDelimiterScalarExpressionParserRuleCall_4_0() { return cDelimiterScalarExpressionParserRuleCall_4_0; }
		
		//')'
		public Keyword getRightParenthesisKeyword_5() { return cRightParenthesisKeyword_5; }
	}
	public class TableViewElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.TableView");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cTableviewKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Assignment cNameAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cNameIDTerminalRuleCall_1_0 = (RuleCall)cNameAssignment_1.eContents().get(0);
		private final Group cGroup_2 = (Group)cGroup.eContents().get(2);
		private final Keyword cLeftParenthesisKeyword_2_0 = (Keyword)cGroup_2.eContents().get(0);
		private final Assignment cContentAssignment_2_1 = (Assignment)cGroup_2.eContents().get(1);
		private final RuleCall cContentParameterParserRuleCall_2_1_0 = (RuleCall)cContentAssignment_2_1.eContents().get(0);
		private final Keyword cRightParenthesisKeyword_2_2 = (Keyword)cGroup_2.eContents().get(2);
		private final Keyword cLeftCurlyBracketKeyword_3 = (Keyword)cGroup.eContents().get(3);
		private final UnorderedGroup cUnorderedGroup_4 = (UnorderedGroup)cGroup.eContents().get(4);
		private final Group cGroup_4_0 = (Group)cUnorderedGroup_4.eContents().get(0);
		private final Keyword cTitleKeyword_4_0_0 = (Keyword)cGroup_4_0.eContents().get(0);
		private final Assignment cTitleAssignment_4_0_1 = (Assignment)cGroup_4_0.eContents().get(1);
		private final RuleCall cTitleScalarExpressionParserRuleCall_4_0_1_0 = (RuleCall)cTitleAssignment_4_0_1.eContents().get(0);
		private final Group cGroup_4_1 = (Group)cUnorderedGroup_4.eContents().get(1);
		private final Keyword cTitleImageKeyword_4_1_0 = (Keyword)cGroup_4_1.eContents().get(0);
		private final Assignment cTitleImageAssignment_4_1_1 = (Assignment)cGroup_4_1.eContents().get(1);
		private final RuleCall cTitleImageImageExpressionParserRuleCall_4_1_1_0 = (RuleCall)cTitleImageAssignment_4_1_1.eContents().get(0);
		private final Group cGroup_4_2 = (Group)cUnorderedGroup_4.eContents().get(2);
		private final Keyword cStyleKeyword_4_2_0 = (Keyword)cGroup_4_2.eContents().get(0);
		private final Assignment cStyleAssignment_4_2_1 = (Assignment)cGroup_4_2.eContents().get(1);
		private final RuleCall cStyleTableViewStyleEnumRuleCall_4_2_1_0 = (RuleCall)cStyleAssignment_4_2_1.eContents().get(0);
		private final Assignment cSectionsAssignment_5 = (Assignment)cGroup.eContents().get(5);
		private final RuleCall cSectionsSectionParserRuleCall_5_0 = (RuleCall)cSectionsAssignment_5.eContents().get(0);
		private final Keyword cRightCurlyBracketKeyword_6 = (Keyword)cGroup.eContents().get(6);
		
		//TableView:
		//    'tableview' name=ID ('(' content=Parameter ')')? '{'
		//        ( ('title:' title=ScalarExpression)?
		//        & ('titleImage:' titleImage=ImageExpression)?
		//        & ('style:' style=TableViewStyle)? )
		//        (sections+=Section)*
		//    '}';
		@Override public ParserRule getRule() { return rule; }
		
		//'tableview' name=ID ('(' content=Parameter ')')? '{'
		//    ( ('title:' title=ScalarExpression)?
		//    & ('titleImage:' titleImage=ImageExpression)?
		//    & ('style:' style=TableViewStyle)? )
		//    (sections+=Section)*
		//'}'
		public Group getGroup() { return cGroup; }
		
		//'tableview'
		public Keyword getTableviewKeyword_0() { return cTableviewKeyword_0; }
		
		//name=ID
		public Assignment getNameAssignment_1() { return cNameAssignment_1; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_1_0() { return cNameIDTerminalRuleCall_1_0; }
		
		//('(' content=Parameter ')')?
		public Group getGroup_2() { return cGroup_2; }
		
		//'('
		public Keyword getLeftParenthesisKeyword_2_0() { return cLeftParenthesisKeyword_2_0; }
		
		//content=Parameter
		public Assignment getContentAssignment_2_1() { return cContentAssignment_2_1; }
		
		//Parameter
		public RuleCall getContentParameterParserRuleCall_2_1_0() { return cContentParameterParserRuleCall_2_1_0; }
		
		//')'
		public Keyword getRightParenthesisKeyword_2_2() { return cRightParenthesisKeyword_2_2; }
		
		//'{'
		public Keyword getLeftCurlyBracketKeyword_3() { return cLeftCurlyBracketKeyword_3; }
		
		//( ('title:' title=ScalarExpression)?
		//& ('titleImage:' titleImage=ImageExpression)?
		//& ('style:' style=TableViewStyle)? )
		public UnorderedGroup getUnorderedGroup_4() { return cUnorderedGroup_4; }
		
		//('title:' title=ScalarExpression)?
		public Group getGroup_4_0() { return cGroup_4_0; }
		
		//'title:'
		public Keyword getTitleKeyword_4_0_0() { return cTitleKeyword_4_0_0; }
		
		//title=ScalarExpression
		public Assignment getTitleAssignment_4_0_1() { return cTitleAssignment_4_0_1; }
		
		//ScalarExpression
		public RuleCall getTitleScalarExpressionParserRuleCall_4_0_1_0() { return cTitleScalarExpressionParserRuleCall_4_0_1_0; }
		
		//('titleImage:' titleImage=ImageExpression)?
		public Group getGroup_4_1() { return cGroup_4_1; }
		
		//'titleImage:'
		public Keyword getTitleImageKeyword_4_1_0() { return cTitleImageKeyword_4_1_0; }
		
		//titleImage=ImageExpression
		public Assignment getTitleImageAssignment_4_1_1() { return cTitleImageAssignment_4_1_1; }
		
		//ImageExpression
		public RuleCall getTitleImageImageExpressionParserRuleCall_4_1_1_0() { return cTitleImageImageExpressionParserRuleCall_4_1_1_0; }
		
		//('style:' style=TableViewStyle)?
		public Group getGroup_4_2() { return cGroup_4_2; }
		
		//'style:'
		public Keyword getStyleKeyword_4_2_0() { return cStyleKeyword_4_2_0; }
		
		//style=TableViewStyle
		public Assignment getStyleAssignment_4_2_1() { return cStyleAssignment_4_2_1; }
		
		//TableViewStyle
		public RuleCall getStyleTableViewStyleEnumRuleCall_4_2_1_0() { return cStyleTableViewStyleEnumRuleCall_4_2_1_0; }
		
		//(sections+=Section)*
		public Assignment getSectionsAssignment_5() { return cSectionsAssignment_5; }
		
		//Section
		public RuleCall getSectionsSectionParserRuleCall_5_0() { return cSectionsSectionParserRuleCall_5_0; }
		
		//'}'
		public Keyword getRightCurlyBracketKeyword_6() { return cRightCurlyBracketKeyword_6; }
	}
	public class ViewContentElementElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.ViewContentElement");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final RuleCall cSectionParserRuleCall_0 = (RuleCall)cAlternatives.eContents().get(0);
		private final RuleCall cCellParserRuleCall_1 = (RuleCall)cAlternatives.eContents().get(1);
		
		//ViewContentElement:
		//    Section | Cell;
		@Override public ParserRule getRule() { return rule; }
		
		//Section | Cell
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//Section
		public RuleCall getSectionParserRuleCall_0() { return cSectionParserRuleCall_0; }
		
		//Cell
		public RuleCall getCellParserRuleCall_1() { return cCellParserRuleCall_1; }
	}
	public class SectionElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.Section");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cSectionKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Assignment cIteratorAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cIteratorCollectionIteratorParserRuleCall_1_0 = (RuleCall)cIteratorAssignment_1.eContents().get(0);
		private final Keyword cLeftCurlyBracketKeyword_2 = (Keyword)cGroup.eContents().get(2);
		private final Group cGroup_3 = (Group)cGroup.eContents().get(3);
		private final Keyword cTitleKeyword_3_0 = (Keyword)cGroup_3.eContents().get(0);
		private final Assignment cTitleAssignment_3_1 = (Assignment)cGroup_3.eContents().get(1);
		private final RuleCall cTitleScalarExpressionParserRuleCall_3_1_0 = (RuleCall)cTitleAssignment_3_1.eContents().get(0);
		private final Assignment cCellsAssignment_4 = (Assignment)cGroup.eContents().get(4);
		private final RuleCall cCellsCellParserRuleCall_4_0 = (RuleCall)cCellsAssignment_4.eContents().get(0);
		private final Keyword cRightCurlyBracketKeyword_5 = (Keyword)cGroup.eContents().get(5);
		
		//Section:
		//    'section' iterator=CollectionIterator? '{'
		//        ('title:' title=ScalarExpression)?
		//        (cells+=Cell)+
		//    '}';
		@Override public ParserRule getRule() { return rule; }
		
		//'section' iterator=CollectionIterator? '{'
		//    ('title:' title=ScalarExpression)?
		//    (cells+=Cell)+
		//'}'
		public Group getGroup() { return cGroup; }
		
		//'section'
		public Keyword getSectionKeyword_0() { return cSectionKeyword_0; }
		
		//iterator=CollectionIterator?
		public Assignment getIteratorAssignment_1() { return cIteratorAssignment_1; }
		
		//CollectionIterator
		public RuleCall getIteratorCollectionIteratorParserRuleCall_1_0() { return cIteratorCollectionIteratorParserRuleCall_1_0; }
		
		//'{'
		public Keyword getLeftCurlyBracketKeyword_2() { return cLeftCurlyBracketKeyword_2; }
		
		//('title:' title=ScalarExpression)?
		public Group getGroup_3() { return cGroup_3; }
		
		//'title:'
		public Keyword getTitleKeyword_3_0() { return cTitleKeyword_3_0; }
		
		//title=ScalarExpression
		public Assignment getTitleAssignment_3_1() { return cTitleAssignment_3_1; }
		
		//ScalarExpression
		public RuleCall getTitleScalarExpressionParserRuleCall_3_1_0() { return cTitleScalarExpressionParserRuleCall_3_1_0; }
		
		//(cells+=Cell)+
		public Assignment getCellsAssignment_4() { return cCellsAssignment_4; }
		
		//Cell
		public RuleCall getCellsCellParserRuleCall_4_0() { return cCellsCellParserRuleCall_4_0; }
		
		//'}'
		public Keyword getRightCurlyBracketKeyword_5() { return cRightCurlyBracketKeyword_5; }
	}
	public class CellElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.Cell");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cCellKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Assignment cTypeAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cTypeCellTypeEnumRuleCall_1_0 = (RuleCall)cTypeAssignment_1.eContents().get(0);
		private final Assignment cIteratorAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final RuleCall cIteratorCollectionIteratorParserRuleCall_2_0 = (RuleCall)cIteratorAssignment_2.eContents().get(0);
		private final Keyword cLeftCurlyBracketKeyword_3 = (Keyword)cGroup.eContents().get(3);
		private final UnorderedGroup cUnorderedGroup_4 = (UnorderedGroup)cGroup.eContents().get(4);
		private final Group cGroup_4_0 = (Group)cUnorderedGroup_4.eContents().get(0);
		private final Keyword cTextKeyword_4_0_0 = (Keyword)cGroup_4_0.eContents().get(0);
		private final Assignment cTextAssignment_4_0_1 = (Assignment)cGroup_4_0.eContents().get(1);
		private final RuleCall cTextScalarExpressionParserRuleCall_4_0_1_0 = (RuleCall)cTextAssignment_4_0_1.eContents().get(0);
		private final Group cGroup_4_1 = (Group)cUnorderedGroup_4.eContents().get(1);
		private final Keyword cDetailsKeyword_4_1_0 = (Keyword)cGroup_4_1.eContents().get(0);
		private final Assignment cDetailsAssignment_4_1_1 = (Assignment)cGroup_4_1.eContents().get(1);
		private final RuleCall cDetailsScalarExpressionParserRuleCall_4_1_1_0 = (RuleCall)cDetailsAssignment_4_1_1.eContents().get(0);
		private final Group cGroup_4_2 = (Group)cUnorderedGroup_4.eContents().get(2);
		private final Keyword cImageKeyword_4_2_0 = (Keyword)cGroup_4_2.eContents().get(0);
		private final Assignment cImageAssignment_4_2_1 = (Assignment)cGroup_4_2.eContents().get(1);
		private final RuleCall cImageScalarExpressionParserRuleCall_4_2_1_0 = (RuleCall)cImageAssignment_4_2_1.eContents().get(0);
		private final Group cGroup_4_3 = (Group)cUnorderedGroup_4.eContents().get(3);
		private final Keyword cActionKeyword_4_3_0 = (Keyword)cGroup_4_3.eContents().get(0);
		private final Assignment cActionAssignment_4_3_1 = (Assignment)cGroup_4_3.eContents().get(1);
		private final RuleCall cActionViewActionParserRuleCall_4_3_1_0 = (RuleCall)cActionAssignment_4_3_1.eContents().get(0);
		private final Group cGroup_4_4 = (Group)cUnorderedGroup_4.eContents().get(4);
		private final Keyword cAccessoryKeyword_4_4_0 = (Keyword)cGroup_4_4.eContents().get(0);
		private final Assignment cAccessoryAssignment_4_4_1 = (Assignment)cGroup_4_4.eContents().get(1);
		private final RuleCall cAccessoryCellAccessoryEnumRuleCall_4_4_1_0 = (RuleCall)cAccessoryAssignment_4_4_1.eContents().get(0);
		private final Keyword cRightCurlyBracketKeyword_5 = (Keyword)cGroup.eContents().get(5);
		
		//Cell:
		//    'cell' type=CellType iterator=CollectionIterator? '{'
		//        ( ('text:' text=ScalarExpression)?
		//        & ('details:' details=ScalarExpression)?
		//        & ('image:' image=ScalarExpression)?
		//        & ('action:' action=ViewAction)?
		//        & ('accessory:' accessory=CellAccessory)?)
		//    '}';
		@Override public ParserRule getRule() { return rule; }
		
		//'cell' type=CellType iterator=CollectionIterator? '{'
		//    ( ('text:' text=ScalarExpression)?
		//    & ('details:' details=ScalarExpression)?
		//    & ('image:' image=ScalarExpression)?
		//    & ('action:' action=ViewAction)?
		//    & ('accessory:' accessory=CellAccessory)?)
		//'}'
		public Group getGroup() { return cGroup; }
		
		//'cell'
		public Keyword getCellKeyword_0() { return cCellKeyword_0; }
		
		//type=CellType
		public Assignment getTypeAssignment_1() { return cTypeAssignment_1; }
		
		//CellType
		public RuleCall getTypeCellTypeEnumRuleCall_1_0() { return cTypeCellTypeEnumRuleCall_1_0; }
		
		//iterator=CollectionIterator?
		public Assignment getIteratorAssignment_2() { return cIteratorAssignment_2; }
		
		//CollectionIterator
		public RuleCall getIteratorCollectionIteratorParserRuleCall_2_0() { return cIteratorCollectionIteratorParserRuleCall_2_0; }
		
		//'{'
		public Keyword getLeftCurlyBracketKeyword_3() { return cLeftCurlyBracketKeyword_3; }
		
		//( ('text:' text=ScalarExpression)?
		//& ('details:' details=ScalarExpression)?
		//& ('image:' image=ScalarExpression)?
		//& ('action:' action=ViewAction)?
		//& ('accessory:' accessory=CellAccessory)?)
		public UnorderedGroup getUnorderedGroup_4() { return cUnorderedGroup_4; }
		
		//('text:' text=ScalarExpression)?
		public Group getGroup_4_0() { return cGroup_4_0; }
		
		//'text:'
		public Keyword getTextKeyword_4_0_0() { return cTextKeyword_4_0_0; }
		
		//text=ScalarExpression
		public Assignment getTextAssignment_4_0_1() { return cTextAssignment_4_0_1; }
		
		//ScalarExpression
		public RuleCall getTextScalarExpressionParserRuleCall_4_0_1_0() { return cTextScalarExpressionParserRuleCall_4_0_1_0; }
		
		//('details:' details=ScalarExpression)?
		public Group getGroup_4_1() { return cGroup_4_1; }
		
		//'details:'
		public Keyword getDetailsKeyword_4_1_0() { return cDetailsKeyword_4_1_0; }
		
		//details=ScalarExpression
		public Assignment getDetailsAssignment_4_1_1() { return cDetailsAssignment_4_1_1; }
		
		//ScalarExpression
		public RuleCall getDetailsScalarExpressionParserRuleCall_4_1_1_0() { return cDetailsScalarExpressionParserRuleCall_4_1_1_0; }
		
		//('image:' image=ScalarExpression)?
		public Group getGroup_4_2() { return cGroup_4_2; }
		
		//'image:'
		public Keyword getImageKeyword_4_2_0() { return cImageKeyword_4_2_0; }
		
		//image=ScalarExpression
		public Assignment getImageAssignment_4_2_1() { return cImageAssignment_4_2_1; }
		
		//ScalarExpression
		public RuleCall getImageScalarExpressionParserRuleCall_4_2_1_0() { return cImageScalarExpressionParserRuleCall_4_2_1_0; }
		
		//('action:' action=ViewAction)?
		public Group getGroup_4_3() { return cGroup_4_3; }
		
		//'action:'
		public Keyword getActionKeyword_4_3_0() { return cActionKeyword_4_3_0; }
		
		//action=ViewAction
		public Assignment getActionAssignment_4_3_1() { return cActionAssignment_4_3_1; }
		
		//ViewAction
		public RuleCall getActionViewActionParserRuleCall_4_3_1_0() { return cActionViewActionParserRuleCall_4_3_1_0; }
		
		//('accessory:' accessory=CellAccessory)?
		public Group getGroup_4_4() { return cGroup_4_4; }
		
		//'accessory:'
		public Keyword getAccessoryKeyword_4_4_0() { return cAccessoryKeyword_4_4_0; }
		
		//accessory=CellAccessory
		public Assignment getAccessoryAssignment_4_4_1() { return cAccessoryAssignment_4_4_1; }
		
		//CellAccessory
		public RuleCall getAccessoryCellAccessoryEnumRuleCall_4_4_1_0() { return cAccessoryCellAccessoryEnumRuleCall_4_4_1_0; }
		
		//'}'
		public Keyword getRightCurlyBracketKeyword_5() { return cRightCurlyBracketKeyword_5; }
	}
	public class CollectionIteratorElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.CollectionIterator");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cForKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Assignment cNameAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cNameIDTerminalRuleCall_1_0 = (RuleCall)cNameAssignment_1.eContents().get(0);
		private final Keyword cInKeyword_2 = (Keyword)cGroup.eContents().get(2);
		private final Assignment cCollectionAssignment_3 = (Assignment)cGroup.eContents().get(3);
		private final RuleCall cCollectionCollectionExpressionParserRuleCall_3_0 = (RuleCall)cCollectionAssignment_3.eContents().get(0);
		
		//CollectionIterator:
		//    'for' name=ID 'in' collection=CollectionExpression;
		@Override public ParserRule getRule() { return rule; }
		
		//'for' name=ID 'in' collection=CollectionExpression
		public Group getGroup() { return cGroup; }
		
		//'for'
		public Keyword getForKeyword_0() { return cForKeyword_0; }
		
		//name=ID
		public Assignment getNameAssignment_1() { return cNameAssignment_1; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_1_0() { return cNameIDTerminalRuleCall_1_0; }
		
		//'in'
		public Keyword getInKeyword_2() { return cInKeyword_2; }
		
		//collection=CollectionExpression
		public Assignment getCollectionAssignment_3() { return cCollectionAssignment_3; }
		
		//CollectionExpression
		public RuleCall getCollectionCollectionExpressionParserRuleCall_3_0() { return cCollectionCollectionExpressionParserRuleCall_3_0; }
	}
	public class ViewActionElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.ViewAction");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final RuleCall cExternalOpenParserRuleCall_0 = (RuleCall)cAlternatives.eContents().get(0);
		private final RuleCall cSelectorParserRuleCall_1 = (RuleCall)cAlternatives.eContents().get(1);
		
		//ViewAction:
		//    ExternalOpen | Selector;
		@Override public ParserRule getRule() { return rule; }
		
		//ExternalOpen | Selector
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//ExternalOpen
		public RuleCall getExternalOpenParserRuleCall_0() { return cExternalOpenParserRuleCall_0; }
		
		//Selector
		public RuleCall getSelectorParserRuleCall_1() { return cSelectorParserRuleCall_1; }
	}
	public class SelectorNameElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.SelectorName");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final RuleCall cIDTerminalRuleCall_0 = (RuleCall)cGroup.eContents().get(0);
		private final Group cGroup_1 = (Group)cGroup.eContents().get(1);
		private final Keyword cColonKeyword_1_0 = (Keyword)cGroup_1.eContents().get(0);
		private final RuleCall cIDTerminalRuleCall_1_1 = (RuleCall)cGroup_1.eContents().get(1);
		private final Keyword cColonKeyword_2 = (Keyword)cGroup.eContents().get(2);
		
		//SelectorName:
		//  ID (':' ID)* ':'?;
		@Override public ParserRule getRule() { return rule; }
		
		//ID (':' ID)* ':'?
		public Group getGroup() { return cGroup; }
		
		//ID
		public RuleCall getIDTerminalRuleCall_0() { return cIDTerminalRuleCall_0; }
		
		//(':' ID)*
		public Group getGroup_1() { return cGroup_1; }
		
		//':'
		public Keyword getColonKeyword_1_0() { return cColonKeyword_1_0; }
		
		//ID
		public RuleCall getIDTerminalRuleCall_1_1() { return cIDTerminalRuleCall_1_1; }
		
		//':'?
		public Keyword getColonKeyword_2() { return cColonKeyword_2; }
	}
	public class SelectorElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.Selector");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cSelectorKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Keyword cLeftParenthesisKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Assignment cNameAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final RuleCall cNameSelectorNameParserRuleCall_2_0 = (RuleCall)cNameAssignment_2.eContents().get(0);
		private final Keyword cRightParenthesisKeyword_3 = (Keyword)cGroup.eContents().get(3);
		
		//Selector:
		//    '@selector' '(' name=SelectorName ')';
		@Override public ParserRule getRule() { return rule; }
		
		//'@selector' '(' name=SelectorName ')'
		public Group getGroup() { return cGroup; }
		
		//'@selector'
		public Keyword getSelectorKeyword_0() { return cSelectorKeyword_0; }
		
		//'('
		public Keyword getLeftParenthesisKeyword_1() { return cLeftParenthesisKeyword_1; }
		
		//name=SelectorName
		public Assignment getNameAssignment_2() { return cNameAssignment_2; }
		
		//SelectorName
		public RuleCall getNameSelectorNameParserRuleCall_2_0() { return cNameSelectorNameParserRuleCall_2_0; }
		
		//')'
		public Keyword getRightParenthesisKeyword_3() { return cRightParenthesisKeyword_3; }
	}
	public class ExternalOpenElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.ExternalOpen");
		private final Assignment cUrlAssignment = (Assignment)rule.eContents().get(1);
		private final RuleCall cUrlScalarExpressionParserRuleCall_0 = (RuleCall)cUrlAssignment.eContents().get(0);
		
		//ExternalOpen:
		//    url=ScalarExpression;
		@Override public ParserRule getRule() { return rule; }
		
		//url=ScalarExpression
		public Assignment getUrlAssignment() { return cUrlAssignment; }
		
		//ScalarExpression
		public RuleCall getUrlScalarExpressionParserRuleCall_0() { return cUrlScalarExpressionParserRuleCall_0; }
	}
	
	public class TableViewStyleElements extends AbstractElementFinder.AbstractEnumRuleElementFinder {
		private final EnumRule rule = (EnumRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.TableViewStyle");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final EnumLiteralDeclaration cPlainEnumLiteralDeclaration_0 = (EnumLiteralDeclaration)cAlternatives.eContents().get(0);
		private final Keyword cPlainPlainKeyword_0_0 = (Keyword)cPlainEnumLiteralDeclaration_0.eContents().get(0);
		private final EnumLiteralDeclaration cGroupedEnumLiteralDeclaration_1 = (EnumLiteralDeclaration)cAlternatives.eContents().get(1);
		private final Keyword cGroupedGroupedKeyword_1_0 = (Keyword)cGroupedEnumLiteralDeclaration_1.eContents().get(0);
		
		//// -------------------------------------------
		//// views
		//enum TableViewStyle:
		//    Plain | Grouped;
		public EnumRule getRule() { return rule; }
		
		//Plain | Grouped
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//Plain
		public EnumLiteralDeclaration getPlainEnumLiteralDeclaration_0() { return cPlainEnumLiteralDeclaration_0; }
		
		public Keyword getPlainPlainKeyword_0_0() { return cPlainPlainKeyword_0_0; }
		
		//Grouped
		public EnumLiteralDeclaration getGroupedEnumLiteralDeclaration_1() { return cGroupedEnumLiteralDeclaration_1; }
		
		public Keyword getGroupedGroupedKeyword_1_0() { return cGroupedGroupedKeyword_1_0; }
	}
	public class CellTypeElements extends AbstractElementFinder.AbstractEnumRuleElementFinder {
		private final EnumRule rule = (EnumRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.CellType");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final EnumLiteralDeclaration cDefaultEnumLiteralDeclaration_0 = (EnumLiteralDeclaration)cAlternatives.eContents().get(0);
		private final Keyword cDefaultDefaultKeyword_0_0 = (Keyword)cDefaultEnumLiteralDeclaration_0.eContents().get(0);
		private final EnumLiteralDeclaration cValue1EnumLiteralDeclaration_1 = (EnumLiteralDeclaration)cAlternatives.eContents().get(1);
		private final Keyword cValue1Value1Keyword_1_0 = (Keyword)cValue1EnumLiteralDeclaration_1.eContents().get(0);
		private final EnumLiteralDeclaration cValue2EnumLiteralDeclaration_2 = (EnumLiteralDeclaration)cAlternatives.eContents().get(2);
		private final Keyword cValue2Value2Keyword_2_0 = (Keyword)cValue2EnumLiteralDeclaration_2.eContents().get(0);
		private final EnumLiteralDeclaration cSubtitleEnumLiteralDeclaration_3 = (EnumLiteralDeclaration)cAlternatives.eContents().get(3);
		private final Keyword cSubtitleSubtitleKeyword_3_0 = (Keyword)cSubtitleEnumLiteralDeclaration_3.eContents().get(0);
		
		//enum CellType:
		//    default = 'Default' |
		//    value1 = 'Value1' |
		//    value2 = 'Value2' |
		//    subtitle = 'Subtitle';
		public EnumRule getRule() { return rule; }
		
		//default = 'Default' |
		//value1 = 'Value1' |
		//value2 = 'Value2' |
		//subtitle = 'Subtitle'
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//default = 'Default'
		public EnumLiteralDeclaration getDefaultEnumLiteralDeclaration_0() { return cDefaultEnumLiteralDeclaration_0; }
		
		//'Default'
		public Keyword getDefaultDefaultKeyword_0_0() { return cDefaultDefaultKeyword_0_0; }
		
		//value1 = 'Value1'
		public EnumLiteralDeclaration getValue1EnumLiteralDeclaration_1() { return cValue1EnumLiteralDeclaration_1; }
		
		//'Value1'
		public Keyword getValue1Value1Keyword_1_0() { return cValue1Value1Keyword_1_0; }
		
		//value2 = 'Value2'
		public EnumLiteralDeclaration getValue2EnumLiteralDeclaration_2() { return cValue2EnumLiteralDeclaration_2; }
		
		//'Value2'
		public Keyword getValue2Value2Keyword_2_0() { return cValue2Value2Keyword_2_0; }
		
		//subtitle = 'Subtitle'
		public EnumLiteralDeclaration getSubtitleEnumLiteralDeclaration_3() { return cSubtitleEnumLiteralDeclaration_3; }
		
		//'Subtitle'
		public Keyword getSubtitleSubtitleKeyword_3_0() { return cSubtitleSubtitleKeyword_3_0; }
	}
	public class CellAccessoryElements extends AbstractElementFinder.AbstractEnumRuleElementFinder {
		private final EnumRule rule = (EnumRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage.CellAccessory");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final EnumLiteralDeclaration cNoneEnumLiteralDeclaration_0 = (EnumLiteralDeclaration)cAlternatives.eContents().get(0);
		private final Keyword cNoneNoneKeyword_0_0 = (Keyword)cNoneEnumLiteralDeclaration_0.eContents().get(0);
		private final EnumLiteralDeclaration cLinkEnumLiteralDeclaration_1 = (EnumLiteralDeclaration)cAlternatives.eContents().get(1);
		private final Keyword cLinkLinkKeyword_1_0 = (Keyword)cLinkEnumLiteralDeclaration_1.eContents().get(0);
		private final EnumLiteralDeclaration cDetailEnumLiteralDeclaration_2 = (EnumLiteralDeclaration)cAlternatives.eContents().get(2);
		private final Keyword cDetailDetailKeyword_2_0 = (Keyword)cDetailEnumLiteralDeclaration_2.eContents().get(0);
		private final EnumLiteralDeclaration cCheckEnumLiteralDeclaration_3 = (EnumLiteralDeclaration)cAlternatives.eContents().get(3);
		private final Keyword cCheckCheckKeyword_3_0 = (Keyword)cCheckEnumLiteralDeclaration_3.eContents().get(0);
		
		//enum CellAccessory:
		//    None | Link | Detail | Check;
		public EnumRule getRule() { return rule; }
		
		//None | Link | Detail | Check
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//None
		public EnumLiteralDeclaration getNoneEnumLiteralDeclaration_0() { return cNoneEnumLiteralDeclaration_0; }
		
		public Keyword getNoneNoneKeyword_0_0() { return cNoneNoneKeyword_0_0; }
		
		//Link
		public EnumLiteralDeclaration getLinkEnumLiteralDeclaration_1() { return cLinkEnumLiteralDeclaration_1; }
		
		public Keyword getLinkLinkKeyword_1_0() { return cLinkLinkKeyword_1_0; }
		
		//Detail
		public EnumLiteralDeclaration getDetailEnumLiteralDeclaration_2() { return cDetailEnumLiteralDeclaration_2; }
		
		public Keyword getDetailDetailKeyword_2_0() { return cDetailDetailKeyword_2_0; }
		
		//Check
		public EnumLiteralDeclaration getCheckEnumLiteralDeclaration_3() { return cCheckEnumLiteralDeclaration_3; }
		
		public Keyword getCheckCheckKeyword_3_0() { return cCheckCheckKeyword_3_0; }
	}
	
	private final ModelElements pModel;
	private final PropertyPathPartElements pPropertyPathPart;
	private final TypeDescriptionElements pTypeDescription;
	private final ParameterElements pParameter;
	private final ObjectReferenceElements pObjectReference;
	private final NestedObjectReferenceElements pNestedObjectReference;
	private final ExpressionElements pExpression;
	private final ImageExpressionElements pImageExpression;
	private final ScalarExpressionElements pScalarExpression;
	private final CollectionExpressionElements pCollectionExpression;
	private final StringLiteralElements pStringLiteral;
	private final StringFunctionElements pStringFunction;
	private final CollectionLiteralElements pCollectionLiteral;
	private final CollectionFunctionElements pCollectionFunction;
	private final TableViewStyleElements eTableViewStyle;
	private final TableViewElements pTableView;
	private final ViewContentElementElements pViewContentElement;
	private final SectionElements pSection;
	private final CellElements pCell;
	private final CellTypeElements eCellType;
	private final CellAccessoryElements eCellAccessory;
	private final CollectionIteratorElements pCollectionIterator;
	private final ViewActionElements pViewAction;
	private final SelectorNameElements pSelectorName;
	private final SelectorElements pSelector;
	private final ExternalOpenElements pExternalOpen;
	
	private final Grammar grammar;
	
	private final TerminalsGrammarAccess gaTerminals;

	@Inject
	public Bug332217TestLanguageGrammarAccess(GrammarProvider grammarProvider,
			TerminalsGrammarAccess gaTerminals) {
		this.grammar = internalFindGrammar(grammarProvider);
		this.gaTerminals = gaTerminals;
		this.pModel = new ModelElements();
		this.pPropertyPathPart = new PropertyPathPartElements();
		this.pTypeDescription = new TypeDescriptionElements();
		this.pParameter = new ParameterElements();
		this.pObjectReference = new ObjectReferenceElements();
		this.pNestedObjectReference = new NestedObjectReferenceElements();
		this.pExpression = new ExpressionElements();
		this.pImageExpression = new ImageExpressionElements();
		this.pScalarExpression = new ScalarExpressionElements();
		this.pCollectionExpression = new CollectionExpressionElements();
		this.pStringLiteral = new StringLiteralElements();
		this.pStringFunction = new StringFunctionElements();
		this.pCollectionLiteral = new CollectionLiteralElements();
		this.pCollectionFunction = new CollectionFunctionElements();
		this.eTableViewStyle = new TableViewStyleElements();
		this.pTableView = new TableViewElements();
		this.pViewContentElement = new ViewContentElementElements();
		this.pSection = new SectionElements();
		this.pCell = new CellElements();
		this.eCellType = new CellTypeElements();
		this.eCellAccessory = new CellAccessoryElements();
		this.pCollectionIterator = new CollectionIteratorElements();
		this.pViewAction = new ViewActionElements();
		this.pSelectorName = new SelectorNameElements();
		this.pSelector = new SelectorElements();
		this.pExternalOpen = new ExternalOpenElements();
	}
	
	protected Grammar internalFindGrammar(GrammarProvider grammarProvider) {
		Grammar grammar = grammarProvider.getGrammar(this);
		while (grammar != null) {
			if ("org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage".equals(grammar.getName())) {
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
	//    (elements+=TableView)*;
	public ModelElements getModelAccess() {
		return pModel;
	}
	
	public ParserRule getModelRule() {
		return getModelAccess().getRule();
	}
	
	//// -------------------------------------------
	//// General
	//// common supertype to allow variableReferences
	//PropertyPathPart:
	//    Parameter | CollectionIterator;
	public PropertyPathPartElements getPropertyPathPartAccess() {
		return pPropertyPathPart;
	}
	
	public ParserRule getPropertyPathPartRule() {
		return getPropertyPathPartAccess().getRule();
	}
	
	//TypeDescription:
	//    type=ID (many?='[]')?;
	public TypeDescriptionElements getTypeDescriptionAccess() {
		return pTypeDescription;
	}
	
	public ParserRule getTypeDescriptionRule() {
		return getTypeDescriptionAccess().getRule();
	}
	
	//Parameter:
	//    description=TypeDescription name=ID;
	public ParameterElements getParameterAccess() {
		return pParameter;
	}
	
	public ParserRule getParameterRule() {
		return getParameterAccess().getRule();
	}
	
	//ObjectReference:
	//    object=[PropertyPathPart] tail=NestedObjectReference?;
	public ObjectReferenceElements getObjectReferenceAccess() {
		return pObjectReference;
	}
	
	public ParserRule getObjectReferenceRule() {
		return getObjectReferenceAccess().getRule();
	}
	
	////workaround: NestedObjectReference as separate rule to guide the content
	////   assist parser technically could have been include in ObjectReference like
	////   ObjectReference:
	////     object=[PropertyPathPart] ('.' tail=ObjectReference)?;
	//NestedObjectReference returns ObjectReference:
	//    '.' object=[PropertyPathPart] tail=NestedObjectReference?;
	public NestedObjectReferenceElements getNestedObjectReferenceAccess() {
		return pNestedObjectReference;
	}
	
	public ParserRule getNestedObjectReferenceRule() {
		return getNestedObjectReferenceAccess().getRule();
	}
	
	////TODO: could this be ScalarExpression | CollectionExpression? and simplify rootParameter extension
	//Expression:
	//    StringLiteral | StringFunction | CollectionLiteral | CollectionFunction | ObjectReference;
	public ExpressionElements getExpressionAccess() {
		return pExpression;
	}
	
	public ParserRule getExpressionRule() {
		return getExpressionAccess().getRule();
	}
	
	//ImageExpression returns ScalarExpression:
	//    ScalarExpression;
	public ImageExpressionElements getImageExpressionAccess() {
		return pImageExpression;
	}
	
	public ParserRule getImageExpressionRule() {
		return getImageExpressionAccess().getRule();
	}
	
	//ScalarExpression:
	//    StringLiteral | StringFunction | ObjectReference;
	public ScalarExpressionElements getScalarExpressionAccess() {
		return pScalarExpression;
	}
	
	public ParserRule getScalarExpressionRule() {
		return getScalarExpressionAccess().getRule();
	}
	
	//CollectionExpression:
	//    CollectionLiteral | CollectionFunction | ObjectReference;
	public CollectionExpressionElements getCollectionExpressionAccess() {
		return pCollectionExpression;
	}
	
	public ParserRule getCollectionExpressionRule() {
		return getCollectionExpressionAccess().getRule();
	}
	
	//StringLiteral:
	//    value=STRING;
	public StringLiteralElements getStringLiteralAccess() {
		return pStringLiteral;
	}
	
	public ParserRule getStringLiteralRule() {
		return getStringLiteralAccess().getRule();
	}
	
	//StringFunction:
	//    {StringConcat} '(' (values+=ScalarExpression)+ ')' |
	//    {StringReplace} 'replace(' value=ScalarExpression ',' match=ScalarExpression ',' replacement=ScalarExpression ')' |
	//    {StringUrlConform} 'urlconform(' value=ScalarExpression ')';
	public StringFunctionElements getStringFunctionAccess() {
		return pStringFunction;
	}
	
	public ParserRule getStringFunctionRule() {
		return getStringFunctionAccess().getRule();
	}
	
	//CollectionLiteral:
	//    '[' items+=ScalarExpression (',' items+=ScalarExpression)* ']';
	public CollectionLiteralElements getCollectionLiteralAccess() {
		return pCollectionLiteral;
	}
	
	public ParserRule getCollectionLiteralRule() {
		return getCollectionLiteralAccess().getRule();
	}
	
	//CollectionFunction:
	//    {StringSplit} 'split(' value=ScalarExpression ',' delimiter=ScalarExpression ')'
	//;
	public CollectionFunctionElements getCollectionFunctionAccess() {
		return pCollectionFunction;
	}
	
	public ParserRule getCollectionFunctionRule() {
		return getCollectionFunctionAccess().getRule();
	}
	
	//// -------------------------------------------
	//// views
	//enum TableViewStyle:
	//    Plain | Grouped;
	public TableViewStyleElements getTableViewStyleAccess() {
		return eTableViewStyle;
	}
	
	public EnumRule getTableViewStyleRule() {
		return getTableViewStyleAccess().getRule();
	}
	
	//TableView:
	//    'tableview' name=ID ('(' content=Parameter ')')? '{'
	//        ( ('title:' title=ScalarExpression)?
	//        & ('titleImage:' titleImage=ImageExpression)?
	//        & ('style:' style=TableViewStyle)? )
	//        (sections+=Section)*
	//    '}';
	public TableViewElements getTableViewAccess() {
		return pTableView;
	}
	
	public ParserRule getTableViewRule() {
		return getTableViewAccess().getRule();
	}
	
	//ViewContentElement:
	//    Section | Cell;
	public ViewContentElementElements getViewContentElementAccess() {
		return pViewContentElement;
	}
	
	public ParserRule getViewContentElementRule() {
		return getViewContentElementAccess().getRule();
	}
	
	//Section:
	//    'section' iterator=CollectionIterator? '{'
	//        ('title:' title=ScalarExpression)?
	//        (cells+=Cell)+
	//    '}';
	public SectionElements getSectionAccess() {
		return pSection;
	}
	
	public ParserRule getSectionRule() {
		return getSectionAccess().getRule();
	}
	
	//Cell:
	//    'cell' type=CellType iterator=CollectionIterator? '{'
	//        ( ('text:' text=ScalarExpression)?
	//        & ('details:' details=ScalarExpression)?
	//        & ('image:' image=ScalarExpression)?
	//        & ('action:' action=ViewAction)?
	//        & ('accessory:' accessory=CellAccessory)?)
	//    '}';
	public CellElements getCellAccess() {
		return pCell;
	}
	
	public ParserRule getCellRule() {
		return getCellAccess().getRule();
	}
	
	//enum CellType:
	//    default = 'Default' |
	//    value1 = 'Value1' |
	//    value2 = 'Value2' |
	//    subtitle = 'Subtitle';
	public CellTypeElements getCellTypeAccess() {
		return eCellType;
	}
	
	public EnumRule getCellTypeRule() {
		return getCellTypeAccess().getRule();
	}
	
	//enum CellAccessory:
	//    None | Link | Detail | Check;
	public CellAccessoryElements getCellAccessoryAccess() {
		return eCellAccessory;
	}
	
	public EnumRule getCellAccessoryRule() {
		return getCellAccessoryAccess().getRule();
	}
	
	//CollectionIterator:
	//    'for' name=ID 'in' collection=CollectionExpression;
	public CollectionIteratorElements getCollectionIteratorAccess() {
		return pCollectionIterator;
	}
	
	public ParserRule getCollectionIteratorRule() {
		return getCollectionIteratorAccess().getRule();
	}
	
	//ViewAction:
	//    ExternalOpen | Selector;
	public ViewActionElements getViewActionAccess() {
		return pViewAction;
	}
	
	public ParserRule getViewActionRule() {
		return getViewActionAccess().getRule();
	}
	
	//SelectorName:
	//  ID (':' ID)* ':'?;
	public SelectorNameElements getSelectorNameAccess() {
		return pSelectorName;
	}
	
	public ParserRule getSelectorNameRule() {
		return getSelectorNameAccess().getRule();
	}
	
	//Selector:
	//    '@selector' '(' name=SelectorName ')';
	public SelectorElements getSelectorAccess() {
		return pSelector;
	}
	
	public ParserRule getSelectorRule() {
		return getSelectorAccess().getRule();
	}
	
	//ExternalOpen:
	//    url=ScalarExpression;
	public ExternalOpenElements getExternalOpenAccess() {
		return pExternalOpen;
	}
	
	public ParserRule getExternalOpenRule() {
		return getExternalOpenAccess().getRule();
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

/*******************************************************************************
 * Copyright (c) 2015, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
package org.eclipse.xtext.example.homeautomation.services;

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
import org.eclipse.xtext.service.AbstractElementFinder;
import org.eclipse.xtext.service.GrammarProvider;
import org.eclipse.xtext.xbase.services.XbaseGrammarAccess;
import org.eclipse.xtext.xbase.services.XtypeGrammarAccess;

@Singleton
public class RuleEngineGrammarAccess extends AbstractElementFinder.AbstractGrammarElementFinder {
	
	public class ModelElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.example.homeautomation.RuleEngine.Model");
		private final Assignment cDeclarationsAssignment = (Assignment)rule.eContents().get(1);
		private final RuleCall cDeclarationsDeclarationParserRuleCall_0 = (RuleCall)cDeclarationsAssignment.eContents().get(0);
		
		//Model:
		//    declarations+=Declaration*;
		@Override public ParserRule getRule() { return rule; }
		
		//declarations+=Declaration*
		public Assignment getDeclarationsAssignment() { return cDeclarationsAssignment; }
		
		//Declaration
		public RuleCall getDeclarationsDeclarationParserRuleCall_0() { return cDeclarationsDeclarationParserRuleCall_0; }
	}
	public class DeclarationElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.example.homeautomation.RuleEngine.Declaration");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final RuleCall cDeviceParserRuleCall_0 = (RuleCall)cAlternatives.eContents().get(0);
		private final RuleCall cRuleParserRuleCall_1 = (RuleCall)cAlternatives.eContents().get(1);
		
		//Declaration:
		//    Device | Rule;
		@Override public ParserRule getRule() { return rule; }
		
		//Device | Rule
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//Device
		public RuleCall getDeviceParserRuleCall_0() { return cDeviceParserRuleCall_0; }
		
		//Rule
		public RuleCall getRuleParserRuleCall_1() { return cRuleParserRuleCall_1; }
	}
	public class DeviceElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.example.homeautomation.RuleEngine.Device");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cDeviceKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Assignment cNameAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cNameIDTerminalRuleCall_1_0 = (RuleCall)cNameAssignment_1.eContents().get(0);
		private final Keyword cCanKeyword_2 = (Keyword)cGroup.eContents().get(2);
		private final Keyword cBeKeyword_3 = (Keyword)cGroup.eContents().get(3);
		private final Group cGroup_4 = (Group)cGroup.eContents().get(4);
		private final Assignment cStatesAssignment_4_0 = (Assignment)cGroup_4.eContents().get(0);
		private final RuleCall cStatesStateParserRuleCall_4_0_0 = (RuleCall)cStatesAssignment_4_0.eContents().get(0);
		private final Group cGroup_4_1 = (Group)cGroup_4.eContents().get(1);
		private final Keyword cCommaKeyword_4_1_0 = (Keyword)cGroup_4_1.eContents().get(0);
		private final Assignment cStatesAssignment_4_1_1 = (Assignment)cGroup_4_1.eContents().get(1);
		private final RuleCall cStatesStateParserRuleCall_4_1_1_0 = (RuleCall)cStatesAssignment_4_1_1.eContents().get(0);
		
		//Device:
		//    'Device' name=ID 'can' 'be'
		//        (states+=State (',' states+=State)*)?;
		@Override public ParserRule getRule() { return rule; }
		
		//'Device' name=ID 'can' 'be'
		//    (states+=State (',' states+=State)*)?
		public Group getGroup() { return cGroup; }
		
		//'Device'
		public Keyword getDeviceKeyword_0() { return cDeviceKeyword_0; }
		
		//name=ID
		public Assignment getNameAssignment_1() { return cNameAssignment_1; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_1_0() { return cNameIDTerminalRuleCall_1_0; }
		
		//'can'
		public Keyword getCanKeyword_2() { return cCanKeyword_2; }
		
		//'be'
		public Keyword getBeKeyword_3() { return cBeKeyword_3; }
		
		//(states+=State (',' states+=State)*)?
		public Group getGroup_4() { return cGroup_4; }
		
		//states+=State
		public Assignment getStatesAssignment_4_0() { return cStatesAssignment_4_0; }
		
		//State
		public RuleCall getStatesStateParserRuleCall_4_0_0() { return cStatesStateParserRuleCall_4_0_0; }
		
		//(',' states+=State)*
		public Group getGroup_4_1() { return cGroup_4_1; }
		
		//','
		public Keyword getCommaKeyword_4_1_0() { return cCommaKeyword_4_1_0; }
		
		//states+=State
		public Assignment getStatesAssignment_4_1_1() { return cStatesAssignment_4_1_1; }
		
		//State
		public RuleCall getStatesStateParserRuleCall_4_1_1_0() { return cStatesStateParserRuleCall_4_1_1_0; }
	}
	public class StateElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.example.homeautomation.RuleEngine.State");
		private final Assignment cNameAssignment = (Assignment)rule.eContents().get(1);
		private final RuleCall cNameIDTerminalRuleCall_0 = (RuleCall)cNameAssignment.eContents().get(0);
		
		//State:
		//    name=ID ;
		@Override public ParserRule getRule() { return rule; }
		
		//name=ID
		public Assignment getNameAssignment() { return cNameAssignment; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_0() { return cNameIDTerminalRuleCall_0; }
	}
	public class RuleElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.example.homeautomation.RuleEngine.Rule");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cRuleKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Assignment cDescriptionAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cDescriptionSTRINGTerminalRuleCall_1_0 = (RuleCall)cDescriptionAssignment_1.eContents().get(0);
		private final Keyword cWhenKeyword_2 = (Keyword)cGroup.eContents().get(2);
		private final Assignment cDeviceStateAssignment_3 = (Assignment)cGroup.eContents().get(3);
		private final CrossReference cDeviceStateStateCrossReference_3_0 = (CrossReference)cDeviceStateAssignment_3.eContents().get(0);
		private final RuleCall cDeviceStateStateQualifiedNameParserRuleCall_3_0_1 = (RuleCall)cDeviceStateStateCrossReference_3_0.eContents().get(1);
		private final Keyword cThenKeyword_4 = (Keyword)cGroup.eContents().get(4);
		private final Assignment cThenPartAssignment_5 = (Assignment)cGroup.eContents().get(5);
		private final RuleCall cThenPartXBlockExpressionParserRuleCall_5_0 = (RuleCall)cThenPartAssignment_5.eContents().get(0);
		
		//Rule:
		//    'Rule' description=STRING
		//        'when' deviceState=[State|QualifiedName]
		//        'then' thenPart=XBlockExpression;
		@Override public ParserRule getRule() { return rule; }
		
		//'Rule' description=STRING
		//    'when' deviceState=[State|QualifiedName]
		//    'then' thenPart=XBlockExpression
		public Group getGroup() { return cGroup; }
		
		//'Rule'
		public Keyword getRuleKeyword_0() { return cRuleKeyword_0; }
		
		//description=STRING
		public Assignment getDescriptionAssignment_1() { return cDescriptionAssignment_1; }
		
		//STRING
		public RuleCall getDescriptionSTRINGTerminalRuleCall_1_0() { return cDescriptionSTRINGTerminalRuleCall_1_0; }
		
		//'when'
		public Keyword getWhenKeyword_2() { return cWhenKeyword_2; }
		
		//deviceState=[State|QualifiedName]
		public Assignment getDeviceStateAssignment_3() { return cDeviceStateAssignment_3; }
		
		//[State|QualifiedName]
		public CrossReference getDeviceStateStateCrossReference_3_0() { return cDeviceStateStateCrossReference_3_0; }
		
		//QualifiedName
		public RuleCall getDeviceStateStateQualifiedNameParserRuleCall_3_0_1() { return cDeviceStateStateQualifiedNameParserRuleCall_3_0_1; }
		
		//'then'
		public Keyword getThenKeyword_4() { return cThenKeyword_4; }
		
		//thenPart=XBlockExpression
		public Assignment getThenPartAssignment_5() { return cThenPartAssignment_5; }
		
		//XBlockExpression
		public RuleCall getThenPartXBlockExpressionParserRuleCall_5_0() { return cThenPartXBlockExpressionParserRuleCall_5_0; }
	}
	public class XBlockExpressionElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.example.homeautomation.RuleEngine.XBlockExpression");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Action cXBlockExpressionAction_0 = (Action)cGroup.eContents().get(0);
		private final RuleCall cBEGINTerminalRuleCall_1 = (RuleCall)cGroup.eContents().get(1);
		private final Group cGroup_2 = (Group)cGroup.eContents().get(2);
		private final Assignment cExpressionsAssignment_2_0 = (Assignment)cGroup_2.eContents().get(0);
		private final RuleCall cExpressionsXExpressionOrVarDeclarationParserRuleCall_2_0_0 = (RuleCall)cExpressionsAssignment_2_0.eContents().get(0);
		private final Keyword cSemicolonKeyword_2_1 = (Keyword)cGroup_2.eContents().get(1);
		private final RuleCall cENDTerminalRuleCall_3 = (RuleCall)cGroup.eContents().get(3);
		
		//// We modify the concrete syntax of two Xbase expressions and make them indentation-aware
		//@Override
		//XBlockExpression returns xbase::XExpression:
		//    {xbase::XBlockExpression}
		//    BEGIN
		//        (expressions+=XExpressionOrVarDeclaration ';'?)*
		//    END;
		@Override public ParserRule getRule() { return rule; }
		
		//{xbase::XBlockExpression}
		//BEGIN
		//    (expressions+=XExpressionOrVarDeclaration ';'?)*
		//END
		public Group getGroup() { return cGroup; }
		
		//{xbase::XBlockExpression}
		public Action getXBlockExpressionAction_0() { return cXBlockExpressionAction_0; }
		
		//BEGIN
		public RuleCall getBEGINTerminalRuleCall_1() { return cBEGINTerminalRuleCall_1; }
		
		//(expressions+=XExpressionOrVarDeclaration ';'?)*
		public Group getGroup_2() { return cGroup_2; }
		
		//expressions+=XExpressionOrVarDeclaration
		public Assignment getExpressionsAssignment_2_0() { return cExpressionsAssignment_2_0; }
		
		//XExpressionOrVarDeclaration
		public RuleCall getExpressionsXExpressionOrVarDeclarationParserRuleCall_2_0_0() { return cExpressionsXExpressionOrVarDeclarationParserRuleCall_2_0_0; }
		
		//';'?
		public Keyword getSemicolonKeyword_2_1() { return cSemicolonKeyword_2_1; }
		
		//END
		public RuleCall getENDTerminalRuleCall_3() { return cENDTerminalRuleCall_3; }
	}
	public class XSwitchExpressionElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.example.homeautomation.RuleEngine.XSwitchExpression");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Action cXSwitchExpressionAction_0 = (Action)cGroup.eContents().get(0);
		private final Keyword cSwitchKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Alternatives cAlternatives_2 = (Alternatives)cGroup.eContents().get(2);
		private final Group cGroup_2_0 = (Group)cAlternatives_2.eContents().get(0);
		private final Group cGroup_2_0_0 = (Group)cGroup_2_0.eContents().get(0);
		private final Group cGroup_2_0_0_0 = (Group)cGroup_2_0_0.eContents().get(0);
		private final Keyword cLeftParenthesisKeyword_2_0_0_0_0 = (Keyword)cGroup_2_0_0_0.eContents().get(0);
		private final Assignment cDeclaredParamAssignment_2_0_0_0_1 = (Assignment)cGroup_2_0_0_0.eContents().get(1);
		private final RuleCall cDeclaredParamJvmFormalParameterParserRuleCall_2_0_0_0_1_0 = (RuleCall)cDeclaredParamAssignment_2_0_0_0_1.eContents().get(0);
		private final Keyword cColonKeyword_2_0_0_0_2 = (Keyword)cGroup_2_0_0_0.eContents().get(2);
		private final Assignment cSwitchAssignment_2_0_1 = (Assignment)cGroup_2_0.eContents().get(1);
		private final RuleCall cSwitchXExpressionParserRuleCall_2_0_1_0 = (RuleCall)cSwitchAssignment_2_0_1.eContents().get(0);
		private final Keyword cRightParenthesisKeyword_2_0_2 = (Keyword)cGroup_2_0.eContents().get(2);
		private final Group cGroup_2_1 = (Group)cAlternatives_2.eContents().get(1);
		private final Group cGroup_2_1_0 = (Group)cGroup_2_1.eContents().get(0);
		private final Group cGroup_2_1_0_0 = (Group)cGroup_2_1_0.eContents().get(0);
		private final Assignment cDeclaredParamAssignment_2_1_0_0_0 = (Assignment)cGroup_2_1_0_0.eContents().get(0);
		private final RuleCall cDeclaredParamJvmFormalParameterParserRuleCall_2_1_0_0_0_0 = (RuleCall)cDeclaredParamAssignment_2_1_0_0_0.eContents().get(0);
		private final Keyword cColonKeyword_2_1_0_0_1 = (Keyword)cGroup_2_1_0_0.eContents().get(1);
		private final Assignment cSwitchAssignment_2_1_1 = (Assignment)cGroup_2_1.eContents().get(1);
		private final RuleCall cSwitchXExpressionParserRuleCall_2_1_1_0 = (RuleCall)cSwitchAssignment_2_1_1.eContents().get(0);
		private final RuleCall cBEGINTerminalRuleCall_3 = (RuleCall)cGroup.eContents().get(3);
		private final Assignment cCasesAssignment_4 = (Assignment)cGroup.eContents().get(4);
		private final RuleCall cCasesXCasePartParserRuleCall_4_0 = (RuleCall)cCasesAssignment_4.eContents().get(0);
		private final Group cGroup_5 = (Group)cGroup.eContents().get(5);
		private final Keyword cDefaultKeyword_5_0 = (Keyword)cGroup_5.eContents().get(0);
		private final Keyword cColonKeyword_5_1 = (Keyword)cGroup_5.eContents().get(1);
		private final Assignment cDefaultAssignment_5_2 = (Assignment)cGroup_5.eContents().get(2);
		private final RuleCall cDefaultXExpressionParserRuleCall_5_2_0 = (RuleCall)cDefaultAssignment_5_2.eContents().get(0);
		private final RuleCall cENDTerminalRuleCall_6 = (RuleCall)cGroup.eContents().get(6);
		
		//@Override
		//XSwitchExpression returns xbase::XExpression:
		//    {xbase::XSwitchExpression}
		//    'switch' (=>('(' declaredParam=JvmFormalParameter ':') switch=XExpression ')'
		//        | =>(declaredParam=JvmFormalParameter ':')? switch=XExpression)
		//    BEGIN
		//        (cases+=XCasePart)*
		//        ('default' ':' default=XExpression )?
		//    END;
		@Override public ParserRule getRule() { return rule; }
		
		//{xbase::XSwitchExpression}
		//'switch' (=>('(' declaredParam=JvmFormalParameter ':') switch=XExpression ')'
		//    | =>(declaredParam=JvmFormalParameter ':')? switch=XExpression)
		//BEGIN
		//    (cases+=XCasePart)*
		//    ('default' ':' default=XExpression )?
		//END
		public Group getGroup() { return cGroup; }
		
		//{xbase::XSwitchExpression}
		public Action getXSwitchExpressionAction_0() { return cXSwitchExpressionAction_0; }
		
		//'switch'
		public Keyword getSwitchKeyword_1() { return cSwitchKeyword_1; }
		
		//(=>('(' declaredParam=JvmFormalParameter ':') switch=XExpression ')'
		//       | =>(declaredParam=JvmFormalParameter ':')? switch=XExpression)
		public Alternatives getAlternatives_2() { return cAlternatives_2; }
		
		//=>('(' declaredParam=JvmFormalParameter ':') switch=XExpression ')'
		public Group getGroup_2_0() { return cGroup_2_0; }
		
		//=>('(' declaredParam=JvmFormalParameter ':')
		public Group getGroup_2_0_0() { return cGroup_2_0_0; }
		
		//'(' declaredParam=JvmFormalParameter ':'
		public Group getGroup_2_0_0_0() { return cGroup_2_0_0_0; }
		
		//'('
		public Keyword getLeftParenthesisKeyword_2_0_0_0_0() { return cLeftParenthesisKeyword_2_0_0_0_0; }
		
		//declaredParam=JvmFormalParameter
		public Assignment getDeclaredParamAssignment_2_0_0_0_1() { return cDeclaredParamAssignment_2_0_0_0_1; }
		
		//JvmFormalParameter
		public RuleCall getDeclaredParamJvmFormalParameterParserRuleCall_2_0_0_0_1_0() { return cDeclaredParamJvmFormalParameterParserRuleCall_2_0_0_0_1_0; }
		
		//':'
		public Keyword getColonKeyword_2_0_0_0_2() { return cColonKeyword_2_0_0_0_2; }
		
		//switch=XExpression
		public Assignment getSwitchAssignment_2_0_1() { return cSwitchAssignment_2_0_1; }
		
		//XExpression
		public RuleCall getSwitchXExpressionParserRuleCall_2_0_1_0() { return cSwitchXExpressionParserRuleCall_2_0_1_0; }
		
		//')'
		public Keyword getRightParenthesisKeyword_2_0_2() { return cRightParenthesisKeyword_2_0_2; }
		
		//=>(declaredParam=JvmFormalParameter ':')? switch=XExpression
		public Group getGroup_2_1() { return cGroup_2_1; }
		
		//=>(declaredParam=JvmFormalParameter ':')?
		public Group getGroup_2_1_0() { return cGroup_2_1_0; }
		
		//declaredParam=JvmFormalParameter ':'
		public Group getGroup_2_1_0_0() { return cGroup_2_1_0_0; }
		
		//declaredParam=JvmFormalParameter
		public Assignment getDeclaredParamAssignment_2_1_0_0_0() { return cDeclaredParamAssignment_2_1_0_0_0; }
		
		//JvmFormalParameter
		public RuleCall getDeclaredParamJvmFormalParameterParserRuleCall_2_1_0_0_0_0() { return cDeclaredParamJvmFormalParameterParserRuleCall_2_1_0_0_0_0; }
		
		//':'
		public Keyword getColonKeyword_2_1_0_0_1() { return cColonKeyword_2_1_0_0_1; }
		
		//switch=XExpression
		public Assignment getSwitchAssignment_2_1_1() { return cSwitchAssignment_2_1_1; }
		
		//XExpression
		public RuleCall getSwitchXExpressionParserRuleCall_2_1_1_0() { return cSwitchXExpressionParserRuleCall_2_1_1_0; }
		
		//BEGIN
		public RuleCall getBEGINTerminalRuleCall_3() { return cBEGINTerminalRuleCall_3; }
		
		//(cases+=XCasePart)*
		public Assignment getCasesAssignment_4() { return cCasesAssignment_4; }
		
		//XCasePart
		public RuleCall getCasesXCasePartParserRuleCall_4_0() { return cCasesXCasePartParserRuleCall_4_0; }
		
		//('default' ':' default=XExpression )?
		public Group getGroup_5() { return cGroup_5; }
		
		//'default'
		public Keyword getDefaultKeyword_5_0() { return cDefaultKeyword_5_0; }
		
		//':'
		public Keyword getColonKeyword_5_1() { return cColonKeyword_5_1; }
		
		//default=XExpression
		public Assignment getDefaultAssignment_5_2() { return cDefaultAssignment_5_2; }
		
		//XExpression
		public RuleCall getDefaultXExpressionParserRuleCall_5_2_0() { return cDefaultXExpressionParserRuleCall_5_2_0; }
		
		//END
		public RuleCall getENDTerminalRuleCall_6() { return cENDTerminalRuleCall_6; }
	}
	
	
	private final ModelElements pModel;
	private final DeclarationElements pDeclaration;
	private final DeviceElements pDevice;
	private final StateElements pState;
	private final RuleElements pRule;
	private final XBlockExpressionElements pXBlockExpression;
	private final XSwitchExpressionElements pXSwitchExpression;
	private final TerminalRule tBEGIN;
	private final TerminalRule tEND;
	
	private final Grammar grammar;
	
	private final XbaseGrammarAccess gaXbase;
	
	private final XtypeGrammarAccess gaXtype;

	@Inject
	public RuleEngineGrammarAccess(GrammarProvider grammarProvider,
			XbaseGrammarAccess gaXbase,
			XtypeGrammarAccess gaXtype) {
		this.grammar = internalFindGrammar(grammarProvider);
		this.gaXbase = gaXbase;
		this.gaXtype = gaXtype;
		this.pModel = new ModelElements();
		this.pDeclaration = new DeclarationElements();
		this.pDevice = new DeviceElements();
		this.pState = new StateElements();
		this.pRule = new RuleElements();
		this.pXBlockExpression = new XBlockExpressionElements();
		this.pXSwitchExpression = new XSwitchExpressionElements();
		this.tBEGIN = (TerminalRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.example.homeautomation.RuleEngine.BEGIN");
		this.tEND = (TerminalRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.example.homeautomation.RuleEngine.END");
	}
	
	protected Grammar internalFindGrammar(GrammarProvider grammarProvider) {
		Grammar grammar = grammarProvider.getGrammar(this);
		while (grammar != null) {
			if ("org.eclipse.xtext.example.homeautomation.RuleEngine".equals(grammar.getName())) {
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
	
	
	public XbaseGrammarAccess getXbaseGrammarAccess() {
		return gaXbase;
	}
	
	public XtypeGrammarAccess getXtypeGrammarAccess() {
		return gaXtype;
	}

	
	//Model:
	//    declarations+=Declaration*;
	public ModelElements getModelAccess() {
		return pModel;
	}
	
	public ParserRule getModelRule() {
		return getModelAccess().getRule();
	}
	
	//Declaration:
	//    Device | Rule;
	public DeclarationElements getDeclarationAccess() {
		return pDeclaration;
	}
	
	public ParserRule getDeclarationRule() {
		return getDeclarationAccess().getRule();
	}
	
	//Device:
	//    'Device' name=ID 'can' 'be'
	//        (states+=State (',' states+=State)*)?;
	public DeviceElements getDeviceAccess() {
		return pDevice;
	}
	
	public ParserRule getDeviceRule() {
		return getDeviceAccess().getRule();
	}
	
	//State:
	//    name=ID ;
	public StateElements getStateAccess() {
		return pState;
	}
	
	public ParserRule getStateRule() {
		return getStateAccess().getRule();
	}
	
	//Rule:
	//    'Rule' description=STRING
	//        'when' deviceState=[State|QualifiedName]
	//        'then' thenPart=XBlockExpression;
	public RuleElements getRuleAccess() {
		return pRule;
	}
	
	public ParserRule getRuleRule() {
		return getRuleAccess().getRule();
	}
	
	//// We modify the concrete syntax of two Xbase expressions and make them indentation-aware
	//@Override
	//XBlockExpression returns xbase::XExpression:
	//    {xbase::XBlockExpression}
	//    BEGIN
	//        (expressions+=XExpressionOrVarDeclaration ';'?)*
	//    END;
	public XBlockExpressionElements getXBlockExpressionAccess() {
		return pXBlockExpression;
	}
	
	public ParserRule getXBlockExpressionRule() {
		return getXBlockExpressionAccess().getRule();
	}
	
	//@Override
	//XSwitchExpression returns xbase::XExpression:
	//    {xbase::XSwitchExpression}
	//    'switch' (=>('(' declaredParam=JvmFormalParameter ':') switch=XExpression ')'
	//        | =>(declaredParam=JvmFormalParameter ':')? switch=XExpression)
	//    BEGIN
	//        (cases+=XCasePart)*
	//        ('default' ':' default=XExpression )?
	//    END;
	public XSwitchExpressionElements getXSwitchExpressionAccess() {
		return pXSwitchExpression;
	}
	
	public ParserRule getXSwitchExpressionRule() {
		return getXSwitchExpressionAccess().getRule();
	}
	
	//// The following synthetic tokens are used for the indentation-aware blocks
	//terminal BEGIN: 'synthetic:BEGIN';
	public TerminalRule getBEGINRule() {
		return tBEGIN;
	}
	
	//  // increase indentation
	//terminal END: 'synthetic:END';
	public TerminalRule getENDRule() {
		return tEND;
	}
	
	//XExpression returns XExpression :
	//    XAssignment;
	public XbaseGrammarAccess.XExpressionElements getXExpressionAccess() {
		return gaXbase.getXExpressionAccess();
	}
	
	public ParserRule getXExpressionRule() {
		return getXExpressionAccess().getRule();
	}
	
	//XAssignment returns XExpression :
	//    {XAssignment} feature=[types::JvmIdentifiableElement|FeatureCallID] OpSingleAssign value=XAssignment |
	//    XOrExpression (
	//        =>({XBinaryOperation.leftOperand=current} feature=[types::JvmIdentifiableElement|OpMultiAssign]) rightOperand=XAssignment
	//    )?;
	public XbaseGrammarAccess.XAssignmentElements getXAssignmentAccess() {
		return gaXbase.getXAssignmentAccess();
	}
	
	public ParserRule getXAssignmentRule() {
		return getXAssignmentAccess().getRule();
	}
	
	//OpSingleAssign:
	//    '='
	//;
	public XbaseGrammarAccess.OpSingleAssignElements getOpSingleAssignAccess() {
		return gaXbase.getOpSingleAssignAccess();
	}
	
	public ParserRule getOpSingleAssignRule() {
		return getOpSingleAssignAccess().getRule();
	}
	
	//OpMultiAssign:
	//    '+=' | '-=' | '*=' | '/=' | '%=' |
	//    '<' '<' '=' |
	//    '>' '>'? '>=';
	public XbaseGrammarAccess.OpMultiAssignElements getOpMultiAssignAccess() {
		return gaXbase.getOpMultiAssignAccess();
	}
	
	public ParserRule getOpMultiAssignRule() {
		return getOpMultiAssignAccess().getRule();
	}
	
	//XOrExpression returns XExpression:
	//    XAndExpression (=>({XBinaryOperation.leftOperand=current} feature=[types::JvmIdentifiableElement|OpOr]) rightOperand=XAndExpression)*;
	public XbaseGrammarAccess.XOrExpressionElements getXOrExpressionAccess() {
		return gaXbase.getXOrExpressionAccess();
	}
	
	public ParserRule getXOrExpressionRule() {
		return getXOrExpressionAccess().getRule();
	}
	
	//OpOr:
	//    '||';
	public XbaseGrammarAccess.OpOrElements getOpOrAccess() {
		return gaXbase.getOpOrAccess();
	}
	
	public ParserRule getOpOrRule() {
		return getOpOrAccess().getRule();
	}
	
	//XAndExpression returns XExpression:
	//    XEqualityExpression (=>({XBinaryOperation.leftOperand=current} feature=[types::JvmIdentifiableElement|OpAnd]) rightOperand=XEqualityExpression)*;
	public XbaseGrammarAccess.XAndExpressionElements getXAndExpressionAccess() {
		return gaXbase.getXAndExpressionAccess();
	}
	
	public ParserRule getXAndExpressionRule() {
		return getXAndExpressionAccess().getRule();
	}
	
	//OpAnd:
	//    '&&';
	public XbaseGrammarAccess.OpAndElements getOpAndAccess() {
		return gaXbase.getOpAndAccess();
	}
	
	public ParserRule getOpAndRule() {
		return getOpAndAccess().getRule();
	}
	
	//XEqualityExpression returns XExpression:
	//    XRelationalExpression (=>({XBinaryOperation.leftOperand=current} feature=[types::JvmIdentifiableElement|OpEquality])
	//    rightOperand=XRelationalExpression)*;
	public XbaseGrammarAccess.XEqualityExpressionElements getXEqualityExpressionAccess() {
		return gaXbase.getXEqualityExpressionAccess();
	}
	
	public ParserRule getXEqualityExpressionRule() {
		return getXEqualityExpressionAccess().getRule();
	}
	
	//OpEquality:
	//    '==' | '!=' | '===' | '!==';
	public XbaseGrammarAccess.OpEqualityElements getOpEqualityAccess() {
		return gaXbase.getOpEqualityAccess();
	}
	
	public ParserRule getOpEqualityRule() {
		return getOpEqualityAccess().getRule();
	}
	
	//XRelationalExpression returns XExpression:
	//    XOtherOperatorExpression
	//    (=>({XInstanceOfExpression.expression=current} 'instanceof') type=JvmTypeReference |
	//     =>({XBinaryOperation.leftOperand=current} feature=[types::JvmIdentifiableElement|OpCompare]) rightOperand=XOtherOperatorExpression)*;
	public XbaseGrammarAccess.XRelationalExpressionElements getXRelationalExpressionAccess() {
		return gaXbase.getXRelationalExpressionAccess();
	}
	
	public ParserRule getXRelationalExpressionRule() {
		return getXRelationalExpressionAccess().getRule();
	}
	
	//OpCompare:
	//    '>=' | '<' '=' | '>' | '<' ;
	public XbaseGrammarAccess.OpCompareElements getOpCompareAccess() {
		return gaXbase.getOpCompareAccess();
	}
	
	public ParserRule getOpCompareRule() {
		return getOpCompareAccess().getRule();
	}
	
	//XOtherOperatorExpression returns XExpression:
	//    XAdditiveExpression (=>({XBinaryOperation.leftOperand=current} feature=[types::JvmIdentifiableElement|OpOther])
	//    rightOperand=XAdditiveExpression)*;
	public XbaseGrammarAccess.XOtherOperatorExpressionElements getXOtherOperatorExpressionAccess() {
		return gaXbase.getXOtherOperatorExpressionAccess();
	}
	
	public ParserRule getXOtherOperatorExpressionRule() {
		return getXOtherOperatorExpressionAccess().getRule();
	}
	
	//OpOther:
	//      '->'
	//    | '..<'
	//    | '>' '..'
	//    | '..'
	//    | '=>'
	//    | '>' (=>('>' '>') | '>')
	//    | '<' (=>('<' '<') | '<' | '=>')
	//    | '<>'
	//    | '?:';
	public XbaseGrammarAccess.OpOtherElements getOpOtherAccess() {
		return gaXbase.getOpOtherAccess();
	}
	
	public ParserRule getOpOtherRule() {
		return getOpOtherAccess().getRule();
	}
	
	//XAdditiveExpression returns XExpression:
	//    XMultiplicativeExpression (=>({XBinaryOperation.leftOperand=current} feature=[types::JvmIdentifiableElement|OpAdd])
	//    rightOperand=XMultiplicativeExpression)*;
	public XbaseGrammarAccess.XAdditiveExpressionElements getXAdditiveExpressionAccess() {
		return gaXbase.getXAdditiveExpressionAccess();
	}
	
	public ParserRule getXAdditiveExpressionRule() {
		return getXAdditiveExpressionAccess().getRule();
	}
	
	//OpAdd:
	//    '+' | '-';
	public XbaseGrammarAccess.OpAddElements getOpAddAccess() {
		return gaXbase.getOpAddAccess();
	}
	
	public ParserRule getOpAddRule() {
		return getOpAddAccess().getRule();
	}
	
	//XMultiplicativeExpression returns XExpression:
	//    XUnaryOperation (=>({XBinaryOperation.leftOperand=current} feature=[types::JvmIdentifiableElement|OpMulti]) rightOperand=XUnaryOperation)*;
	public XbaseGrammarAccess.XMultiplicativeExpressionElements getXMultiplicativeExpressionAccess() {
		return gaXbase.getXMultiplicativeExpressionAccess();
	}
	
	public ParserRule getXMultiplicativeExpressionRule() {
		return getXMultiplicativeExpressionAccess().getRule();
	}
	
	//OpMulti:
	//    '*' | '**' | '/' | '%';
	public XbaseGrammarAccess.OpMultiElements getOpMultiAccess() {
		return gaXbase.getOpMultiAccess();
	}
	
	public ParserRule getOpMultiRule() {
		return getOpMultiAccess().getRule();
	}
	
	//XUnaryOperation returns XExpression:
	//    {XUnaryOperation} feature=[types::JvmIdentifiableElement|OpUnary] operand=XUnaryOperation
	//    | XCastedExpression;
	public XbaseGrammarAccess.XUnaryOperationElements getXUnaryOperationAccess() {
		return gaXbase.getXUnaryOperationAccess();
	}
	
	public ParserRule getXUnaryOperationRule() {
		return getXUnaryOperationAccess().getRule();
	}
	
	//OpUnary:
	//    "!" | "-" | "+";
	public XbaseGrammarAccess.OpUnaryElements getOpUnaryAccess() {
		return gaXbase.getOpUnaryAccess();
	}
	
	public ParserRule getOpUnaryRule() {
		return getOpUnaryAccess().getRule();
	}
	
	//XCastedExpression returns XExpression:
	//    XPostfixOperation (=>({XCastedExpression.target=current} 'as') type=JvmTypeReference)*
	//;
	public XbaseGrammarAccess.XCastedExpressionElements getXCastedExpressionAccess() {
		return gaXbase.getXCastedExpressionAccess();
	}
	
	public ParserRule getXCastedExpressionRule() {
		return getXCastedExpressionAccess().getRule();
	}
	
	//XPostfixOperation returns XExpression:
	//    XMemberFeatureCall =>({XPostfixOperation.operand=current} feature=[types::JvmIdentifiableElement|OpPostfix])?
	//;
	public XbaseGrammarAccess.XPostfixOperationElements getXPostfixOperationAccess() {
		return gaXbase.getXPostfixOperationAccess();
	}
	
	public ParserRule getXPostfixOperationRule() {
		return getXPostfixOperationAccess().getRule();
	}
	
	//OpPostfix:
	//    "++" | "--"
	//;
	public XbaseGrammarAccess.OpPostfixElements getOpPostfixAccess() {
		return gaXbase.getOpPostfixAccess();
	}
	
	public ParserRule getOpPostfixRule() {
		return getOpPostfixAccess().getRule();
	}
	
	//XMemberFeatureCall returns XExpression:
	//    XPrimaryExpression
	//    (=>({XAssignment.assignable=current} ('.'|explicitStatic?="::") feature=[types::JvmIdentifiableElement|FeatureCallID] OpSingleAssign) value=XAssignment
	//    |=>({XMemberFeatureCall.memberCallTarget=current} ("."|nullSafe?="?."|explicitStatic?="::"))
	//        ('<' typeArguments+=JvmArgumentTypeReference (',' typeArguments+=JvmArgumentTypeReference)* '>')?
	//        feature=[types::JvmIdentifiableElement|IdOrSuper] (
	//            =>explicitOperationCall?='('
	//                (
	//                    memberCallArguments+=XShortClosure
	//                  | memberCallArguments+=XExpression (',' memberCallArguments+=XExpression)*
	//                )?
	//            ')')?
	//            memberCallArguments+=XClosure?
	//        )*;
	public XbaseGrammarAccess.XMemberFeatureCallElements getXMemberFeatureCallAccess() {
		return gaXbase.getXMemberFeatureCallAccess();
	}
	
	public ParserRule getXMemberFeatureCallRule() {
		return getXMemberFeatureCallAccess().getRule();
	}
	
	//XPrimaryExpression returns XExpression:
	//    XConstructorCall |
	//    XBlockExpression |
	//    XSwitchExpression |
	//    XSynchronizedExpression |
	//    XFeatureCall |
	//    XLiteral |
	//    XIfExpression |
	//    XForLoopExpression |
	//    XBasicForLoopExpression |
	//    XWhileExpression |
	//    XDoWhileExpression |
	//    XThrowExpression |
	//    XReturnExpression |
	//    XTryCatchFinallyExpression |
	//    XParenthesizedExpression;
	public XbaseGrammarAccess.XPrimaryExpressionElements getXPrimaryExpressionAccess() {
		return gaXbase.getXPrimaryExpressionAccess();
	}
	
	public ParserRule getXPrimaryExpressionRule() {
		return getXPrimaryExpressionAccess().getRule();
	}
	
	//XLiteral returns XExpression:
	//    XCollectionLiteral |
	//    XClosure |
	//    XBooleanLiteral |
	//    XNumberLiteral |
	//    XNullLiteral |
	//    XStringLiteral |
	//    XTypeLiteral
	//;
	public XbaseGrammarAccess.XLiteralElements getXLiteralAccess() {
		return gaXbase.getXLiteralAccess();
	}
	
	public ParserRule getXLiteralRule() {
		return getXLiteralAccess().getRule();
	}
	
	//XCollectionLiteral:
	//    XSetLiteral | XListLiteral
	//;
	public XbaseGrammarAccess.XCollectionLiteralElements getXCollectionLiteralAccess() {
		return gaXbase.getXCollectionLiteralAccess();
	}
	
	public ParserRule getXCollectionLiteralRule() {
		return getXCollectionLiteralAccess().getRule();
	}
	
	//XSetLiteral:
	//    {XSetLiteral} '#' '{' (elements+=XExpression (',' elements+=XExpression )*)? '}'
	//;
	public XbaseGrammarAccess.XSetLiteralElements getXSetLiteralAccess() {
		return gaXbase.getXSetLiteralAccess();
	}
	
	public ParserRule getXSetLiteralRule() {
		return getXSetLiteralAccess().getRule();
	}
	
	//XListLiteral:
	//    {XListLiteral} '#' '[' (elements+=XExpression (',' elements+=XExpression )*)? ']'
	//;
	public XbaseGrammarAccess.XListLiteralElements getXListLiteralAccess() {
		return gaXbase.getXListLiteralAccess();
	}
	
	public ParserRule getXListLiteralRule() {
		return getXListLiteralAccess().getRule();
	}
	
	//XClosure returns XExpression:
	//    =>({XClosure}
	//    '[')
	//        =>((declaredFormalParameters+=JvmFormalParameter (',' declaredFormalParameters+=JvmFormalParameter)*)? explicitSyntax?='|')?
	//        expression=XExpressionInClosure
	//    ']';
	public XbaseGrammarAccess.XClosureElements getXClosureAccess() {
		return gaXbase.getXClosureAccess();
	}
	
	public ParserRule getXClosureRule() {
		return getXClosureAccess().getRule();
	}
	
	//XExpressionInClosure returns XExpression:
	//    {XBlockExpression}
	//    (expressions+=XExpressionOrVarDeclaration ';'?)*
	//;
	public XbaseGrammarAccess.XExpressionInClosureElements getXExpressionInClosureAccess() {
		return gaXbase.getXExpressionInClosureAccess();
	}
	
	public ParserRule getXExpressionInClosureRule() {
		return getXExpressionInClosureAccess().getRule();
	}
	
	//XShortClosure returns XExpression:
	//    =>({XClosure} (declaredFormalParameters+=JvmFormalParameter (',' declaredFormalParameters+=JvmFormalParameter)*)? explicitSyntax?='|') expression=XExpression;
	public XbaseGrammarAccess.XShortClosureElements getXShortClosureAccess() {
		return gaXbase.getXShortClosureAccess();
	}
	
	public ParserRule getXShortClosureRule() {
		return getXShortClosureAccess().getRule();
	}
	
	//XParenthesizedExpression returns XExpression:
	//    '(' XExpression ')';
	public XbaseGrammarAccess.XParenthesizedExpressionElements getXParenthesizedExpressionAccess() {
		return gaXbase.getXParenthesizedExpressionAccess();
	}
	
	public ParserRule getXParenthesizedExpressionRule() {
		return getXParenthesizedExpressionAccess().getRule();
	}
	
	//XIfExpression returns XExpression:
	//    {XIfExpression}
	//    'if' '(' if=XExpression ')'
	//    then=XExpression
	//    (=>'else' else=XExpression)?;
	public XbaseGrammarAccess.XIfExpressionElements getXIfExpressionAccess() {
		return gaXbase.getXIfExpressionAccess();
	}
	
	public ParserRule getXIfExpressionRule() {
		return getXIfExpressionAccess().getRule();
	}
	
	//XCasePart:
	//    {XCasePart}
	//    typeGuard=JvmTypeReference? ('case' case=XExpression)?
	//        (':' then=XExpression | fallThrough?=',') ;
	public XbaseGrammarAccess.XCasePartElements getXCasePartAccess() {
		return gaXbase.getXCasePartAccess();
	}
	
	public ParserRule getXCasePartRule() {
		return getXCasePartAccess().getRule();
	}
	
	//XForLoopExpression returns XExpression:
	//    =>({XForLoopExpression}
	//    'for' '(' declaredParam=JvmFormalParameter ':') forExpression=XExpression ')'
	//        eachExpression=XExpression;
	public XbaseGrammarAccess.XForLoopExpressionElements getXForLoopExpressionAccess() {
		return gaXbase.getXForLoopExpressionAccess();
	}
	
	public ParserRule getXForLoopExpressionRule() {
		return getXForLoopExpressionAccess().getRule();
	}
	
	//XBasicForLoopExpression returns XExpression:
	//    {XBasicForLoopExpression}
	//    'for' '('(initExpressions+=XExpressionOrVarDeclaration (',' initExpressions+=XExpressionOrVarDeclaration)*)? ';'
	//        expression=XExpression? ';'
	//        (updateExpressions+=XExpression (',' updateExpressions+=XExpression)*)? ')'
	//        eachExpression=XExpression;
	public XbaseGrammarAccess.XBasicForLoopExpressionElements getXBasicForLoopExpressionAccess() {
		return gaXbase.getXBasicForLoopExpressionAccess();
	}
	
	public ParserRule getXBasicForLoopExpressionRule() {
		return getXBasicForLoopExpressionAccess().getRule();
	}
	
	//XWhileExpression returns XExpression:
	//    {XWhileExpression}
	//    'while' '(' predicate=XExpression ')'
	//        body=XExpression;
	public XbaseGrammarAccess.XWhileExpressionElements getXWhileExpressionAccess() {
		return gaXbase.getXWhileExpressionAccess();
	}
	
	public ParserRule getXWhileExpressionRule() {
		return getXWhileExpressionAccess().getRule();
	}
	
	//XDoWhileExpression returns XExpression:
	//    {XDoWhileExpression}
	//    'do'
	//        body=XExpression
	//    'while' '(' predicate=XExpression ')';
	public XbaseGrammarAccess.XDoWhileExpressionElements getXDoWhileExpressionAccess() {
		return gaXbase.getXDoWhileExpressionAccess();
	}
	
	public ParserRule getXDoWhileExpressionRule() {
		return getXDoWhileExpressionAccess().getRule();
	}
	
	//XExpressionOrVarDeclaration returns XExpression:
	//    XVariableDeclaration | XExpression;
	public XbaseGrammarAccess.XExpressionOrVarDeclarationElements getXExpressionOrVarDeclarationAccess() {
		return gaXbase.getXExpressionOrVarDeclarationAccess();
	}
	
	public ParserRule getXExpressionOrVarDeclarationRule() {
		return getXExpressionOrVarDeclarationAccess().getRule();
	}
	
	//XVariableDeclaration returns XExpression:
	//    {XVariableDeclaration}
	//    (writeable?='var'|'val') (=>(type=JvmTypeReference name=ValidID) | name=ValidID) ('=' right=XExpression)?;
	public XbaseGrammarAccess.XVariableDeclarationElements getXVariableDeclarationAccess() {
		return gaXbase.getXVariableDeclarationAccess();
	}
	
	public ParserRule getXVariableDeclarationRule() {
		return getXVariableDeclarationAccess().getRule();
	}
	
	//JvmFormalParameter returns types::JvmFormalParameter:
	//    (parameterType=JvmTypeReference)? name=ValidID;
	public XbaseGrammarAccess.JvmFormalParameterElements getJvmFormalParameterAccess() {
		return gaXbase.getJvmFormalParameterAccess();
	}
	
	public ParserRule getJvmFormalParameterRule() {
		return getJvmFormalParameterAccess().getRule();
	}
	
	//FullJvmFormalParameter returns types::JvmFormalParameter:
	//    parameterType=JvmTypeReference name=ValidID;
	public XbaseGrammarAccess.FullJvmFormalParameterElements getFullJvmFormalParameterAccess() {
		return gaXbase.getFullJvmFormalParameterAccess();
	}
	
	public ParserRule getFullJvmFormalParameterRule() {
		return getFullJvmFormalParameterAccess().getRule();
	}
	
	//XFeatureCall returns XExpression:
	//    {XFeatureCall}
	//    ('<' typeArguments+=JvmArgumentTypeReference (',' typeArguments+=JvmArgumentTypeReference)* '>')?
	//    feature=[types::JvmIdentifiableElement|IdOrSuper]
	//    (=>explicitOperationCall?='('
	//        (
	//            featureCallArguments+=XShortClosure
	//          | featureCallArguments+=XExpression (',' featureCallArguments+=XExpression)*
	//        )?
	//    ')')?
	//    featureCallArguments+=XClosure?;
	public XbaseGrammarAccess.XFeatureCallElements getXFeatureCallAccess() {
		return gaXbase.getXFeatureCallAccess();
	}
	
	public ParserRule getXFeatureCallRule() {
		return getXFeatureCallAccess().getRule();
	}
	
	//FeatureCallID:
	//    ValidID | 'extends' | 'static' | 'import' | 'extension'
	//;
	public XbaseGrammarAccess.FeatureCallIDElements getFeatureCallIDAccess() {
		return gaXbase.getFeatureCallIDAccess();
	}
	
	public ParserRule getFeatureCallIDRule() {
		return getFeatureCallIDAccess().getRule();
	}
	
	//IdOrSuper :
	//    FeatureCallID | 'super'
	//;
	public XbaseGrammarAccess.IdOrSuperElements getIdOrSuperAccess() {
		return gaXbase.getIdOrSuperAccess();
	}
	
	public ParserRule getIdOrSuperRule() {
		return getIdOrSuperAccess().getRule();
	}
	
	//XConstructorCall returns XExpression:
	//    {XConstructorCall}
	//    'new' constructor=[types::JvmConstructor|QualifiedName]
	//    (=>'<' typeArguments+=JvmArgumentTypeReference (',' typeArguments+=JvmArgumentTypeReference)* '>')?
	//    (=>explicitConstructorCall?='('
	//        (
	//            arguments+=XShortClosure
	//          | arguments+=XExpression (',' arguments+=XExpression)*
	//        )?
	//    ')')?
	//    arguments+=XClosure?;
	public XbaseGrammarAccess.XConstructorCallElements getXConstructorCallAccess() {
		return gaXbase.getXConstructorCallAccess();
	}
	
	public ParserRule getXConstructorCallRule() {
		return getXConstructorCallAccess().getRule();
	}
	
	//XBooleanLiteral returns XExpression :
	//    {XBooleanLiteral} ('false' | isTrue?='true');
	public XbaseGrammarAccess.XBooleanLiteralElements getXBooleanLiteralAccess() {
		return gaXbase.getXBooleanLiteralAccess();
	}
	
	public ParserRule getXBooleanLiteralRule() {
		return getXBooleanLiteralAccess().getRule();
	}
	
	//XNullLiteral returns XExpression :
	//    {XNullLiteral} 'null';
	public XbaseGrammarAccess.XNullLiteralElements getXNullLiteralAccess() {
		return gaXbase.getXNullLiteralAccess();
	}
	
	public ParserRule getXNullLiteralRule() {
		return getXNullLiteralAccess().getRule();
	}
	
	//XNumberLiteral returns XExpression :
	//    {XNumberLiteral} value=Number;
	public XbaseGrammarAccess.XNumberLiteralElements getXNumberLiteralAccess() {
		return gaXbase.getXNumberLiteralAccess();
	}
	
	public ParserRule getXNumberLiteralRule() {
		return getXNumberLiteralAccess().getRule();
	}
	
	//XStringLiteral returns XExpression:
	//    {XStringLiteral} value=STRING;
	public XbaseGrammarAccess.XStringLiteralElements getXStringLiteralAccess() {
		return gaXbase.getXStringLiteralAccess();
	}
	
	public ParserRule getXStringLiteralRule() {
		return getXStringLiteralAccess().getRule();
	}
	
	//XTypeLiteral returns XExpression :
	//    {XTypeLiteral} 'typeof' '(' type=[types::JvmType|QualifiedName] (arrayDimensions+=ArrayBrackets)* ')'
	//;
	public XbaseGrammarAccess.XTypeLiteralElements getXTypeLiteralAccess() {
		return gaXbase.getXTypeLiteralAccess();
	}
	
	public ParserRule getXTypeLiteralRule() {
		return getXTypeLiteralAccess().getRule();
	}
	
	//XThrowExpression returns XExpression :
	//    {XThrowExpression} 'throw' expression=XExpression;
	public XbaseGrammarAccess.XThrowExpressionElements getXThrowExpressionAccess() {
		return gaXbase.getXThrowExpressionAccess();
	}
	
	public ParserRule getXThrowExpressionRule() {
		return getXThrowExpressionAccess().getRule();
	}
	
	//XReturnExpression returns XExpression :
	//    {XReturnExpression} 'return' (->expression=XExpression)?;
	public XbaseGrammarAccess.XReturnExpressionElements getXReturnExpressionAccess() {
		return gaXbase.getXReturnExpressionAccess();
	}
	
	public ParserRule getXReturnExpressionRule() {
		return getXReturnExpressionAccess().getRule();
	}
	
	//XTryCatchFinallyExpression returns XExpression:
	//    {XTryCatchFinallyExpression}
	//    'try'
	//        expression=XExpression
	//    (
	//        catchClauses+=XCatchClause+
	//        (=>'finally' finallyExpression=XExpression)?
	//    |    'finally' finallyExpression=XExpression
	//    );
	public XbaseGrammarAccess.XTryCatchFinallyExpressionElements getXTryCatchFinallyExpressionAccess() {
		return gaXbase.getXTryCatchFinallyExpressionAccess();
	}
	
	public ParserRule getXTryCatchFinallyExpressionRule() {
		return getXTryCatchFinallyExpressionAccess().getRule();
	}
	
	//XSynchronizedExpression returns XExpression:
	//    =>({XSynchronizedExpression}
	//    'synchronized' '(') param=XExpression ')' expression=XExpression;
	public XbaseGrammarAccess.XSynchronizedExpressionElements getXSynchronizedExpressionAccess() {
		return gaXbase.getXSynchronizedExpressionAccess();
	}
	
	public ParserRule getXSynchronizedExpressionRule() {
		return getXSynchronizedExpressionAccess().getRule();
	}
	
	//XCatchClause :
	//    =>'catch' '(' declaredParam=FullJvmFormalParameter ')' expression=XExpression;
	public XbaseGrammarAccess.XCatchClauseElements getXCatchClauseAccess() {
		return gaXbase.getXCatchClauseAccess();
	}
	
	public ParserRule getXCatchClauseRule() {
		return getXCatchClauseAccess().getRule();
	}
	
	//@Override
	//QualifiedName:
	//    ValidID (=>'.' ValidID)*;
	public XbaseGrammarAccess.QualifiedNameElements getQualifiedNameAccess() {
		return gaXbase.getQualifiedNameAccess();
	}
	
	public ParserRule getQualifiedNameRule() {
		return getQualifiedNameAccess().getRule();
	}
	
	//Number hidden():
	//    HEX | (INT | DECIMAL) ('.' (INT | DECIMAL))?;
	public XbaseGrammarAccess.NumberElements getNumberAccess() {
		return gaXbase.getNumberAccess();
	}
	
	public ParserRule getNumberRule() {
		return getNumberAccess().getRule();
	}
	
	///**
	// * Dummy rule, for "better" downwards compatibility, since GrammarAccess generates non-static inner classes,
	// * which makes downstream grammars break on classloading, when a rule is removed.
	// */
	//StaticQualifier:
	//    (ValidID '::')+
	//;
	public XbaseGrammarAccess.StaticQualifierElements getStaticQualifierAccess() {
		return gaXbase.getStaticQualifierAccess();
	}
	
	public ParserRule getStaticQualifierRule() {
		return getStaticQualifierAccess().getRule();
	}
	
	//terminal HEX:
	//    ('0x'|'0X') ('0'..'9'|'a'..'f'|'A'..'F'|'_')+
	//    ('#' (('b'|'B')('i'|'I') | ('l'|'L')))?;
	public TerminalRule getHEXRule() {
		return gaXbase.getHEXRule();
	}
	
	//terminal INT returns ecore::EInt:
	//    '0'..'9' ('0'..'9'|'_')*;
	public TerminalRule getINTRule() {
		return gaXbase.getINTRule();
	}
	
	//terminal DECIMAL:
	//    INT
	//    (('e'|'E') ('+'|'-')? INT)?
	//    (('b'|'B')('i'|'I'|'d'|'D') | ('l'|'L'|'d'|'D'|'f'|'F'))?;
	public TerminalRule getDECIMALRule() {
		return gaXbase.getDECIMALRule();
	}
	
	//JvmTypeReference:
	//    JvmParameterizedTypeReference =>({JvmGenericArrayTypeReference.componentType=current} ArrayBrackets)*
	//    | XFunctionTypeRef;
	public XtypeGrammarAccess.JvmTypeReferenceElements getJvmTypeReferenceAccess() {
		return gaXtype.getJvmTypeReferenceAccess();
	}
	
	public ParserRule getJvmTypeReferenceRule() {
		return getJvmTypeReferenceAccess().getRule();
	}
	
	//ArrayBrackets :
	//    '[' ']'
	//;
	public XtypeGrammarAccess.ArrayBracketsElements getArrayBracketsAccess() {
		return gaXtype.getArrayBracketsAccess();
	}
	
	public ParserRule getArrayBracketsRule() {
		return getArrayBracketsAccess().getRule();
	}
	
	//XFunctionTypeRef:
	//    ('(' (paramTypes+=JvmTypeReference (',' paramTypes+=JvmTypeReference)*)? ')')? '=>' returnType=JvmTypeReference;
	public XtypeGrammarAccess.XFunctionTypeRefElements getXFunctionTypeRefAccess() {
		return gaXtype.getXFunctionTypeRefAccess();
	}
	
	public ParserRule getXFunctionTypeRefRule() {
		return getXFunctionTypeRefAccess().getRule();
	}
	
	//JvmParameterizedTypeReference:
	//    type=[JvmType|QualifiedName] (
	//        =>'<' arguments+=JvmArgumentTypeReference (',' arguments+=JvmArgumentTypeReference)* '>'
	//        (=>({JvmInnerTypeReference.outer=current} '.') type=[JvmType|ValidID] (=>'<' arguments+=JvmArgumentTypeReference (',' arguments+=JvmArgumentTypeReference)* '>')?)*
	//    )?;
	public XtypeGrammarAccess.JvmParameterizedTypeReferenceElements getJvmParameterizedTypeReferenceAccess() {
		return gaXtype.getJvmParameterizedTypeReferenceAccess();
	}
	
	public ParserRule getJvmParameterizedTypeReferenceRule() {
		return getJvmParameterizedTypeReferenceAccess().getRule();
	}
	
	//JvmArgumentTypeReference returns JvmTypeReference:
	//    JvmTypeReference | JvmWildcardTypeReference;
	public XtypeGrammarAccess.JvmArgumentTypeReferenceElements getJvmArgumentTypeReferenceAccess() {
		return gaXtype.getJvmArgumentTypeReferenceAccess();
	}
	
	public ParserRule getJvmArgumentTypeReferenceRule() {
		return getJvmArgumentTypeReferenceAccess().getRule();
	}
	
	//JvmWildcardTypeReference:
	//    {JvmWildcardTypeReference} '?' (
	//      constraints+=JvmUpperBound (constraints+=JvmUpperBoundAnded)*
	//    | constraints+=JvmLowerBound (constraints+=JvmLowerBoundAnded)*
	//    )?;
	public XtypeGrammarAccess.JvmWildcardTypeReferenceElements getJvmWildcardTypeReferenceAccess() {
		return gaXtype.getJvmWildcardTypeReferenceAccess();
	}
	
	public ParserRule getJvmWildcardTypeReferenceRule() {
		return getJvmWildcardTypeReferenceAccess().getRule();
	}
	
	//JvmUpperBound :
	//    'extends' typeReference=JvmTypeReference;
	public XtypeGrammarAccess.JvmUpperBoundElements getJvmUpperBoundAccess() {
		return gaXtype.getJvmUpperBoundAccess();
	}
	
	public ParserRule getJvmUpperBoundRule() {
		return getJvmUpperBoundAccess().getRule();
	}
	
	//JvmUpperBoundAnded returns JvmUpperBound:
	//    '&' typeReference=JvmTypeReference;
	public XtypeGrammarAccess.JvmUpperBoundAndedElements getJvmUpperBoundAndedAccess() {
		return gaXtype.getJvmUpperBoundAndedAccess();
	}
	
	public ParserRule getJvmUpperBoundAndedRule() {
		return getJvmUpperBoundAndedAccess().getRule();
	}
	
	//JvmLowerBound :
	//    'super' typeReference=JvmTypeReference;
	public XtypeGrammarAccess.JvmLowerBoundElements getJvmLowerBoundAccess() {
		return gaXtype.getJvmLowerBoundAccess();
	}
	
	public ParserRule getJvmLowerBoundRule() {
		return getJvmLowerBoundAccess().getRule();
	}
	
	//JvmLowerBoundAnded returns JvmLowerBound:
	//    '&' typeReference=JvmTypeReference;
	public XtypeGrammarAccess.JvmLowerBoundAndedElements getJvmLowerBoundAndedAccess() {
		return gaXtype.getJvmLowerBoundAndedAccess();
	}
	
	public ParserRule getJvmLowerBoundAndedRule() {
		return getJvmLowerBoundAndedAccess().getRule();
	}
	
	//JvmTypeParameter :
	//    name=ValidID
	//    (constraints+=JvmUpperBound (constraints+=JvmUpperBoundAnded)*)?;
	public XtypeGrammarAccess.JvmTypeParameterElements getJvmTypeParameterAccess() {
		return gaXtype.getJvmTypeParameterAccess();
	}
	
	public ParserRule getJvmTypeParameterRule() {
		return getJvmTypeParameterAccess().getRule();
	}
	
	//QualifiedNameWithWildcard :
	//    QualifiedName  '.' '*';
	public XtypeGrammarAccess.QualifiedNameWithWildcardElements getQualifiedNameWithWildcardAccess() {
		return gaXtype.getQualifiedNameWithWildcardAccess();
	}
	
	public ParserRule getQualifiedNameWithWildcardRule() {
		return getQualifiedNameWithWildcardAccess().getRule();
	}
	
	//ValidID:
	//    ID;
	public XtypeGrammarAccess.ValidIDElements getValidIDAccess() {
		return gaXtype.getValidIDAccess();
	}
	
	public ParserRule getValidIDRule() {
		return getValidIDAccess().getRule();
	}
	
	//XImportSection:
	//    importDeclarations+=XImportDeclaration+;
	public XtypeGrammarAccess.XImportSectionElements getXImportSectionAccess() {
		return gaXtype.getXImportSectionAccess();
	}
	
	public ParserRule getXImportSectionRule() {
		return getXImportSectionAccess().getRule();
	}
	
	//XImportDeclaration:
	//    'import' (
	//        (static?='static' extension?='extension'? importedType=[JvmDeclaredType|QualifiedNameInStaticImport] (wildcard?='*' | memberName=ValidID))
	//        | importedType=[JvmDeclaredType|QualifiedName]
	//        | importedNamespace=QualifiedNameWithWildcard) ';'?
	//;
	public XtypeGrammarAccess.XImportDeclarationElements getXImportDeclarationAccess() {
		return gaXtype.getXImportDeclarationAccess();
	}
	
	public ParserRule getXImportDeclarationRule() {
		return getXImportDeclarationAccess().getRule();
	}
	
	//QualifiedNameInStaticImport:
	//    (ValidID '.')+
	//;
	public XtypeGrammarAccess.QualifiedNameInStaticImportElements getQualifiedNameInStaticImportAccess() {
		return gaXtype.getQualifiedNameInStaticImportAccess();
	}
	
	public ParserRule getQualifiedNameInStaticImportRule() {
		return getQualifiedNameInStaticImportAccess().getRule();
	}
	
	//terminal ID:
	//    '^'? ('a'..'z'|'A'..'Z'|'$'|'_') ('a'..'z'|'A'..'Z'|'$'|'_'|'0'..'9')*;
	public TerminalRule getIDRule() {
		return gaXtype.getIDRule();
	}
	
	//terminal STRING:
	//            '"' ( '\\' . /* ('b'|'t'|'n'|'f'|'r'|'u'|'"'|"'"|'\\') */ | !('\\'|'"') )* '"'? |
	//            "'" ( '\\' . /* ('b'|'t'|'n'|'f'|'r'|'u'|'"'|"'"|'\\') */ | !('\\'|"'") )* "'"?;
	public TerminalRule getSTRINGRule() {
		return gaXtype.getSTRINGRule();
	}
	
	//terminal ML_COMMENT: '/*' -> '*/';
	public TerminalRule getML_COMMENTRule() {
		return gaXtype.getML_COMMENTRule();
	}
	
	//terminal SL_COMMENT: '//' !('\n'|'\r')* ('\r'? '\n')?;
	public TerminalRule getSL_COMMENTRule() {
		return gaXtype.getSL_COMMENTRule();
	}
	
	//terminal WS: (' '|'\t'|'\r'|'\n')+;
	public TerminalRule getWSRule() {
		return gaXtype.getWSRule();
	}
	
	//terminal ANY_OTHER: .;
	public TerminalRule getANY_OTHERRule() {
		return gaXtype.getANY_OTHERRule();
	}
}

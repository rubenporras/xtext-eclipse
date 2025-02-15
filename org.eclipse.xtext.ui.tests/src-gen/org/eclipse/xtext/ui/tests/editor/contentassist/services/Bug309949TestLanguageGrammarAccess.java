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
import org.eclipse.xtext.Grammar;
import org.eclipse.xtext.GrammarUtil;
import org.eclipse.xtext.Group;
import org.eclipse.xtext.Keyword;
import org.eclipse.xtext.ParserRule;
import org.eclipse.xtext.RuleCall;
import org.eclipse.xtext.TerminalRule;
import org.eclipse.xtext.common.services.TerminalsGrammarAccess;
import org.eclipse.xtext.service.AbstractElementFinder;
import org.eclipse.xtext.service.GrammarProvider;

@Singleton
public class Bug309949TestLanguageGrammarAccess extends AbstractElementFinder.AbstractGrammarElementFinder {
	
	public class ModelElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug309949TestLanguage.Model");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Action cModelAction_0 = (Action)cGroup.eContents().get(0);
		private final Alternatives cAlternatives_1 = (Alternatives)cGroup.eContents().get(1);
		private final Group cGroup_1_0 = (Group)cAlternatives_1.eContents().get(0);
		private final Keyword cNumberSignDigitOneAsteriskKeyword_1_0_0 = (Keyword)cGroup_1_0.eContents().get(0);
		private final Keyword cLeftCurlyBracketKeyword_1_0_1 = (Keyword)cGroup_1_0.eContents().get(1);
		private final Assignment cErrorsAssignment_1_0_2 = (Assignment)cGroup_1_0.eContents().get(2);
		private final RuleCall cErrorsError_1ParserRuleCall_1_0_2_0 = (RuleCall)cErrorsAssignment_1_0_2.eContents().get(0);
		private final Assignment cOperationsAssignment_1_0_3 = (Assignment)cGroup_1_0.eContents().get(3);
		private final RuleCall cOperationsOperation_1ParserRuleCall_1_0_3_0 = (RuleCall)cOperationsAssignment_1_0_3.eContents().get(0);
		private final Keyword cRightCurlyBracketKeyword_1_0_4 = (Keyword)cGroup_1_0.eContents().get(4);
		private final Group cGroup_1_1 = (Group)cAlternatives_1.eContents().get(1);
		private final Keyword cNumberSignDigitOnePlusSignKeyword_1_1_0 = (Keyword)cGroup_1_1.eContents().get(0);
		private final Keyword cLeftCurlyBracketKeyword_1_1_1 = (Keyword)cGroup_1_1.eContents().get(1);
		private final Assignment cErrorsAssignment_1_1_2 = (Assignment)cGroup_1_1.eContents().get(2);
		private final RuleCall cErrorsError_1ParserRuleCall_1_1_2_0 = (RuleCall)cErrorsAssignment_1_1_2.eContents().get(0);
		private final Assignment cOperationsAssignment_1_1_3 = (Assignment)cGroup_1_1.eContents().get(3);
		private final RuleCall cOperationsOperation_1ParserRuleCall_1_1_3_0 = (RuleCall)cOperationsAssignment_1_1_3.eContents().get(0);
		private final Keyword cRightCurlyBracketKeyword_1_1_4 = (Keyword)cGroup_1_1.eContents().get(4);
		private final Group cGroup_1_2 = (Group)cAlternatives_1.eContents().get(2);
		private final Keyword cNumberSignDigitTwoAsteriskKeyword_1_2_0 = (Keyword)cGroup_1_2.eContents().get(0);
		private final Keyword cLeftCurlyBracketKeyword_1_2_1 = (Keyword)cGroup_1_2.eContents().get(1);
		private final Assignment cErrorsAssignment_1_2_2 = (Assignment)cGroup_1_2.eContents().get(2);
		private final RuleCall cErrorsError_2ParserRuleCall_1_2_2_0 = (RuleCall)cErrorsAssignment_1_2_2.eContents().get(0);
		private final Assignment cOperationsAssignment_1_2_3 = (Assignment)cGroup_1_2.eContents().get(3);
		private final RuleCall cOperationsOperation_2ParserRuleCall_1_2_3_0 = (RuleCall)cOperationsAssignment_1_2_3.eContents().get(0);
		private final Keyword cRightCurlyBracketKeyword_1_2_4 = (Keyword)cGroup_1_2.eContents().get(4);
		private final Group cGroup_1_3 = (Group)cAlternatives_1.eContents().get(3);
		private final Keyword cNumberSignDigitTwoPlusSignKeyword_1_3_0 = (Keyword)cGroup_1_3.eContents().get(0);
		private final Assignment cNameAssignment_1_3_1 = (Assignment)cGroup_1_3.eContents().get(1);
		private final RuleCall cNameIDTerminalRuleCall_1_3_1_0 = (RuleCall)cNameAssignment_1_3_1.eContents().get(0);
		private final Keyword cLeftCurlyBracketKeyword_1_3_2 = (Keyword)cGroup_1_3.eContents().get(2);
		private final Assignment cErrorsAssignment_1_3_3 = (Assignment)cGroup_1_3.eContents().get(3);
		private final RuleCall cErrorsError_2ParserRuleCall_1_3_3_0 = (RuleCall)cErrorsAssignment_1_3_3.eContents().get(0);
		private final Assignment cOperationsAssignment_1_3_4 = (Assignment)cGroup_1_3.eContents().get(4);
		private final RuleCall cOperationsOperation_2ParserRuleCall_1_3_4_0 = (RuleCall)cOperationsAssignment_1_3_4.eContents().get(0);
		private final Keyword cRightCurlyBracketKeyword_1_3_5 = (Keyword)cGroup_1_3.eContents().get(5);
		private final Group cGroup_1_4 = (Group)cAlternatives_1.eContents().get(4);
		private final Keyword cNumberSignDigitThreeAsteriskKeyword_1_4_0 = (Keyword)cGroup_1_4.eContents().get(0);
		private final Assignment cNameAssignment_1_4_1 = (Assignment)cGroup_1_4.eContents().get(1);
		private final RuleCall cNameIDTerminalRuleCall_1_4_1_0 = (RuleCall)cNameAssignment_1_4_1.eContents().get(0);
		private final Keyword cLeftCurlyBracketKeyword_1_4_2 = (Keyword)cGroup_1_4.eContents().get(2);
		private final Assignment cErrorsAssignment_1_4_3 = (Assignment)cGroup_1_4.eContents().get(3);
		private final RuleCall cErrorsError_3ParserRuleCall_1_4_3_0 = (RuleCall)cErrorsAssignment_1_4_3.eContents().get(0);
		private final Assignment cOperationsAssignment_1_4_4 = (Assignment)cGroup_1_4.eContents().get(4);
		private final RuleCall cOperationsOperation_3ParserRuleCall_1_4_4_0 = (RuleCall)cOperationsAssignment_1_4_4.eContents().get(0);
		private final Keyword cRightCurlyBracketKeyword_1_4_5 = (Keyword)cGroup_1_4.eContents().get(5);
		private final Group cGroup_1_5 = (Group)cAlternatives_1.eContents().get(5);
		private final Keyword cNumberSignDigitThreePlusSignKeyword_1_5_0 = (Keyword)cGroup_1_5.eContents().get(0);
		private final Assignment cNameAssignment_1_5_1 = (Assignment)cGroup_1_5.eContents().get(1);
		private final RuleCall cNameIDTerminalRuleCall_1_5_1_0 = (RuleCall)cNameAssignment_1_5_1.eContents().get(0);
		private final Keyword cLeftCurlyBracketKeyword_1_5_2 = (Keyword)cGroup_1_5.eContents().get(2);
		private final Assignment cErrorsAssignment_1_5_3 = (Assignment)cGroup_1_5.eContents().get(3);
		private final RuleCall cErrorsError_3ParserRuleCall_1_5_3_0 = (RuleCall)cErrorsAssignment_1_5_3.eContents().get(0);
		private final Assignment cOperationsAssignment_1_5_4 = (Assignment)cGroup_1_5.eContents().get(4);
		private final RuleCall cOperationsOperation_3ParserRuleCall_1_5_4_0 = (RuleCall)cOperationsAssignment_1_5_4.eContents().get(0);
		private final Keyword cRightCurlyBracketKeyword_1_5_5 = (Keyword)cGroup_1_5.eContents().get(5);
		private final Group cGroup_1_6 = (Group)cAlternatives_1.eContents().get(6);
		private final Keyword cNumberSignDigitFourAsteriskKeyword_1_6_0 = (Keyword)cGroup_1_6.eContents().get(0);
		private final Assignment cNameAssignment_1_6_1 = (Assignment)cGroup_1_6.eContents().get(1);
		private final RuleCall cNameIDTerminalRuleCall_1_6_1_0 = (RuleCall)cNameAssignment_1_6_1.eContents().get(0);
		private final Keyword cLeftCurlyBracketKeyword_1_6_2 = (Keyword)cGroup_1_6.eContents().get(2);
		private final Assignment cErrorsAssignment_1_6_3 = (Assignment)cGroup_1_6.eContents().get(3);
		private final RuleCall cErrorsError_4ParserRuleCall_1_6_3_0 = (RuleCall)cErrorsAssignment_1_6_3.eContents().get(0);
		private final Assignment cOperationsAssignment_1_6_4 = (Assignment)cGroup_1_6.eContents().get(4);
		private final RuleCall cOperationsOperation_4ParserRuleCall_1_6_4_0 = (RuleCall)cOperationsAssignment_1_6_4.eContents().get(0);
		private final Keyword cRightCurlyBracketKeyword_1_6_5 = (Keyword)cGroup_1_6.eContents().get(5);
		private final Group cGroup_1_7 = (Group)cAlternatives_1.eContents().get(7);
		private final Keyword cNumberSignDigitFourPlusSignKeyword_1_7_0 = (Keyword)cGroup_1_7.eContents().get(0);
		private final Assignment cNameAssignment_1_7_1 = (Assignment)cGroup_1_7.eContents().get(1);
		private final RuleCall cNameIDTerminalRuleCall_1_7_1_0 = (RuleCall)cNameAssignment_1_7_1.eContents().get(0);
		private final Keyword cLeftCurlyBracketKeyword_1_7_2 = (Keyword)cGroup_1_7.eContents().get(2);
		private final Assignment cErrorsAssignment_1_7_3 = (Assignment)cGroup_1_7.eContents().get(3);
		private final RuleCall cErrorsError_4ParserRuleCall_1_7_3_0 = (RuleCall)cErrorsAssignment_1_7_3.eContents().get(0);
		private final Assignment cOperationsAssignment_1_7_4 = (Assignment)cGroup_1_7.eContents().get(4);
		private final RuleCall cOperationsOperation_4ParserRuleCall_1_7_4_0 = (RuleCall)cOperationsAssignment_1_7_4.eContents().get(0);
		private final Keyword cRightCurlyBracketKeyword_1_7_5 = (Keyword)cGroup_1_7.eContents().get(5);
		private final Group cGroup_1_8 = (Group)cAlternatives_1.eContents().get(8);
		private final Keyword cNumberSignDigitFiveAsteriskKeyword_1_8_0 = (Keyword)cGroup_1_8.eContents().get(0);
		private final Assignment cNameAssignment_1_8_1 = (Assignment)cGroup_1_8.eContents().get(1);
		private final RuleCall cNameIDTerminalRuleCall_1_8_1_0 = (RuleCall)cNameAssignment_1_8_1.eContents().get(0);
		private final Keyword cLeftCurlyBracketKeyword_1_8_2 = (Keyword)cGroup_1_8.eContents().get(2);
		private final Assignment cErrorsAssignment_1_8_3 = (Assignment)cGroup_1_8.eContents().get(3);
		private final RuleCall cErrorsError_5ParserRuleCall_1_8_3_0 = (RuleCall)cErrorsAssignment_1_8_3.eContents().get(0);
		private final Assignment cOperationsAssignment_1_8_4 = (Assignment)cGroup_1_8.eContents().get(4);
		private final RuleCall cOperationsOperation_5ParserRuleCall_1_8_4_0 = (RuleCall)cOperationsAssignment_1_8_4.eContents().get(0);
		private final Keyword cRightCurlyBracketKeyword_1_8_5 = (Keyword)cGroup_1_8.eContents().get(5);
		private final Group cGroup_1_9 = (Group)cAlternatives_1.eContents().get(9);
		private final Keyword cNumberSignDigitFivePlusSignKeyword_1_9_0 = (Keyword)cGroup_1_9.eContents().get(0);
		private final Assignment cNameAssignment_1_9_1 = (Assignment)cGroup_1_9.eContents().get(1);
		private final RuleCall cNameIDTerminalRuleCall_1_9_1_0 = (RuleCall)cNameAssignment_1_9_1.eContents().get(0);
		private final Keyword cLeftCurlyBracketKeyword_1_9_2 = (Keyword)cGroup_1_9.eContents().get(2);
		private final Assignment cErrorsAssignment_1_9_3 = (Assignment)cGroup_1_9.eContents().get(3);
		private final RuleCall cErrorsError_5ParserRuleCall_1_9_3_0 = (RuleCall)cErrorsAssignment_1_9_3.eContents().get(0);
		private final Assignment cOperationsAssignment_1_9_4 = (Assignment)cGroup_1_9.eContents().get(4);
		private final RuleCall cOperationsOperation_5ParserRuleCall_1_9_4_0 = (RuleCall)cOperationsAssignment_1_9_4.eContents().get(0);
		private final Keyword cRightCurlyBracketKeyword_1_9_5 = (Keyword)cGroup_1_9.eContents().get(5);
		
		//Model:
		//  {Model}
		//  (
		//    "#1*" "{"
		//       (errors+=Error_1)*
		//       (operations+=Operation_1)*
		//       "}"
		//  | "#1+" "{"
		//       (errors+=Error_1)+
		//       (operations+=Operation_1)+
		//       "}"
		//  | "#2*" "{"
		//       (errors+=Error_2)*
		//       (operations+=Operation_2)*
		//       "}"
		//  | "#2+" name=ID "{"
		//       (errors+=Error_2)+
		//       (operations+=Operation_2)+
		//       "}"
		//  | "#3*" name=ID "{"
		//       (errors+=Error_3)*
		//       (operations+=Operation_3)*
		//       "}"
		//  | "#3+" name=ID "{"
		//       (errors+=Error_3)+
		//       (operations+=Operation_3)+
		//       "}"
		//  | "#4*" name=ID "{"
		//       (errors+=Error_4)*
		//       (operations+=Operation_4)*
		//       "}"
		//  | "#4+" name=ID "{"
		//       (errors+=Error_4)+
		//       (operations+=Operation_4)+
		//       "}"
		//  | "#5*" name=ID "{"
		//       (errors+=Error_5)*
		//       (operations+=Operation_5)*
		//       "}"
		//  | "#5+" name=ID "{"
		//       (errors+=Error_5)+
		//       (operations+=Operation_5)+
		//       "}"
		//  )
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//{Model}
		//(
		//  "#1*" "{"
		//     (errors+=Error_1)*
		//     (operations+=Operation_1)*
		//     "}"
		//| "#1+" "{"
		//     (errors+=Error_1)+
		//     (operations+=Operation_1)+
		//     "}"
		//| "#2*" "{"
		//     (errors+=Error_2)*
		//     (operations+=Operation_2)*
		//     "}"
		//| "#2+" name=ID "{"
		//     (errors+=Error_2)+
		//     (operations+=Operation_2)+
		//     "}"
		//| "#3*" name=ID "{"
		//     (errors+=Error_3)*
		//     (operations+=Operation_3)*
		//     "}"
		//| "#3+" name=ID "{"
		//     (errors+=Error_3)+
		//     (operations+=Operation_3)+
		//     "}"
		//| "#4*" name=ID "{"
		//     (errors+=Error_4)*
		//     (operations+=Operation_4)*
		//     "}"
		//| "#4+" name=ID "{"
		//     (errors+=Error_4)+
		//     (operations+=Operation_4)+
		//     "}"
		//| "#5*" name=ID "{"
		//     (errors+=Error_5)*
		//     (operations+=Operation_5)*
		//     "}"
		//| "#5+" name=ID "{"
		//     (errors+=Error_5)+
		//     (operations+=Operation_5)+
		//     "}"
		//)
		public Group getGroup() { return cGroup; }
		
		//{Model}
		public Action getModelAction_0() { return cModelAction_0; }
		
		//(
		//  "#1*" "{"
		//     (errors+=Error_1)*
		//     (operations+=Operation_1)*
		//     "}"
		//| "#1+" "{"
		//     (errors+=Error_1)+
		//     (operations+=Operation_1)+
		//     "}"
		//| "#2*" "{"
		//     (errors+=Error_2)*
		//     (operations+=Operation_2)*
		//     "}"
		//| "#2+" name=ID "{"
		//     (errors+=Error_2)+
		//     (operations+=Operation_2)+
		//     "}"
		//| "#3*" name=ID "{"
		//     (errors+=Error_3)*
		//     (operations+=Operation_3)*
		//     "}"
		//| "#3+" name=ID "{"
		//     (errors+=Error_3)+
		//     (operations+=Operation_3)+
		//     "}"
		//| "#4*" name=ID "{"
		//     (errors+=Error_4)*
		//     (operations+=Operation_4)*
		//     "}"
		//| "#4+" name=ID "{"
		//     (errors+=Error_4)+
		//     (operations+=Operation_4)+
		//     "}"
		//| "#5*" name=ID "{"
		//     (errors+=Error_5)*
		//     (operations+=Operation_5)*
		//     "}"
		//| "#5+" name=ID "{"
		//     (errors+=Error_5)+
		//     (operations+=Operation_5)+
		//     "}"
		//)
		public Alternatives getAlternatives_1() { return cAlternatives_1; }
		
		//"#1*" "{"
		//   (errors+=Error_1)*
		//   (operations+=Operation_1)*
		//   "}"
		public Group getGroup_1_0() { return cGroup_1_0; }
		
		//"#1*"
		public Keyword getNumberSignDigitOneAsteriskKeyword_1_0_0() { return cNumberSignDigitOneAsteriskKeyword_1_0_0; }
		
		//"{"
		public Keyword getLeftCurlyBracketKeyword_1_0_1() { return cLeftCurlyBracketKeyword_1_0_1; }
		
		//(errors+=Error_1)*
		public Assignment getErrorsAssignment_1_0_2() { return cErrorsAssignment_1_0_2; }
		
		//Error_1
		public RuleCall getErrorsError_1ParserRuleCall_1_0_2_0() { return cErrorsError_1ParserRuleCall_1_0_2_0; }
		
		//(operations+=Operation_1)*
		public Assignment getOperationsAssignment_1_0_3() { return cOperationsAssignment_1_0_3; }
		
		//Operation_1
		public RuleCall getOperationsOperation_1ParserRuleCall_1_0_3_0() { return cOperationsOperation_1ParserRuleCall_1_0_3_0; }
		
		//"}"
		public Keyword getRightCurlyBracketKeyword_1_0_4() { return cRightCurlyBracketKeyword_1_0_4; }
		
		//"#1+" "{"
		//      (errors+=Error_1)+
		//      (operations+=Operation_1)+
		//      "}"
		public Group getGroup_1_1() { return cGroup_1_1; }
		
		//"#1+"
		public Keyword getNumberSignDigitOnePlusSignKeyword_1_1_0() { return cNumberSignDigitOnePlusSignKeyword_1_1_0; }
		
		//"{"
		public Keyword getLeftCurlyBracketKeyword_1_1_1() { return cLeftCurlyBracketKeyword_1_1_1; }
		
		//(errors+=Error_1)+
		public Assignment getErrorsAssignment_1_1_2() { return cErrorsAssignment_1_1_2; }
		
		//Error_1
		public RuleCall getErrorsError_1ParserRuleCall_1_1_2_0() { return cErrorsError_1ParserRuleCall_1_1_2_0; }
		
		//(operations+=Operation_1)+
		public Assignment getOperationsAssignment_1_1_3() { return cOperationsAssignment_1_1_3; }
		
		//Operation_1
		public RuleCall getOperationsOperation_1ParserRuleCall_1_1_3_0() { return cOperationsOperation_1ParserRuleCall_1_1_3_0; }
		
		//"}"
		public Keyword getRightCurlyBracketKeyword_1_1_4() { return cRightCurlyBracketKeyword_1_1_4; }
		
		//"#2*" "{"
		//      (errors+=Error_2)*
		//      (operations+=Operation_2)*
		//      "}"
		public Group getGroup_1_2() { return cGroup_1_2; }
		
		//"#2*"
		public Keyword getNumberSignDigitTwoAsteriskKeyword_1_2_0() { return cNumberSignDigitTwoAsteriskKeyword_1_2_0; }
		
		//"{"
		public Keyword getLeftCurlyBracketKeyword_1_2_1() { return cLeftCurlyBracketKeyword_1_2_1; }
		
		//(errors+=Error_2)*
		public Assignment getErrorsAssignment_1_2_2() { return cErrorsAssignment_1_2_2; }
		
		//Error_2
		public RuleCall getErrorsError_2ParserRuleCall_1_2_2_0() { return cErrorsError_2ParserRuleCall_1_2_2_0; }
		
		//(operations+=Operation_2)*
		public Assignment getOperationsAssignment_1_2_3() { return cOperationsAssignment_1_2_3; }
		
		//Operation_2
		public RuleCall getOperationsOperation_2ParserRuleCall_1_2_3_0() { return cOperationsOperation_2ParserRuleCall_1_2_3_0; }
		
		//"}"
		public Keyword getRightCurlyBracketKeyword_1_2_4() { return cRightCurlyBracketKeyword_1_2_4; }
		
		//"#2+" name=ID "{"
		//      (errors+=Error_2)+
		//      (operations+=Operation_2)+
		//      "}"
		public Group getGroup_1_3() { return cGroup_1_3; }
		
		//"#2+"
		public Keyword getNumberSignDigitTwoPlusSignKeyword_1_3_0() { return cNumberSignDigitTwoPlusSignKeyword_1_3_0; }
		
		//name=ID
		public Assignment getNameAssignment_1_3_1() { return cNameAssignment_1_3_1; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_1_3_1_0() { return cNameIDTerminalRuleCall_1_3_1_0; }
		
		//"{"
		public Keyword getLeftCurlyBracketKeyword_1_3_2() { return cLeftCurlyBracketKeyword_1_3_2; }
		
		//(errors+=Error_2)+
		public Assignment getErrorsAssignment_1_3_3() { return cErrorsAssignment_1_3_3; }
		
		//Error_2
		public RuleCall getErrorsError_2ParserRuleCall_1_3_3_0() { return cErrorsError_2ParserRuleCall_1_3_3_0; }
		
		//(operations+=Operation_2)+
		public Assignment getOperationsAssignment_1_3_4() { return cOperationsAssignment_1_3_4; }
		
		//Operation_2
		public RuleCall getOperationsOperation_2ParserRuleCall_1_3_4_0() { return cOperationsOperation_2ParserRuleCall_1_3_4_0; }
		
		//"}"
		public Keyword getRightCurlyBracketKeyword_1_3_5() { return cRightCurlyBracketKeyword_1_3_5; }
		
		//"#3*" name=ID "{"
		//      (errors+=Error_3)*
		//      (operations+=Operation_3)*
		//      "}"
		public Group getGroup_1_4() { return cGroup_1_4; }
		
		//"#3*"
		public Keyword getNumberSignDigitThreeAsteriskKeyword_1_4_0() { return cNumberSignDigitThreeAsteriskKeyword_1_4_0; }
		
		//name=ID
		public Assignment getNameAssignment_1_4_1() { return cNameAssignment_1_4_1; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_1_4_1_0() { return cNameIDTerminalRuleCall_1_4_1_0; }
		
		//"{"
		public Keyword getLeftCurlyBracketKeyword_1_4_2() { return cLeftCurlyBracketKeyword_1_4_2; }
		
		//(errors+=Error_3)*
		public Assignment getErrorsAssignment_1_4_3() { return cErrorsAssignment_1_4_3; }
		
		//Error_3
		public RuleCall getErrorsError_3ParserRuleCall_1_4_3_0() { return cErrorsError_3ParserRuleCall_1_4_3_0; }
		
		//(operations+=Operation_3)*
		public Assignment getOperationsAssignment_1_4_4() { return cOperationsAssignment_1_4_4; }
		
		//Operation_3
		public RuleCall getOperationsOperation_3ParserRuleCall_1_4_4_0() { return cOperationsOperation_3ParserRuleCall_1_4_4_0; }
		
		//"}"
		public Keyword getRightCurlyBracketKeyword_1_4_5() { return cRightCurlyBracketKeyword_1_4_5; }
		
		//"#3+" name=ID "{"
		//      (errors+=Error_3)+
		//      (operations+=Operation_3)+
		//      "}"
		public Group getGroup_1_5() { return cGroup_1_5; }
		
		//"#3+"
		public Keyword getNumberSignDigitThreePlusSignKeyword_1_5_0() { return cNumberSignDigitThreePlusSignKeyword_1_5_0; }
		
		//name=ID
		public Assignment getNameAssignment_1_5_1() { return cNameAssignment_1_5_1; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_1_5_1_0() { return cNameIDTerminalRuleCall_1_5_1_0; }
		
		//"{"
		public Keyword getLeftCurlyBracketKeyword_1_5_2() { return cLeftCurlyBracketKeyword_1_5_2; }
		
		//(errors+=Error_3)+
		public Assignment getErrorsAssignment_1_5_3() { return cErrorsAssignment_1_5_3; }
		
		//Error_3
		public RuleCall getErrorsError_3ParserRuleCall_1_5_3_0() { return cErrorsError_3ParserRuleCall_1_5_3_0; }
		
		//(operations+=Operation_3)+
		public Assignment getOperationsAssignment_1_5_4() { return cOperationsAssignment_1_5_4; }
		
		//Operation_3
		public RuleCall getOperationsOperation_3ParserRuleCall_1_5_4_0() { return cOperationsOperation_3ParserRuleCall_1_5_4_0; }
		
		//"}"
		public Keyword getRightCurlyBracketKeyword_1_5_5() { return cRightCurlyBracketKeyword_1_5_5; }
		
		//"#4*" name=ID "{"
		//      (errors+=Error_4)*
		//      (operations+=Operation_4)*
		//      "}"
		public Group getGroup_1_6() { return cGroup_1_6; }
		
		//"#4*"
		public Keyword getNumberSignDigitFourAsteriskKeyword_1_6_0() { return cNumberSignDigitFourAsteriskKeyword_1_6_0; }
		
		//name=ID
		public Assignment getNameAssignment_1_6_1() { return cNameAssignment_1_6_1; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_1_6_1_0() { return cNameIDTerminalRuleCall_1_6_1_0; }
		
		//"{"
		public Keyword getLeftCurlyBracketKeyword_1_6_2() { return cLeftCurlyBracketKeyword_1_6_2; }
		
		//(errors+=Error_4)*
		public Assignment getErrorsAssignment_1_6_3() { return cErrorsAssignment_1_6_3; }
		
		//Error_4
		public RuleCall getErrorsError_4ParserRuleCall_1_6_3_0() { return cErrorsError_4ParserRuleCall_1_6_3_0; }
		
		//(operations+=Operation_4)*
		public Assignment getOperationsAssignment_1_6_4() { return cOperationsAssignment_1_6_4; }
		
		//Operation_4
		public RuleCall getOperationsOperation_4ParserRuleCall_1_6_4_0() { return cOperationsOperation_4ParserRuleCall_1_6_4_0; }
		
		//"}"
		public Keyword getRightCurlyBracketKeyword_1_6_5() { return cRightCurlyBracketKeyword_1_6_5; }
		
		//"#4+" name=ID "{"
		//      (errors+=Error_4)+
		//      (operations+=Operation_4)+
		//      "}"
		public Group getGroup_1_7() { return cGroup_1_7; }
		
		//"#4+"
		public Keyword getNumberSignDigitFourPlusSignKeyword_1_7_0() { return cNumberSignDigitFourPlusSignKeyword_1_7_0; }
		
		//name=ID
		public Assignment getNameAssignment_1_7_1() { return cNameAssignment_1_7_1; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_1_7_1_0() { return cNameIDTerminalRuleCall_1_7_1_0; }
		
		//"{"
		public Keyword getLeftCurlyBracketKeyword_1_7_2() { return cLeftCurlyBracketKeyword_1_7_2; }
		
		//(errors+=Error_4)+
		public Assignment getErrorsAssignment_1_7_3() { return cErrorsAssignment_1_7_3; }
		
		//Error_4
		public RuleCall getErrorsError_4ParserRuleCall_1_7_3_0() { return cErrorsError_4ParserRuleCall_1_7_3_0; }
		
		//(operations+=Operation_4)+
		public Assignment getOperationsAssignment_1_7_4() { return cOperationsAssignment_1_7_4; }
		
		//Operation_4
		public RuleCall getOperationsOperation_4ParserRuleCall_1_7_4_0() { return cOperationsOperation_4ParserRuleCall_1_7_4_0; }
		
		//"}"
		public Keyword getRightCurlyBracketKeyword_1_7_5() { return cRightCurlyBracketKeyword_1_7_5; }
		
		//"#5*" name=ID "{"
		//      (errors+=Error_5)*
		//      (operations+=Operation_5)*
		//      "}"
		public Group getGroup_1_8() { return cGroup_1_8; }
		
		//"#5*"
		public Keyword getNumberSignDigitFiveAsteriskKeyword_1_8_0() { return cNumberSignDigitFiveAsteriskKeyword_1_8_0; }
		
		//name=ID
		public Assignment getNameAssignment_1_8_1() { return cNameAssignment_1_8_1; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_1_8_1_0() { return cNameIDTerminalRuleCall_1_8_1_0; }
		
		//"{"
		public Keyword getLeftCurlyBracketKeyword_1_8_2() { return cLeftCurlyBracketKeyword_1_8_2; }
		
		//(errors+=Error_5)*
		public Assignment getErrorsAssignment_1_8_3() { return cErrorsAssignment_1_8_3; }
		
		//Error_5
		public RuleCall getErrorsError_5ParserRuleCall_1_8_3_0() { return cErrorsError_5ParserRuleCall_1_8_3_0; }
		
		//(operations+=Operation_5)*
		public Assignment getOperationsAssignment_1_8_4() { return cOperationsAssignment_1_8_4; }
		
		//Operation_5
		public RuleCall getOperationsOperation_5ParserRuleCall_1_8_4_0() { return cOperationsOperation_5ParserRuleCall_1_8_4_0; }
		
		//"}"
		public Keyword getRightCurlyBracketKeyword_1_8_5() { return cRightCurlyBracketKeyword_1_8_5; }
		
		//"#5+" name=ID "{"
		//      (errors+=Error_5)+
		//      (operations+=Operation_5)+
		//      "}"
		public Group getGroup_1_9() { return cGroup_1_9; }
		
		//"#5+"
		public Keyword getNumberSignDigitFivePlusSignKeyword_1_9_0() { return cNumberSignDigitFivePlusSignKeyword_1_9_0; }
		
		//name=ID
		public Assignment getNameAssignment_1_9_1() { return cNameAssignment_1_9_1; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_1_9_1_0() { return cNameIDTerminalRuleCall_1_9_1_0; }
		
		//"{"
		public Keyword getLeftCurlyBracketKeyword_1_9_2() { return cLeftCurlyBracketKeyword_1_9_2; }
		
		//(errors+=Error_5)+
		public Assignment getErrorsAssignment_1_9_3() { return cErrorsAssignment_1_9_3; }
		
		//Error_5
		public RuleCall getErrorsError_5ParserRuleCall_1_9_3_0() { return cErrorsError_5ParserRuleCall_1_9_3_0; }
		
		//(operations+=Operation_5)+
		public Assignment getOperationsAssignment_1_9_4() { return cOperationsAssignment_1_9_4; }
		
		//Operation_5
		public RuleCall getOperationsOperation_5ParserRuleCall_1_9_4_0() { return cOperationsOperation_5ParserRuleCall_1_9_4_0; }
		
		//"}"
		public Keyword getRightCurlyBracketKeyword_1_9_5() { return cRightCurlyBracketKeyword_1_9_5; }
	}
	public class Error_1Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug309949TestLanguage.Error_1");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cAnnotationsAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cAnnotationsAnnotationParserRuleCall_0_0 = (RuleCall)cAnnotationsAssignment_0.eContents().get(0);
		private final Keyword cErrorKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Assignment cNameAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final RuleCall cNameIDTerminalRuleCall_2_0 = (RuleCall)cNameAssignment_2.eContents().get(0);
		
		//Error_1 returns Error:
		//   (annotations+=Annotation)*
		//   "error" name = ID
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//(annotations+=Annotation)*
		//"error" name = ID
		public Group getGroup() { return cGroup; }
		
		//(annotations+=Annotation)*
		public Assignment getAnnotationsAssignment_0() { return cAnnotationsAssignment_0; }
		
		//Annotation
		public RuleCall getAnnotationsAnnotationParserRuleCall_0_0() { return cAnnotationsAnnotationParserRuleCall_0_0; }
		
		//"error"
		public Keyword getErrorKeyword_1() { return cErrorKeyword_1; }
		
		//name = ID
		public Assignment getNameAssignment_2() { return cNameAssignment_2; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_2_0() { return cNameIDTerminalRuleCall_2_0; }
	}
	public class Operation_1Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug309949TestLanguage.Operation_1");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cAnnotationsAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cAnnotationsAnnotationParserRuleCall_0_0 = (RuleCall)cAnnotationsAssignment_0.eContents().get(0);
		private final Keyword cOperationKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Assignment cNameAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final RuleCall cNameIDTerminalRuleCall_2_0 = (RuleCall)cNameAssignment_2.eContents().get(0);
		
		//Operation_1 returns Operation:
		//   (annotations+=Annotation)*
		//   "operation" name = ID
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//(annotations+=Annotation)*
		//"operation" name = ID
		public Group getGroup() { return cGroup; }
		
		//(annotations+=Annotation)*
		public Assignment getAnnotationsAssignment_0() { return cAnnotationsAssignment_0; }
		
		//Annotation
		public RuleCall getAnnotationsAnnotationParserRuleCall_0_0() { return cAnnotationsAnnotationParserRuleCall_0_0; }
		
		//"operation"
		public Keyword getOperationKeyword_1() { return cOperationKeyword_1; }
		
		//name = ID
		public Assignment getNameAssignment_2() { return cNameAssignment_2; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_2_0() { return cNameIDTerminalRuleCall_2_0; }
	}
	public class Error_2Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug309949TestLanguage.Error_2");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cAnnotationsAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cAnnotationsAnnotationParserRuleCall_0_0 = (RuleCall)cAnnotationsAssignment_0.eContents().get(0);
		private final Keyword cErrorKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Assignment cNameAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final RuleCall cNameIDTerminalRuleCall_2_0 = (RuleCall)cNameAssignment_2.eContents().get(0);
		
		//Error_2 returns Error:
		//   (annotations+=Annotation)+
		//   "error" name = ID
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//(annotations+=Annotation)+
		//"error" name = ID
		public Group getGroup() { return cGroup; }
		
		//(annotations+=Annotation)+
		public Assignment getAnnotationsAssignment_0() { return cAnnotationsAssignment_0; }
		
		//Annotation
		public RuleCall getAnnotationsAnnotationParserRuleCall_0_0() { return cAnnotationsAnnotationParserRuleCall_0_0; }
		
		//"error"
		public Keyword getErrorKeyword_1() { return cErrorKeyword_1; }
		
		//name = ID
		public Assignment getNameAssignment_2() { return cNameAssignment_2; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_2_0() { return cNameIDTerminalRuleCall_2_0; }
	}
	public class Operation_2Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug309949TestLanguage.Operation_2");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cAnnotationsAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cAnnotationsAnnotationParserRuleCall_0_0 = (RuleCall)cAnnotationsAssignment_0.eContents().get(0);
		private final Keyword cOperationKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Assignment cNameAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final RuleCall cNameIDTerminalRuleCall_2_0 = (RuleCall)cNameAssignment_2.eContents().get(0);
		
		//Operation_2 returns Operation:
		//   (annotations+=Annotation)+
		//   "operation" name = ID
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//(annotations+=Annotation)+
		//"operation" name = ID
		public Group getGroup() { return cGroup; }
		
		//(annotations+=Annotation)+
		public Assignment getAnnotationsAssignment_0() { return cAnnotationsAssignment_0; }
		
		//Annotation
		public RuleCall getAnnotationsAnnotationParserRuleCall_0_0() { return cAnnotationsAnnotationParserRuleCall_0_0; }
		
		//"operation"
		public Keyword getOperationKeyword_1() { return cOperationKeyword_1; }
		
		//name = ID
		public Assignment getNameAssignment_2() { return cNameAssignment_2; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_2_0() { return cNameIDTerminalRuleCall_2_0; }
	}
	public class Error_3Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug309949TestLanguage.Error_3");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cAnnotationsAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cAnnotationsAnnotationParserRuleCall_0_0 = (RuleCall)cAnnotationsAssignment_0.eContents().get(0);
		private final Keyword cErrorKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Assignment cNameAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final RuleCall cNameIDTerminalRuleCall_2_0 = (RuleCall)cNameAssignment_2.eContents().get(0);
		
		//Error_3 returns Error:
		//   (annotations+=Annotation)?
		//   "error" name = ID
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//(annotations+=Annotation)?
		//"error" name = ID
		public Group getGroup() { return cGroup; }
		
		//(annotations+=Annotation)?
		public Assignment getAnnotationsAssignment_0() { return cAnnotationsAssignment_0; }
		
		//Annotation
		public RuleCall getAnnotationsAnnotationParserRuleCall_0_0() { return cAnnotationsAnnotationParserRuleCall_0_0; }
		
		//"error"
		public Keyword getErrorKeyword_1() { return cErrorKeyword_1; }
		
		//name = ID
		public Assignment getNameAssignment_2() { return cNameAssignment_2; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_2_0() { return cNameIDTerminalRuleCall_2_0; }
	}
	public class Operation_3Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug309949TestLanguage.Operation_3");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cAnnotationsAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cAnnotationsAnnotationParserRuleCall_0_0 = (RuleCall)cAnnotationsAssignment_0.eContents().get(0);
		private final Keyword cOperationKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Assignment cNameAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final RuleCall cNameIDTerminalRuleCall_2_0 = (RuleCall)cNameAssignment_2.eContents().get(0);
		
		//Operation_3 returns Operation:
		//   (annotations+=Annotation)?
		//   "operation" name = ID
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//(annotations+=Annotation)?
		//"operation" name = ID
		public Group getGroup() { return cGroup; }
		
		//(annotations+=Annotation)?
		public Assignment getAnnotationsAssignment_0() { return cAnnotationsAssignment_0; }
		
		//Annotation
		public RuleCall getAnnotationsAnnotationParserRuleCall_0_0() { return cAnnotationsAnnotationParserRuleCall_0_0; }
		
		//"operation"
		public Keyword getOperationKeyword_1() { return cOperationKeyword_1; }
		
		//name = ID
		public Assignment getNameAssignment_2() { return cNameAssignment_2; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_2_0() { return cNameIDTerminalRuleCall_2_0; }
	}
	public class Error_4Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug309949TestLanguage.Error_4");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cAnnotationsAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cAnnotationsAnnotationParserRuleCall_0_0 = (RuleCall)cAnnotationsAssignment_0.eContents().get(0);
		private final Keyword cErrorKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Assignment cNameAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final RuleCall cNameIDTerminalRuleCall_2_0 = (RuleCall)cNameAssignment_2.eContents().get(0);
		
		//Error_4 returns Error:
		//   (annotations+=Annotation)
		//   "error" name = ID
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//(annotations+=Annotation)
		//"error" name = ID
		public Group getGroup() { return cGroup; }
		
		//(annotations+=Annotation)
		public Assignment getAnnotationsAssignment_0() { return cAnnotationsAssignment_0; }
		
		//Annotation
		public RuleCall getAnnotationsAnnotationParserRuleCall_0_0() { return cAnnotationsAnnotationParserRuleCall_0_0; }
		
		//"error"
		public Keyword getErrorKeyword_1() { return cErrorKeyword_1; }
		
		//name = ID
		public Assignment getNameAssignment_2() { return cNameAssignment_2; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_2_0() { return cNameIDTerminalRuleCall_2_0; }
	}
	public class Operation_4Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug309949TestLanguage.Operation_4");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cAnnotationsAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cAnnotationsAnnotationParserRuleCall_0_0 = (RuleCall)cAnnotationsAssignment_0.eContents().get(0);
		private final Keyword cOperationKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Assignment cNameAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final RuleCall cNameIDTerminalRuleCall_2_0 = (RuleCall)cNameAssignment_2.eContents().get(0);
		
		//Operation_4 returns Operation:
		//   (annotations+=Annotation)
		//   "operation" name = ID
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//(annotations+=Annotation)
		//"operation" name = ID
		public Group getGroup() { return cGroup; }
		
		//(annotations+=Annotation)
		public Assignment getAnnotationsAssignment_0() { return cAnnotationsAssignment_0; }
		
		//Annotation
		public RuleCall getAnnotationsAnnotationParserRuleCall_0_0() { return cAnnotationsAnnotationParserRuleCall_0_0; }
		
		//"operation"
		public Keyword getOperationKeyword_1() { return cOperationKeyword_1; }
		
		//name = ID
		public Assignment getNameAssignment_2() { return cNameAssignment_2; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_2_0() { return cNameIDTerminalRuleCall_2_0; }
	}
	public class Error_5Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug309949TestLanguage.Error_5");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cErrorKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Assignment cNameAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cNameIDTerminalRuleCall_1_0 = (RuleCall)cNameAssignment_1.eContents().get(0);
		
		//Error_5 returns Error:
		//   "error" name = ID
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//"error" name = ID
		public Group getGroup() { return cGroup; }
		
		//"error"
		public Keyword getErrorKeyword_0() { return cErrorKeyword_0; }
		
		//name = ID
		public Assignment getNameAssignment_1() { return cNameAssignment_1; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_1_0() { return cNameIDTerminalRuleCall_1_0; }
	}
	public class Operation_5Elements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug309949TestLanguage.Operation_5");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cOperationKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Assignment cNameAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cNameIDTerminalRuleCall_1_0 = (RuleCall)cNameAssignment_1.eContents().get(0);
		
		//Operation_5 returns Operation:
		//   "operation" name = ID
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//"operation" name = ID
		public Group getGroup() { return cGroup; }
		
		//"operation"
		public Keyword getOperationKeyword_0() { return cOperationKeyword_0; }
		
		//name = ID
		public Assignment getNameAssignment_1() { return cNameAssignment_1; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_1_0() { return cNameIDTerminalRuleCall_1_0; }
	}
	public class AnnotationElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug309949TestLanguage.Annotation");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cUuidKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Assignment cNameAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cNameIDTerminalRuleCall_1_0 = (RuleCall)cNameAssignment_1.eContents().get(0);
		
		//Annotation:
		//   "@uuid" name = ID
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//"@uuid" name = ID
		public Group getGroup() { return cGroup; }
		
		//"@uuid"
		public Keyword getUuidKeyword_0() { return cUuidKeyword_0; }
		
		//name = ID
		public Assignment getNameAssignment_1() { return cNameAssignment_1; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_1_0() { return cNameIDTerminalRuleCall_1_0; }
	}
	
	
	private final ModelElements pModel;
	private final Error_1Elements pError_1;
	private final Operation_1Elements pOperation_1;
	private final Error_2Elements pError_2;
	private final Operation_2Elements pOperation_2;
	private final Error_3Elements pError_3;
	private final Operation_3Elements pOperation_3;
	private final Error_4Elements pError_4;
	private final Operation_4Elements pOperation_4;
	private final Error_5Elements pError_5;
	private final Operation_5Elements pOperation_5;
	private final AnnotationElements pAnnotation;
	
	private final Grammar grammar;
	
	private final TerminalsGrammarAccess gaTerminals;

	@Inject
	public Bug309949TestLanguageGrammarAccess(GrammarProvider grammarProvider,
			TerminalsGrammarAccess gaTerminals) {
		this.grammar = internalFindGrammar(grammarProvider);
		this.gaTerminals = gaTerminals;
		this.pModel = new ModelElements();
		this.pError_1 = new Error_1Elements();
		this.pOperation_1 = new Operation_1Elements();
		this.pError_2 = new Error_2Elements();
		this.pOperation_2 = new Operation_2Elements();
		this.pError_3 = new Error_3Elements();
		this.pOperation_3 = new Operation_3Elements();
		this.pError_4 = new Error_4Elements();
		this.pOperation_4 = new Operation_4Elements();
		this.pError_5 = new Error_5Elements();
		this.pOperation_5 = new Operation_5Elements();
		this.pAnnotation = new AnnotationElements();
	}
	
	protected Grammar internalFindGrammar(GrammarProvider grammarProvider) {
		Grammar grammar = grammarProvider.getGrammar(this);
		while (grammar != null) {
			if ("org.eclipse.xtext.ui.tests.editor.contentassist.Bug309949TestLanguage".equals(grammar.getName())) {
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
	//  {Model}
	//  (
	//    "#1*" "{"
	//       (errors+=Error_1)*
	//       (operations+=Operation_1)*
	//       "}"
	//  | "#1+" "{"
	//       (errors+=Error_1)+
	//       (operations+=Operation_1)+
	//       "}"
	//  | "#2*" "{"
	//       (errors+=Error_2)*
	//       (operations+=Operation_2)*
	//       "}"
	//  | "#2+" name=ID "{"
	//       (errors+=Error_2)+
	//       (operations+=Operation_2)+
	//       "}"
	//  | "#3*" name=ID "{"
	//       (errors+=Error_3)*
	//       (operations+=Operation_3)*
	//       "}"
	//  | "#3+" name=ID "{"
	//       (errors+=Error_3)+
	//       (operations+=Operation_3)+
	//       "}"
	//  | "#4*" name=ID "{"
	//       (errors+=Error_4)*
	//       (operations+=Operation_4)*
	//       "}"
	//  | "#4+" name=ID "{"
	//       (errors+=Error_4)+
	//       (operations+=Operation_4)+
	//       "}"
	//  | "#5*" name=ID "{"
	//       (errors+=Error_5)*
	//       (operations+=Operation_5)*
	//       "}"
	//  | "#5+" name=ID "{"
	//       (errors+=Error_5)+
	//       (operations+=Operation_5)+
	//       "}"
	//  )
	//;
	public ModelElements getModelAccess() {
		return pModel;
	}
	
	public ParserRule getModelRule() {
		return getModelAccess().getRule();
	}
	
	//Error_1 returns Error:
	//   (annotations+=Annotation)*
	//   "error" name = ID
	//;
	public Error_1Elements getError_1Access() {
		return pError_1;
	}
	
	public ParserRule getError_1Rule() {
		return getError_1Access().getRule();
	}
	
	//Operation_1 returns Operation:
	//   (annotations+=Annotation)*
	//   "operation" name = ID
	//;
	public Operation_1Elements getOperation_1Access() {
		return pOperation_1;
	}
	
	public ParserRule getOperation_1Rule() {
		return getOperation_1Access().getRule();
	}
	
	//Error_2 returns Error:
	//   (annotations+=Annotation)+
	//   "error" name = ID
	//;
	public Error_2Elements getError_2Access() {
		return pError_2;
	}
	
	public ParserRule getError_2Rule() {
		return getError_2Access().getRule();
	}
	
	//Operation_2 returns Operation:
	//   (annotations+=Annotation)+
	//   "operation" name = ID
	//;
	public Operation_2Elements getOperation_2Access() {
		return pOperation_2;
	}
	
	public ParserRule getOperation_2Rule() {
		return getOperation_2Access().getRule();
	}
	
	//Error_3 returns Error:
	//   (annotations+=Annotation)?
	//   "error" name = ID
	//;
	public Error_3Elements getError_3Access() {
		return pError_3;
	}
	
	public ParserRule getError_3Rule() {
		return getError_3Access().getRule();
	}
	
	//Operation_3 returns Operation:
	//   (annotations+=Annotation)?
	//   "operation" name = ID
	//;
	public Operation_3Elements getOperation_3Access() {
		return pOperation_3;
	}
	
	public ParserRule getOperation_3Rule() {
		return getOperation_3Access().getRule();
	}
	
	//Error_4 returns Error:
	//   (annotations+=Annotation)
	//   "error" name = ID
	//;
	public Error_4Elements getError_4Access() {
		return pError_4;
	}
	
	public ParserRule getError_4Rule() {
		return getError_4Access().getRule();
	}
	
	//Operation_4 returns Operation:
	//   (annotations+=Annotation)
	//   "operation" name = ID
	//;
	public Operation_4Elements getOperation_4Access() {
		return pOperation_4;
	}
	
	public ParserRule getOperation_4Rule() {
		return getOperation_4Access().getRule();
	}
	
	//Error_5 returns Error:
	//   "error" name = ID
	//;
	public Error_5Elements getError_5Access() {
		return pError_5;
	}
	
	public ParserRule getError_5Rule() {
		return getError_5Access().getRule();
	}
	
	//Operation_5 returns Operation:
	//   "operation" name = ID
	//;
	public Operation_5Elements getOperation_5Access() {
		return pOperation_5;
	}
	
	public ParserRule getOperation_5Rule() {
		return getOperation_5Access().getRule();
	}
	
	//Annotation:
	//   "@uuid" name = ID
	//;
	public AnnotationElements getAnnotationAccess() {
		return pAnnotation;
	}
	
	public ParserRule getAnnotationRule() {
		return getAnnotationAccess().getRule();
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

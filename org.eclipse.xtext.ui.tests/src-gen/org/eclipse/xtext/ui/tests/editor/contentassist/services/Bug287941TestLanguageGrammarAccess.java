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
import org.eclipse.xtext.service.AbstractElementFinder;
import org.eclipse.xtext.service.GrammarProvider;

@Singleton
public class Bug287941TestLanguageGrammarAccess extends AbstractElementFinder.AbstractGrammarElementFinder {
	
	public class ModelElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.Model");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cImportsAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cImportsImportParserRuleCall_0_0 = (RuleCall)cImportsAssignment_0.eContents().get(0);
		private final Assignment cQueryAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cQueryMQLqueryParserRuleCall_1_0 = (RuleCall)cQueryAssignment_1.eContents().get(0);
		
		//Model:
		//    (imports+=Import)*
		//    query=MQLquery
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//(imports+=Import)*
		//query=MQLquery
		public Group getGroup() { return cGroup; }
		
		//(imports+=Import)*
		public Assignment getImportsAssignment_0() { return cImportsAssignment_0; }
		
		//Import
		public RuleCall getImportsImportParserRuleCall_0_0() { return cImportsImportParserRuleCall_0_0; }
		
		//query=MQLquery
		public Assignment getQueryAssignment_1() { return cQueryAssignment_1; }
		
		//MQLquery
		public RuleCall getQueryMQLqueryParserRuleCall_1_0() { return cQueryMQLqueryParserRuleCall_1_0; }
	}
	public class ImportElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.Import");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cImportKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Assignment cImportURIAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cImportURISTRINGTerminalRuleCall_1_0 = (RuleCall)cImportURIAssignment_1.eContents().get(0);
		
		//Import :
		//    'import' importURI=STRING;
		@Override public ParserRule getRule() { return rule; }
		
		//'import' importURI=STRING
		public Group getGroup() { return cGroup; }
		
		//'import'
		public Keyword getImportKeyword_0() { return cImportKeyword_0; }
		
		//importURI=STRING
		public Assignment getImportURIAssignment_1() { return cImportURIAssignment_1; }
		
		//STRING
		public RuleCall getImportURISTRINGTerminalRuleCall_1_0() { return cImportURISTRINGTerminalRuleCall_1_0; }
	}
	public class MQLqueryElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.MQLquery");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cSelectKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Assignment cSelectEntriesAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cSelectEntriesSelectEntryParserRuleCall_1_0 = (RuleCall)cSelectEntriesAssignment_1.eContents().get(0);
		private final Group cGroup_2 = (Group)cGroup.eContents().get(2);
		private final Keyword cCommaKeyword_2_0 = (Keyword)cGroup_2.eContents().get(0);
		private final Assignment cSelectEntriesAssignment_2_1 = (Assignment)cGroup_2.eContents().get(1);
		private final RuleCall cSelectEntriesSelectEntryParserRuleCall_2_1_0 = (RuleCall)cSelectEntriesAssignment_2_1.eContents().get(0);
		private final Keyword cFromKeyword_3 = (Keyword)cGroup.eContents().get(3);
		private final Assignment cFromEntriesAssignment_4 = (Assignment)cGroup.eContents().get(4);
		private final RuleCall cFromEntriesFromEntryParserRuleCall_4_0 = (RuleCall)cFromEntriesAssignment_4.eContents().get(0);
		private final Group cGroup_5 = (Group)cGroup.eContents().get(5);
		private final Keyword cCommaKeyword_5_0 = (Keyword)cGroup_5.eContents().get(0);
		private final Assignment cFromEntriesAssignment_5_1 = (Assignment)cGroup_5.eContents().get(1);
		private final RuleCall cFromEntriesFromEntryParserRuleCall_5_1_0 = (RuleCall)cFromEntriesAssignment_5_1.eContents().get(0);
		private final Group cGroup_6 = (Group)cGroup.eContents().get(6);
		private final Keyword cWhereKeyword_6_0 = (Keyword)cGroup_6.eContents().get(0);
		private final Assignment cWhereEntriesAssignment_6_1 = (Assignment)cGroup_6.eContents().get(1);
		private final RuleCall cWhereEntriesWhereEntryParserRuleCall_6_1_0 = (RuleCall)cWhereEntriesAssignment_6_1.eContents().get(0);
		
		//MQLquery :
		//    "select" selectEntries+=SelectEntry ("," selectEntries+=SelectEntry)* "from" fromEntries+=FromEntry ("," fromEntries+=FromEntry)* ("where" (whereEntries+=WhereEntry)+)?
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//"select" selectEntries+=SelectEntry ("," selectEntries+=SelectEntry)* "from" fromEntries+=FromEntry ("," fromEntries+=FromEntry)* ("where" (whereEntries+=WhereEntry)+)?
		public Group getGroup() { return cGroup; }
		
		//"select"
		public Keyword getSelectKeyword_0() { return cSelectKeyword_0; }
		
		//selectEntries+=SelectEntry
		public Assignment getSelectEntriesAssignment_1() { return cSelectEntriesAssignment_1; }
		
		//SelectEntry
		public RuleCall getSelectEntriesSelectEntryParserRuleCall_1_0() { return cSelectEntriesSelectEntryParserRuleCall_1_0; }
		
		//("," selectEntries+=SelectEntry)*
		public Group getGroup_2() { return cGroup_2; }
		
		//","
		public Keyword getCommaKeyword_2_0() { return cCommaKeyword_2_0; }
		
		//selectEntries+=SelectEntry
		public Assignment getSelectEntriesAssignment_2_1() { return cSelectEntriesAssignment_2_1; }
		
		//SelectEntry
		public RuleCall getSelectEntriesSelectEntryParserRuleCall_2_1_0() { return cSelectEntriesSelectEntryParserRuleCall_2_1_0; }
		
		//"from"
		public Keyword getFromKeyword_3() { return cFromKeyword_3; }
		
		//fromEntries+=FromEntry
		public Assignment getFromEntriesAssignment_4() { return cFromEntriesAssignment_4; }
		
		//FromEntry
		public RuleCall getFromEntriesFromEntryParserRuleCall_4_0() { return cFromEntriesFromEntryParserRuleCall_4_0; }
		
		//("," fromEntries+=FromEntry)*
		public Group getGroup_5() { return cGroup_5; }
		
		//","
		public Keyword getCommaKeyword_5_0() { return cCommaKeyword_5_0; }
		
		//fromEntries+=FromEntry
		public Assignment getFromEntriesAssignment_5_1() { return cFromEntriesAssignment_5_1; }
		
		//FromEntry
		public RuleCall getFromEntriesFromEntryParserRuleCall_5_1_0() { return cFromEntriesFromEntryParserRuleCall_5_1_0; }
		
		//("where" (whereEntries+=WhereEntry)+)?
		public Group getGroup_6() { return cGroup_6; }
		
		//"where"
		public Keyword getWhereKeyword_6_0() { return cWhereKeyword_6_0; }
		
		//(whereEntries+=WhereEntry)+
		public Assignment getWhereEntriesAssignment_6_1() { return cWhereEntriesAssignment_6_1; }
		
		//WhereEntry
		public RuleCall getWhereEntriesWhereEntryParserRuleCall_6_1_0() { return cWhereEntriesWhereEntryParserRuleCall_6_1_0; }
	}
	public class SelectEntryElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.SelectEntry");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cSelectAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final CrossReference cSelectFromEntryCrossReference_0_0 = (CrossReference)cSelectAssignment_0.eContents().get(0);
		private final RuleCall cSelectFromEntryIDTerminalRuleCall_0_0_1 = (RuleCall)cSelectFromEntryCrossReference_0_0.eContents().get(1);
		private final Group cGroup_1 = (Group)cGroup.eContents().get(1);
		private final Keyword cFullStopKeyword_1_0 = (Keyword)cGroup_1.eContents().get(0);
		private final Assignment cAttributeAssignment_1_1 = (Assignment)cGroup_1.eContents().get(1);
		private final CrossReference cAttributeEAttributeCrossReference_1_1_0 = (CrossReference)cAttributeAssignment_1_1.eContents().get(0);
		private final RuleCall cAttributeEAttributeIDTerminalRuleCall_1_1_0_1 = (RuleCall)cAttributeEAttributeCrossReference_1_1_0.eContents().get(1);
		
		//SelectEntry:
		//    select=[FromEntry] ("." attribute=[ecore::EAttribute])?
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//select=[FromEntry] ("." attribute=[ecore::EAttribute])?
		public Group getGroup() { return cGroup; }
		
		//select=[FromEntry]
		public Assignment getSelectAssignment_0() { return cSelectAssignment_0; }
		
		//[FromEntry]
		public CrossReference getSelectFromEntryCrossReference_0_0() { return cSelectFromEntryCrossReference_0_0; }
		
		//ID
		public RuleCall getSelectFromEntryIDTerminalRuleCall_0_0_1() { return cSelectFromEntryIDTerminalRuleCall_0_0_1; }
		
		//("." attribute=[ecore::EAttribute])?
		public Group getGroup_1() { return cGroup_1; }
		
		//"."
		public Keyword getFullStopKeyword_1_0() { return cFullStopKeyword_1_0; }
		
		//attribute=[ecore::EAttribute]
		public Assignment getAttributeAssignment_1_1() { return cAttributeAssignment_1_1; }
		
		//[ecore::EAttribute]
		public CrossReference getAttributeEAttributeCrossReference_1_1_0() { return cAttributeEAttributeCrossReference_1_1_0; }
		
		//ID
		public RuleCall getAttributeEAttributeIDTerminalRuleCall_1_1_0_1() { return cAttributeEAttributeIDTerminalRuleCall_1_1_0_1; }
	}
	public class FromEntryElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.FromEntry");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cTypeAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final CrossReference cTypeEClassCrossReference_0_0 = (CrossReference)cTypeAssignment_0.eContents().get(0);
		private final RuleCall cTypeEClassIDTerminalRuleCall_0_0_1 = (RuleCall)cTypeEClassCrossReference_0_0.eContents().get(1);
		private final Assignment cWithoutsubtypesAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final Keyword cWithoutsubtypesWithoutsubtypesKeyword_1_0 = (Keyword)cWithoutsubtypesAssignment_1.eContents().get(0);
		private final Keyword cAsKeyword_2 = (Keyword)cGroup.eContents().get(2);
		private final Assignment cAliasAssignment_3 = (Assignment)cGroup.eContents().get(3);
		private final RuleCall cAliasIDTerminalRuleCall_3_0 = (RuleCall)cAliasAssignment_3.eContents().get(0);
		private final Assignment cScopeClauseAssignment_4 = (Assignment)cGroup.eContents().get(4);
		private final RuleCall cScopeClauseScopeClauseParserRuleCall_4_0 = (RuleCall)cScopeClauseAssignment_4.eContents().get(0);
		
		//FromEntry:
		//    type=[ecore::EClass] (withoutsubtypes?="withoutsubtypes")? "as" alias=ID (scopeClause=ScopeClause)?
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//type=[ecore::EClass] (withoutsubtypes?="withoutsubtypes")? "as" alias=ID (scopeClause=ScopeClause)?
		public Group getGroup() { return cGroup; }
		
		//type=[ecore::EClass]
		public Assignment getTypeAssignment_0() { return cTypeAssignment_0; }
		
		//[ecore::EClass]
		public CrossReference getTypeEClassCrossReference_0_0() { return cTypeEClassCrossReference_0_0; }
		
		//ID
		public RuleCall getTypeEClassIDTerminalRuleCall_0_0_1() { return cTypeEClassIDTerminalRuleCall_0_0_1; }
		
		//(withoutsubtypes?="withoutsubtypes")?
		public Assignment getWithoutsubtypesAssignment_1() { return cWithoutsubtypesAssignment_1; }
		
		//"withoutsubtypes"
		public Keyword getWithoutsubtypesWithoutsubtypesKeyword_1_0() { return cWithoutsubtypesWithoutsubtypesKeyword_1_0; }
		
		//"as"
		public Keyword getAsKeyword_2() { return cAsKeyword_2; }
		
		//alias=ID
		public Assignment getAliasAssignment_3() { return cAliasAssignment_3; }
		
		//ID
		public RuleCall getAliasIDTerminalRuleCall_3_0() { return cAliasIDTerminalRuleCall_3_0; }
		
		//(scopeClause=ScopeClause)?
		public Assignment getScopeClauseAssignment_4() { return cScopeClauseAssignment_4; }
		
		//ScopeClause
		public RuleCall getScopeClauseScopeClauseParserRuleCall_4_0() { return cScopeClauseScopeClauseParserRuleCall_4_0; }
	}
	public class ScopeClauseElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.ScopeClause");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cNotInAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final Keyword cNotInNotKeyword_0_0 = (Keyword)cNotInAssignment_0.eContents().get(0);
		private final Keyword cInKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Assignment cScopeAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final RuleCall cScopeScopeParserRuleCall_2_0 = (RuleCall)cScopeAssignment_2.eContents().get(0);
		
		//ScopeClause:
		//    (notIn?="not")? "in" scope=Scope
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//(notIn?="not")? "in" scope=Scope
		public Group getGroup() { return cGroup; }
		
		//(notIn?="not")?
		public Assignment getNotInAssignment_0() { return cNotInAssignment_0; }
		
		//"not"
		public Keyword getNotInNotKeyword_0_0() { return cNotInNotKeyword_0_0; }
		
		//"in"
		public Keyword getInKeyword_1() { return cInKeyword_1; }
		
		//scope=Scope
		public Assignment getScopeAssignment_2() { return cScopeAssignment_2; }
		
		//Scope
		public RuleCall getScopeScopeParserRuleCall_2_0() { return cScopeScopeParserRuleCall_2_0; }
	}
	public class ScopeElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.Scope");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final RuleCall cResourceScopeParserRuleCall_0 = (RuleCall)cAlternatives.eContents().get(0);
		private final RuleCall cElementScopeParserRuleCall_1 = (RuleCall)cAlternatives.eContents().get(1);
		
		//Scope:
		//    ResourceScope | ElementScope
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//ResourceScope | ElementScope
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//ResourceScope
		public RuleCall getResourceScopeParserRuleCall_0() { return cResourceScopeParserRuleCall_0; }
		
		//ElementScope
		public RuleCall getElementScopeParserRuleCall_1() { return cElementScopeParserRuleCall_1; }
	}
	public class ResourceScopeElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.ResourceScope");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cResourcesKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Keyword cLeftCurlyBracketKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Assignment cUrisAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final RuleCall cUrisSTRINGTerminalRuleCall_2_0 = (RuleCall)cUrisAssignment_2.eContents().get(0);
		private final Group cGroup_3 = (Group)cGroup.eContents().get(3);
		private final Keyword cCommaKeyword_3_0 = (Keyword)cGroup_3.eContents().get(0);
		private final Assignment cUrisAssignment_3_1 = (Assignment)cGroup_3.eContents().get(1);
		private final RuleCall cUrisSTRINGTerminalRuleCall_3_1_0 = (RuleCall)cUrisAssignment_3_1.eContents().get(0);
		private final Keyword cRightCurlyBracketKeyword_4 = (Keyword)cGroup.eContents().get(4);
		
		//ResourceScope:
		//    "resources" "{" uris+=STRING ("," uris+=STRING)* "}"
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//"resources" "{" uris+=STRING ("," uris+=STRING)* "}"
		public Group getGroup() { return cGroup; }
		
		//"resources"
		public Keyword getResourcesKeyword_0() { return cResourcesKeyword_0; }
		
		//"{"
		public Keyword getLeftCurlyBracketKeyword_1() { return cLeftCurlyBracketKeyword_1; }
		
		//uris+=STRING
		public Assignment getUrisAssignment_2() { return cUrisAssignment_2; }
		
		//STRING
		public RuleCall getUrisSTRINGTerminalRuleCall_2_0() { return cUrisSTRINGTerminalRuleCall_2_0; }
		
		//("," uris+=STRING)*
		public Group getGroup_3() { return cGroup_3; }
		
		//","
		public Keyword getCommaKeyword_3_0() { return cCommaKeyword_3_0; }
		
		//uris+=STRING
		public Assignment getUrisAssignment_3_1() { return cUrisAssignment_3_1; }
		
		//STRING
		public RuleCall getUrisSTRINGTerminalRuleCall_3_1_0() { return cUrisSTRINGTerminalRuleCall_3_1_0; }
		
		//"}"
		public Keyword getRightCurlyBracketKeyword_4() { return cRightCurlyBracketKeyword_4; }
	}
	public class ElementScopeElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.ElementScope");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cElementsKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Keyword cLeftCurlyBracketKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Assignment cUrisAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final RuleCall cUrisSTRINGTerminalRuleCall_2_0 = (RuleCall)cUrisAssignment_2.eContents().get(0);
		private final Group cGroup_3 = (Group)cGroup.eContents().get(3);
		private final Keyword cCommaKeyword_3_0 = (Keyword)cGroup_3.eContents().get(0);
		private final Assignment cUrisAssignment_3_1 = (Assignment)cGroup_3.eContents().get(1);
		private final RuleCall cUrisSTRINGTerminalRuleCall_3_1_0 = (RuleCall)cUrisAssignment_3_1.eContents().get(0);
		private final Keyword cRightCurlyBracketKeyword_4 = (Keyword)cGroup.eContents().get(4);
		
		//ElementScope:
		//    "elements" "{" uris+=STRING ("," uris+=STRING)* "}"
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//"elements" "{" uris+=STRING ("," uris+=STRING)* "}"
		public Group getGroup() { return cGroup; }
		
		//"elements"
		public Keyword getElementsKeyword_0() { return cElementsKeyword_0; }
		
		//"{"
		public Keyword getLeftCurlyBracketKeyword_1() { return cLeftCurlyBracketKeyword_1; }
		
		//uris+=STRING
		public Assignment getUrisAssignment_2() { return cUrisAssignment_2; }
		
		//STRING
		public RuleCall getUrisSTRINGTerminalRuleCall_2_0() { return cUrisSTRINGTerminalRuleCall_2_0; }
		
		//("," uris+=STRING)*
		public Group getGroup_3() { return cGroup_3; }
		
		//","
		public Keyword getCommaKeyword_3_0() { return cCommaKeyword_3_0; }
		
		//uris+=STRING
		public Assignment getUrisAssignment_3_1() { return cUrisAssignment_3_1; }
		
		//STRING
		public RuleCall getUrisSTRINGTerminalRuleCall_3_1_0() { return cUrisSTRINGTerminalRuleCall_3_1_0; }
		
		//"}"
		public Keyword getRightCurlyBracketKeyword_4() { return cRightCurlyBracketKeyword_4; }
	}
	public class WhereEntryElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.WhereEntry");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final RuleCall cAndWhereEntryParserRuleCall_0 = (RuleCall)cGroup.eContents().get(0);
		private final Group cGroup_1 = (Group)cGroup.eContents().get(1);
		private final Action cOrWhereEntryEntriesAction_1_0 = (Action)cGroup_1.eContents().get(0);
		private final Group cGroup_1_1 = (Group)cGroup_1.eContents().get(1);
		private final Keyword cOrKeyword_1_1_0 = (Keyword)cGroup_1_1.eContents().get(0);
		private final Assignment cEntriesAssignment_1_1_1 = (Assignment)cGroup_1_1.eContents().get(1);
		private final RuleCall cEntriesAndWhereEntryParserRuleCall_1_1_1_0 = (RuleCall)cEntriesAssignment_1_1_1.eContents().get(0);
		
		//WhereEntry returns WhereEntry:
		//    AndWhereEntry ({OrWhereEntry.entries+=current}
		//        ("or" entries+=AndWhereEntry)+)?
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//AndWhereEntry ({OrWhereEntry.entries+=current}
		//    ("or" entries+=AndWhereEntry)+)?
		public Group getGroup() { return cGroup; }
		
		//AndWhereEntry
		public RuleCall getAndWhereEntryParserRuleCall_0() { return cAndWhereEntryParserRuleCall_0; }
		
		//({OrWhereEntry.entries+=current}
		//       ("or" entries+=AndWhereEntry)+)?
		public Group getGroup_1() { return cGroup_1; }
		
		//{OrWhereEntry.entries+=current}
		public Action getOrWhereEntryEntriesAction_1_0() { return cOrWhereEntryEntriesAction_1_0; }
		
		//("or" entries+=AndWhereEntry)+
		public Group getGroup_1_1() { return cGroup_1_1; }
		
		//"or"
		public Keyword getOrKeyword_1_1_0() { return cOrKeyword_1_1_0; }
		
		//entries+=AndWhereEntry
		public Assignment getEntriesAssignment_1_1_1() { return cEntriesAssignment_1_1_1; }
		
		//AndWhereEntry
		public RuleCall getEntriesAndWhereEntryParserRuleCall_1_1_1_0() { return cEntriesAndWhereEntryParserRuleCall_1_1_1_0; }
	}
	public class AndWhereEntryElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.AndWhereEntry");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final RuleCall cConcreteWhereEntryParserRuleCall_0 = (RuleCall)cGroup.eContents().get(0);
		private final Group cGroup_1 = (Group)cGroup.eContents().get(1);
		private final Action cAndWhereEntryEntriesAction_1_0 = (Action)cGroup_1.eContents().get(0);
		private final Group cGroup_1_1 = (Group)cGroup_1.eContents().get(1);
		private final Keyword cAndKeyword_1_1_0 = (Keyword)cGroup_1_1.eContents().get(0);
		private final Assignment cEntriesAssignment_1_1_1 = (Assignment)cGroup_1_1.eContents().get(1);
		private final RuleCall cEntriesConcreteWhereEntryParserRuleCall_1_1_1_0 = (RuleCall)cEntriesAssignment_1_1_1.eContents().get(0);
		
		//AndWhereEntry returns WhereEntry:
		//    ConcreteWhereEntry ({AndWhereEntry.entries+=current}
		//        ("and" entries+=ConcreteWhereEntry)+)?
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//ConcreteWhereEntry ({AndWhereEntry.entries+=current}
		//    ("and" entries+=ConcreteWhereEntry)+)?
		public Group getGroup() { return cGroup; }
		
		//ConcreteWhereEntry
		public RuleCall getConcreteWhereEntryParserRuleCall_0() { return cConcreteWhereEntryParserRuleCall_0; }
		
		//({AndWhereEntry.entries+=current}
		//       ("and" entries+=ConcreteWhereEntry)+)?
		public Group getGroup_1() { return cGroup_1; }
		
		//{AndWhereEntry.entries+=current}
		public Action getAndWhereEntryEntriesAction_1_0() { return cAndWhereEntryEntriesAction_1_0; }
		
		//("and" entries+=ConcreteWhereEntry)+
		public Group getGroup_1_1() { return cGroup_1_1; }
		
		//"and"
		public Keyword getAndKeyword_1_1_0() { return cAndKeyword_1_1_0; }
		
		//entries+=ConcreteWhereEntry
		public Assignment getEntriesAssignment_1_1_1() { return cEntriesAssignment_1_1_1; }
		
		//ConcreteWhereEntry
		public RuleCall getEntriesConcreteWhereEntryParserRuleCall_1_1_1_0() { return cEntriesConcreteWhereEntryParserRuleCall_1_1_1_0; }
	}
	public class ConcreteWhereEntryElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.ConcreteWhereEntry");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final RuleCall cParWhereEntryParserRuleCall_0 = (RuleCall)cAlternatives.eContents().get(0);
		private final RuleCall cAttributeWhereEntryParserRuleCall_1 = (RuleCall)cAlternatives.eContents().get(1);
		private final RuleCall cNullWhereEntryParserRuleCall_2 = (RuleCall)cAlternatives.eContents().get(2);
		private final RuleCall cReferenceAliasWhereEntryParserRuleCall_3 = (RuleCall)cAlternatives.eContents().get(3);
		private final RuleCall cAliasWhereEntryParserRuleCall_4 = (RuleCall)cAlternatives.eContents().get(4);
		private final RuleCall cSubselectWhereEntryParserRuleCall_5 = (RuleCall)cAlternatives.eContents().get(5);
		
		//ConcreteWhereEntry returns WhereEntry:
		//    ParWhereEntry | AttributeWhereEntry | NullWhereEntry | ReferenceAliasWhereEntry | AliasWhereEntry | SubselectWhereEntry
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//ParWhereEntry | AttributeWhereEntry | NullWhereEntry | ReferenceAliasWhereEntry | AliasWhereEntry | SubselectWhereEntry
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//ParWhereEntry
		public RuleCall getParWhereEntryParserRuleCall_0() { return cParWhereEntryParserRuleCall_0; }
		
		//AttributeWhereEntry
		public RuleCall getAttributeWhereEntryParserRuleCall_1() { return cAttributeWhereEntryParserRuleCall_1; }
		
		//NullWhereEntry
		public RuleCall getNullWhereEntryParserRuleCall_2() { return cNullWhereEntryParserRuleCall_2; }
		
		//ReferenceAliasWhereEntry
		public RuleCall getReferenceAliasWhereEntryParserRuleCall_3() { return cReferenceAliasWhereEntryParserRuleCall_3; }
		
		//AliasWhereEntry
		public RuleCall getAliasWhereEntryParserRuleCall_4() { return cAliasWhereEntryParserRuleCall_4; }
		
		//SubselectWhereEntry
		public RuleCall getSubselectWhereEntryParserRuleCall_5() { return cSubselectWhereEntryParserRuleCall_5; }
	}
	public class ParWhereEntryElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.ParWhereEntry");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cLeftParenthesisKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final RuleCall cWhereEntryParserRuleCall_1 = (RuleCall)cGroup.eContents().get(1);
		private final Keyword cRightParenthesisKeyword_2 = (Keyword)cGroup.eContents().get(2);
		
		//ParWhereEntry  returns WhereEntry:
		//    "(" WhereEntry ")"
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//"(" WhereEntry ")"
		public Group getGroup() { return cGroup; }
		
		//"("
		public Keyword getLeftParenthesisKeyword_0() { return cLeftParenthesisKeyword_0; }
		
		//WhereEntry
		public RuleCall getWhereEntryParserRuleCall_1() { return cWhereEntryParserRuleCall_1; }
		
		//")"
		public Keyword getRightParenthesisKeyword_2() { return cRightParenthesisKeyword_2; }
	}
	public class AttributeWhereEntryElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.AttributeWhereEntry");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final RuleCall cNumericAttributeWhereEntryParserRuleCall_0 = (RuleCall)cAlternatives.eContents().get(0);
		private final RuleCall cStringAttributeWhereEntryParserRuleCall_1 = (RuleCall)cAlternatives.eContents().get(1);
		private final RuleCall cBooleanAttributeWhereEntryParserRuleCall_2 = (RuleCall)cAlternatives.eContents().get(2);
		private final RuleCall cVariableWhereEntryParserRuleCall_3 = (RuleCall)cAlternatives.eContents().get(3);
		
		//AttributeWhereEntry:
		//    NumericAttributeWhereEntry | StringAttributeWhereEntry | BooleanAttributeWhereEntry | VariableWhereEntry
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//NumericAttributeWhereEntry | StringAttributeWhereEntry | BooleanAttributeWhereEntry | VariableWhereEntry
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//NumericAttributeWhereEntry
		public RuleCall getNumericAttributeWhereEntryParserRuleCall_0() { return cNumericAttributeWhereEntryParserRuleCall_0; }
		
		//StringAttributeWhereEntry
		public RuleCall getStringAttributeWhereEntryParserRuleCall_1() { return cStringAttributeWhereEntryParserRuleCall_1; }
		
		//BooleanAttributeWhereEntry
		public RuleCall getBooleanAttributeWhereEntryParserRuleCall_2() { return cBooleanAttributeWhereEntryParserRuleCall_2; }
		
		//VariableWhereEntry
		public RuleCall getVariableWhereEntryParserRuleCall_3() { return cVariableWhereEntryParserRuleCall_3; }
	}
	public class NumericAttributeWhereEntryElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.NumericAttributeWhereEntry");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final RuleCall cDoubleWhereEntryParserRuleCall_0 = (RuleCall)cAlternatives.eContents().get(0);
		private final RuleCall cLongWhereEntryParserRuleCall_1 = (RuleCall)cAlternatives.eContents().get(1);
		
		//NumericAttributeWhereEntry:
		//    DoubleWhereEntry | LongWhereEntry
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//DoubleWhereEntry | LongWhereEntry
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//DoubleWhereEntry
		public RuleCall getDoubleWhereEntryParserRuleCall_0() { return cDoubleWhereEntryParserRuleCall_0; }
		
		//LongWhereEntry
		public RuleCall getLongWhereEntryParserRuleCall_1() { return cLongWhereEntryParserRuleCall_1; }
	}
	public class DoubleWhereEntryElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.DoubleWhereEntry");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cAliasAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final CrossReference cAliasFromEntryCrossReference_0_0 = (CrossReference)cAliasAssignment_0.eContents().get(0);
		private final RuleCall cAliasFromEntryIDTerminalRuleCall_0_0_1 = (RuleCall)cAliasFromEntryCrossReference_0_0.eContents().get(1);
		private final Keyword cFullStopKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Assignment cAttributeAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final CrossReference cAttributeEAttributeCrossReference_2_0 = (CrossReference)cAttributeAssignment_2.eContents().get(0);
		private final RuleCall cAttributeEAttributeIDTerminalRuleCall_2_0_1 = (RuleCall)cAttributeEAttributeCrossReference_2_0.eContents().get(1);
		private final Assignment cOperatorAssignment_3 = (Assignment)cGroup.eContents().get(3);
		private final RuleCall cOperatorNumericOperatorEnumRuleCall_3_0 = (RuleCall)cOperatorAssignment_3.eContents().get(0);
		private final Assignment cValueAssignment_4 = (Assignment)cGroup.eContents().get(4);
		private final RuleCall cValueSIGNED_DOUBLETerminalRuleCall_4_0 = (RuleCall)cValueAssignment_4.eContents().get(0);
		
		//DoubleWhereEntry:
		//    alias=[FromEntry] "." attribute=[ecore::EAttribute] operator=NumericOperator value=SIGNED_DOUBLE
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//alias=[FromEntry] "." attribute=[ecore::EAttribute] operator=NumericOperator value=SIGNED_DOUBLE
		public Group getGroup() { return cGroup; }
		
		//alias=[FromEntry]
		public Assignment getAliasAssignment_0() { return cAliasAssignment_0; }
		
		//[FromEntry]
		public CrossReference getAliasFromEntryCrossReference_0_0() { return cAliasFromEntryCrossReference_0_0; }
		
		//ID
		public RuleCall getAliasFromEntryIDTerminalRuleCall_0_0_1() { return cAliasFromEntryIDTerminalRuleCall_0_0_1; }
		
		//"."
		public Keyword getFullStopKeyword_1() { return cFullStopKeyword_1; }
		
		//attribute=[ecore::EAttribute]
		public Assignment getAttributeAssignment_2() { return cAttributeAssignment_2; }
		
		//[ecore::EAttribute]
		public CrossReference getAttributeEAttributeCrossReference_2_0() { return cAttributeEAttributeCrossReference_2_0; }
		
		//ID
		public RuleCall getAttributeEAttributeIDTerminalRuleCall_2_0_1() { return cAttributeEAttributeIDTerminalRuleCall_2_0_1; }
		
		//operator=NumericOperator
		public Assignment getOperatorAssignment_3() { return cOperatorAssignment_3; }
		
		//NumericOperator
		public RuleCall getOperatorNumericOperatorEnumRuleCall_3_0() { return cOperatorNumericOperatorEnumRuleCall_3_0; }
		
		//value=SIGNED_DOUBLE
		public Assignment getValueAssignment_4() { return cValueAssignment_4; }
		
		//SIGNED_DOUBLE
		public RuleCall getValueSIGNED_DOUBLETerminalRuleCall_4_0() { return cValueSIGNED_DOUBLETerminalRuleCall_4_0; }
	}
	public class LongWhereEntryElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.LongWhereEntry");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cAliasAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final CrossReference cAliasFromEntryCrossReference_0_0 = (CrossReference)cAliasAssignment_0.eContents().get(0);
		private final RuleCall cAliasFromEntryIDTerminalRuleCall_0_0_1 = (RuleCall)cAliasFromEntryCrossReference_0_0.eContents().get(1);
		private final Keyword cFullStopKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Assignment cAttributeAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final CrossReference cAttributeEAttributeCrossReference_2_0 = (CrossReference)cAttributeAssignment_2.eContents().get(0);
		private final RuleCall cAttributeEAttributeIDTerminalRuleCall_2_0_1 = (RuleCall)cAttributeEAttributeCrossReference_2_0.eContents().get(1);
		private final Assignment cOperatorAssignment_3 = (Assignment)cGroup.eContents().get(3);
		private final RuleCall cOperatorNumericOperatorEnumRuleCall_3_0 = (RuleCall)cOperatorAssignment_3.eContents().get(0);
		private final Assignment cValueAssignment_4 = (Assignment)cGroup.eContents().get(4);
		private final RuleCall cValueSINGED_LONGTerminalRuleCall_4_0 = (RuleCall)cValueAssignment_4.eContents().get(0);
		
		//LongWhereEntry:
		//    alias=[FromEntry] "." attribute=[ecore::EAttribute] operator=NumericOperator value=SINGED_LONG
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//alias=[FromEntry] "." attribute=[ecore::EAttribute] operator=NumericOperator value=SINGED_LONG
		public Group getGroup() { return cGroup; }
		
		//alias=[FromEntry]
		public Assignment getAliasAssignment_0() { return cAliasAssignment_0; }
		
		//[FromEntry]
		public CrossReference getAliasFromEntryCrossReference_0_0() { return cAliasFromEntryCrossReference_0_0; }
		
		//ID
		public RuleCall getAliasFromEntryIDTerminalRuleCall_0_0_1() { return cAliasFromEntryIDTerminalRuleCall_0_0_1; }
		
		//"."
		public Keyword getFullStopKeyword_1() { return cFullStopKeyword_1; }
		
		//attribute=[ecore::EAttribute]
		public Assignment getAttributeAssignment_2() { return cAttributeAssignment_2; }
		
		//[ecore::EAttribute]
		public CrossReference getAttributeEAttributeCrossReference_2_0() { return cAttributeEAttributeCrossReference_2_0; }
		
		//ID
		public RuleCall getAttributeEAttributeIDTerminalRuleCall_2_0_1() { return cAttributeEAttributeIDTerminalRuleCall_2_0_1; }
		
		//operator=NumericOperator
		public Assignment getOperatorAssignment_3() { return cOperatorAssignment_3; }
		
		//NumericOperator
		public RuleCall getOperatorNumericOperatorEnumRuleCall_3_0() { return cOperatorNumericOperatorEnumRuleCall_3_0; }
		
		//value=SINGED_LONG
		public Assignment getValueAssignment_4() { return cValueAssignment_4; }
		
		//SINGED_LONG
		public RuleCall getValueSINGED_LONGTerminalRuleCall_4_0() { return cValueSINGED_LONGTerminalRuleCall_4_0; }
	}
	public class VariableWhereEntryElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.VariableWhereEntry");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cAliasAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final CrossReference cAliasFromEntryCrossReference_0_0 = (CrossReference)cAliasAssignment_0.eContents().get(0);
		private final RuleCall cAliasFromEntryIDTerminalRuleCall_0_0_1 = (RuleCall)cAliasFromEntryCrossReference_0_0.eContents().get(1);
		private final Keyword cFullStopKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Assignment cAttributeAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final CrossReference cAttributeEAttributeCrossReference_2_0 = (CrossReference)cAttributeAssignment_2.eContents().get(0);
		private final RuleCall cAttributeEAttributeIDTerminalRuleCall_2_0_1 = (RuleCall)cAttributeEAttributeCrossReference_2_0.eContents().get(1);
		private final Assignment cOperatorAssignment_3 = (Assignment)cGroup.eContents().get(3);
		private final RuleCall cOperatorNumericOperatorEnumRuleCall_3_0 = (RuleCall)cOperatorAssignment_3.eContents().get(0);
		private final Assignment cRightAliasAssignment_4 = (Assignment)cGroup.eContents().get(4);
		private final CrossReference cRightAliasFromEntryCrossReference_4_0 = (CrossReference)cRightAliasAssignment_4.eContents().get(0);
		private final RuleCall cRightAliasFromEntryIDTerminalRuleCall_4_0_1 = (RuleCall)cRightAliasFromEntryCrossReference_4_0.eContents().get(1);
		private final Keyword cFullStopKeyword_5 = (Keyword)cGroup.eContents().get(5);
		private final Assignment cRightAttributeAssignment_6 = (Assignment)cGroup.eContents().get(6);
		private final CrossReference cRightAttributeEAttributeCrossReference_6_0 = (CrossReference)cRightAttributeAssignment_6.eContents().get(0);
		private final RuleCall cRightAttributeEAttributeIDTerminalRuleCall_6_0_1 = (RuleCall)cRightAttributeEAttributeCrossReference_6_0.eContents().get(1);
		
		//VariableWhereEntry:
		//    alias=[FromEntry] "." attribute=[ecore::EAttribute] operator=NumericOperator rightAlias=[FromEntry]"." rightAttribute=[ecore::EAttribute]
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//alias=[FromEntry] "." attribute=[ecore::EAttribute] operator=NumericOperator rightAlias=[FromEntry]"." rightAttribute=[ecore::EAttribute]
		public Group getGroup() { return cGroup; }
		
		//alias=[FromEntry]
		public Assignment getAliasAssignment_0() { return cAliasAssignment_0; }
		
		//[FromEntry]
		public CrossReference getAliasFromEntryCrossReference_0_0() { return cAliasFromEntryCrossReference_0_0; }
		
		//ID
		public RuleCall getAliasFromEntryIDTerminalRuleCall_0_0_1() { return cAliasFromEntryIDTerminalRuleCall_0_0_1; }
		
		//"."
		public Keyword getFullStopKeyword_1() { return cFullStopKeyword_1; }
		
		//attribute=[ecore::EAttribute]
		public Assignment getAttributeAssignment_2() { return cAttributeAssignment_2; }
		
		//[ecore::EAttribute]
		public CrossReference getAttributeEAttributeCrossReference_2_0() { return cAttributeEAttributeCrossReference_2_0; }
		
		//ID
		public RuleCall getAttributeEAttributeIDTerminalRuleCall_2_0_1() { return cAttributeEAttributeIDTerminalRuleCall_2_0_1; }
		
		//operator=NumericOperator
		public Assignment getOperatorAssignment_3() { return cOperatorAssignment_3; }
		
		//NumericOperator
		public RuleCall getOperatorNumericOperatorEnumRuleCall_3_0() { return cOperatorNumericOperatorEnumRuleCall_3_0; }
		
		//rightAlias=[FromEntry]
		public Assignment getRightAliasAssignment_4() { return cRightAliasAssignment_4; }
		
		//[FromEntry]
		public CrossReference getRightAliasFromEntryCrossReference_4_0() { return cRightAliasFromEntryCrossReference_4_0; }
		
		//ID
		public RuleCall getRightAliasFromEntryIDTerminalRuleCall_4_0_1() { return cRightAliasFromEntryIDTerminalRuleCall_4_0_1; }
		
		//"."
		public Keyword getFullStopKeyword_5() { return cFullStopKeyword_5; }
		
		//rightAttribute=[ecore::EAttribute]
		public Assignment getRightAttributeAssignment_6() { return cRightAttributeAssignment_6; }
		
		//[ecore::EAttribute]
		public CrossReference getRightAttributeEAttributeCrossReference_6_0() { return cRightAttributeEAttributeCrossReference_6_0; }
		
		//ID
		public RuleCall getRightAttributeEAttributeIDTerminalRuleCall_6_0_1() { return cRightAttributeEAttributeIDTerminalRuleCall_6_0_1; }
	}
	public class StringAttributeWhereEntryElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.StringAttributeWhereEntry");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cAliasAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final CrossReference cAliasFromEntryCrossReference_0_0 = (CrossReference)cAliasAssignment_0.eContents().get(0);
		private final RuleCall cAliasFromEntryIDTerminalRuleCall_0_0_1 = (RuleCall)cAliasFromEntryCrossReference_0_0.eContents().get(1);
		private final Keyword cFullStopKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Assignment cAttributeAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final CrossReference cAttributeEAttributeCrossReference_2_0 = (CrossReference)cAttributeAssignment_2.eContents().get(0);
		private final RuleCall cAttributeEAttributeIDTerminalRuleCall_2_0_1 = (RuleCall)cAttributeEAttributeCrossReference_2_0.eContents().get(1);
		private final Assignment cOperatorAssignment_3 = (Assignment)cGroup.eContents().get(3);
		private final RuleCall cOperatorStringOperatorEnumRuleCall_3_0 = (RuleCall)cOperatorAssignment_3.eContents().get(0);
		private final Assignment cPatternAssignment_4 = (Assignment)cGroup.eContents().get(4);
		private final RuleCall cPatternSTRINGTerminalRuleCall_4_0 = (RuleCall)cPatternAssignment_4.eContents().get(0);
		
		//StringAttributeWhereEntry:
		//    alias=[FromEntry] "." attribute=[ecore::EAttribute] operator=StringOperator pattern=STRING
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//alias=[FromEntry] "." attribute=[ecore::EAttribute] operator=StringOperator pattern=STRING
		public Group getGroup() { return cGroup; }
		
		//alias=[FromEntry]
		public Assignment getAliasAssignment_0() { return cAliasAssignment_0; }
		
		//[FromEntry]
		public CrossReference getAliasFromEntryCrossReference_0_0() { return cAliasFromEntryCrossReference_0_0; }
		
		//ID
		public RuleCall getAliasFromEntryIDTerminalRuleCall_0_0_1() { return cAliasFromEntryIDTerminalRuleCall_0_0_1; }
		
		//"."
		public Keyword getFullStopKeyword_1() { return cFullStopKeyword_1; }
		
		//attribute=[ecore::EAttribute]
		public Assignment getAttributeAssignment_2() { return cAttributeAssignment_2; }
		
		//[ecore::EAttribute]
		public CrossReference getAttributeEAttributeCrossReference_2_0() { return cAttributeEAttributeCrossReference_2_0; }
		
		//ID
		public RuleCall getAttributeEAttributeIDTerminalRuleCall_2_0_1() { return cAttributeEAttributeIDTerminalRuleCall_2_0_1; }
		
		//operator=StringOperator
		public Assignment getOperatorAssignment_3() { return cOperatorAssignment_3; }
		
		//StringOperator
		public RuleCall getOperatorStringOperatorEnumRuleCall_3_0() { return cOperatorStringOperatorEnumRuleCall_3_0; }
		
		//pattern=STRING
		public Assignment getPatternAssignment_4() { return cPatternAssignment_4; }
		
		//STRING
		public RuleCall getPatternSTRINGTerminalRuleCall_4_0() { return cPatternSTRINGTerminalRuleCall_4_0; }
	}
	public class BooleanAttributeWhereEntryElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.BooleanAttributeWhereEntry");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cAliasAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final CrossReference cAliasFromEntryCrossReference_0_0 = (CrossReference)cAliasAssignment_0.eContents().get(0);
		private final RuleCall cAliasFromEntryIDTerminalRuleCall_0_0_1 = (RuleCall)cAliasFromEntryCrossReference_0_0.eContents().get(1);
		private final Keyword cFullStopKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Assignment cAttributeAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final CrossReference cAttributeEAttributeCrossReference_2_0 = (CrossReference)cAttributeAssignment_2.eContents().get(0);
		private final RuleCall cAttributeEAttributeIDTerminalRuleCall_2_0_1 = (RuleCall)cAttributeEAttributeCrossReference_2_0.eContents().get(1);
		private final Assignment cOperatorAssignment_3 = (Assignment)cGroup.eContents().get(3);
		private final RuleCall cOperatorBooleanOperatorEnumRuleCall_3_0 = (RuleCall)cOperatorAssignment_3.eContents().get(0);
		private final Alternatives cAlternatives_4 = (Alternatives)cGroup.eContents().get(4);
		private final Assignment cIsTrueAssignment_4_0 = (Assignment)cAlternatives_4.eContents().get(0);
		private final Keyword cIsTrueTrueKeyword_4_0_0 = (Keyword)cIsTrueAssignment_4_0.eContents().get(0);
		private final Keyword cFalseKeyword_4_1 = (Keyword)cAlternatives_4.eContents().get(1);
		
		//BooleanAttributeWhereEntry:
		//    alias=[FromEntry] "." attribute=[ecore::EAttribute] operator=BooleanOperator (isTrue?="true" | "false")
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//alias=[FromEntry] "." attribute=[ecore::EAttribute] operator=BooleanOperator (isTrue?="true" | "false")
		public Group getGroup() { return cGroup; }
		
		//alias=[FromEntry]
		public Assignment getAliasAssignment_0() { return cAliasAssignment_0; }
		
		//[FromEntry]
		public CrossReference getAliasFromEntryCrossReference_0_0() { return cAliasFromEntryCrossReference_0_0; }
		
		//ID
		public RuleCall getAliasFromEntryIDTerminalRuleCall_0_0_1() { return cAliasFromEntryIDTerminalRuleCall_0_0_1; }
		
		//"."
		public Keyword getFullStopKeyword_1() { return cFullStopKeyword_1; }
		
		//attribute=[ecore::EAttribute]
		public Assignment getAttributeAssignment_2() { return cAttributeAssignment_2; }
		
		//[ecore::EAttribute]
		public CrossReference getAttributeEAttributeCrossReference_2_0() { return cAttributeEAttributeCrossReference_2_0; }
		
		//ID
		public RuleCall getAttributeEAttributeIDTerminalRuleCall_2_0_1() { return cAttributeEAttributeIDTerminalRuleCall_2_0_1; }
		
		//operator=BooleanOperator
		public Assignment getOperatorAssignment_3() { return cOperatorAssignment_3; }
		
		//BooleanOperator
		public RuleCall getOperatorBooleanOperatorEnumRuleCall_3_0() { return cOperatorBooleanOperatorEnumRuleCall_3_0; }
		
		//(isTrue?="true" | "false")
		public Alternatives getAlternatives_4() { return cAlternatives_4; }
		
		//isTrue?="true"
		public Assignment getIsTrueAssignment_4_0() { return cIsTrueAssignment_4_0; }
		
		//"true"
		public Keyword getIsTrueTrueKeyword_4_0_0() { return cIsTrueTrueKeyword_4_0_0; }
		
		//"false"
		public Keyword getFalseKeyword_4_1() { return cFalseKeyword_4_1; }
	}
	public class NullWhereEntryElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.NullWhereEntry");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cAliasAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final CrossReference cAliasFromEntryCrossReference_0_0 = (CrossReference)cAliasAssignment_0.eContents().get(0);
		private final RuleCall cAliasFromEntryIDTerminalRuleCall_0_0_1 = (RuleCall)cAliasFromEntryCrossReference_0_0.eContents().get(1);
		private final Keyword cFullStopKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Assignment cFeatureAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final CrossReference cFeatureEStructuralFeatureCrossReference_2_0 = (CrossReference)cFeatureAssignment_2.eContents().get(0);
		private final RuleCall cFeatureEStructuralFeatureIDTerminalRuleCall_2_0_1 = (RuleCall)cFeatureEStructuralFeatureCrossReference_2_0.eContents().get(1);
		private final Assignment cOperatorAssignment_3 = (Assignment)cGroup.eContents().get(3);
		private final RuleCall cOperatorBooleanOperatorEnumRuleCall_3_0 = (RuleCall)cOperatorAssignment_3.eContents().get(0);
		private final Keyword cNullKeyword_4 = (Keyword)cGroup.eContents().get(4);
		
		//NullWhereEntry:
		//    alias=[FromEntry] "." feature=[ecore::EStructuralFeature] operator=BooleanOperator "null"
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//alias=[FromEntry] "." feature=[ecore::EStructuralFeature] operator=BooleanOperator "null"
		public Group getGroup() { return cGroup; }
		
		//alias=[FromEntry]
		public Assignment getAliasAssignment_0() { return cAliasAssignment_0; }
		
		//[FromEntry]
		public CrossReference getAliasFromEntryCrossReference_0_0() { return cAliasFromEntryCrossReference_0_0; }
		
		//ID
		public RuleCall getAliasFromEntryIDTerminalRuleCall_0_0_1() { return cAliasFromEntryIDTerminalRuleCall_0_0_1; }
		
		//"."
		public Keyword getFullStopKeyword_1() { return cFullStopKeyword_1; }
		
		//feature=[ecore::EStructuralFeature]
		public Assignment getFeatureAssignment_2() { return cFeatureAssignment_2; }
		
		//[ecore::EStructuralFeature]
		public CrossReference getFeatureEStructuralFeatureCrossReference_2_0() { return cFeatureEStructuralFeatureCrossReference_2_0; }
		
		//ID
		public RuleCall getFeatureEStructuralFeatureIDTerminalRuleCall_2_0_1() { return cFeatureEStructuralFeatureIDTerminalRuleCall_2_0_1; }
		
		//operator=BooleanOperator
		public Assignment getOperatorAssignment_3() { return cOperatorAssignment_3; }
		
		//BooleanOperator
		public RuleCall getOperatorBooleanOperatorEnumRuleCall_3_0() { return cOperatorBooleanOperatorEnumRuleCall_3_0; }
		
		//"null"
		public Keyword getNullKeyword_4() { return cNullKeyword_4; }
	}
	public class ReferenceAliasWhereEntryElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.ReferenceAliasWhereEntry");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cAliasAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final CrossReference cAliasFromEntryCrossReference_0_0 = (CrossReference)cAliasAssignment_0.eContents().get(0);
		private final RuleCall cAliasFromEntryIDTerminalRuleCall_0_0_1 = (RuleCall)cAliasFromEntryCrossReference_0_0.eContents().get(1);
		private final Keyword cFullStopKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Assignment cReferenceAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final CrossReference cReferenceEReferenceCrossReference_2_0 = (CrossReference)cReferenceAssignment_2.eContents().get(0);
		private final RuleCall cReferenceEReferenceIDTerminalRuleCall_2_0_1 = (RuleCall)cReferenceEReferenceCrossReference_2_0.eContents().get(1);
		private final Keyword cEqualsSignKeyword_3 = (Keyword)cGroup.eContents().get(3);
		private final Assignment cRightAliasAssignment_4 = (Assignment)cGroup.eContents().get(4);
		private final CrossReference cRightAliasFromEntryCrossReference_4_0 = (CrossReference)cRightAliasAssignment_4.eContents().get(0);
		private final RuleCall cRightAliasFromEntryIDTerminalRuleCall_4_0_1 = (RuleCall)cRightAliasFromEntryCrossReference_4_0.eContents().get(1);
		
		//ReferenceAliasWhereEntry:
		//    alias=[FromEntry] "." reference=[ecore::EReference] "=" rightAlias=[FromEntry]
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//alias=[FromEntry] "." reference=[ecore::EReference] "=" rightAlias=[FromEntry]
		public Group getGroup() { return cGroup; }
		
		//alias=[FromEntry]
		public Assignment getAliasAssignment_0() { return cAliasAssignment_0; }
		
		//[FromEntry]
		public CrossReference getAliasFromEntryCrossReference_0_0() { return cAliasFromEntryCrossReference_0_0; }
		
		//ID
		public RuleCall getAliasFromEntryIDTerminalRuleCall_0_0_1() { return cAliasFromEntryIDTerminalRuleCall_0_0_1; }
		
		//"."
		public Keyword getFullStopKeyword_1() { return cFullStopKeyword_1; }
		
		//reference=[ecore::EReference]
		public Assignment getReferenceAssignment_2() { return cReferenceAssignment_2; }
		
		//[ecore::EReference]
		public CrossReference getReferenceEReferenceCrossReference_2_0() { return cReferenceEReferenceCrossReference_2_0; }
		
		//ID
		public RuleCall getReferenceEReferenceIDTerminalRuleCall_2_0_1() { return cReferenceEReferenceIDTerminalRuleCall_2_0_1; }
		
		//"="
		public Keyword getEqualsSignKeyword_3() { return cEqualsSignKeyword_3; }
		
		//rightAlias=[FromEntry]
		public Assignment getRightAliasAssignment_4() { return cRightAliasAssignment_4; }
		
		//[FromEntry]
		public CrossReference getRightAliasFromEntryCrossReference_4_0() { return cRightAliasFromEntryCrossReference_4_0; }
		
		//ID
		public RuleCall getRightAliasFromEntryIDTerminalRuleCall_4_0_1() { return cRightAliasFromEntryIDTerminalRuleCall_4_0_1; }
	}
	public class SubselectWhereEntryElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.SubselectWhereEntry");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cAliasAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final CrossReference cAliasFromEntryCrossReference_0_0 = (CrossReference)cAliasAssignment_0.eContents().get(0);
		private final RuleCall cAliasFromEntryIDTerminalRuleCall_0_0_1 = (RuleCall)cAliasFromEntryCrossReference_0_0.eContents().get(1);
		private final Keyword cFullStopKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Assignment cReferenceAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final CrossReference cReferenceEReferenceCrossReference_2_0 = (CrossReference)cReferenceAssignment_2.eContents().get(0);
		private final RuleCall cReferenceEReferenceIDTerminalRuleCall_2_0_1 = (RuleCall)cReferenceEReferenceCrossReference_2_0.eContents().get(1);
		private final Assignment cNotInAssignment_3 = (Assignment)cGroup.eContents().get(3);
		private final Keyword cNotInNotKeyword_3_0 = (Keyword)cNotInAssignment_3.eContents().get(0);
		private final Keyword cInKeyword_4 = (Keyword)cGroup.eContents().get(4);
		private final Keyword cLeftParenthesisKeyword_5 = (Keyword)cGroup.eContents().get(5);
		private final Assignment cSubQueryAssignment_6 = (Assignment)cGroup.eContents().get(6);
		private final RuleCall cSubQueryMQLqueryParserRuleCall_6_0 = (RuleCall)cSubQueryAssignment_6.eContents().get(0);
		private final Keyword cRightParenthesisKeyword_7 = (Keyword)cGroup.eContents().get(7);
		
		//SubselectWhereEntry:
		//    alias=[FromEntry] "." reference=[ecore::EReference] (notIn?="not")? "in" "("subQuery=MQLquery")"
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//alias=[FromEntry] "." reference=[ecore::EReference] (notIn?="not")? "in" "("subQuery=MQLquery")"
		public Group getGroup() { return cGroup; }
		
		//alias=[FromEntry]
		public Assignment getAliasAssignment_0() { return cAliasAssignment_0; }
		
		//[FromEntry]
		public CrossReference getAliasFromEntryCrossReference_0_0() { return cAliasFromEntryCrossReference_0_0; }
		
		//ID
		public RuleCall getAliasFromEntryIDTerminalRuleCall_0_0_1() { return cAliasFromEntryIDTerminalRuleCall_0_0_1; }
		
		//"."
		public Keyword getFullStopKeyword_1() { return cFullStopKeyword_1; }
		
		//reference=[ecore::EReference]
		public Assignment getReferenceAssignment_2() { return cReferenceAssignment_2; }
		
		//[ecore::EReference]
		public CrossReference getReferenceEReferenceCrossReference_2_0() { return cReferenceEReferenceCrossReference_2_0; }
		
		//ID
		public RuleCall getReferenceEReferenceIDTerminalRuleCall_2_0_1() { return cReferenceEReferenceIDTerminalRuleCall_2_0_1; }
		
		//(notIn?="not")?
		public Assignment getNotInAssignment_3() { return cNotInAssignment_3; }
		
		//"not"
		public Keyword getNotInNotKeyword_3_0() { return cNotInNotKeyword_3_0; }
		
		//"in"
		public Keyword getInKeyword_4() { return cInKeyword_4; }
		
		//"("
		public Keyword getLeftParenthesisKeyword_5() { return cLeftParenthesisKeyword_5; }
		
		//subQuery=MQLquery
		public Assignment getSubQueryAssignment_6() { return cSubQueryAssignment_6; }
		
		//MQLquery
		public RuleCall getSubQueryMQLqueryParserRuleCall_6_0() { return cSubQueryMQLqueryParserRuleCall_6_0; }
		
		//")"
		public Keyword getRightParenthesisKeyword_7() { return cRightParenthesisKeyword_7; }
	}
	public class AliasWhereEntryElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.AliasWhereEntry");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cAliasAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final CrossReference cAliasFromEntryCrossReference_0_0 = (CrossReference)cAliasAssignment_0.eContents().get(0);
		private final RuleCall cAliasFromEntryIDTerminalRuleCall_0_0_1 = (RuleCall)cAliasFromEntryCrossReference_0_0.eContents().get(1);
		private final Keyword cEqualsSignKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Assignment cRightAliasAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final CrossReference cRightAliasFromEntryCrossReference_2_0 = (CrossReference)cRightAliasAssignment_2.eContents().get(0);
		private final RuleCall cRightAliasFromEntryIDTerminalRuleCall_2_0_1 = (RuleCall)cRightAliasFromEntryCrossReference_2_0.eContents().get(1);
		
		//AliasWhereEntry:
		//    alias=[FromEntry] "=" rightAlias=[FromEntry]
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//alias=[FromEntry] "=" rightAlias=[FromEntry]
		public Group getGroup() { return cGroup; }
		
		//alias=[FromEntry]
		public Assignment getAliasAssignment_0() { return cAliasAssignment_0; }
		
		//[FromEntry]
		public CrossReference getAliasFromEntryCrossReference_0_0() { return cAliasFromEntryCrossReference_0_0; }
		
		//ID
		public RuleCall getAliasFromEntryIDTerminalRuleCall_0_0_1() { return cAliasFromEntryIDTerminalRuleCall_0_0_1; }
		
		//"="
		public Keyword getEqualsSignKeyword_1() { return cEqualsSignKeyword_1; }
		
		//rightAlias=[FromEntry]
		public Assignment getRightAliasAssignment_2() { return cRightAliasAssignment_2; }
		
		//[FromEntry]
		public CrossReference getRightAliasFromEntryCrossReference_2_0() { return cRightAliasFromEntryCrossReference_2_0; }
		
		//ID
		public RuleCall getRightAliasFromEntryIDTerminalRuleCall_2_0_1() { return cRightAliasFromEntryIDTerminalRuleCall_2_0_1; }
	}
	
	public class NumericOperatorElements extends AbstractElementFinder.AbstractEnumRuleElementFinder {
		private final EnumRule rule = (EnumRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.NumericOperator");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final EnumLiteralDeclaration cLessThenEnumLiteralDeclaration_0 = (EnumLiteralDeclaration)cAlternatives.eContents().get(0);
		private final Keyword cLessThenLessThanSignKeyword_0_0 = (Keyword)cLessThenEnumLiteralDeclaration_0.eContents().get(0);
		private final EnumLiteralDeclaration cGreaterThenEnumLiteralDeclaration_1 = (EnumLiteralDeclaration)cAlternatives.eContents().get(1);
		private final Keyword cGreaterThenGreaterThanSignKeyword_1_0 = (Keyword)cGreaterThenEnumLiteralDeclaration_1.eContents().get(0);
		private final EnumLiteralDeclaration cLessEqualEnumLiteralDeclaration_2 = (EnumLiteralDeclaration)cAlternatives.eContents().get(2);
		private final Keyword cLessEqualLessThanSignEqualsSignKeyword_2_0 = (Keyword)cLessEqualEnumLiteralDeclaration_2.eContents().get(0);
		private final EnumLiteralDeclaration cGreaterEqualEnumLiteralDeclaration_3 = (EnumLiteralDeclaration)cAlternatives.eContents().get(3);
		private final Keyword cGreaterEqualGreaterThanSignEqualsSignKeyword_3_0 = (Keyword)cGreaterEqualEnumLiteralDeclaration_3.eContents().get(0);
		private final EnumLiteralDeclaration cEqualEnumLiteralDeclaration_4 = (EnumLiteralDeclaration)cAlternatives.eContents().get(4);
		private final Keyword cEqualEqualsSignKeyword_4_0 = (Keyword)cEqualEnumLiteralDeclaration_4.eContents().get(0);
		private final EnumLiteralDeclaration cNotEqualEnumLiteralDeclaration_5 = (EnumLiteralDeclaration)cAlternatives.eContents().get(5);
		private final Keyword cNotEqualExclamationMarkEqualsSignKeyword_5_0 = (Keyword)cNotEqualEnumLiteralDeclaration_5.eContents().get(0);
		
		//enum NumericOperator:
		//    lessThen="<" | greaterThen=">" | lessEqual="<=" | greaterEqual=">=" | equal="=" | notEqual="!="
		//;
		public EnumRule getRule() { return rule; }
		
		//lessThen="<" | greaterThen=">" | lessEqual="<=" | greaterEqual=">=" | equal="=" | notEqual="!="
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//lessThen="<"
		public EnumLiteralDeclaration getLessThenEnumLiteralDeclaration_0() { return cLessThenEnumLiteralDeclaration_0; }
		
		//"<"
		public Keyword getLessThenLessThanSignKeyword_0_0() { return cLessThenLessThanSignKeyword_0_0; }
		
		//greaterThen=">"
		public EnumLiteralDeclaration getGreaterThenEnumLiteralDeclaration_1() { return cGreaterThenEnumLiteralDeclaration_1; }
		
		//">"
		public Keyword getGreaterThenGreaterThanSignKeyword_1_0() { return cGreaterThenGreaterThanSignKeyword_1_0; }
		
		//lessEqual="<="
		public EnumLiteralDeclaration getLessEqualEnumLiteralDeclaration_2() { return cLessEqualEnumLiteralDeclaration_2; }
		
		//"<="
		public Keyword getLessEqualLessThanSignEqualsSignKeyword_2_0() { return cLessEqualLessThanSignEqualsSignKeyword_2_0; }
		
		//greaterEqual=">="
		public EnumLiteralDeclaration getGreaterEqualEnumLiteralDeclaration_3() { return cGreaterEqualEnumLiteralDeclaration_3; }
		
		//">="
		public Keyword getGreaterEqualGreaterThanSignEqualsSignKeyword_3_0() { return cGreaterEqualGreaterThanSignEqualsSignKeyword_3_0; }
		
		//equal="="
		public EnumLiteralDeclaration getEqualEnumLiteralDeclaration_4() { return cEqualEnumLiteralDeclaration_4; }
		
		//"="
		public Keyword getEqualEqualsSignKeyword_4_0() { return cEqualEqualsSignKeyword_4_0; }
		
		//notEqual="!="
		public EnumLiteralDeclaration getNotEqualEnumLiteralDeclaration_5() { return cNotEqualEnumLiteralDeclaration_5; }
		
		//"!="
		public Keyword getNotEqualExclamationMarkEqualsSignKeyword_5_0() { return cNotEqualExclamationMarkEqualsSignKeyword_5_0; }
	}
	public class StringOperatorElements extends AbstractElementFinder.AbstractEnumRuleElementFinder {
		private final EnumRule rule = (EnumRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.StringOperator");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final EnumLiteralDeclaration cEqualEnumLiteralDeclaration_0 = (EnumLiteralDeclaration)cAlternatives.eContents().get(0);
		private final Keyword cEqualEqualsSignKeyword_0_0 = (Keyword)cEqualEnumLiteralDeclaration_0.eContents().get(0);
		private final EnumLiteralDeclaration cNotEqualEnumLiteralDeclaration_1 = (EnumLiteralDeclaration)cAlternatives.eContents().get(1);
		private final Keyword cNotEqualExclamationMarkEqualsSignKeyword_1_0 = (Keyword)cNotEqualEnumLiteralDeclaration_1.eContents().get(0);
		private final EnumLiteralDeclaration cLikeEnumLiteralDeclaration_2 = (EnumLiteralDeclaration)cAlternatives.eContents().get(2);
		private final Keyword cLikeLikeKeyword_2_0 = (Keyword)cLikeEnumLiteralDeclaration_2.eContents().get(0);
		private final EnumLiteralDeclaration cNotLikeEnumLiteralDeclaration_3 = (EnumLiteralDeclaration)cAlternatives.eContents().get(3);
		private final Keyword cNotLikeNotlikeKeyword_3_0 = (Keyword)cNotLikeEnumLiteralDeclaration_3.eContents().get(0);
		
		//enum StringOperator:
		//    equal="=" | notEqual="!=" | like="like" | notLike="notlike"
		//;
		public EnumRule getRule() { return rule; }
		
		//equal="=" | notEqual="!=" | like="like" | notLike="notlike"
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//equal="="
		public EnumLiteralDeclaration getEqualEnumLiteralDeclaration_0() { return cEqualEnumLiteralDeclaration_0; }
		
		//"="
		public Keyword getEqualEqualsSignKeyword_0_0() { return cEqualEqualsSignKeyword_0_0; }
		
		//notEqual="!="
		public EnumLiteralDeclaration getNotEqualEnumLiteralDeclaration_1() { return cNotEqualEnumLiteralDeclaration_1; }
		
		//"!="
		public Keyword getNotEqualExclamationMarkEqualsSignKeyword_1_0() { return cNotEqualExclamationMarkEqualsSignKeyword_1_0; }
		
		//like="like"
		public EnumLiteralDeclaration getLikeEnumLiteralDeclaration_2() { return cLikeEnumLiteralDeclaration_2; }
		
		//"like"
		public Keyword getLikeLikeKeyword_2_0() { return cLikeLikeKeyword_2_0; }
		
		//notLike="notlike"
		public EnumLiteralDeclaration getNotLikeEnumLiteralDeclaration_3() { return cNotLikeEnumLiteralDeclaration_3; }
		
		//"notlike"
		public Keyword getNotLikeNotlikeKeyword_3_0() { return cNotLikeNotlikeKeyword_3_0; }
	}
	public class BooleanOperatorElements extends AbstractElementFinder.AbstractEnumRuleElementFinder {
		private final EnumRule rule = (EnumRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.BooleanOperator");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final EnumLiteralDeclaration cEqualEnumLiteralDeclaration_0 = (EnumLiteralDeclaration)cAlternatives.eContents().get(0);
		private final Keyword cEqualEqualsSignKeyword_0_0 = (Keyword)cEqualEnumLiteralDeclaration_0.eContents().get(0);
		private final EnumLiteralDeclaration cNotEqualEnumLiteralDeclaration_1 = (EnumLiteralDeclaration)cAlternatives.eContents().get(1);
		private final Keyword cNotEqualExclamationMarkEqualsSignKeyword_1_0 = (Keyword)cNotEqualEnumLiteralDeclaration_1.eContents().get(0);
		
		//enum BooleanOperator:
		//    equal="=" | notEqual="!="
		//;
		public EnumRule getRule() { return rule; }
		
		//equal="=" | notEqual="!="
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//equal="="
		public EnumLiteralDeclaration getEqualEnumLiteralDeclaration_0() { return cEqualEnumLiteralDeclaration_0; }
		
		//"="
		public Keyword getEqualEqualsSignKeyword_0_0() { return cEqualEqualsSignKeyword_0_0; }
		
		//notEqual="!="
		public EnumLiteralDeclaration getNotEqualEnumLiteralDeclaration_1() { return cNotEqualEnumLiteralDeclaration_1; }
		
		//"!="
		public Keyword getNotEqualExclamationMarkEqualsSignKeyword_1_0() { return cNotEqualExclamationMarkEqualsSignKeyword_1_0; }
	}
	
	private final ModelElements pModel;
	private final ImportElements pImport;
	private final MQLqueryElements pMQLquery;
	private final SelectEntryElements pSelectEntry;
	private final FromEntryElements pFromEntry;
	private final ScopeClauseElements pScopeClause;
	private final ScopeElements pScope;
	private final ResourceScopeElements pResourceScope;
	private final ElementScopeElements pElementScope;
	private final WhereEntryElements pWhereEntry;
	private final AndWhereEntryElements pAndWhereEntry;
	private final ConcreteWhereEntryElements pConcreteWhereEntry;
	private final ParWhereEntryElements pParWhereEntry;
	private final AttributeWhereEntryElements pAttributeWhereEntry;
	private final NumericAttributeWhereEntryElements pNumericAttributeWhereEntry;
	private final DoubleWhereEntryElements pDoubleWhereEntry;
	private final LongWhereEntryElements pLongWhereEntry;
	private final VariableWhereEntryElements pVariableWhereEntry;
	private final NumericOperatorElements eNumericOperator;
	private final StringAttributeWhereEntryElements pStringAttributeWhereEntry;
	private final StringOperatorElements eStringOperator;
	private final BooleanAttributeWhereEntryElements pBooleanAttributeWhereEntry;
	private final BooleanOperatorElements eBooleanOperator;
	private final NullWhereEntryElements pNullWhereEntry;
	private final ReferenceAliasWhereEntryElements pReferenceAliasWhereEntry;
	private final SubselectWhereEntryElements pSubselectWhereEntry;
	private final AliasWhereEntryElements pAliasWhereEntry;
	private final TerminalRule tSINGED_LONG;
	private final TerminalRule tSIGNED_DOUBLE;
	private final TerminalRule tID;
	private final TerminalRule tSTRING;
	private final TerminalRule tML_COMMENT;
	private final TerminalRule tSL_COMMENT;
	private final TerminalRule tWS;
	
	private final Grammar grammar;

	@Inject
	public Bug287941TestLanguageGrammarAccess(GrammarProvider grammarProvider) {
		this.grammar = internalFindGrammar(grammarProvider);
		this.pModel = new ModelElements();
		this.pImport = new ImportElements();
		this.pMQLquery = new MQLqueryElements();
		this.pSelectEntry = new SelectEntryElements();
		this.pFromEntry = new FromEntryElements();
		this.pScopeClause = new ScopeClauseElements();
		this.pScope = new ScopeElements();
		this.pResourceScope = new ResourceScopeElements();
		this.pElementScope = new ElementScopeElements();
		this.pWhereEntry = new WhereEntryElements();
		this.pAndWhereEntry = new AndWhereEntryElements();
		this.pConcreteWhereEntry = new ConcreteWhereEntryElements();
		this.pParWhereEntry = new ParWhereEntryElements();
		this.pAttributeWhereEntry = new AttributeWhereEntryElements();
		this.pNumericAttributeWhereEntry = new NumericAttributeWhereEntryElements();
		this.pDoubleWhereEntry = new DoubleWhereEntryElements();
		this.pLongWhereEntry = new LongWhereEntryElements();
		this.pVariableWhereEntry = new VariableWhereEntryElements();
		this.eNumericOperator = new NumericOperatorElements();
		this.pStringAttributeWhereEntry = new StringAttributeWhereEntryElements();
		this.eStringOperator = new StringOperatorElements();
		this.pBooleanAttributeWhereEntry = new BooleanAttributeWhereEntryElements();
		this.eBooleanOperator = new BooleanOperatorElements();
		this.pNullWhereEntry = new NullWhereEntryElements();
		this.pReferenceAliasWhereEntry = new ReferenceAliasWhereEntryElements();
		this.pSubselectWhereEntry = new SubselectWhereEntryElements();
		this.pAliasWhereEntry = new AliasWhereEntryElements();
		this.tSINGED_LONG = (TerminalRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.SINGED_LONG");
		this.tSIGNED_DOUBLE = (TerminalRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.SIGNED_DOUBLE");
		this.tID = (TerminalRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.ID");
		this.tSTRING = (TerminalRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.STRING");
		this.tML_COMMENT = (TerminalRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.ML_COMMENT");
		this.tSL_COMMENT = (TerminalRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.SL_COMMENT");
		this.tWS = (TerminalRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage.WS");
	}
	
	protected Grammar internalFindGrammar(GrammarProvider grammarProvider) {
		Grammar grammar = grammarProvider.getGrammar(this);
		while (grammar != null) {
			if ("org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage".equals(grammar.getName())) {
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
	

	
	//Model:
	//    (imports+=Import)*
	//    query=MQLquery
	//;
	public ModelElements getModelAccess() {
		return pModel;
	}
	
	public ParserRule getModelRule() {
		return getModelAccess().getRule();
	}
	
	//Import :
	//    'import' importURI=STRING;
	public ImportElements getImportAccess() {
		return pImport;
	}
	
	public ParserRule getImportRule() {
		return getImportAccess().getRule();
	}
	
	//MQLquery :
	//    "select" selectEntries+=SelectEntry ("," selectEntries+=SelectEntry)* "from" fromEntries+=FromEntry ("," fromEntries+=FromEntry)* ("where" (whereEntries+=WhereEntry)+)?
	//;
	public MQLqueryElements getMQLqueryAccess() {
		return pMQLquery;
	}
	
	public ParserRule getMQLqueryRule() {
		return getMQLqueryAccess().getRule();
	}
	
	//SelectEntry:
	//    select=[FromEntry] ("." attribute=[ecore::EAttribute])?
	//;
	public SelectEntryElements getSelectEntryAccess() {
		return pSelectEntry;
	}
	
	public ParserRule getSelectEntryRule() {
		return getSelectEntryAccess().getRule();
	}
	
	//FromEntry:
	//    type=[ecore::EClass] (withoutsubtypes?="withoutsubtypes")? "as" alias=ID (scopeClause=ScopeClause)?
	//;
	public FromEntryElements getFromEntryAccess() {
		return pFromEntry;
	}
	
	public ParserRule getFromEntryRule() {
		return getFromEntryAccess().getRule();
	}
	
	//ScopeClause:
	//    (notIn?="not")? "in" scope=Scope
	//;
	public ScopeClauseElements getScopeClauseAccess() {
		return pScopeClause;
	}
	
	public ParserRule getScopeClauseRule() {
		return getScopeClauseAccess().getRule();
	}
	
	//Scope:
	//    ResourceScope | ElementScope
	//;
	public ScopeElements getScopeAccess() {
		return pScope;
	}
	
	public ParserRule getScopeRule() {
		return getScopeAccess().getRule();
	}
	
	//ResourceScope:
	//    "resources" "{" uris+=STRING ("," uris+=STRING)* "}"
	//;
	public ResourceScopeElements getResourceScopeAccess() {
		return pResourceScope;
	}
	
	public ParserRule getResourceScopeRule() {
		return getResourceScopeAccess().getRule();
	}
	
	//ElementScope:
	//    "elements" "{" uris+=STRING ("," uris+=STRING)* "}"
	//;
	public ElementScopeElements getElementScopeAccess() {
		return pElementScope;
	}
	
	public ParserRule getElementScopeRule() {
		return getElementScopeAccess().getRule();
	}
	
	//WhereEntry returns WhereEntry:
	//    AndWhereEntry ({OrWhereEntry.entries+=current}
	//        ("or" entries+=AndWhereEntry)+)?
	//;
	public WhereEntryElements getWhereEntryAccess() {
		return pWhereEntry;
	}
	
	public ParserRule getWhereEntryRule() {
		return getWhereEntryAccess().getRule();
	}
	
	//AndWhereEntry returns WhereEntry:
	//    ConcreteWhereEntry ({AndWhereEntry.entries+=current}
	//        ("and" entries+=ConcreteWhereEntry)+)?
	//;
	public AndWhereEntryElements getAndWhereEntryAccess() {
		return pAndWhereEntry;
	}
	
	public ParserRule getAndWhereEntryRule() {
		return getAndWhereEntryAccess().getRule();
	}
	
	//ConcreteWhereEntry returns WhereEntry:
	//    ParWhereEntry | AttributeWhereEntry | NullWhereEntry | ReferenceAliasWhereEntry | AliasWhereEntry | SubselectWhereEntry
	//;
	public ConcreteWhereEntryElements getConcreteWhereEntryAccess() {
		return pConcreteWhereEntry;
	}
	
	public ParserRule getConcreteWhereEntryRule() {
		return getConcreteWhereEntryAccess().getRule();
	}
	
	//ParWhereEntry  returns WhereEntry:
	//    "(" WhereEntry ")"
	//;
	public ParWhereEntryElements getParWhereEntryAccess() {
		return pParWhereEntry;
	}
	
	public ParserRule getParWhereEntryRule() {
		return getParWhereEntryAccess().getRule();
	}
	
	//AttributeWhereEntry:
	//    NumericAttributeWhereEntry | StringAttributeWhereEntry | BooleanAttributeWhereEntry | VariableWhereEntry
	//;
	public AttributeWhereEntryElements getAttributeWhereEntryAccess() {
		return pAttributeWhereEntry;
	}
	
	public ParserRule getAttributeWhereEntryRule() {
		return getAttributeWhereEntryAccess().getRule();
	}
	
	//NumericAttributeWhereEntry:
	//    DoubleWhereEntry | LongWhereEntry
	//;
	public NumericAttributeWhereEntryElements getNumericAttributeWhereEntryAccess() {
		return pNumericAttributeWhereEntry;
	}
	
	public ParserRule getNumericAttributeWhereEntryRule() {
		return getNumericAttributeWhereEntryAccess().getRule();
	}
	
	//DoubleWhereEntry:
	//    alias=[FromEntry] "." attribute=[ecore::EAttribute] operator=NumericOperator value=SIGNED_DOUBLE
	//;
	public DoubleWhereEntryElements getDoubleWhereEntryAccess() {
		return pDoubleWhereEntry;
	}
	
	public ParserRule getDoubleWhereEntryRule() {
		return getDoubleWhereEntryAccess().getRule();
	}
	
	//LongWhereEntry:
	//    alias=[FromEntry] "." attribute=[ecore::EAttribute] operator=NumericOperator value=SINGED_LONG
	//;
	public LongWhereEntryElements getLongWhereEntryAccess() {
		return pLongWhereEntry;
	}
	
	public ParserRule getLongWhereEntryRule() {
		return getLongWhereEntryAccess().getRule();
	}
	
	//VariableWhereEntry:
	//    alias=[FromEntry] "." attribute=[ecore::EAttribute] operator=NumericOperator rightAlias=[FromEntry]"." rightAttribute=[ecore::EAttribute]
	//;
	public VariableWhereEntryElements getVariableWhereEntryAccess() {
		return pVariableWhereEntry;
	}
	
	public ParserRule getVariableWhereEntryRule() {
		return getVariableWhereEntryAccess().getRule();
	}
	
	//enum NumericOperator:
	//    lessThen="<" | greaterThen=">" | lessEqual="<=" | greaterEqual=">=" | equal="=" | notEqual="!="
	//;
	public NumericOperatorElements getNumericOperatorAccess() {
		return eNumericOperator;
	}
	
	public EnumRule getNumericOperatorRule() {
		return getNumericOperatorAccess().getRule();
	}
	
	//StringAttributeWhereEntry:
	//    alias=[FromEntry] "." attribute=[ecore::EAttribute] operator=StringOperator pattern=STRING
	//;
	public StringAttributeWhereEntryElements getStringAttributeWhereEntryAccess() {
		return pStringAttributeWhereEntry;
	}
	
	public ParserRule getStringAttributeWhereEntryRule() {
		return getStringAttributeWhereEntryAccess().getRule();
	}
	
	//enum StringOperator:
	//    equal="=" | notEqual="!=" | like="like" | notLike="notlike"
	//;
	public StringOperatorElements getStringOperatorAccess() {
		return eStringOperator;
	}
	
	public EnumRule getStringOperatorRule() {
		return getStringOperatorAccess().getRule();
	}
	
	//BooleanAttributeWhereEntry:
	//    alias=[FromEntry] "." attribute=[ecore::EAttribute] operator=BooleanOperator (isTrue?="true" | "false")
	//;
	public BooleanAttributeWhereEntryElements getBooleanAttributeWhereEntryAccess() {
		return pBooleanAttributeWhereEntry;
	}
	
	public ParserRule getBooleanAttributeWhereEntryRule() {
		return getBooleanAttributeWhereEntryAccess().getRule();
	}
	
	//enum BooleanOperator:
	//    equal="=" | notEqual="!="
	//;
	public BooleanOperatorElements getBooleanOperatorAccess() {
		return eBooleanOperator;
	}
	
	public EnumRule getBooleanOperatorRule() {
		return getBooleanOperatorAccess().getRule();
	}
	
	//NullWhereEntry:
	//    alias=[FromEntry] "." feature=[ecore::EStructuralFeature] operator=BooleanOperator "null"
	//;
	public NullWhereEntryElements getNullWhereEntryAccess() {
		return pNullWhereEntry;
	}
	
	public ParserRule getNullWhereEntryRule() {
		return getNullWhereEntryAccess().getRule();
	}
	
	//ReferenceAliasWhereEntry:
	//    alias=[FromEntry] "." reference=[ecore::EReference] "=" rightAlias=[FromEntry]
	//;
	public ReferenceAliasWhereEntryElements getReferenceAliasWhereEntryAccess() {
		return pReferenceAliasWhereEntry;
	}
	
	public ParserRule getReferenceAliasWhereEntryRule() {
		return getReferenceAliasWhereEntryAccess().getRule();
	}
	
	//SubselectWhereEntry:
	//    alias=[FromEntry] "." reference=[ecore::EReference] (notIn?="not")? "in" "("subQuery=MQLquery")"
	//;
	public SubselectWhereEntryElements getSubselectWhereEntryAccess() {
		return pSubselectWhereEntry;
	}
	
	public ParserRule getSubselectWhereEntryRule() {
		return getSubselectWhereEntryAccess().getRule();
	}
	
	//AliasWhereEntry:
	//    alias=[FromEntry] "=" rightAlias=[FromEntry]
	//;
	public AliasWhereEntryElements getAliasWhereEntryAccess() {
		return pAliasWhereEntry;
	}
	
	public ParserRule getAliasWhereEntryRule() {
		return getAliasWhereEntryAccess().getRule();
	}
	
	//terminal SINGED_LONG returns ecore::ELong: '-'?('0'..'9')+;
	public TerminalRule getSINGED_LONGRule() {
		return tSINGED_LONG;
	}
	
	//terminal SIGNED_DOUBLE returns ecore::EDouble: '-'?('0'..'9')+ ('.' ('0'..'9')+)?;
	public TerminalRule getSIGNED_DOUBLERule() {
		return tSIGNED_DOUBLE;
	}
	
	//terminal ID  		: '^'?('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;
	public TerminalRule getIDRule() {
		return tID;
	}
	
	//terminal STRING    :
	//            '"' ( '\\' ('b'|'t'|'n'|'f'|'r'|'"'|"'"|'\\') | !('\\'|'"') )* '"' |
	//            "'" ( '\\' ('b'|'t'|'n'|'f'|'r'|'"'|"'"|'\\') | !('\\'|"'") )* "'"
	//        ;
	public TerminalRule getSTRINGRule() {
		return tSTRING;
	}
	
	//terminal ML_COMMENT	: '/*' -> '*/';
	public TerminalRule getML_COMMENTRule() {
		return tML_COMMENT;
	}
	
	//terminal SL_COMMENT 	: '//' !('\n'|'\r')* ('\r'? '\n')?;
	public TerminalRule getSL_COMMENTRule() {
		return tSL_COMMENT;
	}
	
	//terminal WS			: (' '|'\t'|'\r'|'\n')+;
	public TerminalRule getWSRule() {
		return tWS;
	}
}

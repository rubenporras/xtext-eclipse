/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
package org.eclipse.xtext.ui.tests.testlanguages.services;

import com.google.inject.Inject;
import com.google.inject.Singleton;
import java.util.List;
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
import org.eclipse.xtext.common.services.TerminalsGrammarAccess;
import org.eclipse.xtext.service.AbstractElementFinder;
import org.eclipse.xtext.service.GrammarProvider;

@Singleton
public class ContentAssistTestLanguageGrammarAccess extends AbstractElementFinder.AbstractGrammarElementFinder {
	
	public class StartElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.testlanguages.ContentAssistTestLanguage.Start");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cAbstractRulesKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Assignment cRulesAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cRulesAbstractRuleParserRuleCall_1_0 = (RuleCall)cRulesAssignment_1.eContents().get(0);
		private final Keyword cEndKeyword_2 = (Keyword)cGroup.eContents().get(2);
		
		//Start :
		//    /* SuppressWarnings[all] */
		//    "abstract rules"
		//        (rules += AbstractRule)+
		//    "end"
		//;
		@Override public ParserRule getRule() { return rule; }
		
		///* SuppressWarnings[all] */
		//"abstract rules"
		//    (rules += AbstractRule)+
		//"end"
		public Group getGroup() { return cGroup; }
		
		///* SuppressWarnings[all] */
		//"abstract rules"
		public Keyword getAbstractRulesKeyword_0() { return cAbstractRulesKeyword_0; }
		
		//(rules += AbstractRule)+
		public Assignment getRulesAssignment_1() { return cRulesAssignment_1; }
		
		//AbstractRule
		public RuleCall getRulesAbstractRuleParserRuleCall_1_0() { return cRulesAbstractRuleParserRuleCall_1_0; }
		
		//"end"
		public Keyword getEndKeyword_2() { return cEndKeyword_2; }
	}
	public class AbstractRuleElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.testlanguages.ContentAssistTestLanguage.AbstractRule");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final RuleCall cFirstAbstractRuleChildParserRuleCall_0 = (RuleCall)cAlternatives.eContents().get(0);
		private final RuleCall cSecondAbstractRuleChildParserRuleCall_1 = (RuleCall)cAlternatives.eContents().get(1);
		
		//AbstractRule : FirstAbstractRuleChild | SecondAbstractRuleChild;
		@Override public ParserRule getRule() { return rule; }
		
		//FirstAbstractRuleChild | SecondAbstractRuleChild
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//FirstAbstractRuleChild
		public RuleCall getFirstAbstractRuleChildParserRuleCall_0() { return cFirstAbstractRuleChildParserRuleCall_0; }
		
		//SecondAbstractRuleChild
		public RuleCall getSecondAbstractRuleChildParserRuleCall_1() { return cSecondAbstractRuleChildParserRuleCall_1; }
	}
	public class FirstAbstractRuleChildElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.testlanguages.ContentAssistTestLanguage.FirstAbstractRuleChild");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cNameAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cNameIDTerminalRuleCall_0_0 = (RuleCall)cNameAssignment_0.eContents().get(0);
		private final Keyword cLeftParenthesisKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Assignment cElementsAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final RuleCall cElementsAbstractRuleParserRuleCall_2_0 = (RuleCall)cElementsAssignment_2.eContents().get(0);
		private final Keyword cRightParenthesisKeyword_3 = (Keyword)cGroup.eContents().get(3);
		private final Keyword cSemicolonKeyword_4 = (Keyword)cGroup.eContents().get(4);
		
		//FirstAbstractRuleChild :
		//  name=ID '(' (elements+=AbstractRule)+ ')' ';';
		@Override public ParserRule getRule() { return rule; }
		
		//name=ID '(' (elements+=AbstractRule)+ ')' ';'
		public Group getGroup() { return cGroup; }
		
		//name=ID
		public Assignment getNameAssignment_0() { return cNameAssignment_0; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_0_0() { return cNameIDTerminalRuleCall_0_0; }
		
		//'('
		public Keyword getLeftParenthesisKeyword_1() { return cLeftParenthesisKeyword_1; }
		
		//(elements+=AbstractRule)+
		public Assignment getElementsAssignment_2() { return cElementsAssignment_2; }
		
		//AbstractRule
		public RuleCall getElementsAbstractRuleParserRuleCall_2_0() { return cElementsAbstractRuleParserRuleCall_2_0; }
		
		//')'
		public Keyword getRightParenthesisKeyword_3() { return cRightParenthesisKeyword_3; }
		
		//';'
		public Keyword getSemicolonKeyword_4() { return cSemicolonKeyword_4; }
	}
	public class SecondAbstractRuleChildElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.testlanguages.ContentAssistTestLanguage.SecondAbstractRuleChild");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cNameAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cNameIDTerminalRuleCall_0_0 = (RuleCall)cNameAssignment_0.eContents().get(0);
		private final Keyword cRuleKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Keyword cColonKeyword_2 = (Keyword)cGroup.eContents().get(2);
		private final Assignment cRuleAssignment_3 = (Assignment)cGroup.eContents().get(3);
		private final RuleCall cRuleAbstractRuleCallParserRuleCall_3_0 = (RuleCall)cRuleAssignment_3.eContents().get(0);
		private final Keyword cSemicolonKeyword_4 = (Keyword)cGroup.eContents().get(4);
		
		//SecondAbstractRuleChild:
		//  name=ID 'rule' ':' rule=AbstractRuleCall ';';
		@Override public ParserRule getRule() { return rule; }
		
		//name=ID 'rule' ':' rule=AbstractRuleCall ';'
		public Group getGroup() { return cGroup; }
		
		//name=ID
		public Assignment getNameAssignment_0() { return cNameAssignment_0; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_0_0() { return cNameIDTerminalRuleCall_0_0; }
		
		//'rule'
		public Keyword getRuleKeyword_1() { return cRuleKeyword_1; }
		
		//':'
		public Keyword getColonKeyword_2() { return cColonKeyword_2; }
		
		//rule=AbstractRuleCall
		public Assignment getRuleAssignment_3() { return cRuleAssignment_3; }
		
		//AbstractRuleCall
		public RuleCall getRuleAbstractRuleCallParserRuleCall_3_0() { return cRuleAbstractRuleCallParserRuleCall_3_0; }
		
		//';'
		public Keyword getSemicolonKeyword_4() { return cSemicolonKeyword_4; }
	}
	public class AbstractRuleCallElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.testlanguages.ContentAssistTestLanguage.AbstractRuleCall");
		private final Assignment cRuleAssignment = (Assignment)rule.eContents().get(1);
		private final CrossReference cRuleAbstractRuleCrossReference_0 = (CrossReference)cRuleAssignment.eContents().get(0);
		private final RuleCall cRuleAbstractRuleIDTerminalRuleCall_0_1 = (RuleCall)cRuleAbstractRuleCrossReference_0.eContents().get(1);
		
		//AbstractRuleCall:
		//  rule=[AbstractRule];
		@Override public ParserRule getRule() { return rule; }
		
		//rule=[AbstractRule]
		public Assignment getRuleAssignment() { return cRuleAssignment; }
		
		//[AbstractRule]
		public CrossReference getRuleAbstractRuleCrossReference_0() { return cRuleAbstractRuleCrossReference_0; }
		
		//ID
		public RuleCall getRuleAbstractRuleIDTerminalRuleCall_0_1() { return cRuleAbstractRuleIDTerminalRuleCall_0_1; }
	}
	
	
	private final StartElements pStart;
	private final AbstractRuleElements pAbstractRule;
	private final FirstAbstractRuleChildElements pFirstAbstractRuleChild;
	private final SecondAbstractRuleChildElements pSecondAbstractRuleChild;
	private final AbstractRuleCallElements pAbstractRuleCall;
	
	private final Grammar grammar;
	
	private final TerminalsGrammarAccess gaTerminals;

	@Inject
	public ContentAssistTestLanguageGrammarAccess(GrammarProvider grammarProvider,
			TerminalsGrammarAccess gaTerminals) {
		this.grammar = internalFindGrammar(grammarProvider);
		this.gaTerminals = gaTerminals;
		this.pStart = new StartElements();
		this.pAbstractRule = new AbstractRuleElements();
		this.pFirstAbstractRuleChild = new FirstAbstractRuleChildElements();
		this.pSecondAbstractRuleChild = new SecondAbstractRuleChildElements();
		this.pAbstractRuleCall = new AbstractRuleCallElements();
	}
	
	protected Grammar internalFindGrammar(GrammarProvider grammarProvider) {
		Grammar grammar = grammarProvider.getGrammar(this);
		while (grammar != null) {
			if ("org.eclipse.xtext.ui.tests.testlanguages.ContentAssistTestLanguage".equals(grammar.getName())) {
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

	
	//Start :
	//    /* SuppressWarnings[all] */
	//    "abstract rules"
	//        (rules += AbstractRule)+
	//    "end"
	//;
	public StartElements getStartAccess() {
		return pStart;
	}
	
	public ParserRule getStartRule() {
		return getStartAccess().getRule();
	}
	
	//AbstractRule : FirstAbstractRuleChild | SecondAbstractRuleChild;
	public AbstractRuleElements getAbstractRuleAccess() {
		return pAbstractRule;
	}
	
	public ParserRule getAbstractRuleRule() {
		return getAbstractRuleAccess().getRule();
	}
	
	//FirstAbstractRuleChild :
	//  name=ID '(' (elements+=AbstractRule)+ ')' ';';
	public FirstAbstractRuleChildElements getFirstAbstractRuleChildAccess() {
		return pFirstAbstractRuleChild;
	}
	
	public ParserRule getFirstAbstractRuleChildRule() {
		return getFirstAbstractRuleChildAccess().getRule();
	}
	
	//SecondAbstractRuleChild:
	//  name=ID 'rule' ':' rule=AbstractRuleCall ';';
	public SecondAbstractRuleChildElements getSecondAbstractRuleChildAccess() {
		return pSecondAbstractRuleChild;
	}
	
	public ParserRule getSecondAbstractRuleChildRule() {
		return getSecondAbstractRuleChildAccess().getRule();
	}
	
	//AbstractRuleCall:
	//  rule=[AbstractRule];
	public AbstractRuleCallElements getAbstractRuleCallAccess() {
		return pAbstractRuleCall;
	}
	
	public ParserRule getAbstractRuleCallRule() {
		return getAbstractRuleCallAccess().getRule();
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

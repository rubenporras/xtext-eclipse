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
public class LookAheadContentAssistTestLanguageGrammarAccess extends AbstractElementFinder.AbstractGrammarElementFinder {
	
	public class ModelElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.LookAheadContentAssistTestLanguage.Model");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Action cModelAction_0 = (Action)cGroup.eContents().get(0);
		private final Alternatives cAlternatives_1 = (Alternatives)cGroup.eContents().get(1);
		private final Group cGroup_1_0 = (Group)cAlternatives_1.eContents().get(0);
		private final Keyword cLeftParenthesisKeyword_1_0_0 = (Keyword)cGroup_1_0.eContents().get(0);
		private final Assignment cAttributeAssignment_1_0_1 = (Assignment)cGroup_1_0.eContents().get(1);
		private final RuleCall cAttributeAttributeParserRuleCall_1_0_1_0 = (RuleCall)cAttributeAssignment_1_0_1.eContents().get(0);
		private final Assignment cAttributeAssignment_1_0_2 = (Assignment)cGroup_1_0.eContents().get(2);
		private final RuleCall cAttributePairParserRuleCall_1_0_2_0 = (RuleCall)cAttributeAssignment_1_0_2.eContents().get(0);
		private final Keyword cRightParenthesisKeyword_1_0_3 = (Keyword)cGroup_1_0.eContents().get(3);
		private final Group cGroup_1_1 = (Group)cAlternatives_1.eContents().get(1);
		private final Keyword cLeftSquareBracketKeyword_1_1_0 = (Keyword)cGroup_1_1.eContents().get(0);
		private final Assignment cAttributeAssignment_1_1_1 = (Assignment)cGroup_1_1.eContents().get(1);
		private final RuleCall cAttributeAttributeParserRuleCall_1_1_1_0 = (RuleCall)cAttributeAssignment_1_1_1.eContents().get(0);
		private final Assignment cAttributeAssignment_1_1_2 = (Assignment)cGroup_1_1.eContents().get(2);
		private final RuleCall cAttributePairParserRuleCall_1_1_2_0 = (RuleCall)cAttributeAssignment_1_1_2.eContents().get(0);
		private final Keyword cRightSquareBracketKeyword_1_1_3 = (Keyword)cGroup_1_1.eContents().get(3);
		private final Group cGroup_1_2 = (Group)cAlternatives_1.eContents().get(2);
		private final Keyword cLessThanSignKeyword_1_2_0 = (Keyword)cGroup_1_2.eContents().get(0);
		private final Assignment cAttributeAssignment_1_2_1 = (Assignment)cGroup_1_2.eContents().get(1);
		private final RuleCall cAttributeAttributeParserRuleCall_1_2_1_0 = (RuleCall)cAttributeAssignment_1_2_1.eContents().get(0);
		private final Assignment cAttributeAssignment_1_2_2 = (Assignment)cGroup_1_2.eContents().get(2);
		private final RuleCall cAttributePairParserRuleCall_1_2_2_0 = (RuleCall)cAttributeAssignment_1_2_2.eContents().get(0);
		private final Keyword cGreaterThanSignKeyword_1_2_3 = (Keyword)cGroup_1_2.eContents().get(3);
		private final Group cGroup_1_3 = (Group)cAlternatives_1.eContents().get(3);
		private final Keyword cLeftCurlyBracketKeyword_1_3_0 = (Keyword)cGroup_1_3.eContents().get(0);
		private final Assignment cAttributeAssignment_1_3_1 = (Assignment)cGroup_1_3.eContents().get(1);
		private final RuleCall cAttributeAttributeParserRuleCall_1_3_1_0 = (RuleCall)cAttributeAssignment_1_3_1.eContents().get(0);
		private final Assignment cAttributeAssignment_1_3_2 = (Assignment)cGroup_1_3.eContents().get(2);
		private final RuleCall cAttributePairParserRuleCall_1_3_2_0 = (RuleCall)cAttributeAssignment_1_3_2.eContents().get(0);
		private final Keyword cRightCurlyBracketKeyword_1_3_3 = (Keyword)cGroup_1_3.eContents().get(3);
		
		//Model : {Model} (
		//        '(' attribute+=Attribute* attribute+=Pair* ')'
		//    |    '[' attribute+=Attribute+ attribute+=Pair* ']'
		//    |    '<' attribute+=Attribute* attribute+=Pair+ '>'
		//    |    '{' attribute+=Attribute+ attribute+=Pair+ '}'
		//    );
		@Override public ParserRule getRule() { return rule; }
		
		//{Model} (
		//       '(' attribute+=Attribute* attribute+=Pair* ')'
		//   |    '[' attribute+=Attribute+ attribute+=Pair* ']'
		//   |    '<' attribute+=Attribute* attribute+=Pair+ '>'
		//   |    '{' attribute+=Attribute+ attribute+=Pair+ '}'
		//   )
		public Group getGroup() { return cGroup; }
		
		//{Model}
		public Action getModelAction_0() { return cModelAction_0; }
		
		//(
		//       '(' attribute+=Attribute* attribute+=Pair* ')'
		//   |    '[' attribute+=Attribute+ attribute+=Pair* ']'
		//   |    '<' attribute+=Attribute* attribute+=Pair+ '>'
		//   |    '{' attribute+=Attribute+ attribute+=Pair+ '}'
		//   )
		public Alternatives getAlternatives_1() { return cAlternatives_1; }
		
		//'(' attribute+=Attribute* attribute+=Pair* ')'
		public Group getGroup_1_0() { return cGroup_1_0; }
		
		//'('
		public Keyword getLeftParenthesisKeyword_1_0_0() { return cLeftParenthesisKeyword_1_0_0; }
		
		//attribute+=Attribute*
		public Assignment getAttributeAssignment_1_0_1() { return cAttributeAssignment_1_0_1; }
		
		//Attribute
		public RuleCall getAttributeAttributeParserRuleCall_1_0_1_0() { return cAttributeAttributeParserRuleCall_1_0_1_0; }
		
		//attribute+=Pair*
		public Assignment getAttributeAssignment_1_0_2() { return cAttributeAssignment_1_0_2; }
		
		//Pair
		public RuleCall getAttributePairParserRuleCall_1_0_2_0() { return cAttributePairParserRuleCall_1_0_2_0; }
		
		//')'
		public Keyword getRightParenthesisKeyword_1_0_3() { return cRightParenthesisKeyword_1_0_3; }
		
		//'[' attribute+=Attribute+ attribute+=Pair* ']'
		public Group getGroup_1_1() { return cGroup_1_1; }
		
		//'['
		public Keyword getLeftSquareBracketKeyword_1_1_0() { return cLeftSquareBracketKeyword_1_1_0; }
		
		//attribute+=Attribute+
		public Assignment getAttributeAssignment_1_1_1() { return cAttributeAssignment_1_1_1; }
		
		//Attribute
		public RuleCall getAttributeAttributeParserRuleCall_1_1_1_0() { return cAttributeAttributeParserRuleCall_1_1_1_0; }
		
		//attribute+=Pair*
		public Assignment getAttributeAssignment_1_1_2() { return cAttributeAssignment_1_1_2; }
		
		//Pair
		public RuleCall getAttributePairParserRuleCall_1_1_2_0() { return cAttributePairParserRuleCall_1_1_2_0; }
		
		//']'
		public Keyword getRightSquareBracketKeyword_1_1_3() { return cRightSquareBracketKeyword_1_1_3; }
		
		//'<' attribute+=Attribute* attribute+=Pair+ '>'
		public Group getGroup_1_2() { return cGroup_1_2; }
		
		//'<'
		public Keyword getLessThanSignKeyword_1_2_0() { return cLessThanSignKeyword_1_2_0; }
		
		//attribute+=Attribute*
		public Assignment getAttributeAssignment_1_2_1() { return cAttributeAssignment_1_2_1; }
		
		//Attribute
		public RuleCall getAttributeAttributeParserRuleCall_1_2_1_0() { return cAttributeAttributeParserRuleCall_1_2_1_0; }
		
		//attribute+=Pair+
		public Assignment getAttributeAssignment_1_2_2() { return cAttributeAssignment_1_2_2; }
		
		//Pair
		public RuleCall getAttributePairParserRuleCall_1_2_2_0() { return cAttributePairParserRuleCall_1_2_2_0; }
		
		//'>'
		public Keyword getGreaterThanSignKeyword_1_2_3() { return cGreaterThanSignKeyword_1_2_3; }
		
		//'{' attribute+=Attribute+ attribute+=Pair+ '}'
		public Group getGroup_1_3() { return cGroup_1_3; }
		
		//'{'
		public Keyword getLeftCurlyBracketKeyword_1_3_0() { return cLeftCurlyBracketKeyword_1_3_0; }
		
		//attribute+=Attribute+
		public Assignment getAttributeAssignment_1_3_1() { return cAttributeAssignment_1_3_1; }
		
		//Attribute
		public RuleCall getAttributeAttributeParserRuleCall_1_3_1_0() { return cAttributeAttributeParserRuleCall_1_3_1_0; }
		
		//attribute+=Pair+
		public Assignment getAttributeAssignment_1_3_2() { return cAttributeAssignment_1_3_2; }
		
		//Pair
		public RuleCall getAttributePairParserRuleCall_1_3_2_0() { return cAttributePairParserRuleCall_1_3_2_0; }
		
		//'}'
		public Keyword getRightCurlyBracketKeyword_1_3_3() { return cRightCurlyBracketKeyword_1_3_3; }
	}
	public class AttributeElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.LookAheadContentAssistTestLanguage.Attribute");
		private final Assignment cValueAssignment = (Assignment)rule.eContents().get(1);
		private final RuleCall cValueIDTerminalRuleCall_0 = (RuleCall)cValueAssignment.eContents().get(0);
		
		//Attribute:
		//        value=ID;
		@Override public ParserRule getRule() { return rule; }
		
		//value=ID
		public Assignment getValueAssignment() { return cValueAssignment; }
		
		//ID
		public RuleCall getValueIDTerminalRuleCall_0() { return cValueIDTerminalRuleCall_0; }
	}
	public class PairElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.LookAheadContentAssistTestLanguage.Pair");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cNameAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cNameIDTerminalRuleCall_0_0 = (RuleCall)cNameAssignment_0.eContents().get(0);
		private final Keyword cEqualsSignKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Assignment cValueAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final RuleCall cValueIDTerminalRuleCall_2_0 = (RuleCall)cValueAssignment_2.eContents().get(0);
		
		//Pair:
		//        name=ID "=" value=ID;
		@Override public ParserRule getRule() { return rule; }
		
		//name=ID "=" value=ID
		public Group getGroup() { return cGroup; }
		
		//name=ID
		public Assignment getNameAssignment_0() { return cNameAssignment_0; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_0_0() { return cNameIDTerminalRuleCall_0_0; }
		
		//"="
		public Keyword getEqualsSignKeyword_1() { return cEqualsSignKeyword_1; }
		
		//value=ID
		public Assignment getValueAssignment_2() { return cValueAssignment_2; }
		
		//ID
		public RuleCall getValueIDTerminalRuleCall_2_0() { return cValueIDTerminalRuleCall_2_0; }
	}
	
	
	private final ModelElements pModel;
	private final AttributeElements pAttribute;
	private final PairElements pPair;
	
	private final Grammar grammar;
	
	private final TerminalsGrammarAccess gaTerminals;

	@Inject
	public LookAheadContentAssistTestLanguageGrammarAccess(GrammarProvider grammarProvider,
			TerminalsGrammarAccess gaTerminals) {
		this.grammar = internalFindGrammar(grammarProvider);
		this.gaTerminals = gaTerminals;
		this.pModel = new ModelElements();
		this.pAttribute = new AttributeElements();
		this.pPair = new PairElements();
	}
	
	protected Grammar internalFindGrammar(GrammarProvider grammarProvider) {
		Grammar grammar = grammarProvider.getGrammar(this);
		while (grammar != null) {
			if ("org.eclipse.xtext.ui.tests.editor.contentassist.LookAheadContentAssistTestLanguage".equals(grammar.getName())) {
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

	
	//Model : {Model} (
	//        '(' attribute+=Attribute* attribute+=Pair* ')'
	//    |    '[' attribute+=Attribute+ attribute+=Pair* ']'
	//    |    '<' attribute+=Attribute* attribute+=Pair+ '>'
	//    |    '{' attribute+=Attribute+ attribute+=Pair+ '}'
	//    );
	public ModelElements getModelAccess() {
		return pModel;
	}
	
	public ParserRule getModelRule() {
		return getModelAccess().getRule();
	}
	
	//Attribute:
	//        value=ID;
	public AttributeElements getAttributeAccess() {
		return pAttribute;
	}
	
	public ParserRule getAttributeRule() {
		return getAttributeAccess().getRule();
	}
	
	//Pair:
	//        name=ID "=" value=ID;
	public PairElements getPairAccess() {
		return pPair;
	}
	
	public ParserRule getPairRule() {
		return getPairAccess().getRule();
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

/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
package org.eclipse.xtext.common.types.xtext.ui.services;

import com.google.inject.Inject;
import com.google.inject.Singleton;
import java.util.List;
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
public class RefactoringTestLanguageGrammarAccess extends AbstractElementFinder.AbstractGrammarElementFinder {
	
	public class ModelElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.common.types.xtext.ui.RefactoringTestLanguage.Model");
		private final Assignment cReferenceHolderAssignment = (Assignment)rule.eContents().get(1);
		private final RuleCall cReferenceHolderReferenceHolderParserRuleCall_0 = (RuleCall)cReferenceHolderAssignment.eContents().get(0);
		
		//Model:
		//       referenceHolder+=ReferenceHolder*;
		@Override public ParserRule getRule() { return rule; }
		
		//referenceHolder+=ReferenceHolder*
		public Assignment getReferenceHolderAssignment() { return cReferenceHolderAssignment; }
		
		//ReferenceHolder
		public RuleCall getReferenceHolderReferenceHolderParserRuleCall_0() { return cReferenceHolderReferenceHolderParserRuleCall_0; }
	}
	public class ReferenceHolderElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.common.types.xtext.ui.RefactoringTestLanguage.ReferenceHolder");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cNameAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cNameIDTerminalRuleCall_0_0 = (RuleCall)cNameAssignment_0.eContents().get(0);
		private final Assignment cDefaultReferenceAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final CrossReference cDefaultReferenceJvmTypeCrossReference_1_0 = (CrossReference)cDefaultReferenceAssignment_1.eContents().get(0);
		private final RuleCall cDefaultReferenceJvmTypeFQNParserRuleCall_1_0_1 = (RuleCall)cDefaultReferenceJvmTypeCrossReference_1_0.eContents().get(1);
		
		//ReferenceHolder:
		//    name=ID defaultReference=[types::JvmType|FQN]
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//name=ID defaultReference=[types::JvmType|FQN]
		public Group getGroup() { return cGroup; }
		
		//name=ID
		public Assignment getNameAssignment_0() { return cNameAssignment_0; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_0_0() { return cNameIDTerminalRuleCall_0_0; }
		
		//defaultReference=[types::JvmType|FQN]
		public Assignment getDefaultReferenceAssignment_1() { return cDefaultReferenceAssignment_1; }
		
		//[types::JvmType|FQN]
		public CrossReference getDefaultReferenceJvmTypeCrossReference_1_0() { return cDefaultReferenceJvmTypeCrossReference_1_0; }
		
		//FQN
		public RuleCall getDefaultReferenceJvmTypeFQNParserRuleCall_1_0_1() { return cDefaultReferenceJvmTypeFQNParserRuleCall_1_0_1; }
	}
	public class FQNElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.common.types.xtext.ui.RefactoringTestLanguage.FQN");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final RuleCall cIDTerminalRuleCall_0 = (RuleCall)cGroup.eContents().get(0);
		private final Group cGroup_1 = (Group)cGroup.eContents().get(1);
		private final Keyword cFullStopKeyword_1_0 = (Keyword)cGroup_1.eContents().get(0);
		private final RuleCall cIDTerminalRuleCall_1_1 = (RuleCall)cGroup_1.eContents().get(1);
		private final Group cGroup_2 = (Group)cGroup.eContents().get(2);
		private final Keyword cDollarSignKeyword_2_0 = (Keyword)cGroup_2.eContents().get(0);
		private final RuleCall cIDTerminalRuleCall_2_1 = (RuleCall)cGroup_2.eContents().get(1);
		
		//FQN: ID ('.' ID)* ('$' ID)*;
		@Override public ParserRule getRule() { return rule; }
		
		//ID ('.' ID)* ('$' ID)*
		public Group getGroup() { return cGroup; }
		
		//ID
		public RuleCall getIDTerminalRuleCall_0() { return cIDTerminalRuleCall_0; }
		
		//('.' ID)*
		public Group getGroup_1() { return cGroup_1; }
		
		//'.'
		public Keyword getFullStopKeyword_1_0() { return cFullStopKeyword_1_0; }
		
		//ID
		public RuleCall getIDTerminalRuleCall_1_1() { return cIDTerminalRuleCall_1_1; }
		
		//('$' ID)*
		public Group getGroup_2() { return cGroup_2; }
		
		//'$'
		public Keyword getDollarSignKeyword_2_0() { return cDollarSignKeyword_2_0; }
		
		//ID
		public RuleCall getIDTerminalRuleCall_2_1() { return cIDTerminalRuleCall_2_1; }
	}
	
	
	private final ModelElements pModel;
	private final ReferenceHolderElements pReferenceHolder;
	private final FQNElements pFQN;
	
	private final Grammar grammar;
	
	private final TerminalsGrammarAccess gaTerminals;

	@Inject
	public RefactoringTestLanguageGrammarAccess(GrammarProvider grammarProvider,
			TerminalsGrammarAccess gaTerminals) {
		this.grammar = internalFindGrammar(grammarProvider);
		this.gaTerminals = gaTerminals;
		this.pModel = new ModelElements();
		this.pReferenceHolder = new ReferenceHolderElements();
		this.pFQN = new FQNElements();
	}
	
	protected Grammar internalFindGrammar(GrammarProvider grammarProvider) {
		Grammar grammar = grammarProvider.getGrammar(this);
		while (grammar != null) {
			if ("org.eclipse.xtext.common.types.xtext.ui.RefactoringTestLanguage".equals(grammar.getName())) {
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
	//       referenceHolder+=ReferenceHolder*;
	public ModelElements getModelAccess() {
		return pModel;
	}
	
	public ParserRule getModelRule() {
		return getModelAccess().getRule();
	}
	
	//ReferenceHolder:
	//    name=ID defaultReference=[types::JvmType|FQN]
	//;
	public ReferenceHolderElements getReferenceHolderAccess() {
		return pReferenceHolder;
	}
	
	public ParserRule getReferenceHolderRule() {
		return getReferenceHolderAccess().getRule();
	}
	
	//FQN: ID ('.' ID)* ('$' ID)*;
	public FQNElements getFQNAccess() {
		return pFQN;
	}
	
	public ParserRule getFQNRule() {
		return getFQNAccess().getRule();
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

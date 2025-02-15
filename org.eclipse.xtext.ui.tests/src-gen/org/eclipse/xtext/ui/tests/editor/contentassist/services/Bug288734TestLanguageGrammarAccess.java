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
public class Bug288734TestLanguageGrammarAccess extends AbstractElementFinder.AbstractGrammarElementFinder {
	
	public class ModelElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug288734TestLanguage.Model");
		private final Assignment cConstantsAssignment = (Assignment)rule.eContents().get(1);
		private final RuleCall cConstantsTConstantParserRuleCall_0 = (RuleCall)cConstantsAssignment.eContents().get(0);
		
		//Model :
		//    constants+=TConstant
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//constants+=TConstant
		public Assignment getConstantsAssignment() { return cConstantsAssignment; }
		
		//TConstant
		public RuleCall getConstantsTConstantParserRuleCall_0() { return cConstantsTConstantParserRuleCall_0; }
	}
	public class TConstantElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug288734TestLanguage.TConstant");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final RuleCall cTStringConstantParserRuleCall_0 = (RuleCall)cAlternatives.eContents().get(0);
		private final RuleCall cTIntegerConstantParserRuleCall_1 = (RuleCall)cAlternatives.eContents().get(1);
		private final RuleCall cTBooleanConstantParserRuleCall_2 = (RuleCall)cAlternatives.eContents().get(2);
		
		//TConstant:
		//    TStringConstant | TIntegerConstant | TBooleanConstant
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//TStringConstant | TIntegerConstant | TBooleanConstant
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//TStringConstant
		public RuleCall getTStringConstantParserRuleCall_0() { return cTStringConstantParserRuleCall_0; }
		
		//TIntegerConstant
		public RuleCall getTIntegerConstantParserRuleCall_1() { return cTIntegerConstantParserRuleCall_1; }
		
		//TBooleanConstant
		public RuleCall getTBooleanConstantParserRuleCall_2() { return cTBooleanConstantParserRuleCall_2; }
	}
	public class TStringConstantElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug288734TestLanguage.TStringConstant");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cAnnotationsAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cAnnotationsTAnnotationParserRuleCall_0_0 = (RuleCall)cAnnotationsAssignment_0.eContents().get(0);
		private final Keyword cConstantKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Keyword cStringKeyword_2 = (Keyword)cGroup.eContents().get(2);
		private final Assignment cNameAssignment_3 = (Assignment)cGroup.eContents().get(3);
		private final RuleCall cNameIDTerminalRuleCall_3_0 = (RuleCall)cNameAssignment_3.eContents().get(0);
		
		//TStringConstant :
		//    (annotations+=TAnnotation)*
		//    'constant' 'string' name=ID
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//(annotations+=TAnnotation)*
		//'constant' 'string' name=ID
		public Group getGroup() { return cGroup; }
		
		//(annotations+=TAnnotation)*
		public Assignment getAnnotationsAssignment_0() { return cAnnotationsAssignment_0; }
		
		//TAnnotation
		public RuleCall getAnnotationsTAnnotationParserRuleCall_0_0() { return cAnnotationsTAnnotationParserRuleCall_0_0; }
		
		//'constant'
		public Keyword getConstantKeyword_1() { return cConstantKeyword_1; }
		
		//'string'
		public Keyword getStringKeyword_2() { return cStringKeyword_2; }
		
		//name=ID
		public Assignment getNameAssignment_3() { return cNameAssignment_3; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_3_0() { return cNameIDTerminalRuleCall_3_0; }
	}
	public class TIntegerConstantElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug288734TestLanguage.TIntegerConstant");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cAnnotationsAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cAnnotationsTAnnotationParserRuleCall_0_0 = (RuleCall)cAnnotationsAssignment_0.eContents().get(0);
		private final Keyword cConstantKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Keyword cIntegerKeyword_2 = (Keyword)cGroup.eContents().get(2);
		private final Assignment cNameAssignment_3 = (Assignment)cGroup.eContents().get(3);
		private final RuleCall cNameIDTerminalRuleCall_3_0 = (RuleCall)cNameAssignment_3.eContents().get(0);
		
		//TIntegerConstant:
		//    (annotations+=TAnnotation)*
		//    'constant' 'integer' name=ID
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//(annotations+=TAnnotation)*
		//'constant' 'integer' name=ID
		public Group getGroup() { return cGroup; }
		
		//(annotations+=TAnnotation)*
		public Assignment getAnnotationsAssignment_0() { return cAnnotationsAssignment_0; }
		
		//TAnnotation
		public RuleCall getAnnotationsTAnnotationParserRuleCall_0_0() { return cAnnotationsTAnnotationParserRuleCall_0_0; }
		
		//'constant'
		public Keyword getConstantKeyword_1() { return cConstantKeyword_1; }
		
		//'integer'
		public Keyword getIntegerKeyword_2() { return cIntegerKeyword_2; }
		
		//name=ID
		public Assignment getNameAssignment_3() { return cNameAssignment_3; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_3_0() { return cNameIDTerminalRuleCall_3_0; }
	}
	public class TBooleanConstantElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug288734TestLanguage.TBooleanConstant");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cAnnotationsAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cAnnotationsTAnnotationParserRuleCall_0_0 = (RuleCall)cAnnotationsAssignment_0.eContents().get(0);
		private final Keyword cConstantKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Keyword cBooleanKeyword_2 = (Keyword)cGroup.eContents().get(2);
		private final Assignment cNameAssignment_3 = (Assignment)cGroup.eContents().get(3);
		private final RuleCall cNameIDTerminalRuleCall_3_0 = (RuleCall)cNameAssignment_3.eContents().get(0);
		
		//TBooleanConstant:
		//    (annotations+=TAnnotation)*
		//    'constant' 'boolean' name=ID
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//(annotations+=TAnnotation)*
		//'constant' 'boolean' name=ID
		public Group getGroup() { return cGroup; }
		
		//(annotations+=TAnnotation)*
		public Assignment getAnnotationsAssignment_0() { return cAnnotationsAssignment_0; }
		
		//TAnnotation
		public RuleCall getAnnotationsTAnnotationParserRuleCall_0_0() { return cAnnotationsTAnnotationParserRuleCall_0_0; }
		
		//'constant'
		public Keyword getConstantKeyword_1() { return cConstantKeyword_1; }
		
		//'boolean'
		public Keyword getBooleanKeyword_2() { return cBooleanKeyword_2; }
		
		//name=ID
		public Assignment getNameAssignment_3() { return cNameAssignment_3; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_3_0() { return cNameIDTerminalRuleCall_3_0; }
	}
	public class TAnnotationElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.ui.tests.editor.contentassist.Bug288734TestLanguage.TAnnotation");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cDescKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Assignment cDescriptionAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cDescriptionSTRINGTerminalRuleCall_1_0 = (RuleCall)cDescriptionAssignment_1.eContents().get(0);
		
		//TAnnotation:
		//    '@desc' description=STRING
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//'@desc' description=STRING
		public Group getGroup() { return cGroup; }
		
		//'@desc'
		public Keyword getDescKeyword_0() { return cDescKeyword_0; }
		
		//description=STRING
		public Assignment getDescriptionAssignment_1() { return cDescriptionAssignment_1; }
		
		//STRING
		public RuleCall getDescriptionSTRINGTerminalRuleCall_1_0() { return cDescriptionSTRINGTerminalRuleCall_1_0; }
	}
	
	
	private final ModelElements pModel;
	private final TConstantElements pTConstant;
	private final TStringConstantElements pTStringConstant;
	private final TIntegerConstantElements pTIntegerConstant;
	private final TBooleanConstantElements pTBooleanConstant;
	private final TAnnotationElements pTAnnotation;
	
	private final Grammar grammar;
	
	private final TerminalsGrammarAccess gaTerminals;

	@Inject
	public Bug288734TestLanguageGrammarAccess(GrammarProvider grammarProvider,
			TerminalsGrammarAccess gaTerminals) {
		this.grammar = internalFindGrammar(grammarProvider);
		this.gaTerminals = gaTerminals;
		this.pModel = new ModelElements();
		this.pTConstant = new TConstantElements();
		this.pTStringConstant = new TStringConstantElements();
		this.pTIntegerConstant = new TIntegerConstantElements();
		this.pTBooleanConstant = new TBooleanConstantElements();
		this.pTAnnotation = new TAnnotationElements();
	}
	
	protected Grammar internalFindGrammar(GrammarProvider grammarProvider) {
		Grammar grammar = grammarProvider.getGrammar(this);
		while (grammar != null) {
			if ("org.eclipse.xtext.ui.tests.editor.contentassist.Bug288734TestLanguage".equals(grammar.getName())) {
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

	
	//Model :
	//    constants+=TConstant
	//;
	public ModelElements getModelAccess() {
		return pModel;
	}
	
	public ParserRule getModelRule() {
		return getModelAccess().getRule();
	}
	
	//TConstant:
	//    TStringConstant | TIntegerConstant | TBooleanConstant
	//;
	public TConstantElements getTConstantAccess() {
		return pTConstant;
	}
	
	public ParserRule getTConstantRule() {
		return getTConstantAccess().getRule();
	}
	
	//TStringConstant :
	//    (annotations+=TAnnotation)*
	//    'constant' 'string' name=ID
	//;
	public TStringConstantElements getTStringConstantAccess() {
		return pTStringConstant;
	}
	
	public ParserRule getTStringConstantRule() {
		return getTStringConstantAccess().getRule();
	}
	
	//TIntegerConstant:
	//    (annotations+=TAnnotation)*
	//    'constant' 'integer' name=ID
	//;
	public TIntegerConstantElements getTIntegerConstantAccess() {
		return pTIntegerConstant;
	}
	
	public ParserRule getTIntegerConstantRule() {
		return getTIntegerConstantAccess().getRule();
	}
	
	//TBooleanConstant:
	//    (annotations+=TAnnotation)*
	//    'constant' 'boolean' name=ID
	//;
	public TBooleanConstantElements getTBooleanConstantAccess() {
		return pTBooleanConstant;
	}
	
	public ParserRule getTBooleanConstantRule() {
		return getTBooleanConstantAccess().getRule();
	}
	
	//TAnnotation:
	//    '@desc' description=STRING
	//;
	public TAnnotationElements getTAnnotationAccess() {
		return pTAnnotation;
	}
	
	public ParserRule getTAnnotationRule() {
		return getTAnnotationAccess().getRule();
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

/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
package org.eclipse.xtext.builder.tests.services;

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
public class BuilderTestLanguageGrammarAccess extends AbstractElementFinder.AbstractGrammarElementFinder {
	
	public class NamedElementElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.builder.tests.BuilderTestLanguage.NamedElement");
		private final Alternatives cAlternatives = (Alternatives)rule.eContents().get(1);
		private final RuleCall cNamespaceParserRuleCall_0 = (RuleCall)cAlternatives.eContents().get(0);
		private final RuleCall cElementParserRuleCall_1 = (RuleCall)cAlternatives.eContents().get(1);
		
		//NamedElement :
		//    Namespace | Element;
		@Override public ParserRule getRule() { return rule; }
		
		//Namespace | Element
		public Alternatives getAlternatives() { return cAlternatives; }
		
		//Namespace
		public RuleCall getNamespaceParserRuleCall_0() { return cNamespaceParserRuleCall_0; }
		
		//Element
		public RuleCall getElementParserRuleCall_1() { return cElementParserRuleCall_1; }
	}
	public class NamespaceElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.builder.tests.BuilderTestLanguage.Namespace");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cNamespaceKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Assignment cNameAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cNameQualifiedNameParserRuleCall_1_0 = (RuleCall)cNameAssignment_1.eContents().get(0);
		private final Keyword cLeftCurlyBracketKeyword_2 = (Keyword)cGroup.eContents().get(2);
		private final Assignment cImportsAssignment_3 = (Assignment)cGroup.eContents().get(3);
		private final RuleCall cImportsImportParserRuleCall_3_0 = (RuleCall)cImportsAssignment_3.eContents().get(0);
		private final Assignment cElementsAssignment_4 = (Assignment)cGroup.eContents().get(4);
		private final RuleCall cElementsNamedElementParserRuleCall_4_0 = (RuleCall)cElementsAssignment_4.eContents().get(0);
		private final Keyword cRightCurlyBracketKeyword_5 = (Keyword)cGroup.eContents().get(5);
		
		//Namespace :
		//    'namespace' name=QualifiedName '{'
		//        imports+=Import*
		//        elements+=NamedElement*
		//    '}';
		@Override public ParserRule getRule() { return rule; }
		
		//'namespace' name=QualifiedName '{'
		//    imports+=Import*
		//    elements+=NamedElement*
		//'}'
		public Group getGroup() { return cGroup; }
		
		//'namespace'
		public Keyword getNamespaceKeyword_0() { return cNamespaceKeyword_0; }
		
		//name=QualifiedName
		public Assignment getNameAssignment_1() { return cNameAssignment_1; }
		
		//QualifiedName
		public RuleCall getNameQualifiedNameParserRuleCall_1_0() { return cNameQualifiedNameParserRuleCall_1_0; }
		
		//'{'
		public Keyword getLeftCurlyBracketKeyword_2() { return cLeftCurlyBracketKeyword_2; }
		
		//imports+=Import*
		public Assignment getImportsAssignment_3() { return cImportsAssignment_3; }
		
		//Import
		public RuleCall getImportsImportParserRuleCall_3_0() { return cImportsImportParserRuleCall_3_0; }
		
		//elements+=NamedElement*
		public Assignment getElementsAssignment_4() { return cElementsAssignment_4; }
		
		//NamedElement
		public RuleCall getElementsNamedElementParserRuleCall_4_0() { return cElementsNamedElementParserRuleCall_4_0; }
		
		//'}'
		public Keyword getRightCurlyBracketKeyword_5() { return cRightCurlyBracketKeyword_5; }
	}
	public class ImportElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.builder.tests.BuilderTestLanguage.Import");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cImportKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Assignment cImportedNamespaceAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cImportedNamespaceQualifiedNameParserRuleCall_1_0 = (RuleCall)cImportedNamespaceAssignment_1.eContents().get(0);
		
		//Import :
		//    'import' importedNamespace=QualifiedName;
		@Override public ParserRule getRule() { return rule; }
		
		//'import' importedNamespace=QualifiedName
		public Group getGroup() { return cGroup; }
		
		//'import'
		public Keyword getImportKeyword_0() { return cImportKeyword_0; }
		
		//importedNamespace=QualifiedName
		public Assignment getImportedNamespaceAssignment_1() { return cImportedNamespaceAssignment_1; }
		
		//QualifiedName
		public RuleCall getImportedNamespaceQualifiedNameParserRuleCall_1_0() { return cImportedNamespaceQualifiedNameParserRuleCall_1_0; }
	}
	public class ElementElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.builder.tests.BuilderTestLanguage.Element");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cObjectKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Assignment cNameAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cNameIDTerminalRuleCall_1_0 = (RuleCall)cNameAssignment_1.eContents().get(0);
		private final Group cGroup_2 = (Group)cGroup.eContents().get(2);
		private final Keyword cReferencesKeyword_2_0 = (Keyword)cGroup_2.eContents().get(0);
		private final Assignment cReferencesAssignment_2_1 = (Assignment)cGroup_2.eContents().get(1);
		private final CrossReference cReferencesElementCrossReference_2_1_0 = (CrossReference)cReferencesAssignment_2_1.eContents().get(0);
		private final RuleCall cReferencesElementQualifiedNameParserRuleCall_2_1_0_1 = (RuleCall)cReferencesElementCrossReference_2_1_0.eContents().get(1);
		private final Group cGroup_3 = (Group)cGroup.eContents().get(3);
		private final Keyword cOtherRefsKeyword_3_0 = (Keyword)cGroup_3.eContents().get(0);
		private final Assignment cOtherRefsAssignment_3_1 = (Assignment)cGroup_3.eContents().get(1);
		private final CrossReference cOtherRefsElementCrossReference_3_1_0 = (CrossReference)cOtherRefsAssignment_3_1.eContents().get(0);
		private final RuleCall cOtherRefsElementQualifiedNameParserRuleCall_3_1_0_1 = (RuleCall)cOtherRefsElementCrossReference_3_1_0.eContents().get(1);
		private final Group cGroup_3_2 = (Group)cGroup_3.eContents().get(2);
		private final Keyword cCommaKeyword_3_2_0 = (Keyword)cGroup_3_2.eContents().get(0);
		private final Assignment cOtherRefsAssignment_3_2_1 = (Assignment)cGroup_3_2.eContents().get(1);
		private final CrossReference cOtherRefsElementCrossReference_3_2_1_0 = (CrossReference)cOtherRefsAssignment_3_2_1.eContents().get(0);
		private final RuleCall cOtherRefsElementQualifiedNameParserRuleCall_3_2_1_0_1 = (RuleCall)cOtherRefsElementCrossReference_3_2_1_0.eContents().get(1);
		
		//Element :
		//    'object' name=ID ('references' references=[Element|QualifiedName])? ('otherRefs' otherRefs+=[Element|QualifiedName](',' otherRefs+=[Element|QualifiedName])*)?;
		@Override public ParserRule getRule() { return rule; }
		
		//'object' name=ID ('references' references=[Element|QualifiedName])? ('otherRefs' otherRefs+=[Element|QualifiedName](',' otherRefs+=[Element|QualifiedName])*)?
		public Group getGroup() { return cGroup; }
		
		//'object'
		public Keyword getObjectKeyword_0() { return cObjectKeyword_0; }
		
		//name=ID
		public Assignment getNameAssignment_1() { return cNameAssignment_1; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_1_0() { return cNameIDTerminalRuleCall_1_0; }
		
		//('references' references=[Element|QualifiedName])?
		public Group getGroup_2() { return cGroup_2; }
		
		//'references'
		public Keyword getReferencesKeyword_2_0() { return cReferencesKeyword_2_0; }
		
		//references=[Element|QualifiedName]
		public Assignment getReferencesAssignment_2_1() { return cReferencesAssignment_2_1; }
		
		//[Element|QualifiedName]
		public CrossReference getReferencesElementCrossReference_2_1_0() { return cReferencesElementCrossReference_2_1_0; }
		
		//QualifiedName
		public RuleCall getReferencesElementQualifiedNameParserRuleCall_2_1_0_1() { return cReferencesElementQualifiedNameParserRuleCall_2_1_0_1; }
		
		//('otherRefs' otherRefs+=[Element|QualifiedName](',' otherRefs+=[Element|QualifiedName])*)?
		public Group getGroup_3() { return cGroup_3; }
		
		//'otherRefs'
		public Keyword getOtherRefsKeyword_3_0() { return cOtherRefsKeyword_3_0; }
		
		//otherRefs+=[Element|QualifiedName]
		public Assignment getOtherRefsAssignment_3_1() { return cOtherRefsAssignment_3_1; }
		
		//[Element|QualifiedName]
		public CrossReference getOtherRefsElementCrossReference_3_1_0() { return cOtherRefsElementCrossReference_3_1_0; }
		
		//QualifiedName
		public RuleCall getOtherRefsElementQualifiedNameParserRuleCall_3_1_0_1() { return cOtherRefsElementQualifiedNameParserRuleCall_3_1_0_1; }
		
		//(',' otherRefs+=[Element|QualifiedName])*
		public Group getGroup_3_2() { return cGroup_3_2; }
		
		//','
		public Keyword getCommaKeyword_3_2_0() { return cCommaKeyword_3_2_0; }
		
		//otherRefs+=[Element|QualifiedName]
		public Assignment getOtherRefsAssignment_3_2_1() { return cOtherRefsAssignment_3_2_1; }
		
		//[Element|QualifiedName]
		public CrossReference getOtherRefsElementCrossReference_3_2_1_0() { return cOtherRefsElementCrossReference_3_2_1_0; }
		
		//QualifiedName
		public RuleCall getOtherRefsElementQualifiedNameParserRuleCall_3_2_1_0_1() { return cOtherRefsElementQualifiedNameParserRuleCall_3_2_1_0_1; }
	}
	public class QualifiedNameElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.builder.tests.BuilderTestLanguage.QualifiedName");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final RuleCall cIDTerminalRuleCall_0 = (RuleCall)cGroup.eContents().get(0);
		private final Group cGroup_1 = (Group)cGroup.eContents().get(1);
		private final Keyword cFullStopKeyword_1_0 = (Keyword)cGroup_1.eContents().get(0);
		private final RuleCall cIDTerminalRuleCall_1_1 = (RuleCall)cGroup_1.eContents().get(1);
		
		//QualifiedName :
		//    ID ('.' ID)*;
		@Override public ParserRule getRule() { return rule; }
		
		//ID ('.' ID)*
		public Group getGroup() { return cGroup; }
		
		//ID
		public RuleCall getIDTerminalRuleCall_0() { return cIDTerminalRuleCall_0; }
		
		//('.' ID)*
		public Group getGroup_1() { return cGroup_1; }
		
		//'.'
		public Keyword getFullStopKeyword_1_0() { return cFullStopKeyword_1_0; }
		
		//ID
		public RuleCall getIDTerminalRuleCall_1_1() { return cIDTerminalRuleCall_1_1; }
	}
	
	
	private final NamedElementElements pNamedElement;
	private final NamespaceElements pNamespace;
	private final ImportElements pImport;
	private final ElementElements pElement;
	private final QualifiedNameElements pQualifiedName;
	
	private final Grammar grammar;
	
	private final TerminalsGrammarAccess gaTerminals;

	@Inject
	public BuilderTestLanguageGrammarAccess(GrammarProvider grammarProvider,
			TerminalsGrammarAccess gaTerminals) {
		this.grammar = internalFindGrammar(grammarProvider);
		this.gaTerminals = gaTerminals;
		this.pNamedElement = new NamedElementElements();
		this.pNamespace = new NamespaceElements();
		this.pImport = new ImportElements();
		this.pElement = new ElementElements();
		this.pQualifiedName = new QualifiedNameElements();
	}
	
	protected Grammar internalFindGrammar(GrammarProvider grammarProvider) {
		Grammar grammar = grammarProvider.getGrammar(this);
		while (grammar != null) {
			if ("org.eclipse.xtext.builder.tests.BuilderTestLanguage".equals(grammar.getName())) {
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

	
	//NamedElement :
	//    Namespace | Element;
	public NamedElementElements getNamedElementAccess() {
		return pNamedElement;
	}
	
	public ParserRule getNamedElementRule() {
		return getNamedElementAccess().getRule();
	}
	
	//Namespace :
	//    'namespace' name=QualifiedName '{'
	//        imports+=Import*
	//        elements+=NamedElement*
	//    '}';
	public NamespaceElements getNamespaceAccess() {
		return pNamespace;
	}
	
	public ParserRule getNamespaceRule() {
		return getNamespaceAccess().getRule();
	}
	
	//Import :
	//    'import' importedNamespace=QualifiedName;
	public ImportElements getImportAccess() {
		return pImport;
	}
	
	public ParserRule getImportRule() {
		return getImportAccess().getRule();
	}
	
	//Element :
	//    'object' name=ID ('references' references=[Element|QualifiedName])? ('otherRefs' otherRefs+=[Element|QualifiedName](',' otherRefs+=[Element|QualifiedName])*)?;
	public ElementElements getElementAccess() {
		return pElement;
	}
	
	public ParserRule getElementRule() {
		return getElementAccess().getRule();
	}
	
	//QualifiedName :
	//    ID ('.' ID)*;
	public QualifiedNameElements getQualifiedNameAccess() {
		return pQualifiedName;
	}
	
	public ParserRule getQualifiedNameRule() {
		return getQualifiedNameAccess().getRule();
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

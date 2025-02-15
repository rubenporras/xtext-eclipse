/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
package org.eclipse.xtext.ui.tests.internal;

import com.google.common.collect.Maps;
import com.google.inject.Guice;
import com.google.inject.Injector;
import java.util.Collections;
import java.util.Map;
import org.apache.log4j.Logger;
import org.eclipse.ui.plugin.AbstractUIPlugin;
import org.eclipse.xtext.ui.shared.SharedStateModule;
import org.eclipse.xtext.ui.tests.FoldingTestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.TestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.editor.bracketmatching.BmTestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.editor.bracketmatching.ui.BmTestLanguageUiModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.Bug286935TestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.Bug288734TestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.Bug288760TestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.Bug289187TestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.Bug291022TestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.Bug303200TestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.Bug304681TestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.Bug307519TestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.Bug309949TestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.Bug347012TestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.Bug348199TestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.Bug360834TestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.Bug377311TestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.Bug381381TestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.ContentAssistContextTestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.ContentAssistCustomizingTestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.ContentAssistNoTerminalExtensionTestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.CrossReferenceProposalTestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.DatatypeRuleTestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.DomainModelTestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.GH341TestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.LookAheadContentAssistTestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.ParameterizedExpressionsTestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.ParametersTestLanguageExRuntimeModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.ParametersTestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.TwoContextsTestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.TwoParametersTestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.UnorderedGroupsTestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.ui.BacktrackingContentAssistTestLanguageUiModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.ui.Bug286935TestLanguageUiModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.ui.Bug287941TestLanguageUiModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.ui.Bug288734TestLanguageUiModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.ui.Bug288760TestLanguageUiModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.ui.Bug289187TestLanguageUiModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.ui.Bug291022TestLanguageUiModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.ui.Bug303200TestLanguageUiModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.ui.Bug304681TestLanguageUiModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.ui.Bug307519TestLanguageUiModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.ui.Bug309949TestLanguageUiModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.ui.Bug332217TestLanguageUiModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.ui.Bug347012TestLanguageUiModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.ui.Bug348199TestLanguageUiModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.ui.Bug348427TestLanguageUiModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.ui.Bug360834TestLanguageUiModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.ui.Bug377311TestLanguageUiModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.ui.Bug381381TestLanguageUiModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.ui.ContentAssistContextTestLanguageUiModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.ui.ContentAssistCustomizingTestLanguageUiModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.ui.ContentAssistNoTerminalExtensionTestLanguageUiModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.ui.CrossReferenceProposalTestLanguageUiModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.ui.DatatypeRuleTestLanguageUiModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.ui.DomainModelTestLanguageUiModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.ui.GH341TestLanguageUiModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.ui.LookAheadContentAssistTestLanguageUiModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.ui.ParameterizedExpressionsTestLanguageUiModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.ui.ParametersTestLanguageExUiModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.ui.ParametersTestLanguageUiModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.ui.TwoContextsTestLanguageUiModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.ui.TwoParametersTestLanguageUiModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.ui.UnorderedGroupsTestLanguageUiModule;
import org.eclipse.xtext.ui.tests.editor.encoding.EncodingUiTestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.editor.encoding.ui.EncodingUiTestLanguageUiModule;
import org.eclipse.xtext.ui.tests.editor.outline.OutlineTestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.editor.outline.ui.OutlineTestLanguageUiModule;
import org.eclipse.xtext.ui.tests.enumrules.EnumRulesUiTestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.enumrules.ui.EnumRulesUiTestLanguageUiModule;
import org.eclipse.xtext.ui.tests.linking.ImportUriUiTestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.linking.ui.ImportUriUiTestLanguageUiModule;
import org.eclipse.xtext.ui.tests.parser.keywords.KeywordsUiTestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.parser.keywords.ui.KeywordsUiTestLanguageUiModule;
import org.eclipse.xtext.ui.tests.quickfix.QuickfixCrossrefTestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.quickfix.ui.QuickfixCrossrefTestLanguageUiModule;
import org.eclipse.xtext.ui.tests.refactoring.RefactoringTestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.refactoring.ReferringTestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.refactoring.ui.RefactoringTestLanguageUiModule;
import org.eclipse.xtext.ui.tests.refactoring.ui.ReferringTestLanguageUiModule;
import org.eclipse.xtext.ui.tests.testlanguages.ContentAssistTestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.testlanguages.ReferenceGrammarUiTestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.testlanguages.ui.ContentAssistTestLanguageUiModule;
import org.eclipse.xtext.ui.tests.testlanguages.ui.ReferenceGrammarUiTestLanguageUiModule;
import org.eclipse.xtext.ui.tests.ui.FoldingTestLanguageUiModule;
import org.eclipse.xtext.ui.tests.ui.TestLanguageUiModule;
import org.eclipse.xtext.ui.tests.xmleditor.XmlRuntimeModule;
import org.eclipse.xtext.ui.tests.xmleditor.ui.XmlUiModule;
import org.eclipse.xtext.util.Modules2;
import org.osgi.framework.BundleContext;

/**
 * This class was generated. Customizations should only happen in a newly
 * introduced subclass. 
 */
public class TestsActivator extends AbstractUIPlugin {

	public static final String PLUGIN_ID = "org.eclipse.xtext.ui.tests";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_LINKING_IMPORTURIUITESTLANGUAGE = "org.eclipse.xtext.ui.tests.linking.ImportUriUiTestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_TWOCONTEXTSTESTLANGUAGE = "org.eclipse.xtext.ui.tests.editor.contentassist.TwoContextsTestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG286935TESTLANGUAGE = "org.eclipse.xtext.ui.tests.editor.contentassist.Bug286935TestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG287941TESTLANGUAGE = "org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG288734TESTLANGUAGE = "org.eclipse.xtext.ui.tests.editor.contentassist.Bug288734TestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG288760TESTLANGUAGE = "org.eclipse.xtext.ui.tests.editor.contentassist.Bug288760TestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG289187TESTLANGUAGE = "org.eclipse.xtext.ui.tests.editor.contentassist.Bug289187TestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG291022TESTLANGUAGE = "org.eclipse.xtext.ui.tests.editor.contentassist.Bug291022TestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG303200TESTLANGUAGE = "org.eclipse.xtext.ui.tests.editor.contentassist.Bug303200TestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG304681TESTLANGUAGE = "org.eclipse.xtext.ui.tests.editor.contentassist.Bug304681TestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG307519TESTLANGUAGE = "org.eclipse.xtext.ui.tests.editor.contentassist.Bug307519TestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG309949TESTLANGUAGE = "org.eclipse.xtext.ui.tests.editor.contentassist.Bug309949TestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG332217TESTLANGUAGE = "org.eclipse.xtext.ui.tests.editor.contentassist.Bug332217TestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG348427TESTLANGUAGE = "org.eclipse.xtext.ui.tests.editor.contentassist.Bug348427TestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG348199TESTLANGUAGE = "org.eclipse.xtext.ui.tests.editor.contentassist.Bug348199TestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG360834TESTLANGUAGE = "org.eclipse.xtext.ui.tests.editor.contentassist.Bug360834TestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG347012TESTLANGUAGE = "org.eclipse.xtext.ui.tests.editor.contentassist.Bug347012TestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG381381TESTLANGUAGE = "org.eclipse.xtext.ui.tests.editor.contentassist.Bug381381TestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_GH341TESTLANGUAGE = "org.eclipse.xtext.ui.tests.editor.contentassist.GH341TestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BACKTRACKINGCONTENTASSISTTESTLANGUAGE = "org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_CONTENTASSISTCONTEXTTESTLANGUAGE = "org.eclipse.xtext.ui.tests.editor.contentassist.ContentAssistContextTestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_CONTENTASSISTCUSTOMIZINGTESTLANGUAGE = "org.eclipse.xtext.ui.tests.editor.contentassist.ContentAssistCustomizingTestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_CONTENTASSISTNOTERMINALEXTENSIONTESTLANGUAGE = "org.eclipse.xtext.ui.tests.editor.contentassist.ContentAssistNoTerminalExtensionTestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_CROSSREFERENCEPROPOSALTESTLANGUAGE = "org.eclipse.xtext.ui.tests.editor.contentassist.CrossReferenceProposalTestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_DATATYPERULETESTLANGUAGE = "org.eclipse.xtext.ui.tests.editor.contentassist.DatatypeRuleTestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_LOOKAHEADCONTENTASSISTTESTLANGUAGE = "org.eclipse.xtext.ui.tests.editor.contentassist.LookAheadContentAssistTestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_DOMAINMODELTESTLANGUAGE = "org.eclipse.xtext.ui.tests.editor.contentassist.DomainModelTestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_UNORDEREDGROUPSTESTLANGUAGE = "org.eclipse.xtext.ui.tests.editor.contentassist.UnorderedGroupsTestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_PARAMETERSTESTLANGUAGE = "org.eclipse.xtext.ui.tests.editor.contentassist.ParametersTestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_PARAMETERSTESTLANGUAGEEX = "org.eclipse.xtext.ui.tests.editor.contentassist.ParametersTestLanguageEx";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_TWOPARAMETERSTESTLANGUAGE = "org.eclipse.xtext.ui.tests.editor.contentassist.TwoParametersTestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_PARAMETERIZEDEXPRESSIONSTESTLANGUAGE = "org.eclipse.xtext.ui.tests.editor.contentassist.ParameterizedExpressionsTestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_OUTLINE_OUTLINETESTLANGUAGE = "org.eclipse.xtext.ui.tests.editor.outline.OutlineTestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_PARSER_KEYWORDS_KEYWORDSUITESTLANGUAGE = "org.eclipse.xtext.ui.tests.parser.keywords.KeywordsUiTestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_TESTLANGUAGES_CONTENTASSISTTESTLANGUAGE = "org.eclipse.xtext.ui.tests.testlanguages.ContentAssistTestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_TESTLANGUAGES_REFERENCEGRAMMARUITESTLANGUAGE = "org.eclipse.xtext.ui.tests.testlanguages.ReferenceGrammarUiTestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_ENCODING_ENCODINGUITESTLANGUAGE = "org.eclipse.xtext.ui.tests.editor.encoding.EncodingUiTestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_ENUMRULES_ENUMRULESUITESTLANGUAGE = "org.eclipse.xtext.ui.tests.enumrules.EnumRulesUiTestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_TESTLANGUAGE = "org.eclipse.xtext.ui.tests.TestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_FOLDINGTESTLANGUAGE = "org.eclipse.xtext.ui.tests.FoldingTestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_BRACKETMATCHING_BMTESTLANGUAGE = "org.eclipse.xtext.ui.tests.editor.bracketmatching.BmTestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_QUICKFIX_QUICKFIXCROSSREFTESTLANGUAGE = "org.eclipse.xtext.ui.tests.quickfix.QuickfixCrossrefTestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_REFACTORING_REFACTORINGTESTLANGUAGE = "org.eclipse.xtext.ui.tests.refactoring.RefactoringTestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_REFACTORING_REFERRINGTESTLANGUAGE = "org.eclipse.xtext.ui.tests.refactoring.ReferringTestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG377311TESTLANGUAGE = "org.eclipse.xtext.ui.tests.editor.contentassist.Bug377311TestLanguage";
	public static final String ORG_ECLIPSE_XTEXT_UI_TESTS_XMLEDITOR_XML = "org.eclipse.xtext.ui.tests.xmleditor.Xml";
	
	private static final Logger logger = Logger.getLogger(TestsActivator.class);
	
	private static TestsActivator INSTANCE;
	
	private Map<String, Injector> injectors = Collections.synchronizedMap(Maps.<String, Injector> newHashMapWithExpectedSize(1));
	
	@Override
	public void start(BundleContext context) throws Exception {
		super.start(context);
		INSTANCE = this;
	}
	
	@Override
	public void stop(BundleContext context) throws Exception {
		injectors.clear();
		INSTANCE = null;
		super.stop(context);
	}
	
	public static TestsActivator getInstance() {
		return INSTANCE;
	}
	
	public Injector getInjector(String language) {
		synchronized (injectors) {
			Injector injector = injectors.get(language);
			if (injector == null) {
				injectors.put(language, injector = createInjector(language));
			}
			return injector;
		}
	}
	
	protected Injector createInjector(String language) {
		try {
			com.google.inject.Module runtimeModule = getRuntimeModule(language);
			com.google.inject.Module sharedStateModule = getSharedStateModule();
			com.google.inject.Module uiModule = getUiModule(language);
			com.google.inject.Module mergedModule = Modules2.mixin(runtimeModule, sharedStateModule, uiModule);
			return Guice.createInjector(mergedModule);
		} catch (Exception e) {
			logger.error("Failed to create injector for " + language);
			logger.error(e.getMessage(), e);
			throw new RuntimeException("Failed to create injector for " + language, e);
		}
	}
	
	protected com.google.inject.Module getRuntimeModule(String grammar) {
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_LINKING_IMPORTURIUITESTLANGUAGE.equals(grammar)) {
			return new ImportUriUiTestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_TWOCONTEXTSTESTLANGUAGE.equals(grammar)) {
			return new TwoContextsTestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG286935TESTLANGUAGE.equals(grammar)) {
			return new Bug286935TestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG287941TESTLANGUAGE.equals(grammar)) {
			return new Bug287941TestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG288734TESTLANGUAGE.equals(grammar)) {
			return new Bug288734TestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG288760TESTLANGUAGE.equals(grammar)) {
			return new Bug288760TestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG289187TESTLANGUAGE.equals(grammar)) {
			return new Bug289187TestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG291022TESTLANGUAGE.equals(grammar)) {
			return new Bug291022TestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG303200TESTLANGUAGE.equals(grammar)) {
			return new Bug303200TestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG304681TESTLANGUAGE.equals(grammar)) {
			return new Bug304681TestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG307519TESTLANGUAGE.equals(grammar)) {
			return new Bug307519TestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG309949TESTLANGUAGE.equals(grammar)) {
			return new Bug309949TestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG332217TESTLANGUAGE.equals(grammar)) {
			return new Bug332217TestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG348427TESTLANGUAGE.equals(grammar)) {
			return new Bug348427TestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG348199TESTLANGUAGE.equals(grammar)) {
			return new Bug348199TestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG360834TESTLANGUAGE.equals(grammar)) {
			return new Bug360834TestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG347012TESTLANGUAGE.equals(grammar)) {
			return new Bug347012TestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG381381TESTLANGUAGE.equals(grammar)) {
			return new Bug381381TestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_GH341TESTLANGUAGE.equals(grammar)) {
			return new GH341TestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BACKTRACKINGCONTENTASSISTTESTLANGUAGE.equals(grammar)) {
			return new BacktrackingContentAssistTestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_CONTENTASSISTCONTEXTTESTLANGUAGE.equals(grammar)) {
			return new ContentAssistContextTestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_CONTENTASSISTCUSTOMIZINGTESTLANGUAGE.equals(grammar)) {
			return new ContentAssistCustomizingTestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_CONTENTASSISTNOTERMINALEXTENSIONTESTLANGUAGE.equals(grammar)) {
			return new ContentAssistNoTerminalExtensionTestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_CROSSREFERENCEPROPOSALTESTLANGUAGE.equals(grammar)) {
			return new CrossReferenceProposalTestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_DATATYPERULETESTLANGUAGE.equals(grammar)) {
			return new DatatypeRuleTestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_LOOKAHEADCONTENTASSISTTESTLANGUAGE.equals(grammar)) {
			return new LookAheadContentAssistTestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_DOMAINMODELTESTLANGUAGE.equals(grammar)) {
			return new DomainModelTestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_UNORDEREDGROUPSTESTLANGUAGE.equals(grammar)) {
			return new UnorderedGroupsTestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_PARAMETERSTESTLANGUAGE.equals(grammar)) {
			return new ParametersTestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_PARAMETERSTESTLANGUAGEEX.equals(grammar)) {
			return new ParametersTestLanguageExRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_TWOPARAMETERSTESTLANGUAGE.equals(grammar)) {
			return new TwoParametersTestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_PARAMETERIZEDEXPRESSIONSTESTLANGUAGE.equals(grammar)) {
			return new ParameterizedExpressionsTestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_OUTLINE_OUTLINETESTLANGUAGE.equals(grammar)) {
			return new OutlineTestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_PARSER_KEYWORDS_KEYWORDSUITESTLANGUAGE.equals(grammar)) {
			return new KeywordsUiTestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_TESTLANGUAGES_CONTENTASSISTTESTLANGUAGE.equals(grammar)) {
			return new ContentAssistTestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_TESTLANGUAGES_REFERENCEGRAMMARUITESTLANGUAGE.equals(grammar)) {
			return new ReferenceGrammarUiTestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_ENCODING_ENCODINGUITESTLANGUAGE.equals(grammar)) {
			return new EncodingUiTestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_ENUMRULES_ENUMRULESUITESTLANGUAGE.equals(grammar)) {
			return new EnumRulesUiTestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_TESTLANGUAGE.equals(grammar)) {
			return new TestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_FOLDINGTESTLANGUAGE.equals(grammar)) {
			return new FoldingTestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_BRACKETMATCHING_BMTESTLANGUAGE.equals(grammar)) {
			return new BmTestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_QUICKFIX_QUICKFIXCROSSREFTESTLANGUAGE.equals(grammar)) {
			return new QuickfixCrossrefTestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_REFACTORING_REFACTORINGTESTLANGUAGE.equals(grammar)) {
			return new RefactoringTestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_REFACTORING_REFERRINGTESTLANGUAGE.equals(grammar)) {
			return new ReferringTestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG377311TESTLANGUAGE.equals(grammar)) {
			return new Bug377311TestLanguageRuntimeModule();
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_XMLEDITOR_XML.equals(grammar)) {
			return new XmlRuntimeModule();
		}
		throw new IllegalArgumentException(grammar);
	}
	
	protected com.google.inject.Module getUiModule(String grammar) {
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_LINKING_IMPORTURIUITESTLANGUAGE.equals(grammar)) {
			return new ImportUriUiTestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_TWOCONTEXTSTESTLANGUAGE.equals(grammar)) {
			return new TwoContextsTestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG286935TESTLANGUAGE.equals(grammar)) {
			return new Bug286935TestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG287941TESTLANGUAGE.equals(grammar)) {
			return new Bug287941TestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG288734TESTLANGUAGE.equals(grammar)) {
			return new Bug288734TestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG288760TESTLANGUAGE.equals(grammar)) {
			return new Bug288760TestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG289187TESTLANGUAGE.equals(grammar)) {
			return new Bug289187TestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG291022TESTLANGUAGE.equals(grammar)) {
			return new Bug291022TestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG303200TESTLANGUAGE.equals(grammar)) {
			return new Bug303200TestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG304681TESTLANGUAGE.equals(grammar)) {
			return new Bug304681TestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG307519TESTLANGUAGE.equals(grammar)) {
			return new Bug307519TestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG309949TESTLANGUAGE.equals(grammar)) {
			return new Bug309949TestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG332217TESTLANGUAGE.equals(grammar)) {
			return new Bug332217TestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG348427TESTLANGUAGE.equals(grammar)) {
			return new Bug348427TestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG348199TESTLANGUAGE.equals(grammar)) {
			return new Bug348199TestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG360834TESTLANGUAGE.equals(grammar)) {
			return new Bug360834TestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG347012TESTLANGUAGE.equals(grammar)) {
			return new Bug347012TestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG381381TESTLANGUAGE.equals(grammar)) {
			return new Bug381381TestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_GH341TESTLANGUAGE.equals(grammar)) {
			return new GH341TestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BACKTRACKINGCONTENTASSISTTESTLANGUAGE.equals(grammar)) {
			return new BacktrackingContentAssistTestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_CONTENTASSISTCONTEXTTESTLANGUAGE.equals(grammar)) {
			return new ContentAssistContextTestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_CONTENTASSISTCUSTOMIZINGTESTLANGUAGE.equals(grammar)) {
			return new ContentAssistCustomizingTestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_CONTENTASSISTNOTERMINALEXTENSIONTESTLANGUAGE.equals(grammar)) {
			return new ContentAssistNoTerminalExtensionTestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_CROSSREFERENCEPROPOSALTESTLANGUAGE.equals(grammar)) {
			return new CrossReferenceProposalTestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_DATATYPERULETESTLANGUAGE.equals(grammar)) {
			return new DatatypeRuleTestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_LOOKAHEADCONTENTASSISTTESTLANGUAGE.equals(grammar)) {
			return new LookAheadContentAssistTestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_DOMAINMODELTESTLANGUAGE.equals(grammar)) {
			return new DomainModelTestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_UNORDEREDGROUPSTESTLANGUAGE.equals(grammar)) {
			return new UnorderedGroupsTestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_PARAMETERSTESTLANGUAGE.equals(grammar)) {
			return new ParametersTestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_PARAMETERSTESTLANGUAGEEX.equals(grammar)) {
			return new ParametersTestLanguageExUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_TWOPARAMETERSTESTLANGUAGE.equals(grammar)) {
			return new TwoParametersTestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_PARAMETERIZEDEXPRESSIONSTESTLANGUAGE.equals(grammar)) {
			return new ParameterizedExpressionsTestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_OUTLINE_OUTLINETESTLANGUAGE.equals(grammar)) {
			return new OutlineTestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_PARSER_KEYWORDS_KEYWORDSUITESTLANGUAGE.equals(grammar)) {
			return new KeywordsUiTestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_TESTLANGUAGES_CONTENTASSISTTESTLANGUAGE.equals(grammar)) {
			return new ContentAssistTestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_TESTLANGUAGES_REFERENCEGRAMMARUITESTLANGUAGE.equals(grammar)) {
			return new ReferenceGrammarUiTestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_ENCODING_ENCODINGUITESTLANGUAGE.equals(grammar)) {
			return new EncodingUiTestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_ENUMRULES_ENUMRULESUITESTLANGUAGE.equals(grammar)) {
			return new EnumRulesUiTestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_TESTLANGUAGE.equals(grammar)) {
			return new TestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_FOLDINGTESTLANGUAGE.equals(grammar)) {
			return new FoldingTestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_BRACKETMATCHING_BMTESTLANGUAGE.equals(grammar)) {
			return new BmTestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_QUICKFIX_QUICKFIXCROSSREFTESTLANGUAGE.equals(grammar)) {
			return new QuickfixCrossrefTestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_REFACTORING_REFACTORINGTESTLANGUAGE.equals(grammar)) {
			return new RefactoringTestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_REFACTORING_REFERRINGTESTLANGUAGE.equals(grammar)) {
			return new ReferringTestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_EDITOR_CONTENTASSIST_BUG377311TESTLANGUAGE.equals(grammar)) {
			return new Bug377311TestLanguageUiModule(this);
		}
		if (ORG_ECLIPSE_XTEXT_UI_TESTS_XMLEDITOR_XML.equals(grammar)) {
			return new XmlUiModule(this);
		}
		throw new IllegalArgumentException(grammar);
	}
	
	protected com.google.inject.Module getSharedStateModule() {
		return new SharedStateModule();
	}
	
	
}

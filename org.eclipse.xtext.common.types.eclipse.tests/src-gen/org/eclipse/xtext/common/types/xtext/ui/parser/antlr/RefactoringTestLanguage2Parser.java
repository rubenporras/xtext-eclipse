/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
package org.eclipse.xtext.common.types.xtext.ui.parser.antlr;

import com.google.inject.Inject;
import org.eclipse.xtext.common.types.xtext.ui.parser.antlr.internal.InternalRefactoringTestLanguage2Parser;
import org.eclipse.xtext.common.types.xtext.ui.services.RefactoringTestLanguage2GrammarAccess;
import org.eclipse.xtext.parser.antlr.AbstractAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;

public class RefactoringTestLanguage2Parser extends AbstractAntlrParser {

	@Inject
	private RefactoringTestLanguage2GrammarAccess grammarAccess;

	@Override
	protected void setInitialHiddenTokens(XtextTokenStream tokenStream) {
		tokenStream.setInitialHiddenTokens("RULE_WS", "RULE_ML_COMMENT", "RULE_SL_COMMENT");
	}
	

	@Override
	protected InternalRefactoringTestLanguage2Parser createParser(XtextTokenStream stream) {
		return new InternalRefactoringTestLanguage2Parser(stream, getGrammarAccess());
	}

	@Override 
	protected String getDefaultRuleName() {
		return "Entry";
	}

	public RefactoringTestLanguage2GrammarAccess getGrammarAccess() {
		return this.grammarAccess;
	}

	public void setGrammarAccess(RefactoringTestLanguage2GrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}
}

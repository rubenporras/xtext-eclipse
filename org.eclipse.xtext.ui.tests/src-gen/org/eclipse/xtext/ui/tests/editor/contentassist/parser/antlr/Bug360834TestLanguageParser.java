/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
package org.eclipse.xtext.ui.tests.editor.contentassist.parser.antlr;

import com.google.inject.Inject;
import org.eclipse.xtext.parser.antlr.AbstractAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.ui.tests.editor.contentassist.parser.antlr.internal.InternalBug360834TestLanguageParser;
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug360834TestLanguageGrammarAccess;

public class Bug360834TestLanguageParser extends AbstractAntlrParser {

	@Inject
	private Bug360834TestLanguageGrammarAccess grammarAccess;

	@Override
	protected void setInitialHiddenTokens(XtextTokenStream tokenStream) {
		tokenStream.setInitialHiddenTokens("RULE_WS", "RULE_ML_COMMENT", "RULE_SL_COMMENT");
	}
	

	@Override
	protected InternalBug360834TestLanguageParser createParser(XtextTokenStream stream) {
		return new InternalBug360834TestLanguageParser(stream, getGrammarAccess());
	}

	@Override 
	protected String getDefaultRuleName() {
		return "Model";
	}

	public Bug360834TestLanguageGrammarAccess getGrammarAccess() {
		return this.grammarAccess;
	}

	public void setGrammarAccess(Bug360834TestLanguageGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}
}

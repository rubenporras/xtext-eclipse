/*******************************************************************************
 * Copyright (c) 2009, 2017 itemis AG (http://www.itemis.eu) and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *******************************************************************************/
package org.eclipse.xtext.ui.tests.editor.contentassist;

import org.eclipse.xtext.testing.InjectWith;
import org.junit.jupiter.api.extension.ExtendWith;
import org.eclipse.xtext.ui.testing.AbstractContentAssistTest;
import org.eclipse.xtext.ui.tests.parser.keywords.ui.tests.KeywordsUiTestLanguageUiInjectorProvider;
import org.junit.jupiter.api.Test;
import org.eclipse.xtext.testing.extensions.InjectionExtension;

/**
 * @author Sebastian Zarnekow - Initial contribution and API
 */
@InjectWith(KeywordsUiTestLanguageUiInjectorProvider.class)
@ExtendWith(InjectionExtension.class)
public class KeywordContentAssistTest extends AbstractContentAssistTest {
	
	@Test public void testKeywordWithBackslashes() throws Exception {
		newBuilder().assertText(
				"foo\\bar", "foo\\", "\\bar", "\\",
				"\"a\"", "'b'", "'c'", "\"d\"");
	}

}

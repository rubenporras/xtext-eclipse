/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
package org.eclipse.xtext.ui.tests.editor.outline.ide.contentassist.antlr;

import com.google.common.collect.ImmutableMap;
import com.google.inject.Inject;
import com.google.inject.Singleton;
import java.util.Map;
import org.eclipse.xtext.AbstractElement;
import org.eclipse.xtext.ide.editor.contentassist.antlr.AbstractContentAssistParser;
import org.eclipse.xtext.ui.tests.editor.outline.ide.contentassist.antlr.internal.InternalOutlineTestLanguageParser;
import org.eclipse.xtext.ui.tests.editor.outline.services.OutlineTestLanguageGrammarAccess;

public class OutlineTestLanguageParser extends AbstractContentAssistParser {

	@Singleton
	public static final class NameMappings {
		
		private final Map<AbstractElement, String> mappings;
		
		@Inject
		public NameMappings(OutlineTestLanguageGrammarAccess grammarAccess) {
			ImmutableMap.Builder<AbstractElement, String> builder = ImmutableMap.builder();
			init(builder, grammarAccess);
			this.mappings = builder.build();
		}
		
		public String getRuleName(AbstractElement element) {
			return mappings.get(element);
		}
		
		private static void init(ImmutableMap.Builder<AbstractElement, String> builder, OutlineTestLanguageGrammarAccess grammarAccess) {
			builder.put(grammarAccess.getElementAccess().getGroup(), "rule__Element__Group__0");
			builder.put(grammarAccess.getElementAccess().getGroup_1(), "rule__Element__Group_1__0");
			builder.put(grammarAccess.getModelAccess().getElementsAssignment(), "rule__Model__ElementsAssignment");
			builder.put(grammarAccess.getElementAccess().getNameAssignment_0(), "rule__Element__NameAssignment_0");
			builder.put(grammarAccess.getElementAccess().getXrefsAssignment_1_1(), "rule__Element__XrefsAssignment_1_1");
			builder.put(grammarAccess.getElementAccess().getChildrenAssignment_3(), "rule__Element__ChildrenAssignment_3");
		}
	}
	
	@Inject
	private NameMappings nameMappings;

	@Inject
	private OutlineTestLanguageGrammarAccess grammarAccess;

	@Override
	protected InternalOutlineTestLanguageParser createParser() {
		InternalOutlineTestLanguageParser result = new InternalOutlineTestLanguageParser(null);
		result.setGrammarAccess(grammarAccess);
		return result;
	}

	@Override
	protected String getRuleName(AbstractElement element) {
		return nameMappings.getRuleName(element);
	}

	@Override
	protected String[] getInitialHiddenTokens() {
		return new String[] { "RULE_WS", "RULE_ML_COMMENT", "RULE_SL_COMMENT" };
	}

	public OutlineTestLanguageGrammarAccess getGrammarAccess() {
		return this.grammarAccess;
	}

	public void setGrammarAccess(OutlineTestLanguageGrammarAccess grammarAccess) {
		this.grammarAccess = grammarAccess;
	}
	
	public NameMappings getNameMappings() {
		return nameMappings;
	}
	
	public void setNameMappings(NameMappings nameMappings) {
		this.nameMappings = nameMappings;
	}
}

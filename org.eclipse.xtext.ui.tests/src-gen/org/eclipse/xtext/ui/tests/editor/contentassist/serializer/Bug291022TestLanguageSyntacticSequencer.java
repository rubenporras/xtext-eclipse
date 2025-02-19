/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
package org.eclipse.xtext.ui.tests.editor.contentassist.serializer;

import com.google.inject.Inject;
import java.util.List;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.IGrammarAccess;
import org.eclipse.xtext.RuleCall;
import org.eclipse.xtext.nodemodel.INode;
import org.eclipse.xtext.serializer.analysis.GrammarAlias.AbstractElementAlias;
import org.eclipse.xtext.serializer.analysis.GrammarAlias.AlternativeAlias;
import org.eclipse.xtext.serializer.analysis.GrammarAlias.GroupAlias;
import org.eclipse.xtext.serializer.analysis.GrammarAlias.TokenAlias;
import org.eclipse.xtext.serializer.analysis.ISyntacticSequencerPDAProvider.ISynNavigable;
import org.eclipse.xtext.serializer.analysis.ISyntacticSequencerPDAProvider.ISynTransition;
import org.eclipse.xtext.serializer.sequencer.AbstractSyntacticSequencer;
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug291022TestLanguageGrammarAccess;

@SuppressWarnings("all")
public class Bug291022TestLanguageSyntacticSequencer extends AbstractSyntacticSequencer {

	protected Bug291022TestLanguageGrammarAccess grammarAccess;
	protected AbstractElementAlias match_ModelElement_SemicolonKeyword_3_0_or___LeftCurlyBracketKeyword_3_1_0_RightCurlyBracketKeyword_3_1_2__;
	protected AbstractElementAlias match_RootModel___LeftCurlyBracketKeyword_3_0_RightCurlyBracketKeyword_3_2__q;
	
	@Inject
	protected void init(IGrammarAccess access) {
		grammarAccess = (Bug291022TestLanguageGrammarAccess) access;
		match_ModelElement_SemicolonKeyword_3_0_or___LeftCurlyBracketKeyword_3_1_0_RightCurlyBracketKeyword_3_1_2__ = new AlternativeAlias(false, false, new GroupAlias(false, false, new TokenAlias(false, false, grammarAccess.getModelElementAccess().getLeftCurlyBracketKeyword_3_1_0()), new TokenAlias(false, false, grammarAccess.getModelElementAccess().getRightCurlyBracketKeyword_3_1_2())), new TokenAlias(false, false, grammarAccess.getModelElementAccess().getSemicolonKeyword_3_0()));
		match_RootModel___LeftCurlyBracketKeyword_3_0_RightCurlyBracketKeyword_3_2__q = new GroupAlias(false, true, new TokenAlias(false, false, grammarAccess.getRootModelAccess().getLeftCurlyBracketKeyword_3_0()), new TokenAlias(false, false, grammarAccess.getRootModelAccess().getRightCurlyBracketKeyword_3_2()));
	}
	
	@Override
	protected String getUnassignedRuleCallToken(EObject semanticObject, RuleCall ruleCall, INode node) {
		return "";
	}
	
	
	@Override
	protected void emitUnassignedTokens(EObject semanticObject, ISynTransition transition, INode fromNode, INode toNode) {
		if (transition.getAmbiguousSyntaxes().isEmpty()) return;
		List<INode> transitionNodes = collectNodes(fromNode, toNode);
		for (AbstractElementAlias syntax : transition.getAmbiguousSyntaxes()) {
			List<INode> syntaxNodes = getNodesFor(transitionNodes, syntax);
			if (match_ModelElement_SemicolonKeyword_3_0_or___LeftCurlyBracketKeyword_3_1_0_RightCurlyBracketKeyword_3_1_2__.equals(syntax))
				emit_ModelElement_SemicolonKeyword_3_0_or___LeftCurlyBracketKeyword_3_1_0_RightCurlyBracketKeyword_3_1_2__(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_RootModel___LeftCurlyBracketKeyword_3_0_RightCurlyBracketKeyword_3_2__q.equals(syntax))
				emit_RootModel___LeftCurlyBracketKeyword_3_0_RightCurlyBracketKeyword_3_2__q(semanticObject, getLastNavigableState(), syntaxNodes);
			else acceptNodes(getLastNavigableState(), syntaxNodes);
		}
	}

	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     ';' | ('{' '}')
	 *
	 * This ambiguous syntax occurs at:
	 *     firstReference=[ModelElement|ID] (ambiguity) (rule end)
	 *     name=ID (ambiguity) (rule end)
	 *     secondReference=[ModelElement|ID] (ambiguity) (rule end)
	 
	 * </pre>
	 */
	protected void emit_ModelElement_SemicolonKeyword_3_0_or___LeftCurlyBracketKeyword_3_1_0_RightCurlyBracketKeyword_3_1_2__(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     ('{' '}')?
	 *
	 * This ambiguous syntax occurs at:
	 *     name=ID (ambiguity) (rule end)
	 *     type=[ModelElement|ID] (ambiguity) (rule end)
	 
	 * </pre>
	 */
	protected void emit_RootModel___LeftCurlyBracketKeyword_3_0_RightCurlyBracketKeyword_3_2__q(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
}

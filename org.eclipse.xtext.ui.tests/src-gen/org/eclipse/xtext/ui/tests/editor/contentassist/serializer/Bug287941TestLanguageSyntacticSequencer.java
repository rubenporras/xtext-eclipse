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
import org.eclipse.xtext.serializer.analysis.GrammarAlias.TokenAlias;
import org.eclipse.xtext.serializer.analysis.ISyntacticSequencerPDAProvider.ISynNavigable;
import org.eclipse.xtext.serializer.analysis.ISyntacticSequencerPDAProvider.ISynTransition;
import org.eclipse.xtext.serializer.sequencer.AbstractSyntacticSequencer;
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug287941TestLanguageGrammarAccess;

@SuppressWarnings("all")
public class Bug287941TestLanguageSyntacticSequencer extends AbstractSyntacticSequencer {

	protected Bug287941TestLanguageGrammarAccess grammarAccess;
	protected AbstractElementAlias match_ParWhereEntry_LeftParenthesisKeyword_0_a;
	protected AbstractElementAlias match_ParWhereEntry_LeftParenthesisKeyword_0_p;
	
	@Inject
	protected void init(IGrammarAccess access) {
		grammarAccess = (Bug287941TestLanguageGrammarAccess) access;
		match_ParWhereEntry_LeftParenthesisKeyword_0_a = new TokenAlias(true, true, grammarAccess.getParWhereEntryAccess().getLeftParenthesisKeyword_0());
		match_ParWhereEntry_LeftParenthesisKeyword_0_p = new TokenAlias(true, false, grammarAccess.getParWhereEntryAccess().getLeftParenthesisKeyword_0());
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
			if (match_ParWhereEntry_LeftParenthesisKeyword_0_a.equals(syntax))
				emit_ParWhereEntry_LeftParenthesisKeyword_0_a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_ParWhereEntry_LeftParenthesisKeyword_0_p.equals(syntax))
				emit_ParWhereEntry_LeftParenthesisKeyword_0_p(semanticObject, getLastNavigableState(), syntaxNodes);
			else acceptNodes(getLastNavigableState(), syntaxNodes);
		}
	}

	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     '('*
	 *
	 * This ambiguous syntax occurs at:
	 *     (rule start) (ambiguity) alias=[FromEntry|ID]
	 *     (rule start) (ambiguity) {AndWhereEntry.entries+=}
	 *     (rule start) (ambiguity) {OrWhereEntry.entries+=}
	 
	 * </pre>
	 */
	protected void emit_ParWhereEntry_LeftParenthesisKeyword_0_a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     '('+
	 *
	 * This ambiguous syntax occurs at:
	 *     (rule start) (ambiguity) alias=[FromEntry|ID]
	 *     (rule start) (ambiguity) {AndWhereEntry.entries+=}
	 *     (rule start) (ambiguity) {OrWhereEntry.entries+=}
	 
	 * </pre>
	 */
	protected void emit_ParWhereEntry_LeftParenthesisKeyword_0_p(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
}

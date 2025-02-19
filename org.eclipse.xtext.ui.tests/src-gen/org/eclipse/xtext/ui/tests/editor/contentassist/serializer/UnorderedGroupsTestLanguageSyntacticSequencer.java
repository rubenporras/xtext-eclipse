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
import org.eclipse.xtext.serializer.analysis.GrammarAlias.GroupAlias;
import org.eclipse.xtext.serializer.analysis.GrammarAlias.TokenAlias;
import org.eclipse.xtext.serializer.analysis.ISyntacticSequencerPDAProvider.ISynNavigable;
import org.eclipse.xtext.serializer.analysis.ISyntacticSequencerPDAProvider.ISynTransition;
import org.eclipse.xtext.serializer.sequencer.AbstractSyntacticSequencer;
import org.eclipse.xtext.ui.tests.editor.contentassist.services.UnorderedGroupsTestLanguageGrammarAccess;

@SuppressWarnings("all")
public class UnorderedGroupsTestLanguageSyntacticSequencer extends AbstractSyntacticSequencer {

	protected UnorderedGroupsTestLanguageGrammarAccess grammarAccess;
	protected AbstractElementAlias match_LoopedAlternativeModel___BeforeKeyword_0_4_0_AfterKeyword_0_4_1_a__a;
	
	@Inject
	protected void init(IGrammarAccess access) {
		grammarAccess = (UnorderedGroupsTestLanguageGrammarAccess) access;
		match_LoopedAlternativeModel___BeforeKeyword_0_4_0_AfterKeyword_0_4_1_a__a = new GroupAlias(true, true, new TokenAlias(false, false, grammarAccess.getLoopedAlternativeModelAccess().getBeforeKeyword_0_4_0()), new TokenAlias(true, true, grammarAccess.getLoopedAlternativeModelAccess().getAfterKeyword_0_4_1()));
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
			if (match_LoopedAlternativeModel___BeforeKeyword_0_4_0_AfterKeyword_0_4_1_a__a.equals(syntax))
				emit_LoopedAlternativeModel___BeforeKeyword_0_4_0_AfterKeyword_0_4_1_a__a(semanticObject, getLastNavigableState(), syntaxNodes);
			else acceptNodes(getLastNavigableState(), syntaxNodes);
		}
	}

	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     ('before' 'after'*)*
	 *
	 * This ambiguous syntax occurs at:
	 *     (rule start) (ambiguity) 'class' name=ID
	 *     (rule start) (ambiguity) abstract+='abstract'
	 *     (rule start) (ambiguity) final+='final'
	 *     (rule start) (ambiguity) static+='static'
	 *     (rule start) (ambiguity) synchronized+='synchronized'
	 *     (rule start) (ambiguity) visibility+='private'
	 *     (rule start) (ambiguity) visibility+='protected'
	 *     (rule start) (ambiguity) visibility+='public'
	 *     abstract+='abstract' (ambiguity) 'class' name=ID
	 *     abstract+='abstract' (ambiguity) abstract+='abstract'
	 *     abstract+='abstract' (ambiguity) final+='final'
	 *     abstract+='abstract' (ambiguity) static+='static'
	 *     abstract+='abstract' (ambiguity) synchronized+='synchronized'
	 *     abstract+='abstract' (ambiguity) visibility+='private'
	 *     abstract+='abstract' (ambiguity) visibility+='protected'
	 *     abstract+='abstract' (ambiguity) visibility+='public'
	 *     final+='final' (ambiguity) 'class' name=ID
	 *     final+='final' (ambiguity) abstract+='abstract'
	 *     final+='final' (ambiguity) final+='final'
	 *     final+='final' (ambiguity) static+='static'
	 *     final+='final' (ambiguity) synchronized+='synchronized'
	 *     final+='final' (ambiguity) visibility+='private'
	 *     final+='final' (ambiguity) visibility+='protected'
	 *     final+='final' (ambiguity) visibility+='public'
	 *     static+='static' (ambiguity) 'class' name=ID
	 *     static+='static' (ambiguity) abstract+='abstract'
	 *     static+='static' (ambiguity) final+='final'
	 *     static+='static' (ambiguity) static+='static'
	 *     static+='static' (ambiguity) synchronized+='synchronized'
	 *     static+='static' (ambiguity) visibility+='private'
	 *     static+='static' (ambiguity) visibility+='protected'
	 *     static+='static' (ambiguity) visibility+='public'
	 *     synchronized+='synchronized' (ambiguity) 'class' name=ID
	 *     synchronized+='synchronized' (ambiguity) abstract+='abstract'
	 *     synchronized+='synchronized' (ambiguity) final+='final'
	 *     synchronized+='synchronized' (ambiguity) static+='static'
	 *     synchronized+='synchronized' (ambiguity) synchronized+='synchronized'
	 *     synchronized+='synchronized' (ambiguity) visibility+='private'
	 *     synchronized+='synchronized' (ambiguity) visibility+='protected'
	 *     synchronized+='synchronized' (ambiguity) visibility+='public'
	 *     visibility+='private' (ambiguity) 'class' name=ID
	 *     visibility+='private' (ambiguity) abstract+='abstract'
	 *     visibility+='private' (ambiguity) final+='final'
	 *     visibility+='private' (ambiguity) static+='static'
	 *     visibility+='private' (ambiguity) synchronized+='synchronized'
	 *     visibility+='private' (ambiguity) visibility+='private'
	 *     visibility+='private' (ambiguity) visibility+='protected'
	 *     visibility+='private' (ambiguity) visibility+='public'
	 *     visibility+='protected' (ambiguity) 'class' name=ID
	 *     visibility+='protected' (ambiguity) abstract+='abstract'
	 *     visibility+='protected' (ambiguity) final+='final'
	 *     visibility+='protected' (ambiguity) static+='static'
	 *     visibility+='protected' (ambiguity) synchronized+='synchronized'
	 *     visibility+='protected' (ambiguity) visibility+='private'
	 *     visibility+='protected' (ambiguity) visibility+='protected'
	 *     visibility+='protected' (ambiguity) visibility+='public'
	 *     visibility+='public' (ambiguity) 'class' name=ID
	 *     visibility+='public' (ambiguity) abstract+='abstract'
	 *     visibility+='public' (ambiguity) final+='final'
	 *     visibility+='public' (ambiguity) static+='static'
	 *     visibility+='public' (ambiguity) synchronized+='synchronized'
	 *     visibility+='public' (ambiguity) visibility+='private'
	 *     visibility+='public' (ambiguity) visibility+='protected'
	 *     visibility+='public' (ambiguity) visibility+='public'
	 
	 * </pre>
	 */
	protected void emit_LoopedAlternativeModel___BeforeKeyword_0_4_0_AfterKeyword_0_4_1_a__a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
}

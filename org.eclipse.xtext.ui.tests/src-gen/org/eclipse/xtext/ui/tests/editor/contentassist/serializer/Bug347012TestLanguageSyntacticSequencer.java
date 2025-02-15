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
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug347012TestLanguageGrammarAccess;

@SuppressWarnings("all")
public class Bug347012TestLanguageSyntacticSequencer extends AbstractSyntacticSequencer {

	protected Bug347012TestLanguageGrammarAccess grammarAccess;
	protected AbstractElementAlias match_MyBinding_LTTerminalRuleCall_1_0_a;
	protected AbstractElementAlias match_MyBinding_LTTerminalRuleCall_1_2_a;
	protected AbstractElementAlias match_MyBinding_LTTerminalRuleCall_2_0_a;
	protected AbstractElementAlias match_MyBinding_LTTerminalRuleCall_2_2_a;
	protected AbstractElementAlias match_MyClass_LTTerminalRuleCall_2_a;
	protected AbstractElementAlias match_MyClass_LTTerminalRuleCall_4_a;
	protected AbstractElementAlias match_MyClass_LTTerminalRuleCall_6_a;
	protected AbstractElementAlias match_MyClass_LTTerminalRuleCall_7_1_a;
	protected AbstractElementAlias match_MyClass_PublicKeyword_0_q;
	protected AbstractElementAlias match_MyField_LTTerminalRuleCall_2_a;
	protected AbstractElementAlias match_MyField_LTTerminalRuleCall_4_0_a;
	protected AbstractElementAlias match_MyField_LTTerminalRuleCall_4_2_a;
	protected AbstractElementAlias match_MyPackage_LTTerminalRuleCall_1_a;
	protected AbstractElementAlias match_MyPackage_LTTerminalRuleCall_3_a;
	protected AbstractElementAlias match_MyPackage_LTTerminalRuleCall_5_a;
	protected AbstractElementAlias match_MyPackage_LTTerminalRuleCall_6_1_a;
	protected AbstractElementAlias match_MyProgram_LTTerminalRuleCall_1_a;
	protected AbstractElementAlias match_MyProgram_LTTerminalRuleCall_3_a;
	
	@Inject
	protected void init(IGrammarAccess access) {
		grammarAccess = (Bug347012TestLanguageGrammarAccess) access;
		match_MyBinding_LTTerminalRuleCall_1_0_a = new TokenAlias(true, true, grammarAccess.getMyBindingAccess().getLTTerminalRuleCall_1_0());
		match_MyBinding_LTTerminalRuleCall_1_2_a = new TokenAlias(true, true, grammarAccess.getMyBindingAccess().getLTTerminalRuleCall_1_2());
		match_MyBinding_LTTerminalRuleCall_2_0_a = new TokenAlias(true, true, grammarAccess.getMyBindingAccess().getLTTerminalRuleCall_2_0());
		match_MyBinding_LTTerminalRuleCall_2_2_a = new TokenAlias(true, true, grammarAccess.getMyBindingAccess().getLTTerminalRuleCall_2_2());
		match_MyClass_LTTerminalRuleCall_2_a = new TokenAlias(true, true, grammarAccess.getMyClassAccess().getLTTerminalRuleCall_2());
		match_MyClass_LTTerminalRuleCall_4_a = new TokenAlias(true, true, grammarAccess.getMyClassAccess().getLTTerminalRuleCall_4());
		match_MyClass_LTTerminalRuleCall_6_a = new TokenAlias(true, true, grammarAccess.getMyClassAccess().getLTTerminalRuleCall_6());
		match_MyClass_LTTerminalRuleCall_7_1_a = new TokenAlias(true, true, grammarAccess.getMyClassAccess().getLTTerminalRuleCall_7_1());
		match_MyClass_PublicKeyword_0_q = new TokenAlias(false, true, grammarAccess.getMyClassAccess().getPublicKeyword_0());
		match_MyField_LTTerminalRuleCall_2_a = new TokenAlias(true, true, grammarAccess.getMyFieldAccess().getLTTerminalRuleCall_2());
		match_MyField_LTTerminalRuleCall_4_0_a = new TokenAlias(true, true, grammarAccess.getMyFieldAccess().getLTTerminalRuleCall_4_0());
		match_MyField_LTTerminalRuleCall_4_2_a = new TokenAlias(true, true, grammarAccess.getMyFieldAccess().getLTTerminalRuleCall_4_2());
		match_MyPackage_LTTerminalRuleCall_1_a = new TokenAlias(true, true, grammarAccess.getMyPackageAccess().getLTTerminalRuleCall_1());
		match_MyPackage_LTTerminalRuleCall_3_a = new TokenAlias(true, true, grammarAccess.getMyPackageAccess().getLTTerminalRuleCall_3());
		match_MyPackage_LTTerminalRuleCall_5_a = new TokenAlias(true, true, grammarAccess.getMyPackageAccess().getLTTerminalRuleCall_5());
		match_MyPackage_LTTerminalRuleCall_6_1_a = new TokenAlias(true, true, grammarAccess.getMyPackageAccess().getLTTerminalRuleCall_6_1());
		match_MyProgram_LTTerminalRuleCall_1_a = new TokenAlias(true, true, grammarAccess.getMyProgramAccess().getLTTerminalRuleCall_1());
		match_MyProgram_LTTerminalRuleCall_3_a = new TokenAlias(true, true, grammarAccess.getMyProgramAccess().getLTTerminalRuleCall_3());
	}
	
	@Override
	protected String getUnassignedRuleCallToken(EObject semanticObject, RuleCall ruleCall, INode node) {
		if (ruleCall.getRule() == grammarAccess.getLTRule())
			return getLTToken(semanticObject, ruleCall, node);
		else if (ruleCall.getRule() == grammarAccess.getVirtualSemiRule())
			return getVirtualSemiToken(semanticObject, ruleCall, node);
		return "";
	}
	
	/**
	 * terminal LT:
	 * 	'\r' '\n' | '\r' | '\n';
	 */
	protected String getLTToken(EObject semanticObject, RuleCall ruleCall, INode node) {
		if (node != null)
			return getTokenText(node);
		return "\r\n";
	}
	
	/**
	 * VirtualSemi:
	 * 	';' | LT;
	 */
	protected String getVirtualSemiToken(EObject semanticObject, RuleCall ruleCall, INode node) {
		if (node != null)
			return getTokenText(node);
		return ";";
	}
	
	@Override
	protected void emitUnassignedTokens(EObject semanticObject, ISynTransition transition, INode fromNode, INode toNode) {
		if (transition.getAmbiguousSyntaxes().isEmpty()) return;
		List<INode> transitionNodes = collectNodes(fromNode, toNode);
		for (AbstractElementAlias syntax : transition.getAmbiguousSyntaxes()) {
			List<INode> syntaxNodes = getNodesFor(transitionNodes, syntax);
			if (match_MyBinding_LTTerminalRuleCall_1_0_a.equals(syntax))
				emit_MyBinding_LTTerminalRuleCall_1_0_a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_MyBinding_LTTerminalRuleCall_1_2_a.equals(syntax))
				emit_MyBinding_LTTerminalRuleCall_1_2_a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_MyBinding_LTTerminalRuleCall_2_0_a.equals(syntax))
				emit_MyBinding_LTTerminalRuleCall_2_0_a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_MyBinding_LTTerminalRuleCall_2_2_a.equals(syntax))
				emit_MyBinding_LTTerminalRuleCall_2_2_a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_MyClass_LTTerminalRuleCall_2_a.equals(syntax))
				emit_MyClass_LTTerminalRuleCall_2_a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_MyClass_LTTerminalRuleCall_4_a.equals(syntax))
				emit_MyClass_LTTerminalRuleCall_4_a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_MyClass_LTTerminalRuleCall_6_a.equals(syntax))
				emit_MyClass_LTTerminalRuleCall_6_a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_MyClass_LTTerminalRuleCall_7_1_a.equals(syntax))
				emit_MyClass_LTTerminalRuleCall_7_1_a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_MyClass_PublicKeyword_0_q.equals(syntax))
				emit_MyClass_PublicKeyword_0_q(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_MyField_LTTerminalRuleCall_2_a.equals(syntax))
				emit_MyField_LTTerminalRuleCall_2_a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_MyField_LTTerminalRuleCall_4_0_a.equals(syntax))
				emit_MyField_LTTerminalRuleCall_4_0_a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_MyField_LTTerminalRuleCall_4_2_a.equals(syntax))
				emit_MyField_LTTerminalRuleCall_4_2_a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_MyPackage_LTTerminalRuleCall_1_a.equals(syntax))
				emit_MyPackage_LTTerminalRuleCall_1_a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_MyPackage_LTTerminalRuleCall_3_a.equals(syntax))
				emit_MyPackage_LTTerminalRuleCall_3_a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_MyPackage_LTTerminalRuleCall_5_a.equals(syntax))
				emit_MyPackage_LTTerminalRuleCall_5_a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_MyPackage_LTTerminalRuleCall_6_1_a.equals(syntax))
				emit_MyPackage_LTTerminalRuleCall_6_1_a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_MyProgram_LTTerminalRuleCall_1_a.equals(syntax))
				emit_MyProgram_LTTerminalRuleCall_1_a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_MyProgram_LTTerminalRuleCall_3_a.equals(syntax))
				emit_MyProgram_LTTerminalRuleCall_3_a(semanticObject, getLastNavigableState(), syntaxNodes);
			else acceptNodes(getLastNavigableState(), syntaxNodes);
		}
	}

	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     LT*
	 *
	 * This ambiguous syntax occurs at:
	 *     name=ID (ambiguity) ':' LT* type=FQN
	 
	 * </pre>
	 */
	protected void emit_MyBinding_LTTerminalRuleCall_1_0_a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     LT*
	 *
	 * This ambiguous syntax occurs at:
	 *     name=ID LT* ':' (ambiguity) type=FQN
	 
	 * </pre>
	 */
	protected void emit_MyBinding_LTTerminalRuleCall_1_2_a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     LT*
	 *
	 * This ambiguous syntax occurs at:
	 *     name=ID (ambiguity) '=' LT* expression=MyPrimary
	 *     type=FQN (ambiguity) '=' LT* expression=MyPrimary
	 
	 * </pre>
	 */
	protected void emit_MyBinding_LTTerminalRuleCall_2_0_a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     LT*
	 *
	 * This ambiguous syntax occurs at:
	 *     name=ID LT* '=' (ambiguity) expression=MyPrimary
	 *     type=FQN LT* '=' (ambiguity) expression=MyPrimary
	 
	 * </pre>
	 */
	protected void emit_MyBinding_LTTerminalRuleCall_2_2_a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     LT*
	 *
	 * This ambiguous syntax occurs at:
	 *     (rule start) 'public'? 'class' (ambiguity) name=ID
	 
	 * </pre>
	 */
	protected void emit_MyClass_LTTerminalRuleCall_2_a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     LT*
	 *
	 * This ambiguous syntax occurs at:
	 *     name=ID (ambiguity) '{' LT* '}' (rule end)
	 *     name=ID (ambiguity) '{' LT* directives+=MyField
	 
	 * </pre>
	 */
	protected void emit_MyClass_LTTerminalRuleCall_4_a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     LT*
	 *
	 * This ambiguous syntax occurs at:
	 *     name=ID LT* '{' (ambiguity) '}' (rule end)
	 *     name=ID LT* '{' (ambiguity) directives+=MyField
	 
	 * </pre>
	 */
	protected void emit_MyClass_LTTerminalRuleCall_6_a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     LT*
	 *
	 * This ambiguous syntax occurs at:
	 *     directives+=MyField (ambiguity) '}' (rule end)
	 *     directives+=MyField (ambiguity) directives+=MyField
	 
	 * </pre>
	 */
	protected void emit_MyClass_LTTerminalRuleCall_7_1_a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     'public'?
	 *
	 * This ambiguous syntax occurs at:
	 *     (rule start) (ambiguity) 'class' LT* name=ID
	 
	 * </pre>
	 */
	protected void emit_MyClass_PublicKeyword_0_q(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     LT*
	 *
	 * This ambiguous syntax occurs at:
	 *     attr=MyAttributes 'var' (ambiguity) bindings+=MyBinding
	 
	 * </pre>
	 */
	protected void emit_MyField_LTTerminalRuleCall_2_a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     LT*
	 *
	 * This ambiguous syntax occurs at:
	 *     bindings+=MyBinding (ambiguity) ',' LT* bindings+=MyBinding
	 
	 * </pre>
	 */
	protected void emit_MyField_LTTerminalRuleCall_4_0_a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     LT*
	 *
	 * This ambiguous syntax occurs at:
	 *     bindings+=MyBinding LT* ',' (ambiguity) bindings+=MyBinding
	 
	 * </pre>
	 */
	protected void emit_MyField_LTTerminalRuleCall_4_2_a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     LT*
	 *
	 * This ambiguous syntax occurs at:
	 *     (rule start) 'package' (ambiguity) name=FQN
	 
	 * </pre>
	 */
	protected void emit_MyPackage_LTTerminalRuleCall_1_a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     LT*
	 *
	 * This ambiguous syntax occurs at:
	 *     name=FQN (ambiguity) '{' LT* '}' (rule end)
	 *     name=FQN (ambiguity) '{' LT* directives+=MyClass
	 
	 * </pre>
	 */
	protected void emit_MyPackage_LTTerminalRuleCall_3_a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     LT*
	 *
	 * This ambiguous syntax occurs at:
	 *     name=FQN LT* '{' (ambiguity) '}' (rule end)
	 *     name=FQN LT* '{' (ambiguity) directives+=MyClass
	 
	 * </pre>
	 */
	protected void emit_MyPackage_LTTerminalRuleCall_5_a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     LT*
	 *
	 * This ambiguous syntax occurs at:
	 *     directives+=MyClass (ambiguity) '}' (rule end)
	 *     directives+=MyClass (ambiguity) directives+=MyClass
	 
	 * </pre>
	 */
	protected void emit_MyPackage_LTTerminalRuleCall_6_1_a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     LT*
	 *
	 * This ambiguous syntax occurs at:
	 *     (rule start) (ambiguity) package=MyPackage
	 
	 * </pre>
	 */
	protected void emit_MyProgram_LTTerminalRuleCall_1_a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     LT*
	 *
	 * This ambiguous syntax occurs at:
	 *     package=MyPackage (ambiguity) (rule end)
	 
	 * </pre>
	 */
	protected void emit_MyProgram_LTTerminalRuleCall_3_a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
}

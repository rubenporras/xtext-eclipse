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
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug381381TestLanguageGrammarAccess;

@SuppressWarnings("all")
public class Bug381381TestLanguageSyntacticSequencer extends AbstractSyntacticSequencer {

	protected Bug381381TestLanguageGrammarAccess grammarAccess;
	protected AbstractElementAlias match_CopyFieldNameToVariableStmt___CommaKeyword_1_2_0_TYPEKeyword_1_2_1_EqualsSignKeyword_1_2_2_REPLACEKeyword_1_2_3__a;
	protected AbstractElementAlias match_CopyFieldNameToVariableStmt___CommaKeyword_1_2_0_TYPEKeyword_1_2_1_EqualsSignKeyword_1_2_2_REPLACEKeyword_1_2_3__p;
	
	@Inject
	protected void init(IGrammarAccess access) {
		grammarAccess = (Bug381381TestLanguageGrammarAccess) access;
		match_CopyFieldNameToVariableStmt___CommaKeyword_1_2_0_TYPEKeyword_1_2_1_EqualsSignKeyword_1_2_2_REPLACEKeyword_1_2_3__a = new GroupAlias(true, true, new TokenAlias(false, false, grammarAccess.getCopyFieldNameToVariableStmtAccess().getCommaKeyword_1_2_0()), new TokenAlias(false, false, grammarAccess.getCopyFieldNameToVariableStmtAccess().getTYPEKeyword_1_2_1()), new TokenAlias(false, false, grammarAccess.getCopyFieldNameToVariableStmtAccess().getEqualsSignKeyword_1_2_2()), new TokenAlias(false, false, grammarAccess.getCopyFieldNameToVariableStmtAccess().getREPLACEKeyword_1_2_3()));
		match_CopyFieldNameToVariableStmt___CommaKeyword_1_2_0_TYPEKeyword_1_2_1_EqualsSignKeyword_1_2_2_REPLACEKeyword_1_2_3__p = new GroupAlias(true, false, new TokenAlias(false, false, grammarAccess.getCopyFieldNameToVariableStmtAccess().getCommaKeyword_1_2_0()), new TokenAlias(false, false, grammarAccess.getCopyFieldNameToVariableStmtAccess().getTYPEKeyword_1_2_1()), new TokenAlias(false, false, grammarAccess.getCopyFieldNameToVariableStmtAccess().getEqualsSignKeyword_1_2_2()), new TokenAlias(false, false, grammarAccess.getCopyFieldNameToVariableStmtAccess().getREPLACEKeyword_1_2_3()));
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
			if (match_CopyFieldNameToVariableStmt___CommaKeyword_1_2_0_TYPEKeyword_1_2_1_EqualsSignKeyword_1_2_2_REPLACEKeyword_1_2_3__a.equals(syntax))
				emit_CopyFieldNameToVariableStmt___CommaKeyword_1_2_0_TYPEKeyword_1_2_1_EqualsSignKeyword_1_2_2_REPLACEKeyword_1_2_3__a(semanticObject, getLastNavigableState(), syntaxNodes);
			else if (match_CopyFieldNameToVariableStmt___CommaKeyword_1_2_0_TYPEKeyword_1_2_1_EqualsSignKeyword_1_2_2_REPLACEKeyword_1_2_3__p.equals(syntax))
				emit_CopyFieldNameToVariableStmt___CommaKeyword_1_2_0_TYPEKeyword_1_2_1_EqualsSignKeyword_1_2_2_REPLACEKeyword_1_2_3__p(semanticObject, getLastNavigableState(), syntaxNodes);
			else acceptNodes(getLastNavigableState(), syntaxNodes);
		}
	}

	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     (',' 'TYPE' '=' 'REPLACE')*
	 *
	 * This ambiguous syntax occurs at:
	 *     (rule start) 'FIELD-NAME-TO-VARIABLE' (ambiguity) ',' 'SCREEN' '=' '(' line=INT
	 *     (rule start) 'FIELD-NAME-TO-VARIABLE' (ambiguity) ',' 'VAR' '=' name=ID
	 *     (rule start) 'FIELD-NAME-TO-VARIABLE' (ambiguity) (rule start)
	 *     column=INT ')' (ambiguity) ',' 'SCREEN' '=' '(' line=INT
	 *     column=INT ')' (ambiguity) ',' 'VAR' '=' name=ID
	 *     column=INT ')' (ambiguity) (rule end)
	 *     name=ID (ambiguity) ',' 'SCREEN' '=' '(' line=INT
	 *     name=ID (ambiguity) ',' 'VAR' '=' name=ID
	 *     name=ID (ambiguity) (rule end)
	 
	 * </pre>
	 */
	protected void emit_CopyFieldNameToVariableStmt___CommaKeyword_1_2_0_TYPEKeyword_1_2_1_EqualsSignKeyword_1_2_2_REPLACEKeyword_1_2_3__a(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
	/**
	 * <pre>
	 * Ambiguous syntax:
	 *     (',' 'TYPE' '=' 'REPLACE')+
	 *
	 * This ambiguous syntax occurs at:
	 *     (rule start) 'FIELD-NAME-TO-VARIABLE' (ambiguity) (rule start)
	 
	 * </pre>
	 */
	protected void emit_CopyFieldNameToVariableStmt___CommaKeyword_1_2_0_TYPEKeyword_1_2_1_EqualsSignKeyword_1_2_2_REPLACEKeyword_1_2_3__p(EObject semanticObject, ISynNavigable transition, List<INode> nodes) {
		acceptNodes(transition, nodes);
	}
	
}

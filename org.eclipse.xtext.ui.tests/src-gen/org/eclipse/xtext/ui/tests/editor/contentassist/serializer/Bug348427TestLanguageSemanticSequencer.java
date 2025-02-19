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
import java.util.Set;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.xtext.Action;
import org.eclipse.xtext.Parameter;
import org.eclipse.xtext.ParserRule;
import org.eclipse.xtext.serializer.ISerializationContext;
import org.eclipse.xtext.serializer.sequencer.AbstractDelegatingSemanticSequencer;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug348427TestLanguage.Bug348427TestLanguagePackage;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug348427TestLanguage.Child1;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug348427TestLanguage.Child2;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug348427TestLanguage.Model;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug348427TestLanguage.Scenario1;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug348427TestLanguage.Scenario2;
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug348427TestLanguageGrammarAccess;

@SuppressWarnings("all")
public class Bug348427TestLanguageSemanticSequencer extends AbstractDelegatingSemanticSequencer {

	@Inject
	private Bug348427TestLanguageGrammarAccess grammarAccess;
	
	@Override
	public void sequence(ISerializationContext context, EObject semanticObject) {
		EPackage epackage = semanticObject.eClass().getEPackage();
		ParserRule rule = context.getParserRule();
		Action action = context.getAssignedAction();
		Set<Parameter> parameters = context.getEnabledBooleanParameters();
		if (epackage == Bug348427TestLanguagePackage.eINSTANCE)
			switch (semanticObject.eClass().getClassifierID()) {
			case Bug348427TestLanguagePackage.CHILD1:
				if (rule == grammarAccess.getChild1_1Rule()) {
					sequence_Child1_1(context, (Child1) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getChild1_2Rule()) {
					sequence_Child1_2(context, (Child1) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getChild1_3Rule()) {
					sequence_Child1_3(context, (Child1) semanticObject); 
					return; 
				}
				else break;
			case Bug348427TestLanguagePackage.CHILD2:
				if (rule == grammarAccess.getChild2_1Rule()) {
					sequence_Child2_1(context, (Child2) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getChild2_2Rule()) {
					sequence_Child2_2(context, (Child2) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getChild2_3Rule()) {
					sequence_Child2_3(context, (Child2) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getChild2_4Rule()) {
					sequence_Child2_4(context, (Child2) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getChild2_5Rule()) {
					sequence_Child2_5(context, (Child2) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getChild2_6Rule()) {
					sequence_Child2_6(context, (Child2) semanticObject); 
					return; 
				}
				else break;
			case Bug348427TestLanguagePackage.MODEL:
				sequence_Model(context, (Model) semanticObject); 
				return; 
			case Bug348427TestLanguagePackage.SCENARIO1:
				if (rule == grammarAccess.getScenario1_1Rule()) {
					sequence_Scenario1_1(context, (Scenario1) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getScenario1_2Rule()) {
					sequence_Scenario1_2(context, (Scenario1) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getScenario1_3Rule()) {
					sequence_Scenario1_3(context, (Scenario1) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getScenario1_4Rule()) {
					sequence_Scenario1_4(context, (Scenario1) semanticObject); 
					return; 
				}
				else break;
			case Bug348427TestLanguagePackage.SCENARIO2:
				if (rule == grammarAccess.getScenario2_1Rule()) {
					sequence_Scenario2_1(context, (Scenario2) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getScenario2_2Rule()) {
					sequence_Scenario2_2(context, (Scenario2) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getScenario2_3Rule()) {
					sequence_Scenario2_3(context, (Scenario2) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getScenario2_4Rule()) {
					sequence_Scenario2_4(context, (Scenario2) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getScenario2_5Rule()) {
					sequence_Scenario2_5(context, (Scenario2) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getScenario2_6Rule()) {
					sequence_Scenario2_6(context, (Scenario2) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getScenario2_7Rule()) {
					sequence_Scenario2_7(context, (Scenario2) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getScenario2_8Rule()) {
					sequence_Scenario2_8(context, (Scenario2) semanticObject); 
					return; 
				}
				else break;
			}
		if (errorAcceptor != null)
			errorAcceptor.accept(diagnosticProvider.createInvalidContextOrTypeDiagnostic(semanticObject, context));
	}
	
	/**
	 * <pre>
	 * Contexts:
	 *     Child1_1 returns Child1
	 *
	 * Constraint:
	 *     (name=ID bool?='bool'? enumType=EnumType)
	 * </pre>
	 */
	protected void sequence_Child1_1(ISerializationContext context, Child1 semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Child1_2 returns Child1
	 *
	 * Constraint:
	 *     (name=ID bool?='bool'? enumType=EnumType)
	 * </pre>
	 */
	protected void sequence_Child1_2(ISerializationContext context, Child1 semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Child1_3 returns Child1
	 *
	 * Constraint:
	 *     (name=ID bool?='bool'? enumType=EnumType)
	 * </pre>
	 */
	protected void sequence_Child1_3(ISerializationContext context, Child1 semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Child2_1 returns Child2
	 *
	 * Constraint:
	 *     (name=ID bool?='bool'? (string='a' | string='b'))
	 * </pre>
	 */
	protected void sequence_Child2_1(ISerializationContext context, Child2 semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Child2_2 returns Child2
	 *
	 * Constraint:
	 *     (name=ID bool?='bool'? (string='a' | string='b'))
	 * </pre>
	 */
	protected void sequence_Child2_2(ISerializationContext context, Child2 semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Child2_3 returns Child2
	 *
	 * Constraint:
	 *     (name=ID bool?='bool'? (string='a' | string='b'))
	 * </pre>
	 */
	protected void sequence_Child2_3(ISerializationContext context, Child2 semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Child2_4 returns Child2
	 *
	 * Constraint:
	 *     (name=ID bool?='bool'? (string='a' | string='b'))
	 * </pre>
	 */
	protected void sequence_Child2_4(ISerializationContext context, Child2 semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Child2_5 returns Child2
	 *
	 * Constraint:
	 *     (name=ID bool?='bool'? (string='a' | string='b'))
	 * </pre>
	 */
	protected void sequence_Child2_5(ISerializationContext context, Child2 semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Child2_6 returns Child2
	 *
	 * Constraint:
	 *     (name=ID bool?='bool'? (string='a' | string='b'))
	 * </pre>
	 */
	protected void sequence_Child2_6(ISerializationContext context, Child2 semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Model returns Model
	 *
	 * Constraint:
	 *     (
	 *         element1=Scenario1_1 | 
	 *         element1=Scenario1_2 | 
	 *         element1=Scenario1_3 | 
	 *         element1=Scenario1_4 | 
	 *         element2=Scenario2_1 | 
	 *         element2=Scenario2_2 | 
	 *         element2=Scenario2_3 | 
	 *         element2=Scenario2_4 | 
	 *         element2=Scenario2_5 | 
	 *         element2=Scenario2_6 | 
	 *         element2=Scenario2_7 | 
	 *         element2=Scenario2_8
	 *     )
	 * </pre>
	 */
	protected void sequence_Model(ISerializationContext context, Model semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Scenario1_1 returns Scenario1
	 *
	 * Constraint:
	 *     (child+=Child1_1 | child+=Child1_2 | child+=Child1_3)
	 * </pre>
	 */
	protected void sequence_Scenario1_1(ISerializationContext context, Scenario1 semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Scenario1_2 returns Scenario1
	 *
	 * Constraint:
	 *     (child+=Child1_1 | child+=Child1_2 | child+=Child1_3)+
	 * </pre>
	 */
	protected void sequence_Scenario1_2(ISerializationContext context, Scenario1 semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Scenario1_3 returns Scenario1
	 *
	 * Constraint:
	 *     (child+=Child1_1 | child+=Child1_2 | child+=Child1_3)*
	 * </pre>
	 */
	protected void sequence_Scenario1_3(ISerializationContext context, Scenario1 semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Scenario1_4 returns Scenario1
	 *
	 * Constraint:
	 *     (child+=Child1_1 | child+=Child1_2 | child+=Child1_3)?
	 * </pre>
	 */
	protected void sequence_Scenario1_4(ISerializationContext context, Scenario1 semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Scenario2_1 returns Scenario2
	 *
	 * Constraint:
	 *     (child+=Child2_1 | child+=Child2_2 | child+=Child2_3)
	 * </pre>
	 */
	protected void sequence_Scenario2_1(ISerializationContext context, Scenario2 semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Scenario2_2 returns Scenario2
	 *
	 * Constraint:
	 *     (child+=Child2_1 | child+=Child2_2 | child+=Child2_3)+
	 * </pre>
	 */
	protected void sequence_Scenario2_2(ISerializationContext context, Scenario2 semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Scenario2_3 returns Scenario2
	 *
	 * Constraint:
	 *     (child+=Child2_4 | child+=Child2_5 | child+=Child2_6)
	 * </pre>
	 */
	protected void sequence_Scenario2_3(ISerializationContext context, Scenario2 semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Scenario2_4 returns Scenario2
	 *
	 * Constraint:
	 *     (child+=Child2_4 | child+=Child2_5 | child+=Child2_6)+
	 * </pre>
	 */
	protected void sequence_Scenario2_4(ISerializationContext context, Scenario2 semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Scenario2_5 returns Scenario2
	 *
	 * Constraint:
	 *     (child+=Child2_1 | child+=Child2_2 | child+=Child2_3)?
	 * </pre>
	 */
	protected void sequence_Scenario2_5(ISerializationContext context, Scenario2 semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Scenario2_6 returns Scenario2
	 *
	 * Constraint:
	 *     (child+=Child2_1 | child+=Child2_2 | child+=Child2_3)*
	 * </pre>
	 */
	protected void sequence_Scenario2_6(ISerializationContext context, Scenario2 semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Scenario2_7 returns Scenario2
	 *
	 * Constraint:
	 *     (child+=Child2_4 | child+=Child2_5 | child+=Child2_6)?
	 * </pre>
	 */
	protected void sequence_Scenario2_7(ISerializationContext context, Scenario2 semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Scenario2_8 returns Scenario2
	 *
	 * Constraint:
	 *     (child+=Child2_4 | child+=Child2_5 | child+=Child2_6)*
	 * </pre>
	 */
	protected void sequence_Scenario2_8(ISerializationContext context, Scenario2 semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
}

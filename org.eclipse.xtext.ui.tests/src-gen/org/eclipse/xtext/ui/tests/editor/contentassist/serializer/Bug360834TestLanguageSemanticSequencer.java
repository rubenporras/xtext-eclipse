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
import org.eclipse.xtext.serializer.acceptor.SequenceFeeder;
import org.eclipse.xtext.serializer.sequencer.AbstractDelegatingSemanticSequencer;
import org.eclipse.xtext.serializer.sequencer.ITransientValueService.ValueTransient;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug360834TestLanguage.Alternative;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug360834TestLanguage.Bug360834TestLanguagePackage;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug360834TestLanguage.ClassMember;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug360834TestLanguage.Model;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug360834TestLanguage.Modifiers;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug360834TestLanguage.RecursiveClassDeclaration;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug360834TestLanguage.SimpleClassDeclaration;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug360834TestLanguage.Unordered;
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug360834TestLanguageGrammarAccess;

@SuppressWarnings("all")
public class Bug360834TestLanguageSemanticSequencer extends AbstractDelegatingSemanticSequencer {

	@Inject
	private Bug360834TestLanguageGrammarAccess grammarAccess;
	
	@Override
	public void sequence(ISerializationContext context, EObject semanticObject) {
		EPackage epackage = semanticObject.eClass().getEPackage();
		ParserRule rule = context.getParserRule();
		Action action = context.getAssignedAction();
		Set<Parameter> parameters = context.getEnabledBooleanParameters();
		if (epackage == Bug360834TestLanguagePackage.eINSTANCE)
			switch (semanticObject.eClass().getClassifierID()) {
			case Bug360834TestLanguagePackage.ALTERNATIVE:
				sequence_Alternative(context, (Alternative) semanticObject); 
				return; 
			case Bug360834TestLanguagePackage.CLASS_MEMBER:
				sequence_ClassMember(context, (ClassMember) semanticObject); 
				return; 
			case Bug360834TestLanguagePackage.MODEL:
				sequence_Model(context, (Model) semanticObject); 
				return; 
			case Bug360834TestLanguagePackage.MODIFIERS:
				if (rule == grammarAccess.getAlternativeClassModifiersRule()) {
					sequence_AlternativeClassModifiers(context, (Modifiers) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getUnorderedModifiersRule()) {
					sequence_UnorderedModifiers(context, (Modifiers) semanticObject); 
					return; 
				}
				else break;
			case Bug360834TestLanguagePackage.RECURSIVE_CLASS_DECLARATION:
				sequence_RecursiveClassDeclaration(context, (RecursiveClassDeclaration) semanticObject); 
				return; 
			case Bug360834TestLanguagePackage.SIMPLE_CLASS_DECLARATION:
				sequence_SimpleClassDeclaration(context, (SimpleClassDeclaration) semanticObject); 
				return; 
			case Bug360834TestLanguagePackage.UNORDERED:
				sequence_Unordered(context, (Unordered) semanticObject); 
				return; 
			}
		if (errorAcceptor != null)
			errorAcceptor.accept(diagnosticProvider.createInvalidContextOrTypeDiagnostic(semanticObject, context));
	}
	
	/**
	 * <pre>
	 * Contexts:
	 *     AlternativeClassModifiers returns Modifiers
	 *
	 * Constraint:
	 *     (final?='final' | abstract?='abstract' | extern?='extern' | visibility=Visibility)?
	 * </pre>
	 */
	protected void sequence_AlternativeClassModifiers(ISerializationContext context, Modifiers semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Alternative returns Alternative
	 *
	 * Constraint:
	 *     (name=FQN rootDeclaration=RecursiveClassDeclaration)
	 * </pre>
	 */
	protected void sequence_Alternative(ISerializationContext context, Alternative semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, Bug360834TestLanguagePackage.Literals.ALTERNATIVE__NAME) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug360834TestLanguagePackage.Literals.ALTERNATIVE__NAME));
			if (transientValues.isValueTransient(semanticObject, Bug360834TestLanguagePackage.Literals.ALTERNATIVE__ROOT_DECLARATION) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug360834TestLanguagePackage.Literals.ALTERNATIVE__ROOT_DECLARATION));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getAlternativeAccess().getNameFQNParserRuleCall_1_0(), semanticObject.getName());
		feeder.accept(grammarAccess.getAlternativeAccess().getRootDeclarationRecursiveClassDeclarationParserRuleCall_3_0(), semanticObject.getRootDeclaration());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     ClassMember returns ClassMember
	 *
	 * Constraint:
	 *     (modifiers=UnorderedModifiers name=ID)
	 * </pre>
	 */
	protected void sequence_ClassMember(ISerializationContext context, ClassMember semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, Bug360834TestLanguagePackage.Literals.CLASS_MEMBER__MODIFIERS) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug360834TestLanguagePackage.Literals.CLASS_MEMBER__MODIFIERS));
			if (transientValues.isValueTransient(semanticObject, Bug360834TestLanguagePackage.Literals.CLASS_MEMBER__NAME) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug360834TestLanguagePackage.Literals.CLASS_MEMBER__NAME));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getClassMemberAccess().getModifiersUnorderedModifiersParserRuleCall_0_0(), semanticObject.getModifiers());
		feeder.accept(grammarAccess.getClassMemberAccess().getNameIDTerminalRuleCall_2_0(), semanticObject.getName());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Model returns Model
	 *
	 * Constraint:
	 *     (element=Alternative | element=Unordered)
	 * </pre>
	 */
	protected void sequence_Model(ISerializationContext context, Model semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     RecursiveClassDeclaration returns RecursiveClassDeclaration
	 *
	 * Constraint:
	 *     (modifiers=AlternativeClassModifiers name=ID members+=RecursiveClassDeclaration*)
	 * </pre>
	 */
	protected void sequence_RecursiveClassDeclaration(ISerializationContext context, RecursiveClassDeclaration semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     SimpleClassDeclaration returns SimpleClassDeclaration
	 *
	 * Constraint:
	 *     (modifiers=UnorderedModifiers name=ID members+=ClassMember*)
	 * </pre>
	 */
	protected void sequence_SimpleClassDeclaration(ISerializationContext context, SimpleClassDeclaration semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     UnorderedModifiers returns Modifiers
	 *
	 * Constraint:
	 *     (final?='final' | abstract?='abstract' | extern?='extern' | visibility=Visibility)*
	 * </pre>
	 */
	protected void sequence_UnorderedModifiers(ISerializationContext context, Modifiers semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Unordered returns Unordered
	 *
	 * Constraint:
	 *     (name=FQN rootDeclaration=SimpleClassDeclaration)
	 * </pre>
	 */
	protected void sequence_Unordered(ISerializationContext context, Unordered semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, Bug360834TestLanguagePackage.Literals.UNORDERED__NAME) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug360834TestLanguagePackage.Literals.UNORDERED__NAME));
			if (transientValues.isValueTransient(semanticObject, Bug360834TestLanguagePackage.Literals.UNORDERED__ROOT_DECLARATION) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug360834TestLanguagePackage.Literals.UNORDERED__ROOT_DECLARATION));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getUnorderedAccess().getNameFQNParserRuleCall_1_0(), semanticObject.getName());
		feeder.accept(grammarAccess.getUnorderedAccess().getRootDeclarationSimpleClassDeclarationParserRuleCall_3_0(), semanticObject.getRootDeclaration());
		feeder.finish();
	}
	
	
}

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
import org.eclipse.xtext.ui.tests.editor.contentassist.bug309949TestLanguage.Annotation;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug309949TestLanguage.Bug309949TestLanguagePackage;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug309949TestLanguage.Model;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug309949TestLanguage.Operation;
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug309949TestLanguageGrammarAccess;

@SuppressWarnings("all")
public class Bug309949TestLanguageSemanticSequencer extends AbstractDelegatingSemanticSequencer {

	@Inject
	private Bug309949TestLanguageGrammarAccess grammarAccess;
	
	@Override
	public void sequence(ISerializationContext context, EObject semanticObject) {
		EPackage epackage = semanticObject.eClass().getEPackage();
		ParserRule rule = context.getParserRule();
		Action action = context.getAssignedAction();
		Set<Parameter> parameters = context.getEnabledBooleanParameters();
		if (epackage == Bug309949TestLanguagePackage.eINSTANCE)
			switch (semanticObject.eClass().getClassifierID()) {
			case Bug309949TestLanguagePackage.ANNOTATION:
				sequence_Annotation(context, (Annotation) semanticObject); 
				return; 
			case Bug309949TestLanguagePackage.ERROR:
				if (rule == grammarAccess.getError_1Rule()) {
					sequence_Error_1(context, (org.eclipse.xtext.ui.tests.editor.contentassist.bug309949TestLanguage.Error) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getError_2Rule()) {
					sequence_Error_2(context, (org.eclipse.xtext.ui.tests.editor.contentassist.bug309949TestLanguage.Error) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getError_3Rule()) {
					sequence_Error_3(context, (org.eclipse.xtext.ui.tests.editor.contentassist.bug309949TestLanguage.Error) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getError_4Rule()) {
					sequence_Error_4(context, (org.eclipse.xtext.ui.tests.editor.contentassist.bug309949TestLanguage.Error) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getError_5Rule()) {
					sequence_Error_5(context, (org.eclipse.xtext.ui.tests.editor.contentassist.bug309949TestLanguage.Error) semanticObject); 
					return; 
				}
				else break;
			case Bug309949TestLanguagePackage.MODEL:
				sequence_Model(context, (Model) semanticObject); 
				return; 
			case Bug309949TestLanguagePackage.OPERATION:
				if (rule == grammarAccess.getOperation_1Rule()) {
					sequence_Operation_1(context, (Operation) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getOperation_2Rule()) {
					sequence_Operation_2(context, (Operation) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getOperation_3Rule()) {
					sequence_Operation_3(context, (Operation) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getOperation_4Rule()) {
					sequence_Operation_4(context, (Operation) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getOperation_5Rule()) {
					sequence_Operation_5(context, (Operation) semanticObject); 
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
	 *     Annotation returns Annotation
	 *
	 * Constraint:
	 *     name=ID
	 * </pre>
	 */
	protected void sequence_Annotation(ISerializationContext context, Annotation semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, Bug309949TestLanguagePackage.Literals.ANNOTATION__NAME) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug309949TestLanguagePackage.Literals.ANNOTATION__NAME));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getAnnotationAccess().getNameIDTerminalRuleCall_1_0(), semanticObject.getName());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Error_1 returns Error
	 *
	 * Constraint:
	 *     (annotations+=Annotation* name=ID)
	 * </pre>
	 */
	protected void sequence_Error_1(ISerializationContext context, org.eclipse.xtext.ui.tests.editor.contentassist.bug309949TestLanguage.Error semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Error_2 returns Error
	 *
	 * Constraint:
	 *     (annotations+=Annotation+ name=ID)
	 * </pre>
	 */
	protected void sequence_Error_2(ISerializationContext context, org.eclipse.xtext.ui.tests.editor.contentassist.bug309949TestLanguage.Error semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Error_3 returns Error
	 *
	 * Constraint:
	 *     (annotations+=Annotation? name=ID)
	 * </pre>
	 */
	protected void sequence_Error_3(ISerializationContext context, org.eclipse.xtext.ui.tests.editor.contentassist.bug309949TestLanguage.Error semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Error_4 returns Error
	 *
	 * Constraint:
	 *     (annotations+=Annotation name=ID)
	 * </pre>
	 */
	protected void sequence_Error_4(ISerializationContext context, org.eclipse.xtext.ui.tests.editor.contentassist.bug309949TestLanguage.Error semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Error_5 returns Error
	 *
	 * Constraint:
	 *     name=ID
	 * </pre>
	 */
	protected void sequence_Error_5(ISerializationContext context, org.eclipse.xtext.ui.tests.editor.contentassist.bug309949TestLanguage.Error semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, Bug309949TestLanguagePackage.Literals.ERROR__NAME) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug309949TestLanguagePackage.Literals.ERROR__NAME));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getError_5Access().getNameIDTerminalRuleCall_1_0(), semanticObject.getName());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Model returns Model
	 *
	 * Constraint:
	 *     (
	 *         (errors+=Error_1* operations+=Operation_1*) | 
	 *         (errors+=Error_1+ operations+=Operation_1+) | 
	 *         (errors+=Error_2* operations+=Operation_2*) | 
	 *         (name=ID errors+=Error_2+ operations+=Operation_2+) | 
	 *         (name=ID errors+=Error_3* operations+=Operation_3*) | 
	 *         (name=ID errors+=Error_3+ operations+=Operation_3+) | 
	 *         (name=ID errors+=Error_4* operations+=Operation_4*) | 
	 *         (name=ID errors+=Error_4+ operations+=Operation_4+) | 
	 *         (name=ID errors+=Error_5* operations+=Operation_5*) | 
	 *         (name=ID errors+=Error_5+ operations+=Operation_5+)
	 *     )
	 * </pre>
	 */
	protected void sequence_Model(ISerializationContext context, Model semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Operation_1 returns Operation
	 *
	 * Constraint:
	 *     (annotations+=Annotation* name=ID)
	 * </pre>
	 */
	protected void sequence_Operation_1(ISerializationContext context, Operation semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Operation_2 returns Operation
	 *
	 * Constraint:
	 *     (annotations+=Annotation+ name=ID)
	 * </pre>
	 */
	protected void sequence_Operation_2(ISerializationContext context, Operation semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Operation_3 returns Operation
	 *
	 * Constraint:
	 *     (annotations+=Annotation? name=ID)
	 * </pre>
	 */
	protected void sequence_Operation_3(ISerializationContext context, Operation semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Operation_4 returns Operation
	 *
	 * Constraint:
	 *     (annotations+=Annotation name=ID)
	 * </pre>
	 */
	protected void sequence_Operation_4(ISerializationContext context, Operation semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Operation_5 returns Operation
	 *
	 * Constraint:
	 *     name=ID
	 * </pre>
	 */
	protected void sequence_Operation_5(ISerializationContext context, Operation semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, Bug309949TestLanguagePackage.Literals.OPERATION__NAME) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug309949TestLanguagePackage.Literals.OPERATION__NAME));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getOperation_5Access().getNameIDTerminalRuleCall_1_0(), semanticObject.getName());
		feeder.finish();
	}
	
	
}

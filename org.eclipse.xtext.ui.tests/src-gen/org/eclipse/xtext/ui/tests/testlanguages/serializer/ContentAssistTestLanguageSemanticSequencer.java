/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
package org.eclipse.xtext.ui.tests.testlanguages.serializer;

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
import org.eclipse.xtext.ui.tests.testlanguages.contentAssistTestLanguage.AbstractRuleCall;
import org.eclipse.xtext.ui.tests.testlanguages.contentAssistTestLanguage.ContentAssistTestLanguagePackage;
import org.eclipse.xtext.ui.tests.testlanguages.contentAssistTestLanguage.FirstAbstractRuleChild;
import org.eclipse.xtext.ui.tests.testlanguages.contentAssistTestLanguage.SecondAbstractRuleChild;
import org.eclipse.xtext.ui.tests.testlanguages.contentAssistTestLanguage.Start;
import org.eclipse.xtext.ui.tests.testlanguages.services.ContentAssistTestLanguageGrammarAccess;

@SuppressWarnings("all")
public class ContentAssistTestLanguageSemanticSequencer extends AbstractDelegatingSemanticSequencer {

	@Inject
	private ContentAssistTestLanguageGrammarAccess grammarAccess;
	
	@Override
	public void sequence(ISerializationContext context, EObject semanticObject) {
		EPackage epackage = semanticObject.eClass().getEPackage();
		ParserRule rule = context.getParserRule();
		Action action = context.getAssignedAction();
		Set<Parameter> parameters = context.getEnabledBooleanParameters();
		if (epackage == ContentAssistTestLanguagePackage.eINSTANCE)
			switch (semanticObject.eClass().getClassifierID()) {
			case ContentAssistTestLanguagePackage.ABSTRACT_RULE_CALL:
				sequence_AbstractRuleCall(context, (AbstractRuleCall) semanticObject); 
				return; 
			case ContentAssistTestLanguagePackage.FIRST_ABSTRACT_RULE_CHILD:
				sequence_FirstAbstractRuleChild(context, (FirstAbstractRuleChild) semanticObject); 
				return; 
			case ContentAssistTestLanguagePackage.SECOND_ABSTRACT_RULE_CHILD:
				sequence_SecondAbstractRuleChild(context, (SecondAbstractRuleChild) semanticObject); 
				return; 
			case ContentAssistTestLanguagePackage.START:
				sequence_Start(context, (Start) semanticObject); 
				return; 
			}
		if (errorAcceptor != null)
			errorAcceptor.accept(diagnosticProvider.createInvalidContextOrTypeDiagnostic(semanticObject, context));
	}
	
	/**
	 * <pre>
	 * Contexts:
	 *     AbstractRuleCall returns AbstractRuleCall
	 *
	 * Constraint:
	 *     rule=[AbstractRule|ID]
	 * </pre>
	 */
	protected void sequence_AbstractRuleCall(ISerializationContext context, AbstractRuleCall semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, ContentAssistTestLanguagePackage.Literals.ABSTRACT_RULE_CALL__RULE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, ContentAssistTestLanguagePackage.Literals.ABSTRACT_RULE_CALL__RULE));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getAbstractRuleCallAccess().getRuleAbstractRuleIDTerminalRuleCall_0_1(), semanticObject.eGet(ContentAssistTestLanguagePackage.Literals.ABSTRACT_RULE_CALL__RULE, false));
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     AbstractRule returns FirstAbstractRuleChild
	 *     FirstAbstractRuleChild returns FirstAbstractRuleChild
	 *
	 * Constraint:
	 *     (name=ID elements+=AbstractRule+)
	 * </pre>
	 */
	protected void sequence_FirstAbstractRuleChild(ISerializationContext context, FirstAbstractRuleChild semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     AbstractRule returns SecondAbstractRuleChild
	 *     SecondAbstractRuleChild returns SecondAbstractRuleChild
	 *
	 * Constraint:
	 *     (name=ID rule=AbstractRuleCall)
	 * </pre>
	 */
	protected void sequence_SecondAbstractRuleChild(ISerializationContext context, SecondAbstractRuleChild semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, ContentAssistTestLanguagePackage.Literals.ABSTRACT_RULE__NAME) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, ContentAssistTestLanguagePackage.Literals.ABSTRACT_RULE__NAME));
			if (transientValues.isValueTransient(semanticObject, ContentAssistTestLanguagePackage.Literals.SECOND_ABSTRACT_RULE_CHILD__RULE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, ContentAssistTestLanguagePackage.Literals.SECOND_ABSTRACT_RULE_CHILD__RULE));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getSecondAbstractRuleChildAccess().getNameIDTerminalRuleCall_0_0(), semanticObject.getName());
		feeder.accept(grammarAccess.getSecondAbstractRuleChildAccess().getRuleAbstractRuleCallParserRuleCall_3_0(), semanticObject.getRule());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Start returns Start
	 *
	 * Constraint:
	 *     rules+=AbstractRule+
	 * </pre>
	 */
	protected void sequence_Start(ISerializationContext context, Start semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
}

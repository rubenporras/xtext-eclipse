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
import org.eclipse.xtext.ui.tests.testlanguages.referenceGrammarUi.Erwachsener;
import org.eclipse.xtext.ui.tests.testlanguages.referenceGrammarUi.Familie;
import org.eclipse.xtext.ui.tests.testlanguages.referenceGrammarUi.Farbe;
import org.eclipse.xtext.ui.tests.testlanguages.referenceGrammarUi.Kind;
import org.eclipse.xtext.ui.tests.testlanguages.referenceGrammarUi.ReferenceGrammarUiPackage;
import org.eclipse.xtext.ui.tests.testlanguages.referenceGrammarUi.Spielplatz;
import org.eclipse.xtext.ui.tests.testlanguages.referenceGrammarUi.Spielzeug;
import org.eclipse.xtext.ui.tests.testlanguages.services.ReferenceGrammarUiTestLanguageGrammarAccess;

@SuppressWarnings("all")
public class ReferenceGrammarUiTestLanguageSemanticSequencer extends AbstractDelegatingSemanticSequencer {

	@Inject
	private ReferenceGrammarUiTestLanguageGrammarAccess grammarAccess;
	
	@Override
	public void sequence(ISerializationContext context, EObject semanticObject) {
		EPackage epackage = semanticObject.eClass().getEPackage();
		ParserRule rule = context.getParserRule();
		Action action = context.getAssignedAction();
		Set<Parameter> parameters = context.getEnabledBooleanParameters();
		if (epackage == ReferenceGrammarUiPackage.eINSTANCE)
			switch (semanticObject.eClass().getClassifierID()) {
			case ReferenceGrammarUiPackage.ERWACHSENER:
				sequence_Erwachsener(context, (Erwachsener) semanticObject); 
				return; 
			case ReferenceGrammarUiPackage.FAMILIE:
				sequence_Familie(context, (Familie) semanticObject); 
				return; 
			case ReferenceGrammarUiPackage.FARBE:
				sequence_Farbe(context, (Farbe) semanticObject); 
				return; 
			case ReferenceGrammarUiPackage.KIND:
				sequence_Kind(context, (Kind) semanticObject); 
				return; 
			case ReferenceGrammarUiPackage.SPIELPLATZ:
				sequence_Spielplatz(context, (Spielplatz) semanticObject); 
				return; 
			case ReferenceGrammarUiPackage.SPIELZEUG:
				sequence_Spielzeug(context, (Spielzeug) semanticObject); 
				return; 
			}
		if (errorAcceptor != null)
			errorAcceptor.accept(diagnosticProvider.createInvalidContextOrTypeDiagnostic(semanticObject, context));
	}
	
	/**
	 * <pre>
	 * Contexts:
	 *     Person returns Erwachsener
	 *     Erwachsener returns Erwachsener
	 *
	 * Constraint:
	 *     (name=ID age=INT)
	 * </pre>
	 */
	protected void sequence_Erwachsener(ISerializationContext context, Erwachsener semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, ReferenceGrammarUiPackage.Literals.PERSON__NAME) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, ReferenceGrammarUiPackage.Literals.PERSON__NAME));
			if (transientValues.isValueTransient(semanticObject, ReferenceGrammarUiPackage.Literals.PERSON__AGE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, ReferenceGrammarUiPackage.Literals.PERSON__AGE));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getErwachsenerAccess().getNameIDTerminalRuleCall_2_0(), semanticObject.getName());
		feeder.accept(grammarAccess.getErwachsenerAccess().getAgeINTTerminalRuleCall_3_0(), semanticObject.getAge());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Familie returns Familie
	 *
	 * Constraint:
	 *     ((name='keyword' | name=STRING | name=ID) mutter=[Erwachsener|ID] vater=[Erwachsener|ID] kinder+=[Kind|ID] kinder+=[Kind|ID]*)
	 * </pre>
	 */
	protected void sequence_Familie(ISerializationContext context, Familie semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Farbe returns Farbe
	 *
	 * Constraint:
	 *     (wert='ROT' | wert='BLAU' | wert='GELB' | wert='GR�N')
	 * </pre>
	 */
	protected void sequence_Farbe(ISerializationContext context, Farbe semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Person returns Kind
	 *     Kind returns Kind
	 *
	 * Constraint:
	 *     (name=ID age=INT)
	 * </pre>
	 */
	protected void sequence_Kind(ISerializationContext context, Kind semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, ReferenceGrammarUiPackage.Literals.PERSON__NAME) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, ReferenceGrammarUiPackage.Literals.PERSON__NAME));
			if (transientValues.isValueTransient(semanticObject, ReferenceGrammarUiPackage.Literals.PERSON__AGE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, ReferenceGrammarUiPackage.Literals.PERSON__AGE));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getKindAccess().getNameIDTerminalRuleCall_2_0(), semanticObject.getName());
		feeder.accept(grammarAccess.getKindAccess().getAgeINTTerminalRuleCall_3_0(), semanticObject.getAge());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Spielplatz returns Spielplatz
	 *
	 * Constraint:
	 *     (groesse=INT beschreibung=STRING? (kinder+=Kind | erzieher+=Erwachsener | spielzeuge+=Spielzeug | familie+=Familie)*)
	 * </pre>
	 */
	protected void sequence_Spielplatz(ISerializationContext context, Spielplatz semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Spielzeug returns Spielzeug
	 *
	 * Constraint:
	 *     (name=ID farbe=Farbe)
	 * </pre>
	 */
	protected void sequence_Spielzeug(ISerializationContext context, Spielzeug semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, ReferenceGrammarUiPackage.Literals.SPIELZEUG__NAME) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, ReferenceGrammarUiPackage.Literals.SPIELZEUG__NAME));
			if (transientValues.isValueTransient(semanticObject, ReferenceGrammarUiPackage.Literals.SPIELZEUG__FARBE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, ReferenceGrammarUiPackage.Literals.SPIELZEUG__FARBE));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getSpielzeugAccess().getNameIDTerminalRuleCall_2_0(), semanticObject.getName());
		feeder.accept(grammarAccess.getSpielzeugAccess().getFarbeFarbeParserRuleCall_3_0(), semanticObject.getFarbe());
		feeder.finish();
	}
	
	
}

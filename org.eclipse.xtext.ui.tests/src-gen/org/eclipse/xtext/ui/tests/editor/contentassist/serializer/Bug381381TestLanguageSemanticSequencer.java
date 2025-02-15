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
import org.eclipse.xtext.ui.tests.editor.contentassist.bug381381TestLanguage.Bug381381TestLanguagePackage;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug381381TestLanguage.CopyFieldNameToVariableStmt;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug381381TestLanguage.Model;
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug381381TestLanguageGrammarAccess;

@SuppressWarnings("all")
public class Bug381381TestLanguageSemanticSequencer extends AbstractDelegatingSemanticSequencer {

	@Inject
	private Bug381381TestLanguageGrammarAccess grammarAccess;
	
	@Override
	public void sequence(ISerializationContext context, EObject semanticObject) {
		EPackage epackage = semanticObject.eClass().getEPackage();
		ParserRule rule = context.getParserRule();
		Action action = context.getAssignedAction();
		Set<Parameter> parameters = context.getEnabledBooleanParameters();
		if (epackage == Bug381381TestLanguagePackage.eINSTANCE)
			switch (semanticObject.eClass().getClassifierID()) {
			case Bug381381TestLanguagePackage.COPY_FIELD_NAME_TO_VARIABLE_STMT:
				sequence_CopyFieldNameToVariableStmt(context, (CopyFieldNameToVariableStmt) semanticObject); 
				return; 
			case Bug381381TestLanguagePackage.MODEL:
				sequence_Model(context, (Model) semanticObject); 
				return; 
			}
		if (errorAcceptor != null)
			errorAcceptor.accept(diagnosticProvider.createInvalidContextOrTypeDiagnostic(semanticObject, context));
	}
	
	/**
	 * <pre>
	 * Contexts:
	 *     CopyFieldNameToVariableStmt returns CopyFieldNameToVariableStmt
	 *
	 * Constraint:
	 *     (name=ID? (line=INT column=INT)?)+
	 * </pre>
	 */
	protected void sequence_CopyFieldNameToVariableStmt(ISerializationContext context, CopyFieldNameToVariableStmt semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Model returns Model
	 *
	 * Constraint:
	 *     stmt=CopyFieldNameToVariableStmt
	 * </pre>
	 */
	protected void sequence_Model(ISerializationContext context, Model semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, Bug381381TestLanguagePackage.Literals.MODEL__STMT) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug381381TestLanguagePackage.Literals.MODEL__STMT));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getModelAccess().getStmtCopyFieldNameToVariableStmtParserRuleCall_0(), semanticObject.getStmt());
		feeder.finish();
	}
	
	
}

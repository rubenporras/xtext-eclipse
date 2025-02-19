/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
package org.eclipse.xtext.ui.tests.xmleditor.serializer;

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
import org.eclipse.xtext.ui.tests.xmleditor.services.XmlGrammarAccess;
import org.eclipse.xtext.ui.tests.xmleditor.simplexml.Attribute;
import org.eclipse.xtext.ui.tests.xmleditor.simplexml.Content;
import org.eclipse.xtext.ui.tests.xmleditor.simplexml.SimplexmlPackage;
import org.eclipse.xtext.ui.tests.xmleditor.simplexml.Tag;
import org.eclipse.xtext.ui.tests.xmleditor.simplexml.XmlDocument;

@SuppressWarnings("all")
public class XmlSemanticSequencer extends AbstractDelegatingSemanticSequencer {

	@Inject
	private XmlGrammarAccess grammarAccess;
	
	@Override
	public void sequence(ISerializationContext context, EObject semanticObject) {
		EPackage epackage = semanticObject.eClass().getEPackage();
		ParserRule rule = context.getParserRule();
		Action action = context.getAssignedAction();
		Set<Parameter> parameters = context.getEnabledBooleanParameters();
		if (epackage == SimplexmlPackage.eINSTANCE)
			switch (semanticObject.eClass().getClassifierID()) {
			case SimplexmlPackage.ATTRIBUTE:
				sequence_Attribute(context, (Attribute) semanticObject); 
				return; 
			case SimplexmlPackage.CONTENT:
				sequence_Content(context, (Content) semanticObject); 
				return; 
			case SimplexmlPackage.TAG:
				sequence_Tag(context, (Tag) semanticObject); 
				return; 
			case SimplexmlPackage.XML_DOCUMENT:
				sequence_XmlDocument(context, (XmlDocument) semanticObject); 
				return; 
			}
		if (errorAcceptor != null)
			errorAcceptor.accept(diagnosticProvider.createInvalidContextOrTypeDiagnostic(semanticObject, context));
	}
	
	/**
	 * <pre>
	 * Contexts:
	 *     Attribute returns Attribute
	 *
	 * Constraint:
	 *     (name=ID value=STRING)
	 * </pre>
	 */
	protected void sequence_Attribute(ISerializationContext context, Attribute semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, SimplexmlPackage.Literals.ATTRIBUTE__NAME) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, SimplexmlPackage.Literals.ATTRIBUTE__NAME));
			if (transientValues.isValueTransient(semanticObject, SimplexmlPackage.Literals.ATTRIBUTE__VALUE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, SimplexmlPackage.Literals.ATTRIBUTE__VALUE));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getAttributeAccess().getNameIDTerminalRuleCall_0_0(), semanticObject.getName());
		feeder.accept(grammarAccess.getAttributeAccess().getValueSTRINGTerminalRuleCall_2_0(), semanticObject.getValue());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Content returns Content
	 *
	 * Constraint:
	 *     (tag=Tag | text=PCDATA)
	 * </pre>
	 */
	protected void sequence_Content(ISerializationContext context, Content semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Tag returns Tag
	 *
	 * Constraint:
	 *     (name=ID attributes+=Attribute* (contents+=Content* closeName=ID)?)
	 * </pre>
	 */
	protected void sequence_Tag(ISerializationContext context, Tag semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     XmlDocument returns XmlDocument
	 *
	 * Constraint:
	 *     contents+=Content*
	 * </pre>
	 */
	protected void sequence_XmlDocument(ISerializationContext context, XmlDocument semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
}

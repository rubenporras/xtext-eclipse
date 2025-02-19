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
import org.eclipse.xtext.ui.tests.editor.contentassist.bug332217TestLanguage.Bug332217TestLanguagePackage;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug332217TestLanguage.Cell;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug332217TestLanguage.CollectionIterator;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug332217TestLanguage.CollectionLiteral;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug332217TestLanguage.ExternalOpen;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug332217TestLanguage.Model;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug332217TestLanguage.ObjectReference;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug332217TestLanguage.Section;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug332217TestLanguage.Selector;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug332217TestLanguage.StringConcat;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug332217TestLanguage.StringLiteral;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug332217TestLanguage.StringReplace;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug332217TestLanguage.StringSplit;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug332217TestLanguage.StringUrlConform;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug332217TestLanguage.TableView;
import org.eclipse.xtext.ui.tests.editor.contentassist.bug332217TestLanguage.TypeDescription;
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug332217TestLanguageGrammarAccess;

@SuppressWarnings("all")
public class Bug332217TestLanguageSemanticSequencer extends AbstractDelegatingSemanticSequencer {

	@Inject
	private Bug332217TestLanguageGrammarAccess grammarAccess;
	
	@Override
	public void sequence(ISerializationContext context, EObject semanticObject) {
		EPackage epackage = semanticObject.eClass().getEPackage();
		ParserRule rule = context.getParserRule();
		Action action = context.getAssignedAction();
		Set<Parameter> parameters = context.getEnabledBooleanParameters();
		if (epackage == Bug332217TestLanguagePackage.eINSTANCE)
			switch (semanticObject.eClass().getClassifierID()) {
			case Bug332217TestLanguagePackage.CELL:
				sequence_Cell(context, (Cell) semanticObject); 
				return; 
			case Bug332217TestLanguagePackage.COLLECTION_ITERATOR:
				sequence_CollectionIterator(context, (CollectionIterator) semanticObject); 
				return; 
			case Bug332217TestLanguagePackage.COLLECTION_LITERAL:
				sequence_CollectionLiteral(context, (CollectionLiteral) semanticObject); 
				return; 
			case Bug332217TestLanguagePackage.EXTERNAL_OPEN:
				sequence_ExternalOpen(context, (ExternalOpen) semanticObject); 
				return; 
			case Bug332217TestLanguagePackage.MODEL:
				sequence_Model(context, (Model) semanticObject); 
				return; 
			case Bug332217TestLanguagePackage.OBJECT_REFERENCE:
				if (rule == grammarAccess.getNestedObjectReferenceRule()) {
					sequence_NestedObjectReference(context, (ObjectReference) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getObjectReferenceRule()
						|| rule == grammarAccess.getExpressionRule()
						|| rule == grammarAccess.getImageExpressionRule()
						|| rule == grammarAccess.getScalarExpressionRule()
						|| rule == grammarAccess.getCollectionExpressionRule()) {
					sequence_ObjectReference(context, (ObjectReference) semanticObject); 
					return; 
				}
				else break;
			case Bug332217TestLanguagePackage.PARAMETER:
				sequence_Parameter(context, (org.eclipse.xtext.ui.tests.editor.contentassist.bug332217TestLanguage.Parameter) semanticObject); 
				return; 
			case Bug332217TestLanguagePackage.SECTION:
				sequence_Section(context, (Section) semanticObject); 
				return; 
			case Bug332217TestLanguagePackage.SELECTOR:
				sequence_Selector(context, (Selector) semanticObject); 
				return; 
			case Bug332217TestLanguagePackage.STRING_CONCAT:
				sequence_StringFunction(context, (StringConcat) semanticObject); 
				return; 
			case Bug332217TestLanguagePackage.STRING_LITERAL:
				sequence_StringLiteral(context, (StringLiteral) semanticObject); 
				return; 
			case Bug332217TestLanguagePackage.STRING_REPLACE:
				sequence_StringFunction(context, (StringReplace) semanticObject); 
				return; 
			case Bug332217TestLanguagePackage.STRING_SPLIT:
				sequence_CollectionFunction(context, (StringSplit) semanticObject); 
				return; 
			case Bug332217TestLanguagePackage.STRING_URL_CONFORM:
				sequence_StringFunction(context, (StringUrlConform) semanticObject); 
				return; 
			case Bug332217TestLanguagePackage.TABLE_VIEW:
				sequence_TableView(context, (TableView) semanticObject); 
				return; 
			case Bug332217TestLanguagePackage.TYPE_DESCRIPTION:
				sequence_TypeDescription(context, (TypeDescription) semanticObject); 
				return; 
			}
		if (errorAcceptor != null)
			errorAcceptor.accept(diagnosticProvider.createInvalidContextOrTypeDiagnostic(semanticObject, context));
	}
	
	/**
	 * <pre>
	 * Contexts:
	 *     ViewContentElement returns Cell
	 *     Cell returns Cell
	 *
	 * Constraint:
	 *     (
	 *         type=CellType 
	 *         iterator=CollectionIterator? 
	 *         (text=ScalarExpression | details=ScalarExpression | image=ScalarExpression | action=ViewAction | accessory=CellAccessory)*
	 *     )
	 * </pre>
	 */
	protected void sequence_Cell(ISerializationContext context, Cell semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Expression returns StringSplit
	 *     CollectionExpression returns StringSplit
	 *     CollectionFunction returns StringSplit
	 *
	 * Constraint:
	 *     (value=ScalarExpression delimiter=ScalarExpression)
	 * </pre>
	 */
	protected void sequence_CollectionFunction(ISerializationContext context, StringSplit semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, Bug332217TestLanguagePackage.Literals.STRING_SPLIT__VALUE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug332217TestLanguagePackage.Literals.STRING_SPLIT__VALUE));
			if (transientValues.isValueTransient(semanticObject, Bug332217TestLanguagePackage.Literals.STRING_SPLIT__DELIMITER) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug332217TestLanguagePackage.Literals.STRING_SPLIT__DELIMITER));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getCollectionFunctionAccess().getValueScalarExpressionParserRuleCall_2_0(), semanticObject.getValue());
		feeder.accept(grammarAccess.getCollectionFunctionAccess().getDelimiterScalarExpressionParserRuleCall_4_0(), semanticObject.getDelimiter());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     PropertyPathPart returns CollectionIterator
	 *     CollectionIterator returns CollectionIterator
	 *
	 * Constraint:
	 *     (name=ID collection=CollectionExpression)
	 * </pre>
	 */
	protected void sequence_CollectionIterator(ISerializationContext context, CollectionIterator semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, Bug332217TestLanguagePackage.Literals.PROPERTY_PATH_PART__NAME) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug332217TestLanguagePackage.Literals.PROPERTY_PATH_PART__NAME));
			if (transientValues.isValueTransient(semanticObject, Bug332217TestLanguagePackage.Literals.COLLECTION_ITERATOR__COLLECTION) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug332217TestLanguagePackage.Literals.COLLECTION_ITERATOR__COLLECTION));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getCollectionIteratorAccess().getNameIDTerminalRuleCall_1_0(), semanticObject.getName());
		feeder.accept(grammarAccess.getCollectionIteratorAccess().getCollectionCollectionExpressionParserRuleCall_3_0(), semanticObject.getCollection());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Expression returns CollectionLiteral
	 *     CollectionExpression returns CollectionLiteral
	 *     CollectionLiteral returns CollectionLiteral
	 *
	 * Constraint:
	 *     (items+=ScalarExpression items+=ScalarExpression*)
	 * </pre>
	 */
	protected void sequence_CollectionLiteral(ISerializationContext context, CollectionLiteral semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     ViewAction returns ExternalOpen
	 *     ExternalOpen returns ExternalOpen
	 *
	 * Constraint:
	 *     url=ScalarExpression
	 * </pre>
	 */
	protected void sequence_ExternalOpen(ISerializationContext context, ExternalOpen semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, Bug332217TestLanguagePackage.Literals.EXTERNAL_OPEN__URL) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug332217TestLanguagePackage.Literals.EXTERNAL_OPEN__URL));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getExternalOpenAccess().getUrlScalarExpressionParserRuleCall_0(), semanticObject.getUrl());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Model returns Model
	 *
	 * Constraint:
	 *     elements+=TableView+
	 * </pre>
	 */
	protected void sequence_Model(ISerializationContext context, Model semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     NestedObjectReference returns ObjectReference
	 *
	 * Constraint:
	 *     (object=[PropertyPathPart|ID] tail=NestedObjectReference?)
	 * </pre>
	 */
	protected void sequence_NestedObjectReference(ISerializationContext context, ObjectReference semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     ObjectReference returns ObjectReference
	 *     Expression returns ObjectReference
	 *     ImageExpression returns ObjectReference
	 *     ScalarExpression returns ObjectReference
	 *     CollectionExpression returns ObjectReference
	 *
	 * Constraint:
	 *     (object=[PropertyPathPart|ID] tail=NestedObjectReference?)
	 * </pre>
	 */
	protected void sequence_ObjectReference(ISerializationContext context, ObjectReference semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     PropertyPathPart returns Parameter
	 *     Parameter returns Parameter
	 *
	 * Constraint:
	 *     (description=TypeDescription name=ID)
	 * </pre>
	 */
	protected void sequence_Parameter(ISerializationContext context, org.eclipse.xtext.ui.tests.editor.contentassist.bug332217TestLanguage.Parameter semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, Bug332217TestLanguagePackage.Literals.PARAMETER__DESCRIPTION) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug332217TestLanguagePackage.Literals.PARAMETER__DESCRIPTION));
			if (transientValues.isValueTransient(semanticObject, Bug332217TestLanguagePackage.Literals.PROPERTY_PATH_PART__NAME) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug332217TestLanguagePackage.Literals.PROPERTY_PATH_PART__NAME));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getParameterAccess().getDescriptionTypeDescriptionParserRuleCall_0_0(), semanticObject.getDescription());
		feeder.accept(grammarAccess.getParameterAccess().getNameIDTerminalRuleCall_1_0(), semanticObject.getName());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     ViewContentElement returns Section
	 *     Section returns Section
	 *
	 * Constraint:
	 *     (iterator=CollectionIterator? title=ScalarExpression? cells+=Cell+)
	 * </pre>
	 */
	protected void sequence_Section(ISerializationContext context, Section semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     ViewAction returns Selector
	 *     Selector returns Selector
	 *
	 * Constraint:
	 *     name=SelectorName
	 * </pre>
	 */
	protected void sequence_Selector(ISerializationContext context, Selector semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, Bug332217TestLanguagePackage.Literals.SELECTOR__NAME) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug332217TestLanguagePackage.Literals.SELECTOR__NAME));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getSelectorAccess().getNameSelectorNameParserRuleCall_2_0(), semanticObject.getName());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Expression returns StringConcat
	 *     ImageExpression returns StringConcat
	 *     ScalarExpression returns StringConcat
	 *     StringFunction returns StringConcat
	 *
	 * Constraint:
	 *     values+=ScalarExpression+
	 * </pre>
	 */
	protected void sequence_StringFunction(ISerializationContext context, StringConcat semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Expression returns StringReplace
	 *     ImageExpression returns StringReplace
	 *     ScalarExpression returns StringReplace
	 *     StringFunction returns StringReplace
	 *
	 * Constraint:
	 *     (value=ScalarExpression match=ScalarExpression replacement=ScalarExpression)
	 * </pre>
	 */
	protected void sequence_StringFunction(ISerializationContext context, StringReplace semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, Bug332217TestLanguagePackage.Literals.STRING_REPLACE__VALUE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug332217TestLanguagePackage.Literals.STRING_REPLACE__VALUE));
			if (transientValues.isValueTransient(semanticObject, Bug332217TestLanguagePackage.Literals.STRING_REPLACE__MATCH) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug332217TestLanguagePackage.Literals.STRING_REPLACE__MATCH));
			if (transientValues.isValueTransient(semanticObject, Bug332217TestLanguagePackage.Literals.STRING_REPLACE__REPLACEMENT) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug332217TestLanguagePackage.Literals.STRING_REPLACE__REPLACEMENT));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getStringFunctionAccess().getValueScalarExpressionParserRuleCall_1_2_0(), semanticObject.getValue());
		feeder.accept(grammarAccess.getStringFunctionAccess().getMatchScalarExpressionParserRuleCall_1_4_0(), semanticObject.getMatch());
		feeder.accept(grammarAccess.getStringFunctionAccess().getReplacementScalarExpressionParserRuleCall_1_6_0(), semanticObject.getReplacement());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Expression returns StringUrlConform
	 *     ImageExpression returns StringUrlConform
	 *     ScalarExpression returns StringUrlConform
	 *     StringFunction returns StringUrlConform
	 *
	 * Constraint:
	 *     value=ScalarExpression
	 * </pre>
	 */
	protected void sequence_StringFunction(ISerializationContext context, StringUrlConform semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, Bug332217TestLanguagePackage.Literals.STRING_URL_CONFORM__VALUE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug332217TestLanguagePackage.Literals.STRING_URL_CONFORM__VALUE));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getStringFunctionAccess().getValueScalarExpressionParserRuleCall_2_2_0(), semanticObject.getValue());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Expression returns StringLiteral
	 *     ImageExpression returns StringLiteral
	 *     ScalarExpression returns StringLiteral
	 *     StringLiteral returns StringLiteral
	 *
	 * Constraint:
	 *     value=STRING
	 * </pre>
	 */
	protected void sequence_StringLiteral(ISerializationContext context, StringLiteral semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, Bug332217TestLanguagePackage.Literals.STRING_LITERAL__VALUE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, Bug332217TestLanguagePackage.Literals.STRING_LITERAL__VALUE));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getStringLiteralAccess().getValueSTRINGTerminalRuleCall_0(), semanticObject.getValue());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     TableView returns TableView
	 *
	 * Constraint:
	 *     (name=ID content=Parameter? (title=ScalarExpression | titleImage=ImageExpression | style=TableViewStyle)* sections+=Section*)
	 * </pre>
	 */
	protected void sequence_TableView(ISerializationContext context, TableView semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     TypeDescription returns TypeDescription
	 *
	 * Constraint:
	 *     (type=ID many?='[]'?)
	 * </pre>
	 */
	protected void sequence_TypeDescription(ISerializationContext context, TypeDescription semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
}

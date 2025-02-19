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
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.BacktrackingContentAssistTestPackage;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.Body;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.BooleanLiteralExp;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.ClassifierContextDecl;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.CollectionLiteralExp;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.CollectionLiteralPart;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.CollectionType;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.Definition;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.Der;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.Document;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.IfExp;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.InfixExp;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.Init;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.InvalidLiteralExp;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.Invariant;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.LetExp;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.LetVariable;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.NestedExp;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.NullLiteralExp;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.NumberLiteralExp;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.OclMessage;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.OclMessageArg;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.OperationContextDecl;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.PackageDeclaration;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.PathNameExp;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.Post;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.Pre;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.PreExp;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.PrefixExp;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.PrimitiveType;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.PropertyContextDecl;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.QualifiedClassifierRef;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.QualifiedOperationRef;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.QualifiedPackageRef;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.QualifiedPropertyRef;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.RoundBracketExp;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.SelfExp;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.SimpleClassifierRef;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.SimpleNameExp;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.SimpleOperationRef;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.SimplePackageRef;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.SimplePropertyRef;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.SquareBracketExp;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.StringLiteralExp;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.TupleLiteralExp;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.TupleLiteralPart;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.TupleType;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.iteratorAccumulator;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.iteratorVariable;
import org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.tuplePart;
import org.eclipse.xtext.ui.tests.editor.contentassist.services.BacktrackingContentAssistTestLanguageGrammarAccess;

@SuppressWarnings("all")
public class BacktrackingContentAssistTestLanguageSemanticSequencer extends AbstractDelegatingSemanticSequencer {

	@Inject
	private BacktrackingContentAssistTestLanguageGrammarAccess grammarAccess;
	
	@Override
	public void sequence(ISerializationContext context, EObject semanticObject) {
		EPackage epackage = semanticObject.eClass().getEPackage();
		ParserRule rule = context.getParserRule();
		Action action = context.getAssignedAction();
		Set<Parameter> parameters = context.getEnabledBooleanParameters();
		if (epackage == BacktrackingContentAssistTestPackage.eINSTANCE)
			switch (semanticObject.eClass().getClassifierID()) {
			case BacktrackingContentAssistTestPackage.BODY:
				sequence_Body(context, (Body) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.BOOLEAN_LITERAL_EXP:
				sequence_BooleanLiteralExp(context, (BooleanLiteralExp) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.CLASSIFIER_CONTEXT_DECL:
				sequence_ClassifierContextDecl(context, (ClassifierContextDecl) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.COLLECTION_LITERAL_EXP:
				sequence_CollectionLiteralExp(context, (CollectionLiteralExp) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.COLLECTION_LITERAL_PART:
				sequence_CollectionLiteralPart(context, (CollectionLiteralPart) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.COLLECTION_TYPE:
				sequence_CollectionType(context, (CollectionType) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.DEFINITION:
				sequence_Definition(context, (Definition) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.DER:
				sequence_Der(context, (Der) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.DOCUMENT:
				sequence_Document(context, (Document) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.IF_EXP:
				sequence_IfExp(context, (IfExp) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.INFIX_EXP:
				if (rule == grammarAccess.getNavigatingExpRule()) {
					sequence_NavigatingExp(context, (InfixExp) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getNavigationExpRule()
						|| rule == grammarAccess.getUnaryRule()) {
					sequence_NavigationExp(context, (InfixExp) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getOclMessageArgRule()
						|| rule == grammarAccess.getExpressionRule()
						|| rule == grammarAccess.getImpliesRule()
						|| action == grammarAccess.getImpliesAccess().getInfixExpSourceAction_1_0()) {
					sequence_NavigationExp_additive_and_equality_implies_multiplicative_or_relational_xor(context, (InfixExp) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getOrRule()
						|| action == grammarAccess.getOrAccess().getInfixExpSourceAction_1_0()) {
					sequence_NavigationExp_additive_and_equality_multiplicative_or_relational(context, (InfixExp) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getXorRule()
						|| action == grammarAccess.getXorAccess().getInfixExpSourceAction_1_0()) {
					sequence_NavigationExp_additive_and_equality_multiplicative_or_relational_xor(context, (InfixExp) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getAndRule()
						|| action == grammarAccess.getAndAccess().getInfixExpSourceAction_1_0()) {
					sequence_NavigationExp_additive_and_equality_multiplicative_relational(context, (InfixExp) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getEqualityRule()
						|| action == grammarAccess.getEqualityAccess().getInfixExpSourceAction_1_0()) {
					sequence_NavigationExp_additive_equality_multiplicative_relational(context, (InfixExp) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getAdditiveRule()
						|| action == grammarAccess.getAdditiveAccess().getInfixExpSourceAction_1_0()) {
					sequence_NavigationExp_additive_multiplicative(context, (InfixExp) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getRelationalRule()
						|| action == grammarAccess.getRelationalAccess().getInfixExpSourceAction_1_0()) {
					sequence_NavigationExp_additive_multiplicative_relational(context, (InfixExp) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getMultiplicativeRule()
						|| action == grammarAccess.getMultiplicativeAccess().getInfixExpSourceAction_1_0()) {
					sequence_NavigationExp_multiplicative(context, (InfixExp) semanticObject); 
					return; 
				}
				else break;
			case BacktrackingContentAssistTestPackage.INIT:
				sequence_Init(context, (Init) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.INVALID_LITERAL_EXP:
				sequence_InvalidLiteralExp(context, (InvalidLiteralExp) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.INVARIANT:
				sequence_Invariant(context, (Invariant) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.LET_EXP:
				sequence_LetExp(context, (LetExp) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.LET_VARIABLE:
				sequence_LetVariable(context, (LetVariable) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.NESTED_EXP:
				sequence_SubNavigationExp(context, (NestedExp) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.NULL_LITERAL_EXP:
				sequence_NullLiteralExp(context, (NullLiteralExp) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.NUMBER_LITERAL_EXP:
				sequence_NumberLiteralExp(context, (NumberLiteralExp) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.OCL_MESSAGE:
				if (rule == grammarAccess.getNavigatingExpRule()) {
					sequence_NavigatingExp(context, (OclMessage) semanticObject); 
					return; 
				}
				else if (rule == grammarAccess.getNavigationExpRule()
						|| rule == grammarAccess.getOclMessageArgRule()
						|| rule == grammarAccess.getExpressionRule()
						|| rule == grammarAccess.getImpliesRule()
						|| action == grammarAccess.getImpliesAccess().getInfixExpSourceAction_1_0()
						|| rule == grammarAccess.getXorRule()
						|| action == grammarAccess.getXorAccess().getInfixExpSourceAction_1_0()
						|| rule == grammarAccess.getOrRule()
						|| action == grammarAccess.getOrAccess().getInfixExpSourceAction_1_0()
						|| rule == grammarAccess.getAndRule()
						|| action == grammarAccess.getAndAccess().getInfixExpSourceAction_1_0()
						|| rule == grammarAccess.getEqualityRule()
						|| action == grammarAccess.getEqualityAccess().getInfixExpSourceAction_1_0()
						|| rule == grammarAccess.getRelationalRule()
						|| action == grammarAccess.getRelationalAccess().getInfixExpSourceAction_1_0()
						|| rule == grammarAccess.getAdditiveRule()
						|| action == grammarAccess.getAdditiveAccess().getInfixExpSourceAction_1_0()
						|| rule == grammarAccess.getMultiplicativeRule()
						|| action == grammarAccess.getMultiplicativeAccess().getInfixExpSourceAction_1_0()
						|| rule == grammarAccess.getUnaryRule()) {
					sequence_NavigationExp(context, (OclMessage) semanticObject); 
					return; 
				}
				else break;
			case BacktrackingContentAssistTestPackage.OCL_MESSAGE_ARG:
				sequence_OclMessageArg(context, (OclMessageArg) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.OPERATION_CONTEXT_DECL:
				sequence_OperationContextDecl(context, (OperationContextDecl) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.PACKAGE_DECLARATION:
				sequence_PackageDeclaration(context, (PackageDeclaration) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.PARAMETER:
				sequence_Parameter(context, (org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.Parameter) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.PATH_NAME_EXP:
				sequence_PathNameExp(context, (PathNameExp) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.POST:
				sequence_Post(context, (Post) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.PRE:
				sequence_Pre(context, (Pre) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.PRE_EXP:
				sequence_PreExp(context, (PreExp) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.PREFIX_EXP:
				sequence_unary(context, (PrefixExp) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.PRIMITIVE_TYPE:
				sequence_PrimitiveType(context, (PrimitiveType) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.PROPERTY_CONTEXT_DECL:
				sequence_PropertyContextDecl(context, (PropertyContextDecl) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.QUALIFIED_CLASSIFIER_REF:
				sequence_QualifiedClassifierRef(context, (QualifiedClassifierRef) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.QUALIFIED_OPERATION_REF:
				sequence_QualifiedOperationRef(context, (QualifiedOperationRef) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.QUALIFIED_PACKAGE_REF:
				sequence_QualifiedPackageRef(context, (QualifiedPackageRef) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.QUALIFIED_PROPERTY_REF:
				sequence_QualifiedPropertyRef(context, (QualifiedPropertyRef) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.ROUND_BRACKET_EXP:
				sequence_RoundBracketExp(context, (RoundBracketExp) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.SELF_EXP:
				sequence_SelfExp(context, (SelfExp) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.SIMPLE_CLASSIFIER_REF:
				sequence_SimpleClassifierRef(context, (SimpleClassifierRef) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.SIMPLE_NAME_EXP:
				sequence_SimpleNameExp(context, (SimpleNameExp) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.SIMPLE_OPERATION_REF:
				sequence_SimpleOperationRef(context, (SimpleOperationRef) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.SIMPLE_PACKAGE_REF:
				sequence_SimplePackageRef(context, (SimplePackageRef) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.SIMPLE_PROPERTY_REF:
				sequence_SimplePropertyRef(context, (SimplePropertyRef) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.SQUARE_BRACKET_EXP:
				sequence_SquareBracketExp(context, (SquareBracketExp) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.STRING_LITERAL_EXP:
				sequence_StringLiteralExp(context, (StringLiteralExp) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.TUPLE_LITERAL_EXP:
				sequence_TupleLiteralExp(context, (TupleLiteralExp) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.TUPLE_LITERAL_PART:
				sequence_TupleLiteralPart(context, (TupleLiteralPart) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.TUPLE_TYPE:
				sequence_TupleType(context, (TupleType) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.ITERATOR_ACCUMULATOR:
				sequence_iteratorAccumulator(context, (iteratorAccumulator) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.ITERATOR_VARIABLE:
				sequence_iteratorVariable(context, (iteratorVariable) semanticObject); 
				return; 
			case BacktrackingContentAssistTestPackage.TUPLE_PART:
				sequence_tuplePart(context, (tuplePart) semanticObject); 
				return; 
			}
		if (errorAcceptor != null)
			errorAcceptor.accept(diagnosticProvider.createInvalidContextOrTypeDiagnostic(semanticObject, context));
	}
	
	/**
	 * <pre>
	 * Contexts:
	 *     Body returns Body
	 *
	 * Constraint:
	 *     (constraintName=Identifier? expression=Expression)
	 * </pre>
	 */
	protected void sequence_Body(ISerializationContext context, Body semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     NavigationExp returns BooleanLiteralExp
	 *     NavigationExp.InfixExp_1_0_0 returns BooleanLiteralExp
	 *     NavigationExp.OclMessage_1_1_0 returns BooleanLiteralExp
	 *     OclMessageArg returns BooleanLiteralExp
	 *     PrimitiveLiteralExp returns BooleanLiteralExp
	 *     BooleanLiteralExp returns BooleanLiteralExp
	 *     Expression returns BooleanLiteralExp
	 *     implies returns BooleanLiteralExp
	 *     implies.InfixExp_1_0 returns BooleanLiteralExp
	 *     xor returns BooleanLiteralExp
	 *     xor.InfixExp_1_0 returns BooleanLiteralExp
	 *     or returns BooleanLiteralExp
	 *     or.InfixExp_1_0 returns BooleanLiteralExp
	 *     and returns BooleanLiteralExp
	 *     and.InfixExp_1_0 returns BooleanLiteralExp
	 *     equality returns BooleanLiteralExp
	 *     equality.InfixExp_1_0 returns BooleanLiteralExp
	 *     relational returns BooleanLiteralExp
	 *     relational.InfixExp_1_0 returns BooleanLiteralExp
	 *     additive returns BooleanLiteralExp
	 *     additive.InfixExp_1_0 returns BooleanLiteralExp
	 *     multiplicative returns BooleanLiteralExp
	 *     multiplicative.InfixExp_1_0 returns BooleanLiteralExp
	 *     unary returns BooleanLiteralExp
	 *     SubNavigationExp returns BooleanLiteralExp
	 *
	 * Constraint:
	 *     isTrue?='true'?
	 * </pre>
	 */
	protected void sequence_BooleanLiteralExp(ISerializationContext context, BooleanLiteralExp semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     ClassifierContextDecl returns ClassifierContextDecl
	 *     ContextDecl returns ClassifierContextDecl
	 *
	 * Constraint:
	 *     (selfName=Identifier? classifier=ClassifierRef (invariants+=Invariant | definitions+=Definition)*)
	 * </pre>
	 */
	protected void sequence_ClassifierContextDecl(ISerializationContext context, ClassifierContextDecl semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     NavigationExp returns CollectionLiteralExp
	 *     NavigationExp.InfixExp_1_0_0 returns CollectionLiteralExp
	 *     NavigationExp.OclMessage_1_1_0 returns CollectionLiteralExp
	 *     OclMessageArg returns CollectionLiteralExp
	 *     CollectionLiteralExp returns CollectionLiteralExp
	 *     Expression returns CollectionLiteralExp
	 *     implies returns CollectionLiteralExp
	 *     implies.InfixExp_1_0 returns CollectionLiteralExp
	 *     xor returns CollectionLiteralExp
	 *     xor.InfixExp_1_0 returns CollectionLiteralExp
	 *     or returns CollectionLiteralExp
	 *     or.InfixExp_1_0 returns CollectionLiteralExp
	 *     and returns CollectionLiteralExp
	 *     and.InfixExp_1_0 returns CollectionLiteralExp
	 *     equality returns CollectionLiteralExp
	 *     equality.InfixExp_1_0 returns CollectionLiteralExp
	 *     relational returns CollectionLiteralExp
	 *     relational.InfixExp_1_0 returns CollectionLiteralExp
	 *     additive returns CollectionLiteralExp
	 *     additive.InfixExp_1_0 returns CollectionLiteralExp
	 *     multiplicative returns CollectionLiteralExp
	 *     multiplicative.InfixExp_1_0 returns CollectionLiteralExp
	 *     unary returns CollectionLiteralExp
	 *     SubNavigationExp returns CollectionLiteralExp
	 *
	 * Constraint:
	 *     (
	 *         type=CollectionLiteralExp_CollectionLiteralExp_1_0 
	 *         (collectionLiteralParts+=CollectionLiteralPart collectionLiteralParts+=CollectionLiteralPart*)?
	 *     )
	 * </pre>
	 */
	protected void sequence_CollectionLiteralExp(ISerializationContext context, CollectionLiteralExp semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     CollectionLiteralPart returns CollectionLiteralPart
	 *
	 * Constraint:
	 *     (expression=Expression lastExpression=Expression?)
	 * </pre>
	 */
	protected void sequence_CollectionLiteralPart(ISerializationContext context, CollectionLiteralPart semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     NavigationExp returns CollectionType
	 *     NavigationExp.InfixExp_1_0_0 returns CollectionType
	 *     NavigationExp.OclMessage_1_1_0 returns CollectionType
	 *     OclMessageArg returns CollectionType
	 *     TypeExp returns CollectionType
	 *     CollectionType returns CollectionType
	 *     CollectionLiteralExp returns CollectionType
	 *     CollectionLiteralExp.CollectionLiteralExp_1_0 returns CollectionType
	 *     Expression returns CollectionType
	 *     implies returns CollectionType
	 *     implies.InfixExp_1_0 returns CollectionType
	 *     xor returns CollectionType
	 *     xor.InfixExp_1_0 returns CollectionType
	 *     or returns CollectionType
	 *     or.InfixExp_1_0 returns CollectionType
	 *     and returns CollectionType
	 *     and.InfixExp_1_0 returns CollectionType
	 *     equality returns CollectionType
	 *     equality.InfixExp_1_0 returns CollectionType
	 *     relational returns CollectionType
	 *     relational.InfixExp_1_0 returns CollectionType
	 *     additive returns CollectionType
	 *     additive.InfixExp_1_0 returns CollectionType
	 *     multiplicative returns CollectionType
	 *     multiplicative.InfixExp_1_0 returns CollectionType
	 *     unary returns CollectionType
	 *     SubNavigationExp returns CollectionType
	 *
	 * Constraint:
	 *     (typeIdentifier=CollectionTypeIdentifier type=TypeExp?)
	 * </pre>
	 */
	protected void sequence_CollectionType(ISerializationContext context, CollectionType semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Definition returns Definition
	 *
	 * Constraint:
	 *     (
	 *         static?='static'? 
	 *         constraintName=Identifier? 
	 *         constrainedName=Identifier 
	 *         (parameters+=Parameter parameters+=Parameter*)? 
	 *         type=TypeExp? 
	 *         expression=Expression
	 *     )
	 * </pre>
	 */
	protected void sequence_Definition(ISerializationContext context, Definition semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Der returns Der
	 *
	 * Constraint:
	 *     expression=Expression
	 * </pre>
	 */
	protected void sequence_Der(ISerializationContext context, Der semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, BacktrackingContentAssistTestPackage.Literals.DER__EXPRESSION) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, BacktrackingContentAssistTestPackage.Literals.DER__EXPRESSION));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getDerAccess().getExpressionExpressionParserRuleCall_2_0(), semanticObject.getExpression());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Document returns Document
	 *
	 * Constraint:
	 *     (packages+=PackageDeclaration | contexts+=ContextDecl)+
	 * </pre>
	 */
	protected void sequence_Document(ISerializationContext context, Document semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     NavigationExp returns IfExp
	 *     NavigationExp.InfixExp_1_0_0 returns IfExp
	 *     NavigationExp.OclMessage_1_1_0 returns IfExp
	 *     OclMessageArg returns IfExp
	 *     Expression returns IfExp
	 *     implies returns IfExp
	 *     implies.InfixExp_1_0 returns IfExp
	 *     xor returns IfExp
	 *     xor.InfixExp_1_0 returns IfExp
	 *     or returns IfExp
	 *     or.InfixExp_1_0 returns IfExp
	 *     and returns IfExp
	 *     and.InfixExp_1_0 returns IfExp
	 *     equality returns IfExp
	 *     equality.InfixExp_1_0 returns IfExp
	 *     relational returns IfExp
	 *     relational.InfixExp_1_0 returns IfExp
	 *     additive returns IfExp
	 *     additive.InfixExp_1_0 returns IfExp
	 *     multiplicative returns IfExp
	 *     multiplicative.InfixExp_1_0 returns IfExp
	 *     unary returns IfExp
	 *     SubNavigationExp returns IfExp
	 *     IfExp returns IfExp
	 *
	 * Constraint:
	 *     (condition=Expression thenExpression=Expression elseExpression=Expression)
	 * </pre>
	 */
	protected void sequence_IfExp(ISerializationContext context, IfExp semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, BacktrackingContentAssistTestPackage.Literals.IF_EXP__CONDITION) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, BacktrackingContentAssistTestPackage.Literals.IF_EXP__CONDITION));
			if (transientValues.isValueTransient(semanticObject, BacktrackingContentAssistTestPackage.Literals.IF_EXP__THEN_EXPRESSION) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, BacktrackingContentAssistTestPackage.Literals.IF_EXP__THEN_EXPRESSION));
			if (transientValues.isValueTransient(semanticObject, BacktrackingContentAssistTestPackage.Literals.IF_EXP__ELSE_EXPRESSION) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, BacktrackingContentAssistTestPackage.Literals.IF_EXP__ELSE_EXPRESSION));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getIfExpAccess().getConditionExpressionParserRuleCall_1_0(), semanticObject.getCondition());
		feeder.accept(grammarAccess.getIfExpAccess().getThenExpressionExpressionParserRuleCall_3_0(), semanticObject.getThenExpression());
		feeder.accept(grammarAccess.getIfExpAccess().getElseExpressionExpressionParserRuleCall_5_0(), semanticObject.getElseExpression());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Init returns Init
	 *
	 * Constraint:
	 *     expression=Expression
	 * </pre>
	 */
	protected void sequence_Init(ISerializationContext context, Init semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, BacktrackingContentAssistTestPackage.Literals.INIT__EXPRESSION) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, BacktrackingContentAssistTestPackage.Literals.INIT__EXPRESSION));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getInitAccess().getExpressionExpressionParserRuleCall_2_0(), semanticObject.getExpression());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     NavigationExp returns InvalidLiteralExp
	 *     NavigationExp.InfixExp_1_0_0 returns InvalidLiteralExp
	 *     NavigationExp.OclMessage_1_1_0 returns InvalidLiteralExp
	 *     OclMessageArg returns InvalidLiteralExp
	 *     PrimitiveLiteralExp returns InvalidLiteralExp
	 *     InvalidLiteralExp returns InvalidLiteralExp
	 *     Expression returns InvalidLiteralExp
	 *     implies returns InvalidLiteralExp
	 *     implies.InfixExp_1_0 returns InvalidLiteralExp
	 *     xor returns InvalidLiteralExp
	 *     xor.InfixExp_1_0 returns InvalidLiteralExp
	 *     or returns InvalidLiteralExp
	 *     or.InfixExp_1_0 returns InvalidLiteralExp
	 *     and returns InvalidLiteralExp
	 *     and.InfixExp_1_0 returns InvalidLiteralExp
	 *     equality returns InvalidLiteralExp
	 *     equality.InfixExp_1_0 returns InvalidLiteralExp
	 *     relational returns InvalidLiteralExp
	 *     relational.InfixExp_1_0 returns InvalidLiteralExp
	 *     additive returns InvalidLiteralExp
	 *     additive.InfixExp_1_0 returns InvalidLiteralExp
	 *     multiplicative returns InvalidLiteralExp
	 *     multiplicative.InfixExp_1_0 returns InvalidLiteralExp
	 *     unary returns InvalidLiteralExp
	 *     SubNavigationExp returns InvalidLiteralExp
	 *
	 * Constraint:
	 *     {InvalidLiteralExp}
	 * </pre>
	 */
	protected void sequence_InvalidLiteralExp(ISerializationContext context, InvalidLiteralExp semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Invariant returns Invariant
	 *
	 * Constraint:
	 *     (constraintName=Identifier? expression=Expression)
	 * </pre>
	 */
	protected void sequence_Invariant(ISerializationContext context, Invariant semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     OclMessageArg returns LetExp
	 *     Expression returns LetExp
	 *     LetExp returns LetExp
	 *
	 * Constraint:
	 *     (variable+=LetVariable variable+=LetVariable* in=Expression)
	 * </pre>
	 */
	protected void sequence_LetExp(ISerializationContext context, LetExp semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     LetVariable returns LetVariable
	 *
	 * Constraint:
	 *     (name=Identifier type=TypeExp initExpression=Expression)
	 * </pre>
	 */
	protected void sequence_LetVariable(ISerializationContext context, LetVariable semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, BacktrackingContentAssistTestPackage.Literals.LET_VARIABLE__NAME) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, BacktrackingContentAssistTestPackage.Literals.LET_VARIABLE__NAME));
			if (transientValues.isValueTransient(semanticObject, BacktrackingContentAssistTestPackage.Literals.LET_VARIABLE__TYPE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, BacktrackingContentAssistTestPackage.Literals.LET_VARIABLE__TYPE));
			if (transientValues.isValueTransient(semanticObject, BacktrackingContentAssistTestPackage.Literals.LET_VARIABLE__INIT_EXPRESSION) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, BacktrackingContentAssistTestPackage.Literals.LET_VARIABLE__INIT_EXPRESSION));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getLetVariableAccess().getNameIdentifierParserRuleCall_0_0(), semanticObject.getName());
		feeder.accept(grammarAccess.getLetVariableAccess().getTypeTypeExpParserRuleCall_2_0(), semanticObject.getType());
		feeder.accept(grammarAccess.getLetVariableAccess().getInitExpressionExpressionParserRuleCall_4_0(), semanticObject.getInitExpression());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     NavigatingExp returns InfixExp
	 *
	 * Constraint:
	 *     (source=NavigatingExp_InfixExp_1_0_0 (op='.' | op='-&gt;') argument=NavigatingExp)
	 * </pre>
	 */
	protected void sequence_NavigatingExp(ISerializationContext context, InfixExp semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     NavigatingExp returns OclMessage
	 *
	 * Constraint:
	 *     (source=NavigatingExp_OclMessage_1_1_0 (op='^^' | op='^') messageName=Identifier (arguments+=OclMessageArg arguments+=OclMessageArg*)?)
	 * </pre>
	 */
	protected void sequence_NavigatingExp(ISerializationContext context, OclMessage semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     NavigationExp returns InfixExp
	 *     unary returns InfixExp
	 *
	 * Constraint:
	 *     (source=NavigationExp_InfixExp_1_0_0 (op='.' | op='-&gt;') argument=NavigatingExp)
	 * </pre>
	 */
	protected void sequence_NavigationExp(ISerializationContext context, InfixExp semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     NavigationExp returns OclMessage
	 *     OclMessageArg returns OclMessage
	 *     Expression returns OclMessage
	 *     implies returns OclMessage
	 *     implies.InfixExp_1_0 returns OclMessage
	 *     xor returns OclMessage
	 *     xor.InfixExp_1_0 returns OclMessage
	 *     or returns OclMessage
	 *     or.InfixExp_1_0 returns OclMessage
	 *     and returns OclMessage
	 *     and.InfixExp_1_0 returns OclMessage
	 *     equality returns OclMessage
	 *     equality.InfixExp_1_0 returns OclMessage
	 *     relational returns OclMessage
	 *     relational.InfixExp_1_0 returns OclMessage
	 *     additive returns OclMessage
	 *     additive.InfixExp_1_0 returns OclMessage
	 *     multiplicative returns OclMessage
	 *     multiplicative.InfixExp_1_0 returns OclMessage
	 *     unary returns OclMessage
	 *
	 * Constraint:
	 *     (source=NavigationExp_OclMessage_1_1_0 (op='^^' | op='^') messageName=Identifier (arguments+=OclMessageArg arguments+=OclMessageArg*)?)
	 * </pre>
	 */
	protected void sequence_NavigationExp(ISerializationContext context, OclMessage semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     OclMessageArg returns InfixExp
	 *     Expression returns InfixExp
	 *     implies returns InfixExp
	 *     implies.InfixExp_1_0 returns InfixExp
	 *
	 * Constraint:
	 *     (
	 *         (source=NavigationExp_InfixExp_1_0_0 (op='.' | op='-&gt;') argument=NavigatingExp) | 
	 *         (source=implies_InfixExp_1_0 op='implies' (argument=xor | argument=LetExp)) | 
	 *         (source=xor_InfixExp_1_0 op='xor' (argument=or | argument=LetExp)) | 
	 *         (source=or_InfixExp_1_0 op='or' (argument=and | argument=LetExp)) | 
	 *         (source=and_InfixExp_1_0 op='and' (argument=equality | argument=LetExp)) | 
	 *         (source=equality_InfixExp_1_0 (op='=' | op='&lt;&gt;') (argument=relational | argument=LetExp)) | 
	 *         (source=relational_InfixExp_1_0 (op='&gt;' | op='&lt;' | op='&gt;=' | op='&lt;=') (argument=additive | argument=LetExp)) | 
	 *         (source=additive_InfixExp_1_0 (op='+' | op='-') (argument=multiplicative | argument=LetExp)) | 
	 *         (source=multiplicative_InfixExp_1_0 (op='*' | op='/') (argument=unary | argument=LetExp))
	 *     )
	 * </pre>
	 */
	protected void sequence_NavigationExp_additive_and_equality_implies_multiplicative_or_relational_xor(ISerializationContext context, InfixExp semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     or returns InfixExp
	 *     or.InfixExp_1_0 returns InfixExp
	 *
	 * Constraint:
	 *     (
	 *         (source=NavigationExp_InfixExp_1_0_0 (op='.' | op='-&gt;') argument=NavigatingExp) | 
	 *         (source=or_InfixExp_1_0 op='or' (argument=and | argument=LetExp)) | 
	 *         (source=and_InfixExp_1_0 op='and' (argument=equality | argument=LetExp)) | 
	 *         (source=equality_InfixExp_1_0 (op='=' | op='&lt;&gt;') (argument=relational | argument=LetExp)) | 
	 *         (source=relational_InfixExp_1_0 (op='&gt;' | op='&lt;' | op='&gt;=' | op='&lt;=') (argument=additive | argument=LetExp)) | 
	 *         (source=additive_InfixExp_1_0 (op='+' | op='-') (argument=multiplicative | argument=LetExp)) | 
	 *         (source=multiplicative_InfixExp_1_0 (op='*' | op='/') (argument=unary | argument=LetExp))
	 *     )
	 * </pre>
	 */
	protected void sequence_NavigationExp_additive_and_equality_multiplicative_or_relational(ISerializationContext context, InfixExp semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     xor returns InfixExp
	 *     xor.InfixExp_1_0 returns InfixExp
	 *
	 * Constraint:
	 *     (
	 *         (source=NavigationExp_InfixExp_1_0_0 (op='.' | op='-&gt;') argument=NavigatingExp) | 
	 *         (source=xor_InfixExp_1_0 op='xor' (argument=or | argument=LetExp)) | 
	 *         (source=or_InfixExp_1_0 op='or' (argument=and | argument=LetExp)) | 
	 *         (source=and_InfixExp_1_0 op='and' (argument=equality | argument=LetExp)) | 
	 *         (source=equality_InfixExp_1_0 (op='=' | op='&lt;&gt;') (argument=relational | argument=LetExp)) | 
	 *         (source=relational_InfixExp_1_0 (op='&gt;' | op='&lt;' | op='&gt;=' | op='&lt;=') (argument=additive | argument=LetExp)) | 
	 *         (source=additive_InfixExp_1_0 (op='+' | op='-') (argument=multiplicative | argument=LetExp)) | 
	 *         (source=multiplicative_InfixExp_1_0 (op='*' | op='/') (argument=unary | argument=LetExp))
	 *     )
	 * </pre>
	 */
	protected void sequence_NavigationExp_additive_and_equality_multiplicative_or_relational_xor(ISerializationContext context, InfixExp semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     and returns InfixExp
	 *     and.InfixExp_1_0 returns InfixExp
	 *
	 * Constraint:
	 *     (
	 *         (source=NavigationExp_InfixExp_1_0_0 (op='.' | op='-&gt;') argument=NavigatingExp) | 
	 *         (source=and_InfixExp_1_0 op='and' (argument=equality | argument=LetExp)) | 
	 *         (source=equality_InfixExp_1_0 (op='=' | op='&lt;&gt;') (argument=relational | argument=LetExp)) | 
	 *         (source=relational_InfixExp_1_0 (op='&gt;' | op='&lt;' | op='&gt;=' | op='&lt;=') (argument=additive | argument=LetExp)) | 
	 *         (source=additive_InfixExp_1_0 (op='+' | op='-') (argument=multiplicative | argument=LetExp)) | 
	 *         (source=multiplicative_InfixExp_1_0 (op='*' | op='/') (argument=unary | argument=LetExp))
	 *     )
	 * </pre>
	 */
	protected void sequence_NavigationExp_additive_and_equality_multiplicative_relational(ISerializationContext context, InfixExp semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     equality returns InfixExp
	 *     equality.InfixExp_1_0 returns InfixExp
	 *
	 * Constraint:
	 *     (
	 *         (source=NavigationExp_InfixExp_1_0_0 (op='.' | op='-&gt;') argument=NavigatingExp) | 
	 *         (source=equality_InfixExp_1_0 (op='=' | op='&lt;&gt;') (argument=relational | argument=LetExp)) | 
	 *         (source=relational_InfixExp_1_0 (op='&gt;' | op='&lt;' | op='&gt;=' | op='&lt;=') (argument=additive | argument=LetExp)) | 
	 *         (source=additive_InfixExp_1_0 (op='+' | op='-') (argument=multiplicative | argument=LetExp)) | 
	 *         (source=multiplicative_InfixExp_1_0 (op='*' | op='/') (argument=unary | argument=LetExp))
	 *     )
	 * </pre>
	 */
	protected void sequence_NavigationExp_additive_equality_multiplicative_relational(ISerializationContext context, InfixExp semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     additive returns InfixExp
	 *     additive.InfixExp_1_0 returns InfixExp
	 *
	 * Constraint:
	 *     (
	 *         (source=NavigationExp_InfixExp_1_0_0 (op='.' | op='-&gt;') argument=NavigatingExp) | 
	 *         (source=additive_InfixExp_1_0 (op='+' | op='-') (argument=multiplicative | argument=LetExp)) | 
	 *         (source=multiplicative_InfixExp_1_0 (op='*' | op='/') (argument=unary | argument=LetExp))
	 *     )
	 * </pre>
	 */
	protected void sequence_NavigationExp_additive_multiplicative(ISerializationContext context, InfixExp semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     relational returns InfixExp
	 *     relational.InfixExp_1_0 returns InfixExp
	 *
	 * Constraint:
	 *     (
	 *         (source=NavigationExp_InfixExp_1_0_0 (op='.' | op='-&gt;') argument=NavigatingExp) | 
	 *         (source=relational_InfixExp_1_0 (op='&gt;' | op='&lt;' | op='&gt;=' | op='&lt;=') (argument=additive | argument=LetExp)) | 
	 *         (source=additive_InfixExp_1_0 (op='+' | op='-') (argument=multiplicative | argument=LetExp)) | 
	 *         (source=multiplicative_InfixExp_1_0 (op='*' | op='/') (argument=unary | argument=LetExp))
	 *     )
	 * </pre>
	 */
	protected void sequence_NavigationExp_additive_multiplicative_relational(ISerializationContext context, InfixExp semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     multiplicative returns InfixExp
	 *     multiplicative.InfixExp_1_0 returns InfixExp
	 *
	 * Constraint:
	 *     (
	 *         (source=NavigationExp_InfixExp_1_0_0 (op='.' | op='-&gt;') argument=NavigatingExp) | 
	 *         (source=multiplicative_InfixExp_1_0 (op='*' | op='/') (argument=unary | argument=LetExp))
	 *     )
	 * </pre>
	 */
	protected void sequence_NavigationExp_multiplicative(ISerializationContext context, InfixExp semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     NavigationExp returns NullLiteralExp
	 *     NavigationExp.InfixExp_1_0_0 returns NullLiteralExp
	 *     NavigationExp.OclMessage_1_1_0 returns NullLiteralExp
	 *     OclMessageArg returns NullLiteralExp
	 *     PrimitiveLiteralExp returns NullLiteralExp
	 *     NullLiteralExp returns NullLiteralExp
	 *     Expression returns NullLiteralExp
	 *     implies returns NullLiteralExp
	 *     implies.InfixExp_1_0 returns NullLiteralExp
	 *     xor returns NullLiteralExp
	 *     xor.InfixExp_1_0 returns NullLiteralExp
	 *     or returns NullLiteralExp
	 *     or.InfixExp_1_0 returns NullLiteralExp
	 *     and returns NullLiteralExp
	 *     and.InfixExp_1_0 returns NullLiteralExp
	 *     equality returns NullLiteralExp
	 *     equality.InfixExp_1_0 returns NullLiteralExp
	 *     relational returns NullLiteralExp
	 *     relational.InfixExp_1_0 returns NullLiteralExp
	 *     additive returns NullLiteralExp
	 *     additive.InfixExp_1_0 returns NullLiteralExp
	 *     multiplicative returns NullLiteralExp
	 *     multiplicative.InfixExp_1_0 returns NullLiteralExp
	 *     unary returns NullLiteralExp
	 *     SubNavigationExp returns NullLiteralExp
	 *
	 * Constraint:
	 *     {NullLiteralExp}
	 * </pre>
	 */
	protected void sequence_NullLiteralExp(ISerializationContext context, NullLiteralExp semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     NavigationExp returns NumberLiteralExp
	 *     NavigationExp.InfixExp_1_0_0 returns NumberLiteralExp
	 *     NavigationExp.OclMessage_1_1_0 returns NumberLiteralExp
	 *     OclMessageArg returns NumberLiteralExp
	 *     PrimitiveLiteralExp returns NumberLiteralExp
	 *     NumberLiteralExp returns NumberLiteralExp
	 *     Expression returns NumberLiteralExp
	 *     implies returns NumberLiteralExp
	 *     implies.InfixExp_1_0 returns NumberLiteralExp
	 *     xor returns NumberLiteralExp
	 *     xor.InfixExp_1_0 returns NumberLiteralExp
	 *     or returns NumberLiteralExp
	 *     or.InfixExp_1_0 returns NumberLiteralExp
	 *     and returns NumberLiteralExp
	 *     and.InfixExp_1_0 returns NumberLiteralExp
	 *     equality returns NumberLiteralExp
	 *     equality.InfixExp_1_0 returns NumberLiteralExp
	 *     relational returns NumberLiteralExp
	 *     relational.InfixExp_1_0 returns NumberLiteralExp
	 *     additive returns NumberLiteralExp
	 *     additive.InfixExp_1_0 returns NumberLiteralExp
	 *     multiplicative returns NumberLiteralExp
	 *     multiplicative.InfixExp_1_0 returns NumberLiteralExp
	 *     unary returns NumberLiteralExp
	 *     SubNavigationExp returns NumberLiteralExp
	 *
	 * Constraint:
	 *     name=NUMBER_LITERAL
	 * </pre>
	 */
	protected void sequence_NumberLiteralExp(ISerializationContext context, NumberLiteralExp semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, BacktrackingContentAssistTestPackage.Literals.NUMBER_LITERAL_EXP__NAME) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, BacktrackingContentAssistTestPackage.Literals.NUMBER_LITERAL_EXP__NAME));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getNumberLiteralExpAccess().getNameNUMBER_LITERALParserRuleCall_0(), semanticObject.getName());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     OclMessageArg returns OclMessageArg
	 *
	 * Constraint:
	 *     type=TypeExp?
	 * </pre>
	 */
	protected void sequence_OclMessageArg(ISerializationContext context, OclMessageArg semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     ContextDecl returns OperationContextDecl
	 *     OperationContextDecl returns OperationContextDecl
	 *
	 * Constraint:
	 *     (operation=OperationRef (parameters+=Parameter parameters+=Parameter*)? type=TypeExp? (pres+=Pre | posts+=Post | bodies+=Body)*)
	 * </pre>
	 */
	protected void sequence_OperationContextDecl(ISerializationContext context, OperationContextDecl semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     PackageDeclaration returns PackageDeclaration
	 *
	 * Constraint:
	 *     (package=PackageRef contexts+=ContextDecl*)
	 * </pre>
	 */
	protected void sequence_PackageDeclaration(ISerializationContext context, PackageDeclaration semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Parameter returns Parameter
	 *
	 * Constraint:
	 *     (name=Identifier? type=TypeExp)
	 * </pre>
	 */
	protected void sequence_Parameter(ISerializationContext context, org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.Parameter semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     NavigationExp returns PathNameExp
	 *     NavigationExp.InfixExp_1_0_0 returns PathNameExp
	 *     NavigationExp.OclMessage_1_1_0 returns PathNameExp
	 *     NavigatingExp returns PathNameExp
	 *     NavigatingExp.InfixExp_1_0_0 returns PathNameExp
	 *     NavigatingExp.OclMessage_1_1_0 returns PathNameExp
	 *     OclMessageArg returns PathNameExp
	 *     TypeExp returns PathNameExp
	 *     Expression returns PathNameExp
	 *     implies returns PathNameExp
	 *     implies.InfixExp_1_0 returns PathNameExp
	 *     xor returns PathNameExp
	 *     xor.InfixExp_1_0 returns PathNameExp
	 *     or returns PathNameExp
	 *     or.InfixExp_1_0 returns PathNameExp
	 *     and returns PathNameExp
	 *     and.InfixExp_1_0 returns PathNameExp
	 *     equality returns PathNameExp
	 *     equality.InfixExp_1_0 returns PathNameExp
	 *     relational returns PathNameExp
	 *     relational.InfixExp_1_0 returns PathNameExp
	 *     additive returns PathNameExp
	 *     additive.InfixExp_1_0 returns PathNameExp
	 *     multiplicative returns PathNameExp
	 *     multiplicative.InfixExp_1_0 returns PathNameExp
	 *     unary returns PathNameExp
	 *     SubNavigationExp returns PathNameExp
	 *     SubNavigatingExp returns PathNameExp
	 *     NameExp returns PathNameExp
	 *     PathNameExp returns PathNameExp
	 *
	 * Constraint:
	 *     (namespace=Identifier element=NameExp)
	 * </pre>
	 */
	protected void sequence_PathNameExp(ISerializationContext context, PathNameExp semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, BacktrackingContentAssistTestPackage.Literals.PATH_NAME_EXP__NAMESPACE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, BacktrackingContentAssistTestPackage.Literals.PATH_NAME_EXP__NAMESPACE));
			if (transientValues.isValueTransient(semanticObject, BacktrackingContentAssistTestPackage.Literals.PATH_NAME_EXP__ELEMENT) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, BacktrackingContentAssistTestPackage.Literals.PATH_NAME_EXP__ELEMENT));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getPathNameExpAccess().getNamespaceIdentifierParserRuleCall_0_0(), semanticObject.getNamespace());
		feeder.accept(grammarAccess.getPathNameExpAccess().getElementNameExpParserRuleCall_2_0(), semanticObject.getElement());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Post returns Post
	 *
	 * Constraint:
	 *     (constraintName=Identifier? expression=Expression)
	 * </pre>
	 */
	protected void sequence_Post(ISerializationContext context, Post semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     NavigationExp returns PreExp
	 *     NavigationExp.InfixExp_1_0_0 returns PreExp
	 *     NavigationExp.OclMessage_1_1_0 returns PreExp
	 *     NavigatingExp returns PreExp
	 *     NavigatingExp.InfixExp_1_0_0 returns PreExp
	 *     NavigatingExp.OclMessage_1_1_0 returns PreExp
	 *     OclMessageArg returns PreExp
	 *     Expression returns PreExp
	 *     implies returns PreExp
	 *     implies.InfixExp_1_0 returns PreExp
	 *     xor returns PreExp
	 *     xor.InfixExp_1_0 returns PreExp
	 *     or returns PreExp
	 *     or.InfixExp_1_0 returns PreExp
	 *     and returns PreExp
	 *     and.InfixExp_1_0 returns PreExp
	 *     equality returns PreExp
	 *     equality.InfixExp_1_0 returns PreExp
	 *     relational returns PreExp
	 *     relational.InfixExp_1_0 returns PreExp
	 *     additive returns PreExp
	 *     additive.InfixExp_1_0 returns PreExp
	 *     multiplicative returns PreExp
	 *     multiplicative.InfixExp_1_0 returns PreExp
	 *     unary returns PreExp
	 *     SubNavigationExp returns PreExp
	 *     SubNavigatingExp returns PreExp
	 *     PreExp returns PreExp
	 *
	 * Constraint:
	 *     name=NameExp
	 * </pre>
	 */
	protected void sequence_PreExp(ISerializationContext context, PreExp semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, BacktrackingContentAssistTestPackage.Literals.PRE_EXP__NAME) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, BacktrackingContentAssistTestPackage.Literals.PRE_EXP__NAME));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getPreExpAccess().getNameNameExpParserRuleCall_0_0(), semanticObject.getName());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     Pre returns Pre
	 *
	 * Constraint:
	 *     (constraintName=Identifier? expression=Expression)
	 * </pre>
	 */
	protected void sequence_Pre(ISerializationContext context, Pre semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     NavigationExp returns PrimitiveType
	 *     NavigationExp.InfixExp_1_0_0 returns PrimitiveType
	 *     NavigationExp.OclMessage_1_1_0 returns PrimitiveType
	 *     OclMessageArg returns PrimitiveType
	 *     PrimitiveType returns PrimitiveType
	 *     TypeExp returns PrimitiveType
	 *     Expression returns PrimitiveType
	 *     implies returns PrimitiveType
	 *     implies.InfixExp_1_0 returns PrimitiveType
	 *     xor returns PrimitiveType
	 *     xor.InfixExp_1_0 returns PrimitiveType
	 *     or returns PrimitiveType
	 *     or.InfixExp_1_0 returns PrimitiveType
	 *     and returns PrimitiveType
	 *     and.InfixExp_1_0 returns PrimitiveType
	 *     equality returns PrimitiveType
	 *     equality.InfixExp_1_0 returns PrimitiveType
	 *     relational returns PrimitiveType
	 *     relational.InfixExp_1_0 returns PrimitiveType
	 *     additive returns PrimitiveType
	 *     additive.InfixExp_1_0 returns PrimitiveType
	 *     multiplicative returns PrimitiveType
	 *     multiplicative.InfixExp_1_0 returns PrimitiveType
	 *     unary returns PrimitiveType
	 *     SubNavigationExp returns PrimitiveType
	 *
	 * Constraint:
	 *     name=PrimitiveTypeIdentifier
	 * </pre>
	 */
	protected void sequence_PrimitiveType(ISerializationContext context, PrimitiveType semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, BacktrackingContentAssistTestPackage.Literals.PRIMITIVE_TYPE__NAME) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, BacktrackingContentAssistTestPackage.Literals.PRIMITIVE_TYPE__NAME));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getPrimitiveTypeAccess().getNamePrimitiveTypeIdentifierParserRuleCall_0(), semanticObject.getName());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     ContextDecl returns PropertyContextDecl
	 *     PropertyContextDecl returns PropertyContextDecl
	 *
	 * Constraint:
	 *     (property=PropertyRef type=TypeExp ((init=Init der=Der?) | (der=Der init=Init?))?)
	 * </pre>
	 */
	protected void sequence_PropertyContextDecl(ISerializationContext context, PropertyContextDecl semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     ClassifierRef returns QualifiedClassifierRef
	 *     QualifiedClassifierRef returns QualifiedClassifierRef
	 *
	 * Constraint:
	 *     (namespace=Identifier element=ClassifierRef)
	 * </pre>
	 */
	protected void sequence_QualifiedClassifierRef(ISerializationContext context, QualifiedClassifierRef semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, BacktrackingContentAssistTestPackage.Literals.QUALIFIED_CLASSIFIER_REF__NAMESPACE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, BacktrackingContentAssistTestPackage.Literals.QUALIFIED_CLASSIFIER_REF__NAMESPACE));
			if (transientValues.isValueTransient(semanticObject, BacktrackingContentAssistTestPackage.Literals.QUALIFIED_CLASSIFIER_REF__ELEMENT) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, BacktrackingContentAssistTestPackage.Literals.QUALIFIED_CLASSIFIER_REF__ELEMENT));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getQualifiedClassifierRefAccess().getNamespaceIdentifierParserRuleCall_0_0(), semanticObject.getNamespace());
		feeder.accept(grammarAccess.getQualifiedClassifierRefAccess().getElementClassifierRefParserRuleCall_2_0(), semanticObject.getElement());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     OperationRef returns QualifiedOperationRef
	 *     QualifiedOperationRef returns QualifiedOperationRef
	 *
	 * Constraint:
	 *     (namespace=Identifier element=OperationRef)
	 * </pre>
	 */
	protected void sequence_QualifiedOperationRef(ISerializationContext context, QualifiedOperationRef semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, BacktrackingContentAssistTestPackage.Literals.QUALIFIED_OPERATION_REF__NAMESPACE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, BacktrackingContentAssistTestPackage.Literals.QUALIFIED_OPERATION_REF__NAMESPACE));
			if (transientValues.isValueTransient(semanticObject, BacktrackingContentAssistTestPackage.Literals.QUALIFIED_OPERATION_REF__ELEMENT) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, BacktrackingContentAssistTestPackage.Literals.QUALIFIED_OPERATION_REF__ELEMENT));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getQualifiedOperationRefAccess().getNamespaceIdentifierParserRuleCall_0_0(), semanticObject.getNamespace());
		feeder.accept(grammarAccess.getQualifiedOperationRefAccess().getElementOperationRefParserRuleCall_2_0(), semanticObject.getElement());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     PackageRef returns QualifiedPackageRef
	 *     QualifiedPackageRef returns QualifiedPackageRef
	 *
	 * Constraint:
	 *     (namespace=Identifier element=PackageRef)
	 * </pre>
	 */
	protected void sequence_QualifiedPackageRef(ISerializationContext context, QualifiedPackageRef semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, BacktrackingContentAssistTestPackage.Literals.QUALIFIED_PACKAGE_REF__NAMESPACE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, BacktrackingContentAssistTestPackage.Literals.QUALIFIED_PACKAGE_REF__NAMESPACE));
			if (transientValues.isValueTransient(semanticObject, BacktrackingContentAssistTestPackage.Literals.QUALIFIED_PACKAGE_REF__ELEMENT) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, BacktrackingContentAssistTestPackage.Literals.QUALIFIED_PACKAGE_REF__ELEMENT));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getQualifiedPackageRefAccess().getNamespaceIdentifierParserRuleCall_0_0(), semanticObject.getNamespace());
		feeder.accept(grammarAccess.getQualifiedPackageRefAccess().getElementPackageRefParserRuleCall_2_0(), semanticObject.getElement());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     PropertyRef returns QualifiedPropertyRef
	 *     QualifiedPropertyRef returns QualifiedPropertyRef
	 *
	 * Constraint:
	 *     (namespace=Identifier element=PropertyRef)
	 * </pre>
	 */
	protected void sequence_QualifiedPropertyRef(ISerializationContext context, QualifiedPropertyRef semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, BacktrackingContentAssistTestPackage.Literals.QUALIFIED_PROPERTY_REF__NAMESPACE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, BacktrackingContentAssistTestPackage.Literals.QUALIFIED_PROPERTY_REF__NAMESPACE));
			if (transientValues.isValueTransient(semanticObject, BacktrackingContentAssistTestPackage.Literals.QUALIFIED_PROPERTY_REF__ELEMENT) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, BacktrackingContentAssistTestPackage.Literals.QUALIFIED_PROPERTY_REF__ELEMENT));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getQualifiedPropertyRefAccess().getNamespaceIdentifierParserRuleCall_0_0(), semanticObject.getNamespace());
		feeder.accept(grammarAccess.getQualifiedPropertyRefAccess().getElementPropertyRefParserRuleCall_2_0(), semanticObject.getElement());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     NavigationExp returns RoundBracketExp
	 *     NavigationExp.InfixExp_1_0_0 returns RoundBracketExp
	 *     NavigationExp.OclMessage_1_1_0 returns RoundBracketExp
	 *     NavigatingExp returns RoundBracketExp
	 *     NavigatingExp.InfixExp_1_0_0 returns RoundBracketExp
	 *     NavigatingExp.OclMessage_1_1_0 returns RoundBracketExp
	 *     OclMessageArg returns RoundBracketExp
	 *     Expression returns RoundBracketExp
	 *     implies returns RoundBracketExp
	 *     implies.InfixExp_1_0 returns RoundBracketExp
	 *     xor returns RoundBracketExp
	 *     xor.InfixExp_1_0 returns RoundBracketExp
	 *     or returns RoundBracketExp
	 *     or.InfixExp_1_0 returns RoundBracketExp
	 *     and returns RoundBracketExp
	 *     and.InfixExp_1_0 returns RoundBracketExp
	 *     equality returns RoundBracketExp
	 *     equality.InfixExp_1_0 returns RoundBracketExp
	 *     relational returns RoundBracketExp
	 *     relational.InfixExp_1_0 returns RoundBracketExp
	 *     additive returns RoundBracketExp
	 *     additive.InfixExp_1_0 returns RoundBracketExp
	 *     multiplicative returns RoundBracketExp
	 *     multiplicative.InfixExp_1_0 returns RoundBracketExp
	 *     unary returns RoundBracketExp
	 *     SubNavigationExp returns RoundBracketExp
	 *     SubNavigatingExp returns RoundBracketExp
	 *     RoundBracketExp returns RoundBracketExp
	 *
	 * Constraint:
	 *     (
	 *         name=NameExp 
	 *         pre?='pre'? 
	 *         (variable1=iteratorVariable (variable2=iteratorVariable | variable2=iteratorAccumulator)?)? 
	 *         (arguments+=Expression arguments+=Expression*)?
	 *     )
	 * </pre>
	 */
	protected void sequence_RoundBracketExp(ISerializationContext context, RoundBracketExp semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     NavigationExp returns SelfExp
	 *     NavigationExp.InfixExp_1_0_0 returns SelfExp
	 *     NavigationExp.OclMessage_1_1_0 returns SelfExp
	 *     OclMessageArg returns SelfExp
	 *     Expression returns SelfExp
	 *     implies returns SelfExp
	 *     implies.InfixExp_1_0 returns SelfExp
	 *     xor returns SelfExp
	 *     xor.InfixExp_1_0 returns SelfExp
	 *     or returns SelfExp
	 *     or.InfixExp_1_0 returns SelfExp
	 *     and returns SelfExp
	 *     and.InfixExp_1_0 returns SelfExp
	 *     equality returns SelfExp
	 *     equality.InfixExp_1_0 returns SelfExp
	 *     relational returns SelfExp
	 *     relational.InfixExp_1_0 returns SelfExp
	 *     additive returns SelfExp
	 *     additive.InfixExp_1_0 returns SelfExp
	 *     multiplicative returns SelfExp
	 *     multiplicative.InfixExp_1_0 returns SelfExp
	 *     unary returns SelfExp
	 *     SubNavigationExp returns SelfExp
	 *     SelfExp returns SelfExp
	 *
	 * Constraint:
	 *     {SelfExp}
	 * </pre>
	 */
	protected void sequence_SelfExp(ISerializationContext context, SelfExp semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     ClassifierRef returns SimpleClassifierRef
	 *     SimpleClassifierRef returns SimpleClassifierRef
	 *
	 * Constraint:
	 *     classifier=Identifier
	 * </pre>
	 */
	protected void sequence_SimpleClassifierRef(ISerializationContext context, SimpleClassifierRef semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, BacktrackingContentAssistTestPackage.Literals.SIMPLE_CLASSIFIER_REF__CLASSIFIER) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, BacktrackingContentAssistTestPackage.Literals.SIMPLE_CLASSIFIER_REF__CLASSIFIER));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getSimpleClassifierRefAccess().getClassifierIdentifierParserRuleCall_0(), semanticObject.getClassifier());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     NavigationExp returns SimpleNameExp
	 *     NavigationExp.InfixExp_1_0_0 returns SimpleNameExp
	 *     NavigationExp.OclMessage_1_1_0 returns SimpleNameExp
	 *     NavigatingExp returns SimpleNameExp
	 *     NavigatingExp.InfixExp_1_0_0 returns SimpleNameExp
	 *     NavigatingExp.OclMessage_1_1_0 returns SimpleNameExp
	 *     OclMessageArg returns SimpleNameExp
	 *     TypeExp returns SimpleNameExp
	 *     Expression returns SimpleNameExp
	 *     implies returns SimpleNameExp
	 *     implies.InfixExp_1_0 returns SimpleNameExp
	 *     xor returns SimpleNameExp
	 *     xor.InfixExp_1_0 returns SimpleNameExp
	 *     or returns SimpleNameExp
	 *     or.InfixExp_1_0 returns SimpleNameExp
	 *     and returns SimpleNameExp
	 *     and.InfixExp_1_0 returns SimpleNameExp
	 *     equality returns SimpleNameExp
	 *     equality.InfixExp_1_0 returns SimpleNameExp
	 *     relational returns SimpleNameExp
	 *     relational.InfixExp_1_0 returns SimpleNameExp
	 *     additive returns SimpleNameExp
	 *     additive.InfixExp_1_0 returns SimpleNameExp
	 *     multiplicative returns SimpleNameExp
	 *     multiplicative.InfixExp_1_0 returns SimpleNameExp
	 *     unary returns SimpleNameExp
	 *     SubNavigationExp returns SimpleNameExp
	 *     SubNavigatingExp returns SimpleNameExp
	 *     NameExp returns SimpleNameExp
	 *     SimpleNameExp returns SimpleNameExp
	 *
	 * Constraint:
	 *     element=Identifier
	 * </pre>
	 */
	protected void sequence_SimpleNameExp(ISerializationContext context, SimpleNameExp semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, BacktrackingContentAssistTestPackage.Literals.SIMPLE_NAME_EXP__ELEMENT) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, BacktrackingContentAssistTestPackage.Literals.SIMPLE_NAME_EXP__ELEMENT));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getSimpleNameExpAccess().getElementIdentifierParserRuleCall_0(), semanticObject.getElement());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     OperationRef returns SimpleOperationRef
	 *     SimpleOperationRef returns SimpleOperationRef
	 *
	 * Constraint:
	 *     operation=Identifier
	 * </pre>
	 */
	protected void sequence_SimpleOperationRef(ISerializationContext context, SimpleOperationRef semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, BacktrackingContentAssistTestPackage.Literals.SIMPLE_OPERATION_REF__OPERATION) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, BacktrackingContentAssistTestPackage.Literals.SIMPLE_OPERATION_REF__OPERATION));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getSimpleOperationRefAccess().getOperationIdentifierParserRuleCall_0(), semanticObject.getOperation());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     PackageRef returns SimplePackageRef
	 *     SimplePackageRef returns SimplePackageRef
	 *
	 * Constraint:
	 *     package=Identifier
	 * </pre>
	 */
	protected void sequence_SimplePackageRef(ISerializationContext context, SimplePackageRef semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, BacktrackingContentAssistTestPackage.Literals.SIMPLE_PACKAGE_REF__PACKAGE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, BacktrackingContentAssistTestPackage.Literals.SIMPLE_PACKAGE_REF__PACKAGE));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getSimplePackageRefAccess().getPackageIdentifierParserRuleCall_0(), semanticObject.getPackage());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     PropertyRef returns SimplePropertyRef
	 *     SimplePropertyRef returns SimplePropertyRef
	 *
	 * Constraint:
	 *     feature=Identifier
	 * </pre>
	 */
	protected void sequence_SimplePropertyRef(ISerializationContext context, SimplePropertyRef semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, BacktrackingContentAssistTestPackage.Literals.SIMPLE_PROPERTY_REF__FEATURE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, BacktrackingContentAssistTestPackage.Literals.SIMPLE_PROPERTY_REF__FEATURE));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getSimplePropertyRefAccess().getFeatureIdentifierParserRuleCall_0(), semanticObject.getFeature());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     NavigationExp returns SquareBracketExp
	 *     NavigationExp.InfixExp_1_0_0 returns SquareBracketExp
	 *     NavigationExp.OclMessage_1_1_0 returns SquareBracketExp
	 *     NavigatingExp returns SquareBracketExp
	 *     NavigatingExp.InfixExp_1_0_0 returns SquareBracketExp
	 *     NavigatingExp.OclMessage_1_1_0 returns SquareBracketExp
	 *     OclMessageArg returns SquareBracketExp
	 *     Expression returns SquareBracketExp
	 *     implies returns SquareBracketExp
	 *     implies.InfixExp_1_0 returns SquareBracketExp
	 *     xor returns SquareBracketExp
	 *     xor.InfixExp_1_0 returns SquareBracketExp
	 *     or returns SquareBracketExp
	 *     or.InfixExp_1_0 returns SquareBracketExp
	 *     and returns SquareBracketExp
	 *     and.InfixExp_1_0 returns SquareBracketExp
	 *     equality returns SquareBracketExp
	 *     equality.InfixExp_1_0 returns SquareBracketExp
	 *     relational returns SquareBracketExp
	 *     relational.InfixExp_1_0 returns SquareBracketExp
	 *     additive returns SquareBracketExp
	 *     additive.InfixExp_1_0 returns SquareBracketExp
	 *     multiplicative returns SquareBracketExp
	 *     multiplicative.InfixExp_1_0 returns SquareBracketExp
	 *     unary returns SquareBracketExp
	 *     SubNavigationExp returns SquareBracketExp
	 *     SubNavigatingExp returns SquareBracketExp
	 *     SquareBracketExp returns SquareBracketExp
	 *
	 * Constraint:
	 *     (name=NameExp arguments+=Expression arguments+=Expression* pre?='pre'?)
	 * </pre>
	 */
	protected void sequence_SquareBracketExp(ISerializationContext context, SquareBracketExp semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     NavigationExp returns StringLiteralExp
	 *     NavigationExp.InfixExp_1_0_0 returns StringLiteralExp
	 *     NavigationExp.OclMessage_1_1_0 returns StringLiteralExp
	 *     OclMessageArg returns StringLiteralExp
	 *     PrimitiveLiteralExp returns StringLiteralExp
	 *     StringLiteralExp returns StringLiteralExp
	 *     Expression returns StringLiteralExp
	 *     implies returns StringLiteralExp
	 *     implies.InfixExp_1_0 returns StringLiteralExp
	 *     xor returns StringLiteralExp
	 *     xor.InfixExp_1_0 returns StringLiteralExp
	 *     or returns StringLiteralExp
	 *     or.InfixExp_1_0 returns StringLiteralExp
	 *     and returns StringLiteralExp
	 *     and.InfixExp_1_0 returns StringLiteralExp
	 *     equality returns StringLiteralExp
	 *     equality.InfixExp_1_0 returns StringLiteralExp
	 *     relational returns StringLiteralExp
	 *     relational.InfixExp_1_0 returns StringLiteralExp
	 *     additive returns StringLiteralExp
	 *     additive.InfixExp_1_0 returns StringLiteralExp
	 *     multiplicative returns StringLiteralExp
	 *     multiplicative.InfixExp_1_0 returns StringLiteralExp
	 *     unary returns StringLiteralExp
	 *     SubNavigationExp returns StringLiteralExp
	 *
	 * Constraint:
	 *     values+=StringLiteral+
	 * </pre>
	 */
	protected void sequence_StringLiteralExp(ISerializationContext context, StringLiteralExp semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     NavigationExp returns NestedExp
	 *     NavigationExp.InfixExp_1_0_0 returns NestedExp
	 *     NavigationExp.OclMessage_1_1_0 returns NestedExp
	 *     OclMessageArg returns NestedExp
	 *     Expression returns NestedExp
	 *     implies returns NestedExp
	 *     implies.InfixExp_1_0 returns NestedExp
	 *     xor returns NestedExp
	 *     xor.InfixExp_1_0 returns NestedExp
	 *     or returns NestedExp
	 *     or.InfixExp_1_0 returns NestedExp
	 *     and returns NestedExp
	 *     and.InfixExp_1_0 returns NestedExp
	 *     equality returns NestedExp
	 *     equality.InfixExp_1_0 returns NestedExp
	 *     relational returns NestedExp
	 *     relational.InfixExp_1_0 returns NestedExp
	 *     additive returns NestedExp
	 *     additive.InfixExp_1_0 returns NestedExp
	 *     multiplicative returns NestedExp
	 *     multiplicative.InfixExp_1_0 returns NestedExp
	 *     unary returns NestedExp
	 *     SubNavigationExp returns NestedExp
	 *
	 * Constraint:
	 *     source=Expression
	 * </pre>
	 */
	protected void sequence_SubNavigationExp(ISerializationContext context, NestedExp semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, BacktrackingContentAssistTestPackage.Literals.NESTED_EXP__SOURCE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, BacktrackingContentAssistTestPackage.Literals.NESTED_EXP__SOURCE));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getSubNavigationExpAccess().getSourceExpressionParserRuleCall_9_2_0(), semanticObject.getSource());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     NavigationExp returns TupleLiteralExp
	 *     NavigationExp.InfixExp_1_0_0 returns TupleLiteralExp
	 *     NavigationExp.OclMessage_1_1_0 returns TupleLiteralExp
	 *     OclMessageArg returns TupleLiteralExp
	 *     TupleLiteralExp returns TupleLiteralExp
	 *     Expression returns TupleLiteralExp
	 *     implies returns TupleLiteralExp
	 *     implies.InfixExp_1_0 returns TupleLiteralExp
	 *     xor returns TupleLiteralExp
	 *     xor.InfixExp_1_0 returns TupleLiteralExp
	 *     or returns TupleLiteralExp
	 *     or.InfixExp_1_0 returns TupleLiteralExp
	 *     and returns TupleLiteralExp
	 *     and.InfixExp_1_0 returns TupleLiteralExp
	 *     equality returns TupleLiteralExp
	 *     equality.InfixExp_1_0 returns TupleLiteralExp
	 *     relational returns TupleLiteralExp
	 *     relational.InfixExp_1_0 returns TupleLiteralExp
	 *     additive returns TupleLiteralExp
	 *     additive.InfixExp_1_0 returns TupleLiteralExp
	 *     multiplicative returns TupleLiteralExp
	 *     multiplicative.InfixExp_1_0 returns TupleLiteralExp
	 *     unary returns TupleLiteralExp
	 *     SubNavigationExp returns TupleLiteralExp
	 *
	 * Constraint:
	 *     (part+=TupleLiteralPart part+=TupleLiteralPart*)?
	 * </pre>
	 */
	protected void sequence_TupleLiteralExp(ISerializationContext context, TupleLiteralExp semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     TupleLiteralPart returns TupleLiteralPart
	 *
	 * Constraint:
	 *     (name=Identifier type=TypeExp? initExpression=Expression)
	 * </pre>
	 */
	protected void sequence_TupleLiteralPart(ISerializationContext context, TupleLiteralPart semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     NavigationExp returns TupleType
	 *     NavigationExp.InfixExp_1_0_0 returns TupleType
	 *     NavigationExp.OclMessage_1_1_0 returns TupleType
	 *     OclMessageArg returns TupleType
	 *     TypeExp returns TupleType
	 *     TupleType returns TupleType
	 *     Expression returns TupleType
	 *     implies returns TupleType
	 *     implies.InfixExp_1_0 returns TupleType
	 *     xor returns TupleType
	 *     xor.InfixExp_1_0 returns TupleType
	 *     or returns TupleType
	 *     or.InfixExp_1_0 returns TupleType
	 *     and returns TupleType
	 *     and.InfixExp_1_0 returns TupleType
	 *     equality returns TupleType
	 *     equality.InfixExp_1_0 returns TupleType
	 *     relational returns TupleType
	 *     relational.InfixExp_1_0 returns TupleType
	 *     additive returns TupleType
	 *     additive.InfixExp_1_0 returns TupleType
	 *     multiplicative returns TupleType
	 *     multiplicative.InfixExp_1_0 returns TupleType
	 *     unary returns TupleType
	 *     SubNavigationExp returns TupleType
	 *
	 * Constraint:
	 *     (name='Tuple' (part+=tuplePart part+=tuplePart*)?)
	 * </pre>
	 */
	protected void sequence_TupleType(ISerializationContext context, TupleType semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     iteratorAccumulator returns iteratorAccumulator
	 *
	 * Constraint:
	 *     (name=Identifier type=TypeExp initExpression=Expression)
	 * </pre>
	 */
	protected void sequence_iteratorAccumulator(ISerializationContext context, iteratorAccumulator semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, BacktrackingContentAssistTestPackage.Literals.ITERATOR_ACCUMULATOR__NAME) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, BacktrackingContentAssistTestPackage.Literals.ITERATOR_ACCUMULATOR__NAME));
			if (transientValues.isValueTransient(semanticObject, BacktrackingContentAssistTestPackage.Literals.ITERATOR_ACCUMULATOR__TYPE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, BacktrackingContentAssistTestPackage.Literals.ITERATOR_ACCUMULATOR__TYPE));
			if (transientValues.isValueTransient(semanticObject, BacktrackingContentAssistTestPackage.Literals.ITERATOR_ACCUMULATOR__INIT_EXPRESSION) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, BacktrackingContentAssistTestPackage.Literals.ITERATOR_ACCUMULATOR__INIT_EXPRESSION));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getIteratorAccumulatorAccess().getNameIdentifierParserRuleCall_0_0(), semanticObject.getName());
		feeder.accept(grammarAccess.getIteratorAccumulatorAccess().getTypeTypeExpParserRuleCall_2_0(), semanticObject.getType());
		feeder.accept(grammarAccess.getIteratorAccumulatorAccess().getInitExpressionExpressionParserRuleCall_4_0(), semanticObject.getInitExpression());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     iteratorVariable returns iteratorVariable
	 *
	 * Constraint:
	 *     (name=Identifier type=TypeExp?)
	 * </pre>
	 */
	protected void sequence_iteratorVariable(ISerializationContext context, iteratorVariable semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     tuplePart returns tuplePart
	 *
	 * Constraint:
	 *     (name=Identifier type=TypeExp)
	 * </pre>
	 */
	protected void sequence_tuplePart(ISerializationContext context, tuplePart semanticObject) {
		if (errorAcceptor != null) {
			if (transientValues.isValueTransient(semanticObject, BacktrackingContentAssistTestPackage.Literals.TUPLE_PART__NAME) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, BacktrackingContentAssistTestPackage.Literals.TUPLE_PART__NAME));
			if (transientValues.isValueTransient(semanticObject, BacktrackingContentAssistTestPackage.Literals.TUPLE_PART__TYPE) == ValueTransient.YES)
				errorAcceptor.accept(diagnosticProvider.createFeatureValueMissing(semanticObject, BacktrackingContentAssistTestPackage.Literals.TUPLE_PART__TYPE));
		}
		SequenceFeeder feeder = createSequencerFeeder(context, semanticObject);
		feeder.accept(grammarAccess.getTuplePartAccess().getNameIdentifierParserRuleCall_0_0(), semanticObject.getName());
		feeder.accept(grammarAccess.getTuplePartAccess().getTypeTypeExpParserRuleCall_2_0(), semanticObject.getType());
		feeder.finish();
	}
	
	
	/**
	 * <pre>
	 * Contexts:
	 *     OclMessageArg returns PrefixExp
	 *     Expression returns PrefixExp
	 *     implies returns PrefixExp
	 *     implies.InfixExp_1_0 returns PrefixExp
	 *     xor returns PrefixExp
	 *     xor.InfixExp_1_0 returns PrefixExp
	 *     or returns PrefixExp
	 *     or.InfixExp_1_0 returns PrefixExp
	 *     and returns PrefixExp
	 *     and.InfixExp_1_0 returns PrefixExp
	 *     equality returns PrefixExp
	 *     equality.InfixExp_1_0 returns PrefixExp
	 *     relational returns PrefixExp
	 *     relational.InfixExp_1_0 returns PrefixExp
	 *     additive returns PrefixExp
	 *     additive.InfixExp_1_0 returns PrefixExp
	 *     multiplicative returns PrefixExp
	 *     multiplicative.InfixExp_1_0 returns PrefixExp
	 *     unary returns PrefixExp
	 *
	 * Constraint:
	 *     ((op='-' | op='not') source=unary)
	 * </pre>
	 */
	protected void sequence_unary(ISerializationContext context, PrefixExp semanticObject) {
		genericSequencer.createSequence(context, semanticObject);
	}
	
	
}

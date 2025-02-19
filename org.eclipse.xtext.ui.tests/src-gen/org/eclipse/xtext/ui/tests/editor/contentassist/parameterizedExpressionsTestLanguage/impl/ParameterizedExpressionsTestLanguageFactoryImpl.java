/**
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 * 
 * SPDX-License-Identifier: EPL-2.0
 */
package org.eclipse.xtext.ui.tests.editor.contentassist.parameterizedExpressionsTestLanguage.impl;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;

import org.eclipse.emf.ecore.impl.EFactoryImpl;

import org.eclipse.emf.ecore.plugin.EcorePlugin;

import org.eclipse.xtext.ui.tests.editor.contentassist.parameterizedExpressionsTestLanguage.*;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model <b>Factory</b>.
 * <!-- end-user-doc -->
 * @generated
 */
public class ParameterizedExpressionsTestLanguageFactoryImpl extends EFactoryImpl implements ParameterizedExpressionsTestLanguageFactory
{
  /**
   * Creates the default factory implementation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public static ParameterizedExpressionsTestLanguageFactory init()
  {
    try
    {
      ParameterizedExpressionsTestLanguageFactory theParameterizedExpressionsTestLanguageFactory = (ParameterizedExpressionsTestLanguageFactory)EPackage.Registry.INSTANCE.getEFactory(ParameterizedExpressionsTestLanguagePackage.eNS_URI);
      if (theParameterizedExpressionsTestLanguageFactory != null)
      {
        return theParameterizedExpressionsTestLanguageFactory;
      }
    }
    catch (Exception exception)
    {
      EcorePlugin.INSTANCE.log(exception);
    }
    return new ParameterizedExpressionsTestLanguageFactoryImpl();
  }

  /**
   * Creates an instance of the factory.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public ParameterizedExpressionsTestLanguageFactoryImpl()
  {
    super();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public EObject create(EClass eClass)
  {
    switch (eClass.getClassifierID())
    {
      case ParameterizedExpressionsTestLanguagePackage.STATEMENT: return createStatement();
      case ParameterizedExpressionsTestLanguagePackage.FUNCTION_DECLARATION: return createFunctionDeclaration();
      case ParameterizedExpressionsTestLanguagePackage.BLOCK: return createBlock();
      case ParameterizedExpressionsTestLanguagePackage.EXPRESSION_STATEMENT: return createExpressionStatement();
      case ParameterizedExpressionsTestLanguagePackage.LABELLED_STATEMENT: return createLabelledStatement();
      case ParameterizedExpressionsTestLanguagePackage.EXPRESSION: return createExpression();
      case ParameterizedExpressionsTestLanguagePackage.IDENTIFIER_REF: return createIdentifierRef();
      case ParameterizedExpressionsTestLanguagePackage.INDEXED_ACCESS_EXPRESSION: return createIndexedAccessExpression();
      case ParameterizedExpressionsTestLanguagePackage.PARAMETERIZED_PROPERTY_ACCESS_EXPRESSION: return createParameterizedPropertyAccessExpression();
      case ParameterizedExpressionsTestLanguagePackage.SHIFT_EXPRESSION: return createShiftExpression();
      case ParameterizedExpressionsTestLanguagePackage.RELATIONAL_EXPRESSION: return createRelationalExpression();
      case ParameterizedExpressionsTestLanguagePackage.ASSIGNMENT_EXPRESSION: return createAssignmentExpression();
      case ParameterizedExpressionsTestLanguagePackage.YIELD_EXPRESSION: return createYieldExpression();
      case ParameterizedExpressionsTestLanguagePackage.COMMA_EXPRESSION: return createCommaExpression();
      default:
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Statement createStatement()
  {
    StatementImpl statement = new StatementImpl();
    return statement;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public FunctionDeclaration createFunctionDeclaration()
  {
    FunctionDeclarationImpl functionDeclaration = new FunctionDeclarationImpl();
    return functionDeclaration;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Block createBlock()
  {
    BlockImpl block = new BlockImpl();
    return block;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public ExpressionStatement createExpressionStatement()
  {
    ExpressionStatementImpl expressionStatement = new ExpressionStatementImpl();
    return expressionStatement;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public LabelledStatement createLabelledStatement()
  {
    LabelledStatementImpl labelledStatement = new LabelledStatementImpl();
    return labelledStatement;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Expression createExpression()
  {
    ExpressionImpl expression = new ExpressionImpl();
    return expression;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public IdentifierRef createIdentifierRef()
  {
    IdentifierRefImpl identifierRef = new IdentifierRefImpl();
    return identifierRef;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public IndexedAccessExpression createIndexedAccessExpression()
  {
    IndexedAccessExpressionImpl indexedAccessExpression = new IndexedAccessExpressionImpl();
    return indexedAccessExpression;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public ParameterizedPropertyAccessExpression createParameterizedPropertyAccessExpression()
  {
    ParameterizedPropertyAccessExpressionImpl parameterizedPropertyAccessExpression = new ParameterizedPropertyAccessExpressionImpl();
    return parameterizedPropertyAccessExpression;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public ShiftExpression createShiftExpression()
  {
    ShiftExpressionImpl shiftExpression = new ShiftExpressionImpl();
    return shiftExpression;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public RelationalExpression createRelationalExpression()
  {
    RelationalExpressionImpl relationalExpression = new RelationalExpressionImpl();
    return relationalExpression;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public AssignmentExpression createAssignmentExpression()
  {
    AssignmentExpressionImpl assignmentExpression = new AssignmentExpressionImpl();
    return assignmentExpression;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public YieldExpression createYieldExpression()
  {
    YieldExpressionImpl yieldExpression = new YieldExpressionImpl();
    return yieldExpression;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public CommaExpression createCommaExpression()
  {
    CommaExpressionImpl commaExpression = new CommaExpressionImpl();
    return commaExpression;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public ParameterizedExpressionsTestLanguagePackage getParameterizedExpressionsTestLanguagePackage()
  {
    return (ParameterizedExpressionsTestLanguagePackage)getEPackage();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @deprecated
   * @generated
   */
  @Deprecated
  public static ParameterizedExpressionsTestLanguagePackage getPackage()
  {
    return ParameterizedExpressionsTestLanguagePackage.eINSTANCE;
  }

} //ParameterizedExpressionsTestLanguageFactoryImpl

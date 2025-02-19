/**
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 * 
 * SPDX-License-Identifier: EPL-2.0
 */
package org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest;


/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>If Exp</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.IfExp#getCondition <em>Condition</em>}</li>
 *   <li>{@link org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.IfExp#getThenExpression <em>Then Expression</em>}</li>
 *   <li>{@link org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.IfExp#getElseExpression <em>Else Expression</em>}</li>
 * </ul>
 *
 * @see org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.BacktrackingContentAssistTestPackage#getIfExp()
 * @model
 * @generated
 */
public interface IfExp extends Expression
{
  /**
   * Returns the value of the '<em><b>Condition</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Condition</em>' containment reference.
   * @see #setCondition(Expression)
   * @see org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.BacktrackingContentAssistTestPackage#getIfExp_Condition()
   * @model containment="true"
   * @generated
   */
  Expression getCondition();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.IfExp#getCondition <em>Condition</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Condition</em>' containment reference.
   * @see #getCondition()
   * @generated
   */
  void setCondition(Expression value);

  /**
   * Returns the value of the '<em><b>Then Expression</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Then Expression</em>' containment reference.
   * @see #setThenExpression(Expression)
   * @see org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.BacktrackingContentAssistTestPackage#getIfExp_ThenExpression()
   * @model containment="true"
   * @generated
   */
  Expression getThenExpression();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.IfExp#getThenExpression <em>Then Expression</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Then Expression</em>' containment reference.
   * @see #getThenExpression()
   * @generated
   */
  void setThenExpression(Expression value);

  /**
   * Returns the value of the '<em><b>Else Expression</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Else Expression</em>' containment reference.
   * @see #setElseExpression(Expression)
   * @see org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.BacktrackingContentAssistTestPackage#getIfExp_ElseExpression()
   * @model containment="true"
   * @generated
   */
  Expression getElseExpression();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.IfExp#getElseExpression <em>Else Expression</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Else Expression</em>' containment reference.
   * @see #getElseExpression()
   * @generated
   */
  void setElseExpression(Expression value);

} // IfExp

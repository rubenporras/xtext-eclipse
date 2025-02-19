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
 * A representation of the model object '<em><b>Infix Exp</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.InfixExp#getSource <em>Source</em>}</li>
 *   <li>{@link org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.InfixExp#getOp <em>Op</em>}</li>
 *   <li>{@link org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.InfixExp#getArgument <em>Argument</em>}</li>
 * </ul>
 *
 * @see org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.BacktrackingContentAssistTestPackage#getInfixExp()
 * @model
 * @generated
 */
public interface InfixExp extends Expression
{
  /**
   * Returns the value of the '<em><b>Source</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Source</em>' containment reference.
   * @see #setSource(Expression)
   * @see org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.BacktrackingContentAssistTestPackage#getInfixExp_Source()
   * @model containment="true"
   * @generated
   */
  Expression getSource();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.InfixExp#getSource <em>Source</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Source</em>' containment reference.
   * @see #getSource()
   * @generated
   */
  void setSource(Expression value);

  /**
   * Returns the value of the '<em><b>Op</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Op</em>' attribute.
   * @see #setOp(String)
   * @see org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.BacktrackingContentAssistTestPackage#getInfixExp_Op()
   * @model
   * @generated
   */
  String getOp();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.InfixExp#getOp <em>Op</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Op</em>' attribute.
   * @see #getOp()
   * @generated
   */
  void setOp(String value);

  /**
   * Returns the value of the '<em><b>Argument</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Argument</em>' containment reference.
   * @see #setArgument(NavigatingExp)
   * @see org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.BacktrackingContentAssistTestPackage#getInfixExp_Argument()
   * @model containment="true"
   * @generated
   */
  NavigatingExp getArgument();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.InfixExp#getArgument <em>Argument</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Argument</em>' containment reference.
   * @see #getArgument()
   * @generated
   */
  void setArgument(NavigatingExp value);

} // InfixExp

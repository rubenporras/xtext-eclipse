/**
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 * 
 * SPDX-License-Identifier: EPL-2.0
 */
package org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Scope Clause</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.ScopeClause#isNotIn <em>Not In</em>}</li>
 *   <li>{@link org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.ScopeClause#getScope <em>Scope</em>}</li>
 * </ul>
 *
 * @see org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.Bug287941TestLanguagePackage#getScopeClause()
 * @model
 * @generated
 */
public interface ScopeClause extends EObject
{
  /**
   * Returns the value of the '<em><b>Not In</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Not In</em>' attribute.
   * @see #setNotIn(boolean)
   * @see org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.Bug287941TestLanguagePackage#getScopeClause_NotIn()
   * @model
   * @generated
   */
  boolean isNotIn();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.ScopeClause#isNotIn <em>Not In</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Not In</em>' attribute.
   * @see #isNotIn()
   * @generated
   */
  void setNotIn(boolean value);

  /**
   * Returns the value of the '<em><b>Scope</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Scope</em>' containment reference.
   * @see #setScope(Scope)
   * @see org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.Bug287941TestLanguagePackage#getScopeClause_Scope()
   * @model containment="true"
   * @generated
   */
  Scope getScope();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.ui.tests.editor.contentassist.bug287941TestLanguage.ScopeClause#getScope <em>Scope</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Scope</em>' containment reference.
   * @see #getScope()
   * @generated
   */
  void setScope(Scope value);

} // ScopeClause

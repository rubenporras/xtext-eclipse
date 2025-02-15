/**
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 * 
 * SPDX-License-Identifier: EPL-2.0
 */
package org.eclipse.xtext.ui.tests.refactoring.referring;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Named</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.eclipse.xtext.ui.tests.refactoring.referring.Named#getReferenced <em>Referenced</em>}</li>
 *   <li>{@link org.eclipse.xtext.ui.tests.refactoring.referring.Named#getName <em>Name</em>}</li>
 * </ul>
 *
 * @see org.eclipse.xtext.ui.tests.refactoring.referring.ReferringPackage#getNamed()
 * @model
 * @generated
 */
public interface Named extends Reference2
{
  /**
   * Returns the value of the '<em><b>Referenced</b></em>' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Referenced</em>' reference.
   * @see #setReferenced(EObject)
   * @see org.eclipse.xtext.ui.tests.refactoring.referring.ReferringPackage#getNamed_Referenced()
   * @model
   * @generated
   */
  EObject getReferenced();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.ui.tests.refactoring.referring.Named#getReferenced <em>Referenced</em>}' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Referenced</em>' reference.
   * @see #getReferenced()
   * @generated
   */
  void setReferenced(EObject value);

  /**
   * Returns the value of the '<em><b>Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Name</em>' attribute.
   * @see #setName(String)
   * @see org.eclipse.xtext.ui.tests.refactoring.referring.ReferringPackage#getNamed_Name()
   * @model
   * @generated
   */
  String getName();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.ui.tests.refactoring.referring.Named#getName <em>Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Name</em>' attribute.
   * @see #getName()
   * @generated
   */
  void setName(String value);

} // Named

/**
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 * 
 * SPDX-License-Identifier: EPL-2.0
 */
package org.eclipse.xtext.ui.tests.editor.contentassist.crossReferenceProposalTest;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Class</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.eclipse.xtext.ui.tests.editor.contentassist.crossReferenceProposalTest.Class#getSuperClass <em>Super Class</em>}</li>
 *   <li>{@link org.eclipse.xtext.ui.tests.editor.contentassist.crossReferenceProposalTest.Class#getName <em>Name</em>}</li>
 * </ul>
 *
 * @see org.eclipse.xtext.ui.tests.editor.contentassist.crossReferenceProposalTest.CrossReferenceProposalTestPackage#getClass_()
 * @model
 * @generated
 */
public interface Class extends EObject
{
  /**
   * Returns the value of the '<em><b>Super Class</b></em>' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Super Class</em>' reference.
   * @see #setSuperClass(Class)
   * @see org.eclipse.xtext.ui.tests.editor.contentassist.crossReferenceProposalTest.CrossReferenceProposalTestPackage#getClass_SuperClass()
   * @model
   * @generated
   */
  Class getSuperClass();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.ui.tests.editor.contentassist.crossReferenceProposalTest.Class#getSuperClass <em>Super Class</em>}' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Super Class</em>' reference.
   * @see #getSuperClass()
   * @generated
   */
  void setSuperClass(Class value);

  /**
   * Returns the value of the '<em><b>Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Name</em>' attribute.
   * @see #setName(String)
   * @see org.eclipse.xtext.ui.tests.editor.contentassist.crossReferenceProposalTest.CrossReferenceProposalTestPackage#getClass_Name()
   * @model
   * @generated
   */
  String getName();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.ui.tests.editor.contentassist.crossReferenceProposalTest.Class#getName <em>Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Name</em>' attribute.
   * @see #getName()
   * @generated
   */
  void setName(String value);

} // Class

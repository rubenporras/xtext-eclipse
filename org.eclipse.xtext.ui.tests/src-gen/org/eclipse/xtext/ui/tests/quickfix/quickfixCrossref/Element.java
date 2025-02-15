/**
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 * 
 * SPDX-License-Identifier: EPL-2.0
 */
package org.eclipse.xtext.ui.tests.quickfix.quickfixCrossref;

import org.eclipse.emf.common.util.EList;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Element</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.eclipse.xtext.ui.tests.quickfix.quickfixCrossref.Element#getDoc <em>Doc</em>}</li>
 *   <li>{@link org.eclipse.xtext.ui.tests.quickfix.quickfixCrossref.Element#getName <em>Name</em>}</li>
 *   <li>{@link org.eclipse.xtext.ui.tests.quickfix.quickfixCrossref.Element#getContained <em>Contained</em>}</li>
 *   <li>{@link org.eclipse.xtext.ui.tests.quickfix.quickfixCrossref.Element#getReferenced <em>Referenced</em>}</li>
 * </ul>
 *
 * @see org.eclipse.xtext.ui.tests.quickfix.quickfixCrossref.QuickfixCrossrefPackage#getElement()
 * @model
 * @generated
 */
public interface Element extends EObject
{
  /**
   * Returns the value of the '<em><b>Doc</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Doc</em>' attribute.
   * @see #setDoc(String)
   * @see org.eclipse.xtext.ui.tests.quickfix.quickfixCrossref.QuickfixCrossrefPackage#getElement_Doc()
   * @model
   * @generated
   */
  String getDoc();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.ui.tests.quickfix.quickfixCrossref.Element#getDoc <em>Doc</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Doc</em>' attribute.
   * @see #getDoc()
   * @generated
   */
  void setDoc(String value);

  /**
   * Returns the value of the '<em><b>Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Name</em>' attribute.
   * @see #setName(String)
   * @see org.eclipse.xtext.ui.tests.quickfix.quickfixCrossref.QuickfixCrossrefPackage#getElement_Name()
   * @model
   * @generated
   */
  String getName();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.ui.tests.quickfix.quickfixCrossref.Element#getName <em>Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Name</em>' attribute.
   * @see #getName()
   * @generated
   */
  void setName(String value);

  /**
   * Returns the value of the '<em><b>Contained</b></em>' containment reference list.
   * The list contents are of type {@link org.eclipse.xtext.ui.tests.quickfix.quickfixCrossref.Element}.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Contained</em>' containment reference list.
   * @see org.eclipse.xtext.ui.tests.quickfix.quickfixCrossref.QuickfixCrossrefPackage#getElement_Contained()
   * @model containment="true"
   * @generated
   */
  EList<Element> getContained();

  /**
   * Returns the value of the '<em><b>Referenced</b></em>' reference list.
   * The list contents are of type {@link org.eclipse.xtext.ui.tests.quickfix.quickfixCrossref.Element}.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Referenced</em>' reference list.
   * @see org.eclipse.xtext.ui.tests.quickfix.quickfixCrossref.QuickfixCrossrefPackage#getElement_Referenced()
   * @model
   * @generated
   */
  EList<Element> getReferenced();

} // Element

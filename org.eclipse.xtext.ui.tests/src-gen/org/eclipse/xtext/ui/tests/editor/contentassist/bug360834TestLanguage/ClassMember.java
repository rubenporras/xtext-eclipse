/**
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 * 
 * SPDX-License-Identifier: EPL-2.0
 */
package org.eclipse.xtext.ui.tests.editor.contentassist.bug360834TestLanguage;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Class Member</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.eclipse.xtext.ui.tests.editor.contentassist.bug360834TestLanguage.ClassMember#getModifiers <em>Modifiers</em>}</li>
 *   <li>{@link org.eclipse.xtext.ui.tests.editor.contentassist.bug360834TestLanguage.ClassMember#getName <em>Name</em>}</li>
 * </ul>
 *
 * @see org.eclipse.xtext.ui.tests.editor.contentassist.bug360834TestLanguage.Bug360834TestLanguagePackage#getClassMember()
 * @model
 * @generated
 */
public interface ClassMember extends EObject
{
  /**
   * Returns the value of the '<em><b>Modifiers</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Modifiers</em>' containment reference.
   * @see #setModifiers(UnorderedModifiers)
   * @see org.eclipse.xtext.ui.tests.editor.contentassist.bug360834TestLanguage.Bug360834TestLanguagePackage#getClassMember_Modifiers()
   * @model containment="true"
   * @generated
   */
  UnorderedModifiers getModifiers();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.ui.tests.editor.contentassist.bug360834TestLanguage.ClassMember#getModifiers <em>Modifiers</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Modifiers</em>' containment reference.
   * @see #getModifiers()
   * @generated
   */
  void setModifiers(UnorderedModifiers value);

  /**
   * Returns the value of the '<em><b>Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Name</em>' attribute.
   * @see #setName(String)
   * @see org.eclipse.xtext.ui.tests.editor.contentassist.bug360834TestLanguage.Bug360834TestLanguagePackage#getClassMember_Name()
   * @model
   * @generated
   */
  String getName();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.ui.tests.editor.contentassist.bug360834TestLanguage.ClassMember#getName <em>Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Name</em>' attribute.
   * @see #getName()
   * @generated
   */
  void setName(String value);

} // ClassMember

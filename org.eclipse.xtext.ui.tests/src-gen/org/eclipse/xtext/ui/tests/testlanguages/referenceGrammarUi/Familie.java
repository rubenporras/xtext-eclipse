/**
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 * 
 * SPDX-License-Identifier: EPL-2.0
 */
package org.eclipse.xtext.ui.tests.testlanguages.referenceGrammarUi;

import org.eclipse.emf.common.util.EList;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Familie</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.eclipse.xtext.ui.tests.testlanguages.referenceGrammarUi.Familie#getName <em>Name</em>}</li>
 *   <li>{@link org.eclipse.xtext.ui.tests.testlanguages.referenceGrammarUi.Familie#getMutter <em>Mutter</em>}</li>
 *   <li>{@link org.eclipse.xtext.ui.tests.testlanguages.referenceGrammarUi.Familie#getVater <em>Vater</em>}</li>
 *   <li>{@link org.eclipse.xtext.ui.tests.testlanguages.referenceGrammarUi.Familie#getKinder <em>Kinder</em>}</li>
 * </ul>
 *
 * @see org.eclipse.xtext.ui.tests.testlanguages.referenceGrammarUi.ReferenceGrammarUiPackage#getFamilie()
 * @model
 * @generated
 */
public interface Familie extends EObject
{
  /**
   * Returns the value of the '<em><b>Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Name</em>' attribute.
   * @see #setName(String)
   * @see org.eclipse.xtext.ui.tests.testlanguages.referenceGrammarUi.ReferenceGrammarUiPackage#getFamilie_Name()
   * @model
   * @generated
   */
  String getName();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.ui.tests.testlanguages.referenceGrammarUi.Familie#getName <em>Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Name</em>' attribute.
   * @see #getName()
   * @generated
   */
  void setName(String value);

  /**
   * Returns the value of the '<em><b>Mutter</b></em>' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Mutter</em>' reference.
   * @see #setMutter(Erwachsener)
   * @see org.eclipse.xtext.ui.tests.testlanguages.referenceGrammarUi.ReferenceGrammarUiPackage#getFamilie_Mutter()
   * @model
   * @generated
   */
  Erwachsener getMutter();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.ui.tests.testlanguages.referenceGrammarUi.Familie#getMutter <em>Mutter</em>}' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Mutter</em>' reference.
   * @see #getMutter()
   * @generated
   */
  void setMutter(Erwachsener value);

  /**
   * Returns the value of the '<em><b>Vater</b></em>' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Vater</em>' reference.
   * @see #setVater(Erwachsener)
   * @see org.eclipse.xtext.ui.tests.testlanguages.referenceGrammarUi.ReferenceGrammarUiPackage#getFamilie_Vater()
   * @model
   * @generated
   */
  Erwachsener getVater();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.ui.tests.testlanguages.referenceGrammarUi.Familie#getVater <em>Vater</em>}' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Vater</em>' reference.
   * @see #getVater()
   * @generated
   */
  void setVater(Erwachsener value);

  /**
   * Returns the value of the '<em><b>Kinder</b></em>' reference list.
   * The list contents are of type {@link org.eclipse.xtext.ui.tests.testlanguages.referenceGrammarUi.Kind}.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Kinder</em>' reference list.
   * @see org.eclipse.xtext.ui.tests.testlanguages.referenceGrammarUi.ReferenceGrammarUiPackage#getFamilie_Kinder()
   * @model
   * @generated
   */
  EList<Kind> getKinder();

} // Familie

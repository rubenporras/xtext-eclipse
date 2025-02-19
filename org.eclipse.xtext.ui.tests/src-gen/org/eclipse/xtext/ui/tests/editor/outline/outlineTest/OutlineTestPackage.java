/**
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 * 
 * SPDX-License-Identifier: EPL-2.0
 */
package org.eclipse.xtext.ui.tests.editor.outline.outlineTest;

import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

/**
 * <!-- begin-user-doc -->
 * The <b>Package</b> for the model.
 * It contains accessors for the meta objects to represent
 * <ul>
 *   <li>each class,</li>
 *   <li>each feature of each class,</li>
 *   <li>each enum,</li>
 *   <li>and each data type</li>
 * </ul>
 * <!-- end-user-doc -->
 * @see org.eclipse.xtext.ui.tests.editor.outline.outlineTest.OutlineTestFactory
 * @model kind="package"
 * @generated
 */
public interface OutlineTestPackage extends EPackage
{
  /**
   * The package name.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  String eNAME = "outlineTest";

  /**
   * The package namespace URI.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  String eNS_URI = "http://www.eclipse.org/2010/tmf/xtext/outline/OutlineTest";

  /**
   * The package namespace name.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  String eNS_PREFIX = "outlineTest";

  /**
   * The singleton instance of the package.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  OutlineTestPackage eINSTANCE = org.eclipse.xtext.ui.tests.editor.outline.outlineTest.impl.OutlineTestPackageImpl.init();

  /**
   * The meta object id for the '{@link org.eclipse.xtext.ui.tests.editor.outline.outlineTest.impl.ModelImpl <em>Model</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.eclipse.xtext.ui.tests.editor.outline.outlineTest.impl.ModelImpl
   * @see org.eclipse.xtext.ui.tests.editor.outline.outlineTest.impl.OutlineTestPackageImpl#getModel()
   * @generated
   */
  int MODEL = 0;

  /**
   * The feature id for the '<em><b>Elements</b></em>' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int MODEL__ELEMENTS = 0;

  /**
   * The number of structural features of the '<em>Model</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int MODEL_FEATURE_COUNT = 1;

  /**
   * The meta object id for the '{@link org.eclipse.xtext.ui.tests.editor.outline.outlineTest.impl.ElementImpl <em>Element</em>}' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.eclipse.xtext.ui.tests.editor.outline.outlineTest.impl.ElementImpl
   * @see org.eclipse.xtext.ui.tests.editor.outline.outlineTest.impl.OutlineTestPackageImpl#getElement()
   * @generated
   */
  int ELEMENT = 1;

  /**
   * The feature id for the '<em><b>Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ELEMENT__NAME = 0;

  /**
   * The feature id for the '<em><b>Xrefs</b></em>' reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ELEMENT__XREFS = 1;

  /**
   * The feature id for the '<em><b>Children</b></em>' containment reference list.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ELEMENT__CHILDREN = 2;

  /**
   * The number of structural features of the '<em>Element</em>' class.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   * @ordered
   */
  int ELEMENT_FEATURE_COUNT = 3;


  /**
   * Returns the meta object for class '{@link org.eclipse.xtext.ui.tests.editor.outline.outlineTest.Model <em>Model</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Model</em>'.
   * @see org.eclipse.xtext.ui.tests.editor.outline.outlineTest.Model
   * @generated
   */
  EClass getModel();

  /**
   * Returns the meta object for the containment reference list '{@link org.eclipse.xtext.ui.tests.editor.outline.outlineTest.Model#getElements <em>Elements</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference list '<em>Elements</em>'.
   * @see org.eclipse.xtext.ui.tests.editor.outline.outlineTest.Model#getElements()
   * @see #getModel()
   * @generated
   */
  EReference getModel_Elements();

  /**
   * Returns the meta object for class '{@link org.eclipse.xtext.ui.tests.editor.outline.outlineTest.Element <em>Element</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for class '<em>Element</em>'.
   * @see org.eclipse.xtext.ui.tests.editor.outline.outlineTest.Element
   * @generated
   */
  EClass getElement();

  /**
   * Returns the meta object for the attribute '{@link org.eclipse.xtext.ui.tests.editor.outline.outlineTest.Element#getName <em>Name</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the attribute '<em>Name</em>'.
   * @see org.eclipse.xtext.ui.tests.editor.outline.outlineTest.Element#getName()
   * @see #getElement()
   * @generated
   */
  EAttribute getElement_Name();

  /**
   * Returns the meta object for the reference list '{@link org.eclipse.xtext.ui.tests.editor.outline.outlineTest.Element#getXrefs <em>Xrefs</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the reference list '<em>Xrefs</em>'.
   * @see org.eclipse.xtext.ui.tests.editor.outline.outlineTest.Element#getXrefs()
   * @see #getElement()
   * @generated
   */
  EReference getElement_Xrefs();

  /**
   * Returns the meta object for the containment reference list '{@link org.eclipse.xtext.ui.tests.editor.outline.outlineTest.Element#getChildren <em>Children</em>}'.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the meta object for the containment reference list '<em>Children</em>'.
   * @see org.eclipse.xtext.ui.tests.editor.outline.outlineTest.Element#getChildren()
   * @see #getElement()
   * @generated
   */
  EReference getElement_Children();

  /**
   * Returns the factory that creates the instances of the model.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the factory that creates the instances of the model.
   * @generated
   */
  OutlineTestFactory getOutlineTestFactory();

  /**
   * <!-- begin-user-doc -->
   * Defines literals for the meta objects that represent
   * <ul>
   *   <li>each class,</li>
   *   <li>each feature of each class,</li>
   *   <li>each enum,</li>
   *   <li>and each data type</li>
   * </ul>
   * <!-- end-user-doc -->
   * @generated
   */
  interface Literals
  {
    /**
     * The meta object literal for the '{@link org.eclipse.xtext.ui.tests.editor.outline.outlineTest.impl.ModelImpl <em>Model</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.eclipse.xtext.ui.tests.editor.outline.outlineTest.impl.ModelImpl
     * @see org.eclipse.xtext.ui.tests.editor.outline.outlineTest.impl.OutlineTestPackageImpl#getModel()
     * @generated
     */
    EClass MODEL = eINSTANCE.getModel();

    /**
     * The meta object literal for the '<em><b>Elements</b></em>' containment reference list feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference MODEL__ELEMENTS = eINSTANCE.getModel_Elements();

    /**
     * The meta object literal for the '{@link org.eclipse.xtext.ui.tests.editor.outline.outlineTest.impl.ElementImpl <em>Element</em>}' class.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @see org.eclipse.xtext.ui.tests.editor.outline.outlineTest.impl.ElementImpl
     * @see org.eclipse.xtext.ui.tests.editor.outline.outlineTest.impl.OutlineTestPackageImpl#getElement()
     * @generated
     */
    EClass ELEMENT = eINSTANCE.getElement();

    /**
     * The meta object literal for the '<em><b>Name</b></em>' attribute feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EAttribute ELEMENT__NAME = eINSTANCE.getElement_Name();

    /**
     * The meta object literal for the '<em><b>Xrefs</b></em>' reference list feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference ELEMENT__XREFS = eINSTANCE.getElement_Xrefs();

    /**
     * The meta object literal for the '<em><b>Children</b></em>' containment reference list feature.
     * <!-- begin-user-doc -->
     * <!-- end-user-doc -->
     * @generated
     */
    EReference ELEMENT__CHILDREN = eINSTANCE.getElement_Children();

  }

} //OutlineTestPackage

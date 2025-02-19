/**
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 * 
 * SPDX-License-Identifier: EPL-2.0
 */
package org.eclipse.xtext.ui.tests.editor.contentassist.bug288760TestLanguage;

import org.eclipse.emf.common.util.EList;

import org.eclipse.emf.ecore.EObject;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Workflow Element</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.eclipse.xtext.ui.tests.editor.contentassist.bug288760TestLanguage.WorkflowElement#getName <em>Name</em>}</li>
 *   <li>{@link org.eclipse.xtext.ui.tests.editor.contentassist.bug288760TestLanguage.WorkflowElement#getAttributes <em>Attributes</em>}</li>
 *   <li>{@link org.eclipse.xtext.ui.tests.editor.contentassist.bug288760TestLanguage.WorkflowElement#getChildren <em>Children</em>}</li>
 *   <li>{@link org.eclipse.xtext.ui.tests.editor.contentassist.bug288760TestLanguage.WorkflowElement#getEnd <em>End</em>}</li>
 * </ul>
 *
 * @see org.eclipse.xtext.ui.tests.editor.contentassist.bug288760TestLanguage.Bug288760TestLanguagePackage#getWorkflowElement()
 * @model
 * @generated
 */
public interface WorkflowElement extends EObject
{
  /**
   * Returns the value of the '<em><b>Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Name</em>' attribute.
   * @see #setName(String)
   * @see org.eclipse.xtext.ui.tests.editor.contentassist.bug288760TestLanguage.Bug288760TestLanguagePackage#getWorkflowElement_Name()
   * @model
   * @generated
   */
  String getName();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.ui.tests.editor.contentassist.bug288760TestLanguage.WorkflowElement#getName <em>Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Name</em>' attribute.
   * @see #getName()
   * @generated
   */
  void setName(String value);

  /**
   * Returns the value of the '<em><b>Attributes</b></em>' containment reference list.
   * The list contents are of type {@link org.eclipse.xtext.ui.tests.editor.contentassist.bug288760TestLanguage.Attribute}.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Attributes</em>' containment reference list.
   * @see org.eclipse.xtext.ui.tests.editor.contentassist.bug288760TestLanguage.Bug288760TestLanguagePackage#getWorkflowElement_Attributes()
   * @model containment="true"
   * @generated
   */
  EList<Attribute> getAttributes();

  /**
   * Returns the value of the '<em><b>Children</b></em>' containment reference list.
   * The list contents are of type {@link org.eclipse.xtext.ui.tests.editor.contentassist.bug288760TestLanguage.WorkflowElement}.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Children</em>' containment reference list.
   * @see org.eclipse.xtext.ui.tests.editor.contentassist.bug288760TestLanguage.Bug288760TestLanguagePackage#getWorkflowElement_Children()
   * @model containment="true"
   * @generated
   */
  EList<WorkflowElement> getChildren();

  /**
   * Returns the value of the '<em><b>End</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>End</em>' attribute.
   * @see #setEnd(String)
   * @see org.eclipse.xtext.ui.tests.editor.contentassist.bug288760TestLanguage.Bug288760TestLanguagePackage#getWorkflowElement_End()
   * @model
   * @generated
   */
  String getEnd();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.ui.tests.editor.contentassist.bug288760TestLanguage.WorkflowElement#getEnd <em>End</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>End</em>' attribute.
   * @see #getEnd()
   * @generated
   */
  void setEnd(String value);

} // WorkflowElement

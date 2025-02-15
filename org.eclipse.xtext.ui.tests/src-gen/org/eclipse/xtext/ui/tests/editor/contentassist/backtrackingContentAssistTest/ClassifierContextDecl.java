/**
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 * 
 * SPDX-License-Identifier: EPL-2.0
 */
package org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest;

import org.eclipse.emf.common.util.EList;

/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Classifier Context Decl</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.ClassifierContextDecl#getSelfName <em>Self Name</em>}</li>
 *   <li>{@link org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.ClassifierContextDecl#getClassifier <em>Classifier</em>}</li>
 *   <li>{@link org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.ClassifierContextDecl#getInvariants <em>Invariants</em>}</li>
 *   <li>{@link org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.ClassifierContextDecl#getDefinitions <em>Definitions</em>}</li>
 * </ul>
 *
 * @see org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.BacktrackingContentAssistTestPackage#getClassifierContextDecl()
 * @model
 * @generated
 */
public interface ClassifierContextDecl extends ContextDecl
{
  /**
   * Returns the value of the '<em><b>Self Name</b></em>' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Self Name</em>' attribute.
   * @see #setSelfName(String)
   * @see org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.BacktrackingContentAssistTestPackage#getClassifierContextDecl_SelfName()
   * @model
   * @generated
   */
  String getSelfName();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.ClassifierContextDecl#getSelfName <em>Self Name</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Self Name</em>' attribute.
   * @see #getSelfName()
   * @generated
   */
  void setSelfName(String value);

  /**
   * Returns the value of the '<em><b>Classifier</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Classifier</em>' containment reference.
   * @see #setClassifier(ClassifierRef)
   * @see org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.BacktrackingContentAssistTestPackage#getClassifierContextDecl_Classifier()
   * @model containment="true"
   * @generated
   */
  ClassifierRef getClassifier();

  /**
   * Sets the value of the '{@link org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.ClassifierContextDecl#getClassifier <em>Classifier</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Classifier</em>' containment reference.
   * @see #getClassifier()
   * @generated
   */
  void setClassifier(ClassifierRef value);

  /**
   * Returns the value of the '<em><b>Invariants</b></em>' containment reference list.
   * The list contents are of type {@link org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.Invariant}.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Invariants</em>' containment reference list.
   * @see org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.BacktrackingContentAssistTestPackage#getClassifierContextDecl_Invariants()
   * @model containment="true"
   * @generated
   */
  EList<Invariant> getInvariants();

  /**
   * Returns the value of the '<em><b>Definitions</b></em>' containment reference list.
   * The list contents are of type {@link org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.Definition}.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Definitions</em>' containment reference list.
   * @see org.eclipse.xtext.ui.tests.editor.contentassist.backtrackingContentAssistTest.BacktrackingContentAssistTestPackage#getClassifierContextDecl_Definitions()
   * @model containment="true"
   * @generated
   */
  EList<Definition> getDefinitions();

} // ClassifierContextDecl

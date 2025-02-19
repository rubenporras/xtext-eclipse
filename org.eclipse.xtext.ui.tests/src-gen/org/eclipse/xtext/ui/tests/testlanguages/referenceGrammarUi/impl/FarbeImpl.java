/**
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 * 
 * SPDX-License-Identifier: EPL-2.0
 */
package org.eclipse.xtext.ui.tests.testlanguages.referenceGrammarUi.impl;

import org.eclipse.emf.common.notify.Notification;

import org.eclipse.emf.ecore.EClass;

import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

import org.eclipse.xtext.ui.tests.testlanguages.referenceGrammarUi.Farbe;
import org.eclipse.xtext.ui.tests.testlanguages.referenceGrammarUi.ReferenceGrammarUiPackage;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Farbe</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.eclipse.xtext.ui.tests.testlanguages.referenceGrammarUi.impl.FarbeImpl#getWert <em>Wert</em>}</li>
 * </ul>
 *
 * @generated
 */
public class FarbeImpl extends MinimalEObjectImpl.Container implements Farbe
{
  /**
   * The default value of the '{@link #getWert() <em>Wert</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getWert()
   * @generated
   * @ordered
   */
  protected static final String WERT_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getWert() <em>Wert</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getWert()
   * @generated
   * @ordered
   */
  protected String wert = WERT_EDEFAULT;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected FarbeImpl()
  {
    super();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  protected EClass eStaticClass()
  {
    return ReferenceGrammarUiPackage.Literals.FARBE;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public String getWert()
  {
    return wert;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public void setWert(String newWert)
  {
    String oldWert = wert;
    wert = newWert;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, ReferenceGrammarUiPackage.FARBE__WERT, oldWert, wert));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Object eGet(int featureID, boolean resolve, boolean coreType)
  {
    switch (featureID)
    {
      case ReferenceGrammarUiPackage.FARBE__WERT:
        return getWert();
    }
    return super.eGet(featureID, resolve, coreType);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public void eSet(int featureID, Object newValue)
  {
    switch (featureID)
    {
      case ReferenceGrammarUiPackage.FARBE__WERT:
        setWert((String)newValue);
        return;
    }
    super.eSet(featureID, newValue);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public void eUnset(int featureID)
  {
    switch (featureID)
    {
      case ReferenceGrammarUiPackage.FARBE__WERT:
        setWert(WERT_EDEFAULT);
        return;
    }
    super.eUnset(featureID);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public boolean eIsSet(int featureID)
  {
    switch (featureID)
    {
      case ReferenceGrammarUiPackage.FARBE__WERT:
        return WERT_EDEFAULT == null ? wert != null : !WERT_EDEFAULT.equals(wert);
    }
    return super.eIsSet(featureID);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public String toString()
  {
    if (eIsProxy()) return super.toString();

    StringBuilder result = new StringBuilder(super.toString());
    result.append(" (wert: ");
    result.append(wert);
    result.append(')');
    return result.toString();
  }

} //FarbeImpl

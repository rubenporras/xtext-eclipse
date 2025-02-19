/**
 * Copyright (c) 2015, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 * 
 * SPDX-License-Identifier: EPL-2.0
 */
package org.eclipse.xtext.example.homeautomation.ruleEngine.impl;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.ENotificationImpl;

import org.eclipse.xtext.example.homeautomation.ruleEngine.Rule;
import org.eclipse.xtext.example.homeautomation.ruleEngine.RuleEnginePackage;
import org.eclipse.xtext.example.homeautomation.ruleEngine.State;

import org.eclipse.xtext.xbase.XExpression;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Rule</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.eclipse.xtext.example.homeautomation.ruleEngine.impl.RuleImpl#getDescription <em>Description</em>}</li>
 *   <li>{@link org.eclipse.xtext.example.homeautomation.ruleEngine.impl.RuleImpl#getDeviceState <em>Device State</em>}</li>
 *   <li>{@link org.eclipse.xtext.example.homeautomation.ruleEngine.impl.RuleImpl#getThenPart <em>Then Part</em>}</li>
 * </ul>
 *
 * @generated
 */
public class RuleImpl extends DeclarationImpl implements Rule
{
  /**
   * The default value of the '{@link #getDescription() <em>Description</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getDescription()
   * @generated
   * @ordered
   */
  protected static final String DESCRIPTION_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getDescription() <em>Description</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getDescription()
   * @generated
   * @ordered
   */
  protected String description = DESCRIPTION_EDEFAULT;

  /**
   * The cached value of the '{@link #getDeviceState() <em>Device State</em>}' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getDeviceState()
   * @generated
   * @ordered
   */
  protected State deviceState;

  /**
   * The cached value of the '{@link #getThenPart() <em>Then Part</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getThenPart()
   * @generated
   * @ordered
   */
  protected XExpression thenPart;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected RuleImpl()
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
    return RuleEnginePackage.Literals.RULE;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public String getDescription()
  {
    return description;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public void setDescription(String newDescription)
  {
    String oldDescription = description;
    description = newDescription;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, RuleEnginePackage.RULE__DESCRIPTION, oldDescription, description));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public State getDeviceState()
  {
    if (deviceState != null && deviceState.eIsProxy())
    {
      InternalEObject oldDeviceState = (InternalEObject)deviceState;
      deviceState = (State)eResolveProxy(oldDeviceState);
      if (deviceState != oldDeviceState)
      {
        if (eNotificationRequired())
          eNotify(new ENotificationImpl(this, Notification.RESOLVE, RuleEnginePackage.RULE__DEVICE_STATE, oldDeviceState, deviceState));
      }
    }
    return deviceState;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public State basicGetDeviceState()
  {
    return deviceState;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public void setDeviceState(State newDeviceState)
  {
    State oldDeviceState = deviceState;
    deviceState = newDeviceState;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, RuleEnginePackage.RULE__DEVICE_STATE, oldDeviceState, deviceState));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public XExpression getThenPart()
  {
    return thenPart;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetThenPart(XExpression newThenPart, NotificationChain msgs)
  {
    XExpression oldThenPart = thenPart;
    thenPart = newThenPart;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, RuleEnginePackage.RULE__THEN_PART, oldThenPart, newThenPart);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public void setThenPart(XExpression newThenPart)
  {
    if (newThenPart != thenPart)
    {
      NotificationChain msgs = null;
      if (thenPart != null)
        msgs = ((InternalEObject)thenPart).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - RuleEnginePackage.RULE__THEN_PART, null, msgs);
      if (newThenPart != null)
        msgs = ((InternalEObject)newThenPart).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - RuleEnginePackage.RULE__THEN_PART, null, msgs);
      msgs = basicSetThenPart(newThenPart, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, RuleEnginePackage.RULE__THEN_PART, newThenPart, newThenPart));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs)
  {
    switch (featureID)
    {
      case RuleEnginePackage.RULE__THEN_PART:
        return basicSetThenPart(null, msgs);
    }
    return super.eInverseRemove(otherEnd, featureID, msgs);
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
      case RuleEnginePackage.RULE__DESCRIPTION:
        return getDescription();
      case RuleEnginePackage.RULE__DEVICE_STATE:
        if (resolve) return getDeviceState();
        return basicGetDeviceState();
      case RuleEnginePackage.RULE__THEN_PART:
        return getThenPart();
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
      case RuleEnginePackage.RULE__DESCRIPTION:
        setDescription((String)newValue);
        return;
      case RuleEnginePackage.RULE__DEVICE_STATE:
        setDeviceState((State)newValue);
        return;
      case RuleEnginePackage.RULE__THEN_PART:
        setThenPart((XExpression)newValue);
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
      case RuleEnginePackage.RULE__DESCRIPTION:
        setDescription(DESCRIPTION_EDEFAULT);
        return;
      case RuleEnginePackage.RULE__DEVICE_STATE:
        setDeviceState((State)null);
        return;
      case RuleEnginePackage.RULE__THEN_PART:
        setThenPart((XExpression)null);
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
      case RuleEnginePackage.RULE__DESCRIPTION:
        return DESCRIPTION_EDEFAULT == null ? description != null : !DESCRIPTION_EDEFAULT.equals(description);
      case RuleEnginePackage.RULE__DEVICE_STATE:
        return deviceState != null;
      case RuleEnginePackage.RULE__THEN_PART:
        return thenPart != null;
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
    result.append(" (description: ");
    result.append(description);
    result.append(')');
    return result.toString();
  }

} //RuleImpl

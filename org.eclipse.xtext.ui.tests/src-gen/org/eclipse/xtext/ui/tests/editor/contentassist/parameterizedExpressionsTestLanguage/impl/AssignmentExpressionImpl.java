/**
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 * 
 * SPDX-License-Identifier: EPL-2.0
 */
package org.eclipse.xtext.ui.tests.editor.contentassist.parameterizedExpressionsTestLanguage.impl;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.ENotificationImpl;

import org.eclipse.xtext.ui.tests.editor.contentassist.parameterizedExpressionsTestLanguage.AssignmentExpression;
import org.eclipse.xtext.ui.tests.editor.contentassist.parameterizedExpressionsTestLanguage.Expression;
import org.eclipse.xtext.ui.tests.editor.contentassist.parameterizedExpressionsTestLanguage.ParameterizedExpressionsTestLanguagePackage;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Assignment Expression</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link org.eclipse.xtext.ui.tests.editor.contentassist.parameterizedExpressionsTestLanguage.impl.AssignmentExpressionImpl#getLhs <em>Lhs</em>}</li>
 *   <li>{@link org.eclipse.xtext.ui.tests.editor.contentassist.parameterizedExpressionsTestLanguage.impl.AssignmentExpressionImpl#getOp <em>Op</em>}</li>
 *   <li>{@link org.eclipse.xtext.ui.tests.editor.contentassist.parameterizedExpressionsTestLanguage.impl.AssignmentExpressionImpl#getRhs <em>Rhs</em>}</li>
 * </ul>
 *
 * @generated
 */
public class AssignmentExpressionImpl extends ExpressionImpl implements AssignmentExpression
{
  /**
   * The cached value of the '{@link #getLhs() <em>Lhs</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getLhs()
   * @generated
   * @ordered
   */
  protected Expression lhs;

  /**
   * The default value of the '{@link #getOp() <em>Op</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getOp()
   * @generated
   * @ordered
   */
  protected static final String OP_EDEFAULT = null;

  /**
   * The cached value of the '{@link #getOp() <em>Op</em>}' attribute.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getOp()
   * @generated
   * @ordered
   */
  protected String op = OP_EDEFAULT;

  /**
   * The cached value of the '{@link #getRhs() <em>Rhs</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getRhs()
   * @generated
   * @ordered
   */
  protected Expression rhs;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected AssignmentExpressionImpl()
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
    return ParameterizedExpressionsTestLanguagePackage.Literals.ASSIGNMENT_EXPRESSION;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Expression getLhs()
  {
    return lhs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetLhs(Expression newLhs, NotificationChain msgs)
  {
    Expression oldLhs = lhs;
    lhs = newLhs;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, ParameterizedExpressionsTestLanguagePackage.ASSIGNMENT_EXPRESSION__LHS, oldLhs, newLhs);
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
  public void setLhs(Expression newLhs)
  {
    if (newLhs != lhs)
    {
      NotificationChain msgs = null;
      if (lhs != null)
        msgs = ((InternalEObject)lhs).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - ParameterizedExpressionsTestLanguagePackage.ASSIGNMENT_EXPRESSION__LHS, null, msgs);
      if (newLhs != null)
        msgs = ((InternalEObject)newLhs).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - ParameterizedExpressionsTestLanguagePackage.ASSIGNMENT_EXPRESSION__LHS, null, msgs);
      msgs = basicSetLhs(newLhs, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, ParameterizedExpressionsTestLanguagePackage.ASSIGNMENT_EXPRESSION__LHS, newLhs, newLhs));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public String getOp()
  {
    return op;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public void setOp(String newOp)
  {
    String oldOp = op;
    op = newOp;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, ParameterizedExpressionsTestLanguagePackage.ASSIGNMENT_EXPRESSION__OP, oldOp, op));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Expression getRhs()
  {
    return rhs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetRhs(Expression newRhs, NotificationChain msgs)
  {
    Expression oldRhs = rhs;
    rhs = newRhs;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, ParameterizedExpressionsTestLanguagePackage.ASSIGNMENT_EXPRESSION__RHS, oldRhs, newRhs);
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
  public void setRhs(Expression newRhs)
  {
    if (newRhs != rhs)
    {
      NotificationChain msgs = null;
      if (rhs != null)
        msgs = ((InternalEObject)rhs).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - ParameterizedExpressionsTestLanguagePackage.ASSIGNMENT_EXPRESSION__RHS, null, msgs);
      if (newRhs != null)
        msgs = ((InternalEObject)newRhs).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - ParameterizedExpressionsTestLanguagePackage.ASSIGNMENT_EXPRESSION__RHS, null, msgs);
      msgs = basicSetRhs(newRhs, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, ParameterizedExpressionsTestLanguagePackage.ASSIGNMENT_EXPRESSION__RHS, newRhs, newRhs));
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
      case ParameterizedExpressionsTestLanguagePackage.ASSIGNMENT_EXPRESSION__LHS:
        return basicSetLhs(null, msgs);
      case ParameterizedExpressionsTestLanguagePackage.ASSIGNMENT_EXPRESSION__RHS:
        return basicSetRhs(null, msgs);
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
      case ParameterizedExpressionsTestLanguagePackage.ASSIGNMENT_EXPRESSION__LHS:
        return getLhs();
      case ParameterizedExpressionsTestLanguagePackage.ASSIGNMENT_EXPRESSION__OP:
        return getOp();
      case ParameterizedExpressionsTestLanguagePackage.ASSIGNMENT_EXPRESSION__RHS:
        return getRhs();
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
      case ParameterizedExpressionsTestLanguagePackage.ASSIGNMENT_EXPRESSION__LHS:
        setLhs((Expression)newValue);
        return;
      case ParameterizedExpressionsTestLanguagePackage.ASSIGNMENT_EXPRESSION__OP:
        setOp((String)newValue);
        return;
      case ParameterizedExpressionsTestLanguagePackage.ASSIGNMENT_EXPRESSION__RHS:
        setRhs((Expression)newValue);
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
      case ParameterizedExpressionsTestLanguagePackage.ASSIGNMENT_EXPRESSION__LHS:
        setLhs((Expression)null);
        return;
      case ParameterizedExpressionsTestLanguagePackage.ASSIGNMENT_EXPRESSION__OP:
        setOp(OP_EDEFAULT);
        return;
      case ParameterizedExpressionsTestLanguagePackage.ASSIGNMENT_EXPRESSION__RHS:
        setRhs((Expression)null);
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
      case ParameterizedExpressionsTestLanguagePackage.ASSIGNMENT_EXPRESSION__LHS:
        return lhs != null;
      case ParameterizedExpressionsTestLanguagePackage.ASSIGNMENT_EXPRESSION__OP:
        return OP_EDEFAULT == null ? op != null : !OP_EDEFAULT.equals(op);
      case ParameterizedExpressionsTestLanguagePackage.ASSIGNMENT_EXPRESSION__RHS:
        return rhs != null;
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
    result.append(" (op: ");
    result.append(op);
    result.append(')');
    return result.toString();
  }

} //AssignmentExpressionImpl

/**
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 * 
 * SPDX-License-Identifier: EPL-2.0
 */
package org.eclipse.xtext.ui.tests.editor.contentassist.twoContexts.impl;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;

import org.eclipse.emf.ecore.impl.EFactoryImpl;

import org.eclipse.emf.ecore.plugin.EcorePlugin;

import org.eclipse.xtext.ui.tests.editor.contentassist.twoContexts.*;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model <b>Factory</b>.
 * <!-- end-user-doc -->
 * @generated
 */
public class TwoContextsFactoryImpl extends EFactoryImpl implements TwoContextsFactory
{
  /**
   * Creates the default factory implementation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public static TwoContextsFactory init()
  {
    try
    {
      TwoContextsFactory theTwoContextsFactory = (TwoContextsFactory)EPackage.Registry.INSTANCE.getEFactory(TwoContextsPackage.eNS_URI);
      if (theTwoContextsFactory != null)
      {
        return theTwoContextsFactory;
      }
    }
    catch (Exception exception)
    {
      EcorePlugin.INSTANCE.log(exception);
    }
    return new TwoContextsFactoryImpl();
  }

  /**
   * Creates an instance of the factory.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public TwoContextsFactoryImpl()
  {
    super();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public EObject create(EClass eClass)
  {
    switch (eClass.getClassifierID())
    {
      case TwoContextsPackage.MAIN_MODEL: return createMainModel();
      case TwoContextsPackage.AN_ELEMENT: return createAnElement();
      default:
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public MainModel createMainModel()
  {
    MainModelImpl mainModel = new MainModelImpl();
    return mainModel;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public AnElement createAnElement()
  {
    AnElementImpl anElement = new AnElementImpl();
    return anElement;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public TwoContextsPackage getTwoContextsPackage()
  {
    return (TwoContextsPackage)getEPackage();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @deprecated
   * @generated
   */
  @Deprecated
  public static TwoContextsPackage getPackage()
  {
    return TwoContextsPackage.eINSTANCE;
  }

} //TwoContextsFactoryImpl

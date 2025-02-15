/**
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 * 
 * SPDX-License-Identifier: EPL-2.0
 */
package org.eclipse.xtext.ui.tests.editor.contentassist.bug288734TestLanguage.impl;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;

import org.eclipse.emf.ecore.impl.EFactoryImpl;

import org.eclipse.emf.ecore.plugin.EcorePlugin;

import org.eclipse.xtext.ui.tests.editor.contentassist.bug288734TestLanguage.*;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model <b>Factory</b>.
 * <!-- end-user-doc -->
 * @generated
 */
public class Bug288734TestLanguageFactoryImpl extends EFactoryImpl implements Bug288734TestLanguageFactory
{
  /**
   * Creates the default factory implementation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public static Bug288734TestLanguageFactory init()
  {
    try
    {
      Bug288734TestLanguageFactory theBug288734TestLanguageFactory = (Bug288734TestLanguageFactory)EPackage.Registry.INSTANCE.getEFactory(Bug288734TestLanguagePackage.eNS_URI);
      if (theBug288734TestLanguageFactory != null)
      {
        return theBug288734TestLanguageFactory;
      }
    }
    catch (Exception exception)
    {
      EcorePlugin.INSTANCE.log(exception);
    }
    return new Bug288734TestLanguageFactoryImpl();
  }

  /**
   * Creates an instance of the factory.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public Bug288734TestLanguageFactoryImpl()
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
      case Bug288734TestLanguagePackage.MODEL: return createModel();
      case Bug288734TestLanguagePackage.TCONSTANT: return createTConstant();
      case Bug288734TestLanguagePackage.TSTRING_CONSTANT: return createTStringConstant();
      case Bug288734TestLanguagePackage.TINTEGER_CONSTANT: return createTIntegerConstant();
      case Bug288734TestLanguagePackage.TBOOLEAN_CONSTANT: return createTBooleanConstant();
      case Bug288734TestLanguagePackage.TANNOTATION: return createTAnnotation();
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
  public Model createModel()
  {
    ModelImpl model = new ModelImpl();
    return model;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public TConstant createTConstant()
  {
    TConstantImpl tConstant = new TConstantImpl();
    return tConstant;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public TStringConstant createTStringConstant()
  {
    TStringConstantImpl tStringConstant = new TStringConstantImpl();
    return tStringConstant;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public TIntegerConstant createTIntegerConstant()
  {
    TIntegerConstantImpl tIntegerConstant = new TIntegerConstantImpl();
    return tIntegerConstant;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public TBooleanConstant createTBooleanConstant()
  {
    TBooleanConstantImpl tBooleanConstant = new TBooleanConstantImpl();
    return tBooleanConstant;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public TAnnotation createTAnnotation()
  {
    TAnnotationImpl tAnnotation = new TAnnotationImpl();
    return tAnnotation;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Bug288734TestLanguagePackage getBug288734TestLanguagePackage()
  {
    return (Bug288734TestLanguagePackage)getEPackage();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @deprecated
   * @generated
   */
  @Deprecated
  public static Bug288734TestLanguagePackage getPackage()
  {
    return Bug288734TestLanguagePackage.eINSTANCE;
  }

} //Bug288734TestLanguageFactoryImpl

/**
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 * 
 * SPDX-License-Identifier: EPL-2.0
 */
package org.eclipse.xtext.ui.tests.testlanguages.referenceGrammarUi.impl;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;

import org.eclipse.emf.ecore.impl.EFactoryImpl;

import org.eclipse.emf.ecore.plugin.EcorePlugin;

import org.eclipse.xtext.ui.tests.testlanguages.referenceGrammarUi.*;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model <b>Factory</b>.
 * <!-- end-user-doc -->
 * @generated
 */
public class ReferenceGrammarUiFactoryImpl extends EFactoryImpl implements ReferenceGrammarUiFactory
{
  /**
   * Creates the default factory implementation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public static ReferenceGrammarUiFactory init()
  {
    try
    {
      ReferenceGrammarUiFactory theReferenceGrammarUiFactory = (ReferenceGrammarUiFactory)EPackage.Registry.INSTANCE.getEFactory(ReferenceGrammarUiPackage.eNS_URI);
      if (theReferenceGrammarUiFactory != null)
      {
        return theReferenceGrammarUiFactory;
      }
    }
    catch (Exception exception)
    {
      EcorePlugin.INSTANCE.log(exception);
    }
    return new ReferenceGrammarUiFactoryImpl();
  }

  /**
   * Creates an instance of the factory.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public ReferenceGrammarUiFactoryImpl()
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
      case ReferenceGrammarUiPackage.SPIELPLATZ: return createSpielplatz();
      case ReferenceGrammarUiPackage.PERSON: return createPerson();
      case ReferenceGrammarUiPackage.KIND: return createKind();
      case ReferenceGrammarUiPackage.ERWACHSENER: return createErwachsener();
      case ReferenceGrammarUiPackage.SPIELZEUG: return createSpielzeug();
      case ReferenceGrammarUiPackage.FARBE: return createFarbe();
      case ReferenceGrammarUiPackage.FAMILIE: return createFamilie();
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
  public Spielplatz createSpielplatz()
  {
    SpielplatzImpl spielplatz = new SpielplatzImpl();
    return spielplatz;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Person createPerson()
  {
    PersonImpl person = new PersonImpl();
    return person;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Kind createKind()
  {
    KindImpl kind = new KindImpl();
    return kind;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Erwachsener createErwachsener()
  {
    ErwachsenerImpl erwachsener = new ErwachsenerImpl();
    return erwachsener;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Spielzeug createSpielzeug()
  {
    SpielzeugImpl spielzeug = new SpielzeugImpl();
    return spielzeug;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Farbe createFarbe()
  {
    FarbeImpl farbe = new FarbeImpl();
    return farbe;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Familie createFamilie()
  {
    FamilieImpl familie = new FamilieImpl();
    return familie;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public ReferenceGrammarUiPackage getReferenceGrammarUiPackage()
  {
    return (ReferenceGrammarUiPackage)getEPackage();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @deprecated
   * @generated
   */
  @Deprecated
  public static ReferenceGrammarUiPackage getPackage()
  {
    return ReferenceGrammarUiPackage.eINSTANCE;
  }

} //ReferenceGrammarUiFactoryImpl

/**
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 * 
 * SPDX-License-Identifier: EPL-2.0
 */
package org.eclipse.xtext.ui.tests.testlanguages.contentAssistTestLanguage.impl;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;

import org.eclipse.emf.ecore.impl.EFactoryImpl;

import org.eclipse.emf.ecore.plugin.EcorePlugin;

import org.eclipse.xtext.ui.tests.testlanguages.contentAssistTestLanguage.*;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model <b>Factory</b>.
 * <!-- end-user-doc -->
 * @generated
 */
public class ContentAssistTestLanguageFactoryImpl extends EFactoryImpl implements ContentAssistTestLanguageFactory
{
  /**
   * Creates the default factory implementation.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public static ContentAssistTestLanguageFactory init()
  {
    try
    {
      ContentAssistTestLanguageFactory theContentAssistTestLanguageFactory = (ContentAssistTestLanguageFactory)EPackage.Registry.INSTANCE.getEFactory(ContentAssistTestLanguagePackage.eNS_URI);
      if (theContentAssistTestLanguageFactory != null)
      {
        return theContentAssistTestLanguageFactory;
      }
    }
    catch (Exception exception)
    {
      EcorePlugin.INSTANCE.log(exception);
    }
    return new ContentAssistTestLanguageFactoryImpl();
  }

  /**
   * Creates an instance of the factory.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public ContentAssistTestLanguageFactoryImpl()
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
      case ContentAssistTestLanguagePackage.START: return createStart();
      case ContentAssistTestLanguagePackage.ABSTRACT_RULE: return createAbstractRule();
      case ContentAssistTestLanguagePackage.FIRST_ABSTRACT_RULE_CHILD: return createFirstAbstractRuleChild();
      case ContentAssistTestLanguagePackage.SECOND_ABSTRACT_RULE_CHILD: return createSecondAbstractRuleChild();
      case ContentAssistTestLanguagePackage.ABSTRACT_RULE_CALL: return createAbstractRuleCall();
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
  public Start createStart()
  {
    StartImpl start = new StartImpl();
    return start;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public AbstractRule createAbstractRule()
  {
    AbstractRuleImpl abstractRule = new AbstractRuleImpl();
    return abstractRule;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public FirstAbstractRuleChild createFirstAbstractRuleChild()
  {
    FirstAbstractRuleChildImpl firstAbstractRuleChild = new FirstAbstractRuleChildImpl();
    return firstAbstractRuleChild;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public SecondAbstractRuleChild createSecondAbstractRuleChild()
  {
    SecondAbstractRuleChildImpl secondAbstractRuleChild = new SecondAbstractRuleChildImpl();
    return secondAbstractRuleChild;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public AbstractRuleCall createAbstractRuleCall()
  {
    AbstractRuleCallImpl abstractRuleCall = new AbstractRuleCallImpl();
    return abstractRuleCall;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public ContentAssistTestLanguagePackage getContentAssistTestLanguagePackage()
  {
    return (ContentAssistTestLanguagePackage)getEPackage();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @deprecated
   * @generated
   */
  @Deprecated
  public static ContentAssistTestLanguagePackage getPackage()
  {
    return ContentAssistTestLanguagePackage.eINSTANCE;
  }

} //ContentAssistTestLanguageFactoryImpl

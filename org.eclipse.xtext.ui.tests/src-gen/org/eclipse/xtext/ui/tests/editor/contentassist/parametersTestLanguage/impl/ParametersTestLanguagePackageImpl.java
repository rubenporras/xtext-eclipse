/**
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 * 
 * SPDX-License-Identifier: EPL-2.0
 */
package org.eclipse.xtext.ui.tests.editor.contentassist.parametersTestLanguage.impl;

import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EReference;

import org.eclipse.emf.ecore.impl.EPackageImpl;

import org.eclipse.xtext.ui.tests.editor.contentassist.parametersTestLanguage.ParametersTestLanguageFactory;
import org.eclipse.xtext.ui.tests.editor.contentassist.parametersTestLanguage.ParametersTestLanguagePackage;
import org.eclipse.xtext.ui.tests.editor.contentassist.parametersTestLanguage.ParserRuleParameters;
import org.eclipse.xtext.ui.tests.editor.contentassist.parametersTestLanguage.Scenario;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model <b>Package</b>.
 * <!-- end-user-doc -->
 * @generated
 */
public class ParametersTestLanguagePackageImpl extends EPackageImpl implements ParametersTestLanguagePackage
{
  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass parserRuleParametersEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass scenarioEClass = null;

  /**
   * Creates an instance of the model <b>Package</b>, registered with
   * {@link org.eclipse.emf.ecore.EPackage.Registry EPackage.Registry} by the package
   * package URI value.
   * <p>Note: the correct way to create the package is via the static
   * factory method {@link #init init()}, which also performs
   * initialization of the package, or returns the registered package,
   * if one already exists.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see org.eclipse.emf.ecore.EPackage.Registry
   * @see org.eclipse.xtext.ui.tests.editor.contentassist.parametersTestLanguage.ParametersTestLanguagePackage#eNS_URI
   * @see #init()
   * @generated
   */
  private ParametersTestLanguagePackageImpl()
  {
    super(eNS_URI, ParametersTestLanguageFactory.eINSTANCE);
  }
  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private static boolean isInited = false;

  /**
   * Creates, registers, and initializes the <b>Package</b> for this model, and for any others upon which it depends.
   *
   * <p>This method is used to initialize {@link ParametersTestLanguagePackage#eINSTANCE} when that field is accessed.
   * Clients should not invoke it directly. Instead, they should simply access that field to obtain the package.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #eNS_URI
   * @see #createPackageContents()
   * @see #initializePackageContents()
   * @generated
   */
  public static ParametersTestLanguagePackage init()
  {
    if (isInited) return (ParametersTestLanguagePackage)EPackage.Registry.INSTANCE.getEPackage(ParametersTestLanguagePackage.eNS_URI);

    // Obtain or create and register package
    Object registeredParametersTestLanguagePackage = EPackage.Registry.INSTANCE.get(eNS_URI);
    ParametersTestLanguagePackageImpl theParametersTestLanguagePackage = registeredParametersTestLanguagePackage instanceof ParametersTestLanguagePackageImpl ? (ParametersTestLanguagePackageImpl)registeredParametersTestLanguagePackage : new ParametersTestLanguagePackageImpl();

    isInited = true;

    // Create package meta-data objects
    theParametersTestLanguagePackage.createPackageContents();

    // Initialize created meta-data
    theParametersTestLanguagePackage.initializePackageContents();

    // Mark meta-data to indicate it can't be changed
    theParametersTestLanguagePackage.freeze();

    // Update the registry and return the package
    EPackage.Registry.INSTANCE.put(ParametersTestLanguagePackage.eNS_URI, theParametersTestLanguagePackage);
    return theParametersTestLanguagePackage;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public EClass getParserRuleParameters()
  {
    return parserRuleParametersEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public EReference getParserRuleParameters_Scenario()
  {
    return (EReference)parserRuleParametersEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public EClass getScenario()
  {
    return scenarioEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public EAttribute getScenario_First()
  {
    return (EAttribute)scenarioEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public EAttribute getScenario_Second()
  {
    return (EAttribute)scenarioEClass.getEStructuralFeatures().get(1);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public ParametersTestLanguageFactory getParametersTestLanguageFactory()
  {
    return (ParametersTestLanguageFactory)getEFactoryInstance();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private boolean isCreated = false;

  /**
   * Creates the meta-model objects for the package.  This method is
   * guarded to have no affect on any invocation but its first.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void createPackageContents()
  {
    if (isCreated) return;
    isCreated = true;

    // Create classes and their features
    parserRuleParametersEClass = createEClass(PARSER_RULE_PARAMETERS);
    createEReference(parserRuleParametersEClass, PARSER_RULE_PARAMETERS__SCENARIO);

    scenarioEClass = createEClass(SCENARIO);
    createEAttribute(scenarioEClass, SCENARIO__FIRST);
    createEAttribute(scenarioEClass, SCENARIO__SECOND);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private boolean isInitialized = false;

  /**
   * Complete the initialization of the package and its meta-model.  This
   * method is guarded to have no affect on any invocation but its first.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public void initializePackageContents()
  {
    if (isInitialized) return;
    isInitialized = true;

    // Initialize package
    setName(eNAME);
    setNsPrefix(eNS_PREFIX);
    setNsURI(eNS_URI);

    // Create type parameters

    // Set bounds for type parameters

    // Add supertypes to classes

    // Initialize classes and features; add operations and parameters
    initEClass(parserRuleParametersEClass, ParserRuleParameters.class, "ParserRuleParameters", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEReference(getParserRuleParameters_Scenario(), this.getScenario(), null, "scenario", null, 0, 1, ParserRuleParameters.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, IS_COMPOSITE, !IS_RESOLVE_PROXIES, !IS_UNSETTABLE, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    initEClass(scenarioEClass, Scenario.class, "Scenario", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEAttribute(getScenario_First(), ecorePackage.getEString(), "first", null, 0, 1, Scenario.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);
    initEAttribute(getScenario_Second(), ecorePackage.getEString(), "second", null, 0, 1, Scenario.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    // Create resource
    createResource(eNS_URI);
  }

} //ParametersTestLanguagePackageImpl

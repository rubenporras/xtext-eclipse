/**
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 * 
 * SPDX-License-Identifier: EPL-2.0
 */
package org.eclipse.xtext.ui.tests.editor.contentassist.noTerminalExtension.impl;

import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EEnum;
import org.eclipse.emf.ecore.EPackage;

import org.eclipse.emf.ecore.impl.EPackageImpl;

import org.eclipse.xtext.ui.tests.editor.contentassist.noTerminalExtension.NoTerminalExtensionFactory;
import org.eclipse.xtext.ui.tests.editor.contentassist.noTerminalExtension.NoTerminalExtensionPackage;
import org.eclipse.xtext.ui.tests.editor.contentassist.noTerminalExtension.PolygonBasedNodeShape;
import org.eclipse.xtext.ui.tests.editor.contentassist.noTerminalExtension.PolygonBasedShape;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model <b>Package</b>.
 * <!-- end-user-doc -->
 * @generated
 */
public class NoTerminalExtensionPackageImpl extends EPackageImpl implements NoTerminalExtensionPackage
{
  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EClass polygonBasedShapeEClass = null;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  private EEnum polygonBasedNodeShapeEEnum = null;

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
   * @see org.eclipse.xtext.ui.tests.editor.contentassist.noTerminalExtension.NoTerminalExtensionPackage#eNS_URI
   * @see #init()
   * @generated
   */
  private NoTerminalExtensionPackageImpl()
  {
    super(eNS_URI, NoTerminalExtensionFactory.eINSTANCE);
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
   * <p>This method is used to initialize {@link NoTerminalExtensionPackage#eINSTANCE} when that field is accessed.
   * Clients should not invoke it directly. Instead, they should simply access that field to obtain the package.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #eNS_URI
   * @see #createPackageContents()
   * @see #initializePackageContents()
   * @generated
   */
  public static NoTerminalExtensionPackage init()
  {
    if (isInited) return (NoTerminalExtensionPackage)EPackage.Registry.INSTANCE.getEPackage(NoTerminalExtensionPackage.eNS_URI);

    // Obtain or create and register package
    Object registeredNoTerminalExtensionPackage = EPackage.Registry.INSTANCE.get(eNS_URI);
    NoTerminalExtensionPackageImpl theNoTerminalExtensionPackage = registeredNoTerminalExtensionPackage instanceof NoTerminalExtensionPackageImpl ? (NoTerminalExtensionPackageImpl)registeredNoTerminalExtensionPackage : new NoTerminalExtensionPackageImpl();

    isInited = true;

    // Create package meta-data objects
    theNoTerminalExtensionPackage.createPackageContents();

    // Initialize created meta-data
    theNoTerminalExtensionPackage.initializePackageContents();

    // Mark meta-data to indicate it can't be changed
    theNoTerminalExtensionPackage.freeze();

    // Update the registry and return the package
    EPackage.Registry.INSTANCE.put(NoTerminalExtensionPackage.eNS_URI, theNoTerminalExtensionPackage);
    return theNoTerminalExtensionPackage;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public EClass getPolygonBasedShape()
  {
    return polygonBasedShapeEClass;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public EAttribute getPolygonBasedShape_Shape()
  {
    return (EAttribute)polygonBasedShapeEClass.getEStructuralFeatures().get(0);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public EEnum getPolygonBasedNodeShape()
  {
    return polygonBasedNodeShapeEEnum;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public NoTerminalExtensionFactory getNoTerminalExtensionFactory()
  {
    return (NoTerminalExtensionFactory)getEFactoryInstance();
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
    polygonBasedShapeEClass = createEClass(POLYGON_BASED_SHAPE);
    createEAttribute(polygonBasedShapeEClass, POLYGON_BASED_SHAPE__SHAPE);

    // Create enums
    polygonBasedNodeShapeEEnum = createEEnum(POLYGON_BASED_NODE_SHAPE);
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
    initEClass(polygonBasedShapeEClass, PolygonBasedShape.class, "PolygonBasedShape", !IS_ABSTRACT, !IS_INTERFACE, IS_GENERATED_INSTANCE_CLASS);
    initEAttribute(getPolygonBasedShape_Shape(), this.getPolygonBasedNodeShape(), "shape", null, 0, -1, PolygonBasedShape.class, !IS_TRANSIENT, !IS_VOLATILE, IS_CHANGEABLE, !IS_UNSETTABLE, !IS_ID, !IS_UNIQUE, !IS_DERIVED, IS_ORDERED);

    // Initialize enums and add enum literals
    initEEnum(polygonBasedNodeShapeEEnum, PolygonBasedNodeShape.class, "PolygonBasedNodeShape");
    addEEnumLiteral(polygonBasedNodeShapeEEnum, PolygonBasedNodeShape.OCTAGON);
    addEEnumLiteral(polygonBasedNodeShapeEEnum, PolygonBasedNodeShape.OVAL);
    addEEnumLiteral(polygonBasedNodeShapeEEnum, PolygonBasedNodeShape.PARALLELOGRAM);
    addEEnumLiteral(polygonBasedNodeShapeEEnum, PolygonBasedNodeShape.PENTAGON);
    addEEnumLiteral(polygonBasedNodeShapeEEnum, PolygonBasedNodeShape.PLAIN);
    addEEnumLiteral(polygonBasedNodeShapeEEnum, PolygonBasedNodeShape.PLAINTEXT);
    addEEnumLiteral(polygonBasedNodeShapeEEnum, PolygonBasedNodeShape.POINT);
    addEEnumLiteral(polygonBasedNodeShapeEEnum, PolygonBasedNodeShape.POLYGON);
    addEEnumLiteral(polygonBasedNodeShapeEEnum, PolygonBasedNodeShape.PRIMERSITE);
    addEEnumLiteral(polygonBasedNodeShapeEEnum, PolygonBasedNodeShape.PROMOTER);
    addEEnumLiteral(polygonBasedNodeShapeEEnum, PolygonBasedNodeShape.PROTEASESITE);
    addEEnumLiteral(polygonBasedNodeShapeEEnum, PolygonBasedNodeShape.PROTEINSTAB);
    addEEnumLiteral(polygonBasedNodeShapeEEnum, PolygonBasedNodeShape.RARROW);
    addEEnumLiteral(polygonBasedNodeShapeEEnum, PolygonBasedNodeShape.RECORD);
    addEEnumLiteral(polygonBasedNodeShapeEEnum, PolygonBasedNodeShape.RECT);
    addEEnumLiteral(polygonBasedNodeShapeEEnum, PolygonBasedNodeShape.RECTANGLE);
    addEEnumLiteral(polygonBasedNodeShapeEEnum, PolygonBasedNodeShape.RESTRICTIONSITE);
    addEEnumLiteral(polygonBasedNodeShapeEEnum, PolygonBasedNodeShape.RIBOSITE);
    addEEnumLiteral(polygonBasedNodeShapeEEnum, PolygonBasedNodeShape.RNASTAB);
    addEEnumLiteral(polygonBasedNodeShapeEEnum, PolygonBasedNodeShape.RPROMOTER);

    // Create resource
    createResource(eNS_URI);
  }

} //NoTerminalExtensionPackageImpl

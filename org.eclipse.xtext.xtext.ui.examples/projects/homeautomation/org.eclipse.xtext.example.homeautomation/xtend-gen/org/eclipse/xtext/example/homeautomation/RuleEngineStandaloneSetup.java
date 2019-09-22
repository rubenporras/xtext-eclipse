/**
 * Copyright (c) 2015, 2019 itemis AG (http://www.itemis.eu) and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 */
package org.eclipse.xtext.example.homeautomation;

import org.eclipse.xtext.example.homeautomation.RuleEngineStandaloneSetupGenerated;

/**
 * Initialization support for running Xtext languages without Equinox extension registry.
 */
@SuppressWarnings("all")
public class RuleEngineStandaloneSetup extends RuleEngineStandaloneSetupGenerated {
  public static void doSetup() {
    new RuleEngineStandaloneSetup().createInjectorAndDoEMFRegistration();
  }
}

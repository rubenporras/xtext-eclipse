/*
 * generated by Xtext
 */
package org.eclipse.xtext.ui.tests.ide;

import org.eclipse.xtext.ui.tests.TestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.TestLanguageStandaloneSetup;
import org.eclipse.xtext.util.Modules2;

import com.google.inject.Guice;
import com.google.inject.Injector;

/**
 * Initialization support for running Xtext languages without Equinox extension registry.
 */
public class TestLanguageIdeSetup extends TestLanguageStandaloneSetup {

	@Override
	public Injector createInjector() {
		return Guice.createInjector(Modules2.mixin(new TestLanguageRuntimeModule(), new TestLanguageIdeModule()));
	}
}

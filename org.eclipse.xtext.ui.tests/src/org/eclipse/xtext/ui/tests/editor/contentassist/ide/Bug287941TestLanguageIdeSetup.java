/*
 * generated by Xtext
 */
package org.eclipse.xtext.ui.tests.editor.contentassist.ide;

import org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguageRuntimeModule;
import org.eclipse.xtext.ui.tests.editor.contentassist.Bug287941TestLanguageStandaloneSetup;
import org.eclipse.xtext.util.Modules2;

import com.google.inject.Guice;
import com.google.inject.Injector;

/**
 * Initialization support for running Xtext languages without Equinox extension registry.
 */
public class Bug287941TestLanguageIdeSetup extends Bug287941TestLanguageStandaloneSetup {

	@Override
	public Injector createInjector() {
		return Guice.createInjector(Modules2.mixin(new Bug287941TestLanguageRuntimeModule(), new Bug287941TestLanguageIdeModule()));
	}
}

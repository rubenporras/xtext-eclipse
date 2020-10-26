/*
 * generated by Xtext
 */
package org.eclipse.xtext.ui.tests.ui;

import com.google.inject.Injector;
import org.eclipse.xtext.ui.guice.AbstractGuiceAwareExecutableExtensionFactory;
import org.eclipse.xtext.ui.tests.internal.TestsActivator;
import org.osgi.framework.Bundle;
import org.osgi.framework.FrameworkUtil;

/**
 * This class was generated. Customizations should only happen in a newly
 * introduced subclass. 
 */
public class TestLanguageExecutableExtensionFactory extends AbstractGuiceAwareExecutableExtensionFactory {

	@Override
	protected Bundle getBundle() {
		return FrameworkUtil.getBundle(TestsActivator.class);
	}
	
	@Override
	protected Injector getInjector() {
		TestsActivator activator = TestsActivator.getInstance();
		return activator != null ? activator.getInjector(TestsActivator.ORG_ECLIPSE_XTEXT_UI_TESTS_TESTLANGUAGE) : null;
	}

}

/*******************************************************************************
 * Copyright (c) 2010 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
package org.eclipse.xtext.ui.util;

import org.eclipse.osgi.util.NLS;

/**
 * @author Jan Koehnlein - Initial contribution and API
 */
public class Messages extends NLS {
	private static final String BUNDLE_NAME = "org.eclipse.xtext.ui.util.messages"; //$NON-NLS-1$
	public static String JavaProjectFactory_ConfigureJavaProject;
	public static String ProjectFactory_0;
	public static String ProjectFactory_1;
	public static String ProjectFactory_2;
	public static String ProjectFactory_3;
	static {
		// initialize resource bundle
		NLS.initializeMessages(BUNDLE_NAME, Messages.class);
	}

	private Messages() {
	}
}

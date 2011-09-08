/*******************************************************************************
 * Copyright (c) 2011 itemis AG (http://www.itemis.eu) and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *******************************************************************************/
package org.eclipse.xtext.ui.refactoring.impl;

import java.util.List;

import org.eclipse.emf.ecore.EAttribute;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.text.edits.ReplaceEdit;
import org.eclipse.text.edits.TextEdit;
import org.eclipse.xtext.RuleCall;
import org.eclipse.xtext.conversion.IValueConverterService;
import org.eclipse.xtext.nodemodel.INode;
import org.eclipse.xtext.nodemodel.util.NodeModelUtils;
import org.eclipse.xtext.resource.ILocationInFileProvider;
import org.eclipse.xtext.ui.refactoring.IRefactoringUpdateAcceptor;
import org.eclipse.xtext.ui.refactoring.ui.IRenameElementContext;
import org.eclipse.xtext.util.ITextRegion;

import com.google.inject.Inject;

/**
 * Default rename strategy for Xtext based elements that have an {@link EAttribute} <code>name</code>.
 * 
 * @author Jan Koehnlein - Initial contribution and API
 * @author Holger Schill
 */
public class DefaultRenameStrategy extends AbstractRenameStrategy {

	@Inject
	private ILocationInFileProvider locationInFileProvider;

	@Inject
	private IValueConverterService valueConverterService;

	protected ITextRegion originalNameRegion;

	protected String nameRuleName;

	@Override
	public boolean initialize(EObject targetElement, IRenameElementContext context) {
		if (super.initialize(targetElement, context)) {
			this.originalNameRegion = getOriginalNameRegion(targetElement, getNameAttribute());
			this.nameRuleName = getNameRuleName(targetElement, getNameAttribute());
			return true;
		}
		return false;
	}

	protected ITextRegion getOriginalNameRegion(final EObject targetElement, EAttribute nameAttribute) {
		return locationInFileProvider.getFullTextRegion(targetElement, nameAttribute, 0);
	}

	protected String getNameRuleName(EObject targetElement, EAttribute nameAttribute) {
		List<INode> nameNodes = NodeModelUtils.findNodesForFeature(targetElement, nameAttribute);
		if (nameNodes.size() != 1 || !(nameNodes.get(0).getGrammarElement() instanceof RuleCall)) {
			return null;
		}
		return ((RuleCall) nameNodes.get(0).getGrammarElement()).getRule().getName();
	}

	public void createDeclarationUpdates(String newName, ResourceSet resourceSet,
			IRefactoringUpdateAcceptor updateAcceptor) {
		updateAcceptor.accept(getTargetElementOriginalURI().trimFragment(), getDeclarationTextEdit(newName));
	}

	protected TextEdit getDeclarationTextEdit(String newName) {
		String text = newName;
		return new ReplaceEdit(originalNameRegion.getOffset(), originalNameRegion.getLength(), text);
	}

	protected String getNameAsText(String nameAsValue) {
		return (nameRuleName != null) ? valueConverterService.toString(nameAsValue, nameRuleName) : nameAsValue;
	}

	protected String getNameAsValue(String nameAsText) {
		return (nameRuleName != null) ? valueConverterService.toValue(nameAsText, nameRuleName, null).toString()
				: nameAsText;
	}

	@Override
	public String getOriginalName() {
		return getNameAsText(super.getOriginalName());
	}

	@Override
	public void applyDeclarationChange(String newName, ResourceSet resourceSet) {
		super.applyDeclarationChange(getNameAsValue(newName), resourceSet);
	}

}

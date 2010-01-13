/*
 * generated by Xtext
 */
package org.eclipse.xtext.example.gmf.formatting;

import org.eclipse.xtext.example.gmf.services.EntitiesGrammarAccess;
import org.eclipse.xtext.formatting.impl.AbstractDeclarativeFormatter;
import org.eclipse.xtext.formatting.impl.FormattingConfig;

/**
 * This class contains custom formatting description.
 * 
 * see : http://wiki.eclipse.org/Xtext/Documentation#Formatting
 * on how and when to use it 
 * 
 * Also see {@link org.eclipse.xtext.xtext.XtextFormattingTokenSerializer} as an example
 */
public class EntitiesFormatter extends AbstractDeclarativeFormatter {
	
	@Override
	protected void configureFormatting(FormattingConfig c) {
		EntitiesGrammarAccess f = (EntitiesGrammarAccess) getGrammarAccess();
		c.setLinewrap(2).after(f.getSimpleTypeAccess().getNameAssignment_1());
		c.setLinewrap(1).after(f.getEntityAccess().getLeftCurlyBracketKeyword_3());
		c.setLinewrap(2).after(f.getEntityAccess().getRightCurlyBracketKeyword_5());
		c.setLinewrap().after(f.getSimplePropertyAccess().getTypeAssignment_2_1());
		c.setLinewrap().after(f.getReferenceAccess().getTypeEntityCrossReference_3_0());
		c.setIndentation(f.getEntityAccess().getLeftCurlyBracketKeyword_3(), f.getEntityAccess().getRightCurlyBracketKeyword_5());
	}
}

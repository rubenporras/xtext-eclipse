/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
grammar InternalBacktrackingContentAssistTestLanguage;

options {
	superClass=AbstractInternalAntlrParser;
	backtrack=true;
}

@lexer::header {
package org.eclipse.xtext.ui.tests.editor.contentassist.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package org.eclipse.xtext.ui.tests.editor.contentassist.parser.antlr.internal;

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.eclipse.xtext.ui.tests.editor.contentassist.services.BacktrackingContentAssistTestLanguageGrammarAccess;

}

@parser::members {

/*
  This grammar contains a lot of empty actions to work around a bug in ANTLR.
  Otherwise the ANTLR tool will create synpreds that cannot be compiled in some rare cases.
*/

 	private BacktrackingContentAssistTestLanguageGrammarAccess grammarAccess;

    public InternalBacktrackingContentAssistTestLanguageParser(TokenStream input, BacktrackingContentAssistTestLanguageGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "Document";
   	}

   	@Override
   	protected BacktrackingContentAssistTestLanguageGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}

}

@rulecatch {
    catch (RecognitionException re) {
        recover(input,re);
        appendSkippedTokens();
    }
}

// Entry rule entryRuleDocument
entryRuleDocument returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getDocumentRule()); }
	iv_ruleDocument=ruleDocument
	{ $current=$iv_ruleDocument.current; }
	EOF;

// Rule Document
ruleDocument returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					newCompositeNode(grammarAccess.getDocumentAccess().getPackagesPackageDeclarationParserRuleCall_0_0());
				}
				lv_packages_0_0=rulePackageDeclaration
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getDocumentRule());
					}
					add(
						$current,
						"packages",
						lv_packages_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.PackageDeclaration");
					afterParserOrEnumRuleCall();
				}
			)
		)
		    |
		(
			(
				{
					newCompositeNode(grammarAccess.getDocumentAccess().getContextsContextDeclParserRuleCall_1_0());
				}
				lv_contexts_1_0=ruleContextDecl
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getDocumentRule());
					}
					add(
						$current,
						"contexts",
						lv_contexts_1_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.ContextDecl");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)*
;

// Entry rule entryRuleBody
entryRuleBody returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getBodyRule()); }
	iv_ruleBody=ruleBody
	{ $current=$iv_ruleBody.current; }
	EOF;

// Rule Body
ruleBody returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='body'
		{
			newLeafNode(otherlv_0, grammarAccess.getBodyAccess().getBodyKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getBodyAccess().getConstraintNameIdentifierParserRuleCall_1_0());
				}
				lv_constraintName_1_0=ruleIdentifier
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getBodyRule());
					}
					set(
						$current,
						"constraintName",
						lv_constraintName_1_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Identifier");
					afterParserOrEnumRuleCall();
				}
			)
		)?
		otherlv_2=':'
		{
			newLeafNode(otherlv_2, grammarAccess.getBodyAccess().getColonKeyword_2());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getBodyAccess().getExpressionExpressionParserRuleCall_3_0());
				}
				lv_expression_3_0=ruleExpression
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getBodyRule());
					}
					set(
						$current,
						"expression",
						lv_expression_3_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Expression");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleClassifierContextDecl
entryRuleClassifierContextDecl returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getClassifierContextDeclRule()); }
	iv_ruleClassifierContextDecl=ruleClassifierContextDecl
	{ $current=$iv_ruleClassifierContextDecl.current; }
	EOF;

// Rule ClassifierContextDecl
ruleClassifierContextDecl returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='context'
		{
			newLeafNode(otherlv_0, grammarAccess.getClassifierContextDeclAccess().getContextKeyword_0());
		}
		(
			(
				(
					{
						newCompositeNode(grammarAccess.getClassifierContextDeclAccess().getSelfNameIdentifierParserRuleCall_1_0_0());
					}
					lv_selfName_1_0=ruleIdentifier
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getClassifierContextDeclRule());
						}
						set(
							$current,
							"selfName",
							lv_selfName_1_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Identifier");
						afterParserOrEnumRuleCall();
					}
				)
			)
			otherlv_2=':'
			{
				newLeafNode(otherlv_2, grammarAccess.getClassifierContextDeclAccess().getColonKeyword_1_1());
			}
		)?
		(
			(
				{
					newCompositeNode(grammarAccess.getClassifierContextDeclAccess().getClassifierClassifierRefParserRuleCall_2_0());
				}
				lv_classifier_3_0=ruleClassifierRef
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getClassifierContextDeclRule());
					}
					set(
						$current,
						"classifier",
						lv_classifier_3_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.ClassifierRef");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			(
				(
					{
						newCompositeNode(grammarAccess.getClassifierContextDeclAccess().getInvariantsInvariantParserRuleCall_3_0_0());
					}
					lv_invariants_4_0=ruleInvariant
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getClassifierContextDeclRule());
						}
						add(
							$current,
							"invariants",
							lv_invariants_4_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Invariant");
						afterParserOrEnumRuleCall();
					}
				)
			)
			    |
			(
				(
					{
						newCompositeNode(grammarAccess.getClassifierContextDeclAccess().getDefinitionsDefinitionParserRuleCall_3_1_0());
					}
					lv_definitions_5_0=ruleDefinition
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getClassifierContextDeclRule());
						}
						add(
							$current,
							"definitions",
							lv_definitions_5_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Definition");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)*
	)
;

// Entry rule entryRuleClassifierRef
entryRuleClassifierRef returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getClassifierRefRule()); }
	iv_ruleClassifierRef=ruleClassifierRef
	{ $current=$iv_ruleClassifierRef.current; }
	EOF;

// Rule ClassifierRef
ruleClassifierRef returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getClassifierRefAccess().getQualifiedClassifierRefParserRuleCall_0());
		}
		this_QualifiedClassifierRef_0=ruleQualifiedClassifierRef
		{
			$current = $this_QualifiedClassifierRef_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getClassifierRefAccess().getSimpleClassifierRefParserRuleCall_1());
		}
		this_SimpleClassifierRef_1=ruleSimpleClassifierRef
		{
			$current = $this_SimpleClassifierRef_1.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleContextDecl
entryRuleContextDecl returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getContextDeclRule()); }
	iv_ruleContextDecl=ruleContextDecl
	{ $current=$iv_ruleContextDecl.current; }
	EOF;

// Rule ContextDecl
ruleContextDecl returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getContextDeclAccess().getPropertyContextDeclParserRuleCall_0());
		}
		this_PropertyContextDecl_0=rulePropertyContextDecl
		{
			$current = $this_PropertyContextDecl_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getContextDeclAccess().getClassifierContextDeclParserRuleCall_1());
		}
		this_ClassifierContextDecl_1=ruleClassifierContextDecl
		{
			$current = $this_ClassifierContextDecl_1.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getContextDeclAccess().getOperationContextDeclParserRuleCall_2());
		}
		this_OperationContextDecl_2=ruleOperationContextDecl
		{
			$current = $this_OperationContextDecl_2.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleDefinition
entryRuleDefinition returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getDefinitionRule()); }
	iv_ruleDefinition=ruleDefinition
	{ $current=$iv_ruleDefinition.current; }
	EOF;

// Rule Definition
ruleDefinition returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				lv_static_0_0='static'
				{
					newLeafNode(lv_static_0_0, grammarAccess.getDefinitionAccess().getStaticStaticKeyword_0_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getDefinitionRule());
					}
					setWithLastConsumed($current, "static", lv_static_0_0 != null, "static");
				}
			)
		)?
		otherlv_1='def'
		{
			newLeafNode(otherlv_1, grammarAccess.getDefinitionAccess().getDefKeyword_1());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getDefinitionAccess().getConstraintNameIdentifierParserRuleCall_2_0());
				}
				lv_constraintName_2_0=ruleIdentifier
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getDefinitionRule());
					}
					set(
						$current,
						"constraintName",
						lv_constraintName_2_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Identifier");
					afterParserOrEnumRuleCall();
				}
			)
		)?
		otherlv_3=':'
		{
			newLeafNode(otherlv_3, grammarAccess.getDefinitionAccess().getColonKeyword_3());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getDefinitionAccess().getConstrainedNameIdentifierParserRuleCall_4_0());
				}
				lv_constrainedName_4_0=ruleIdentifier
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getDefinitionRule());
					}
					set(
						$current,
						"constrainedName",
						lv_constrainedName_4_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Identifier");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			otherlv_5='('
			{
				newLeafNode(otherlv_5, grammarAccess.getDefinitionAccess().getLeftParenthesisKeyword_5_0());
			}
			(
				(
					(
						{
							newCompositeNode(grammarAccess.getDefinitionAccess().getParametersParameterParserRuleCall_5_1_0_0());
						}
						lv_parameters_6_0=ruleParameter
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getDefinitionRule());
							}
							add(
								$current,
								"parameters",
								lv_parameters_6_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Parameter");
							afterParserOrEnumRuleCall();
						}
					)
				)
				(
					otherlv_7=','
					{
						newLeafNode(otherlv_7, grammarAccess.getDefinitionAccess().getCommaKeyword_5_1_1_0());
					}
					(
						(
							{
								newCompositeNode(grammarAccess.getDefinitionAccess().getParametersParameterParserRuleCall_5_1_1_1_0());
							}
							lv_parameters_8_0=ruleParameter
							{
								if ($current==null) {
									$current = createModelElementForParent(grammarAccess.getDefinitionRule());
								}
								add(
									$current,
									"parameters",
									lv_parameters_8_0,
									"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Parameter");
								afterParserOrEnumRuleCall();
							}
						)
					)
				)*
			)?
			otherlv_9=')'
			{
				newLeafNode(otherlv_9, grammarAccess.getDefinitionAccess().getRightParenthesisKeyword_5_2());
			}
		)?
		otherlv_10=':'
		{
			newLeafNode(otherlv_10, grammarAccess.getDefinitionAccess().getColonKeyword_6());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getDefinitionAccess().getTypeTypeExpParserRuleCall_7_0());
				}
				lv_type_11_0=ruleTypeExp
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getDefinitionRule());
					}
					set(
						$current,
						"type",
						lv_type_11_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.TypeExp");
					afterParserOrEnumRuleCall();
				}
			)
		)?
		otherlv_12='='
		{
			newLeafNode(otherlv_12, grammarAccess.getDefinitionAccess().getEqualsSignKeyword_8());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getDefinitionAccess().getExpressionExpressionParserRuleCall_9_0());
				}
				lv_expression_13_0=ruleExpression
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getDefinitionRule());
					}
					set(
						$current,
						"expression",
						lv_expression_13_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Expression");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleDer
entryRuleDer returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getDerRule()); }
	iv_ruleDer=ruleDer
	{ $current=$iv_ruleDer.current; }
	EOF;

// Rule Der
ruleDer returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='derive'
		{
			newLeafNode(otherlv_0, grammarAccess.getDerAccess().getDeriveKeyword_0());
		}
		otherlv_1=':'
		{
			newLeafNode(otherlv_1, grammarAccess.getDerAccess().getColonKeyword_1());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getDerAccess().getExpressionExpressionParserRuleCall_2_0());
				}
				lv_expression_2_0=ruleExpression
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getDerRule());
					}
					set(
						$current,
						"expression",
						lv_expression_2_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Expression");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleInit
entryRuleInit returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getInitRule()); }
	iv_ruleInit=ruleInit
	{ $current=$iv_ruleInit.current; }
	EOF;

// Rule Init
ruleInit returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='init'
		{
			newLeafNode(otherlv_0, grammarAccess.getInitAccess().getInitKeyword_0());
		}
		otherlv_1=':'
		{
			newLeafNode(otherlv_1, grammarAccess.getInitAccess().getColonKeyword_1());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getInitAccess().getExpressionExpressionParserRuleCall_2_0());
				}
				lv_expression_2_0=ruleExpression
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getInitRule());
					}
					set(
						$current,
						"expression",
						lv_expression_2_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Expression");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleInvariant
entryRuleInvariant returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getInvariantRule()); }
	iv_ruleInvariant=ruleInvariant
	{ $current=$iv_ruleInvariant.current; }
	EOF;

// Rule Invariant
ruleInvariant returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='inv'
		{
			newLeafNode(otherlv_0, grammarAccess.getInvariantAccess().getInvKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getInvariantAccess().getConstraintNameIdentifierParserRuleCall_1_0());
				}
				lv_constraintName_1_0=ruleIdentifier
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getInvariantRule());
					}
					set(
						$current,
						"constraintName",
						lv_constraintName_1_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Identifier");
					afterParserOrEnumRuleCall();
				}
			)
		)?
		otherlv_2=':'
		{
			newLeafNode(otherlv_2, grammarAccess.getInvariantAccess().getColonKeyword_2());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getInvariantAccess().getExpressionExpressionParserRuleCall_3_0());
				}
				lv_expression_3_0=ruleExpression
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getInvariantRule());
					}
					set(
						$current,
						"expression",
						lv_expression_3_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Expression");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleOperationContextDecl
entryRuleOperationContextDecl returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getOperationContextDeclRule()); }
	iv_ruleOperationContextDecl=ruleOperationContextDecl
	{ $current=$iv_ruleOperationContextDecl.current; }
	EOF;

// Rule OperationContextDecl
ruleOperationContextDecl returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='context'
		{
			newLeafNode(otherlv_0, grammarAccess.getOperationContextDeclAccess().getContextKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getOperationContextDeclAccess().getOperationOperationRefParserRuleCall_1_0());
				}
				lv_operation_1_0=ruleOperationRef
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getOperationContextDeclRule());
					}
					set(
						$current,
						"operation",
						lv_operation_1_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.OperationRef");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_2='('
		{
			newLeafNode(otherlv_2, grammarAccess.getOperationContextDeclAccess().getLeftParenthesisKeyword_2());
		}
		(
			(
				(
					{
						newCompositeNode(grammarAccess.getOperationContextDeclAccess().getParametersParameterParserRuleCall_3_0_0());
					}
					lv_parameters_3_0=ruleParameter
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getOperationContextDeclRule());
						}
						add(
							$current,
							"parameters",
							lv_parameters_3_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Parameter");
						afterParserOrEnumRuleCall();
					}
				)
			)
			(
				otherlv_4=','
				{
					newLeafNode(otherlv_4, grammarAccess.getOperationContextDeclAccess().getCommaKeyword_3_1_0());
				}
				(
					(
						{
							newCompositeNode(grammarAccess.getOperationContextDeclAccess().getParametersParameterParserRuleCall_3_1_1_0());
						}
						lv_parameters_5_0=ruleParameter
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getOperationContextDeclRule());
							}
							add(
								$current,
								"parameters",
								lv_parameters_5_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Parameter");
							afterParserOrEnumRuleCall();
						}
					)
				)
			)*
		)?
		otherlv_6=')'
		{
			newLeafNode(otherlv_6, grammarAccess.getOperationContextDeclAccess().getRightParenthesisKeyword_4());
		}
		otherlv_7=':'
		{
			newLeafNode(otherlv_7, grammarAccess.getOperationContextDeclAccess().getColonKeyword_5());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getOperationContextDeclAccess().getTypeTypeExpParserRuleCall_6_0());
				}
				lv_type_8_0=ruleTypeExp
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getOperationContextDeclRule());
					}
					set(
						$current,
						"type",
						lv_type_8_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.TypeExp");
					afterParserOrEnumRuleCall();
				}
			)
		)?
		(
			(
				(
					{
						newCompositeNode(grammarAccess.getOperationContextDeclAccess().getPresPreParserRuleCall_7_0_0());
					}
					lv_pres_9_0=rulePre
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getOperationContextDeclRule());
						}
						add(
							$current,
							"pres",
							lv_pres_9_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Pre");
						afterParserOrEnumRuleCall();
					}
				)
			)
			    |
			(
				(
					{
						newCompositeNode(grammarAccess.getOperationContextDeclAccess().getPostsPostParserRuleCall_7_1_0());
					}
					lv_posts_10_0=rulePost
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getOperationContextDeclRule());
						}
						add(
							$current,
							"posts",
							lv_posts_10_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Post");
						afterParserOrEnumRuleCall();
					}
				)
			)
			    |
			(
				(
					{
						newCompositeNode(grammarAccess.getOperationContextDeclAccess().getBodiesBodyParserRuleCall_7_2_0());
					}
					lv_bodies_11_0=ruleBody
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getOperationContextDeclRule());
						}
						add(
							$current,
							"bodies",
							lv_bodies_11_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Body");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)*
	)
;

// Entry rule entryRuleOperationRef
entryRuleOperationRef returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getOperationRefRule()); }
	iv_ruleOperationRef=ruleOperationRef
	{ $current=$iv_ruleOperationRef.current; }
	EOF;

// Rule OperationRef
ruleOperationRef returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getOperationRefAccess().getQualifiedOperationRefParserRuleCall_0());
		}
		this_QualifiedOperationRef_0=ruleQualifiedOperationRef
		{
			$current = $this_QualifiedOperationRef_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getOperationRefAccess().getSimpleOperationRefParserRuleCall_1());
		}
		this_SimpleOperationRef_1=ruleSimpleOperationRef
		{
			$current = $this_SimpleOperationRef_1.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRulePackageDeclaration
entryRulePackageDeclaration returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getPackageDeclarationRule()); }
	iv_rulePackageDeclaration=rulePackageDeclaration
	{ $current=$iv_rulePackageDeclaration.current; }
	EOF;

// Rule PackageDeclaration
rulePackageDeclaration returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='package'
		{
			newLeafNode(otherlv_0, grammarAccess.getPackageDeclarationAccess().getPackageKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getPackageDeclarationAccess().getPackagePackageRefParserRuleCall_1_0());
				}
				lv_package_1_0=rulePackageRef
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getPackageDeclarationRule());
					}
					set(
						$current,
						"package",
						lv_package_1_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.PackageRef");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getPackageDeclarationAccess().getContextsContextDeclParserRuleCall_2_0());
				}
				lv_contexts_2_0=ruleContextDecl
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getPackageDeclarationRule());
					}
					add(
						$current,
						"contexts",
						lv_contexts_2_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.ContextDecl");
					afterParserOrEnumRuleCall();
				}
			)
		)*
		otherlv_3='endpackage'
		{
			newLeafNode(otherlv_3, grammarAccess.getPackageDeclarationAccess().getEndpackageKeyword_3());
		}
	)
;

// Entry rule entryRulePackageRef
entryRulePackageRef returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getPackageRefRule()); }
	iv_rulePackageRef=rulePackageRef
	{ $current=$iv_rulePackageRef.current; }
	EOF;

// Rule PackageRef
rulePackageRef returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getPackageRefAccess().getQualifiedPackageRefParserRuleCall_0());
		}
		this_QualifiedPackageRef_0=ruleQualifiedPackageRef
		{
			$current = $this_QualifiedPackageRef_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getPackageRefAccess().getSimplePackageRefParserRuleCall_1());
		}
		this_SimplePackageRef_1=ruleSimplePackageRef
		{
			$current = $this_SimplePackageRef_1.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleParameter
entryRuleParameter returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getParameterRule()); }
	iv_ruleParameter=ruleParameter
	{ $current=$iv_ruleParameter.current; }
	EOF;

// Rule Parameter
ruleParameter returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				(
					{
						newCompositeNode(grammarAccess.getParameterAccess().getNameIdentifierParserRuleCall_0_0_0());
					}
					lv_name_0_0=ruleIdentifier
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getParameterRule());
						}
						set(
							$current,
							"name",
							lv_name_0_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Identifier");
						afterParserOrEnumRuleCall();
					}
				)
			)
			otherlv_1=':'
			{
				newLeafNode(otherlv_1, grammarAccess.getParameterAccess().getColonKeyword_0_1());
			}
		)?
		(
			(
				{
					newCompositeNode(grammarAccess.getParameterAccess().getTypeTypeExpParserRuleCall_1_0());
				}
				lv_type_2_0=ruleTypeExp
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getParameterRule());
					}
					set(
						$current,
						"type",
						lv_type_2_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.TypeExp");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRulePost
entryRulePost returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getPostRule()); }
	iv_rulePost=rulePost
	{ $current=$iv_rulePost.current; }
	EOF;

// Rule Post
rulePost returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='post'
		{
			newLeafNode(otherlv_0, grammarAccess.getPostAccess().getPostKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getPostAccess().getConstraintNameIdentifierParserRuleCall_1_0());
				}
				lv_constraintName_1_0=ruleIdentifier
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getPostRule());
					}
					set(
						$current,
						"constraintName",
						lv_constraintName_1_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Identifier");
					afterParserOrEnumRuleCall();
				}
			)
		)?
		otherlv_2=':'
		{
			newLeafNode(otherlv_2, grammarAccess.getPostAccess().getColonKeyword_2());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getPostAccess().getExpressionExpressionParserRuleCall_3_0());
				}
				lv_expression_3_0=ruleExpression
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getPostRule());
					}
					set(
						$current,
						"expression",
						lv_expression_3_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Expression");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRulePre
entryRulePre returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getPreRule()); }
	iv_rulePre=rulePre
	{ $current=$iv_rulePre.current; }
	EOF;

// Rule Pre
rulePre returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='pre'
		{
			newLeafNode(otherlv_0, grammarAccess.getPreAccess().getPreKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getPreAccess().getConstraintNameIdentifierParserRuleCall_1_0());
				}
				lv_constraintName_1_0=ruleIdentifier
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getPreRule());
					}
					set(
						$current,
						"constraintName",
						lv_constraintName_1_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Identifier");
					afterParserOrEnumRuleCall();
				}
			)
		)?
		otherlv_2=':'
		{
			newLeafNode(otherlv_2, grammarAccess.getPreAccess().getColonKeyword_2());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getPreAccess().getExpressionExpressionParserRuleCall_3_0());
				}
				lv_expression_3_0=ruleExpression
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getPreRule());
					}
					set(
						$current,
						"expression",
						lv_expression_3_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Expression");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRulePropertyContextDecl
entryRulePropertyContextDecl returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getPropertyContextDeclRule()); }
	iv_rulePropertyContextDecl=rulePropertyContextDecl
	{ $current=$iv_rulePropertyContextDecl.current; }
	EOF;

// Rule PropertyContextDecl
rulePropertyContextDecl returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='context'
		{
			newLeafNode(otherlv_0, grammarAccess.getPropertyContextDeclAccess().getContextKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getPropertyContextDeclAccess().getPropertyPropertyRefParserRuleCall_1_0());
				}
				lv_property_1_0=rulePropertyRef
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getPropertyContextDeclRule());
					}
					set(
						$current,
						"property",
						lv_property_1_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.PropertyRef");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_2=':'
		{
			newLeafNode(otherlv_2, grammarAccess.getPropertyContextDeclAccess().getColonKeyword_2());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getPropertyContextDeclAccess().getTypeTypeExpParserRuleCall_3_0());
				}
				lv_type_3_0=ruleTypeExp
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getPropertyContextDeclRule());
					}
					set(
						$current,
						"type",
						lv_type_3_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.TypeExp");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			(
				(
					(
						{
							newCompositeNode(grammarAccess.getPropertyContextDeclAccess().getInitInitParserRuleCall_4_0_0_0());
						}
						lv_init_4_0=ruleInit
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getPropertyContextDeclRule());
							}
							set(
								$current,
								"init",
								lv_init_4_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Init");
							afterParserOrEnumRuleCall();
						}
					)
				)
				(
					(
						{
							newCompositeNode(grammarAccess.getPropertyContextDeclAccess().getDerDerParserRuleCall_4_0_1_0());
						}
						lv_der_5_0=ruleDer
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getPropertyContextDeclRule());
							}
							set(
								$current,
								"der",
								lv_der_5_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Der");
							afterParserOrEnumRuleCall();
						}
					)
				)?
			)?
			    |
			(
				(
					(
						{
							newCompositeNode(grammarAccess.getPropertyContextDeclAccess().getDerDerParserRuleCall_4_1_0_0());
						}
						lv_der_6_0=ruleDer
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getPropertyContextDeclRule());
							}
							set(
								$current,
								"der",
								lv_der_6_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Der");
							afterParserOrEnumRuleCall();
						}
					)
				)
				(
					(
						{
							newCompositeNode(grammarAccess.getPropertyContextDeclAccess().getInitInitParserRuleCall_4_1_1_0());
						}
						lv_init_7_0=ruleInit
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getPropertyContextDeclRule());
							}
							set(
								$current,
								"init",
								lv_init_7_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Init");
							afterParserOrEnumRuleCall();
						}
					)
				)?
			)
		)
	)
;

// Entry rule entryRulePropertyRef
entryRulePropertyRef returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getPropertyRefRule()); }
	iv_rulePropertyRef=rulePropertyRef
	{ $current=$iv_rulePropertyRef.current; }
	EOF;

// Rule PropertyRef
rulePropertyRef returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getPropertyRefAccess().getQualifiedPropertyRefParserRuleCall_0());
		}
		this_QualifiedPropertyRef_0=ruleQualifiedPropertyRef
		{
			$current = $this_QualifiedPropertyRef_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getPropertyRefAccess().getSimplePropertyRefParserRuleCall_1());
		}
		this_SimplePropertyRef_1=ruleSimplePropertyRef
		{
			$current = $this_SimplePropertyRef_1.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleQualifiedClassifierRef
entryRuleQualifiedClassifierRef returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getQualifiedClassifierRefRule()); }
	iv_ruleQualifiedClassifierRef=ruleQualifiedClassifierRef
	{ $current=$iv_ruleQualifiedClassifierRef.current; }
	EOF;

// Rule QualifiedClassifierRef
ruleQualifiedClassifierRef returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					newCompositeNode(grammarAccess.getQualifiedClassifierRefAccess().getNamespaceIdentifierParserRuleCall_0_0());
				}
				lv_namespace_0_0=ruleIdentifier
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getQualifiedClassifierRefRule());
					}
					set(
						$current,
						"namespace",
						lv_namespace_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Identifier");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_1='::'
		{
			newLeafNode(otherlv_1, grammarAccess.getQualifiedClassifierRefAccess().getColonColonKeyword_1());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getQualifiedClassifierRefAccess().getElementClassifierRefParserRuleCall_2_0());
				}
				lv_element_2_0=ruleClassifierRef
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getQualifiedClassifierRefRule());
					}
					set(
						$current,
						"element",
						lv_element_2_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.ClassifierRef");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleQualifiedOperationRef
entryRuleQualifiedOperationRef returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getQualifiedOperationRefRule()); }
	iv_ruleQualifiedOperationRef=ruleQualifiedOperationRef
	{ $current=$iv_ruleQualifiedOperationRef.current; }
	EOF;

// Rule QualifiedOperationRef
ruleQualifiedOperationRef returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					newCompositeNode(grammarAccess.getQualifiedOperationRefAccess().getNamespaceIdentifierParserRuleCall_0_0());
				}
				lv_namespace_0_0=ruleIdentifier
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getQualifiedOperationRefRule());
					}
					set(
						$current,
						"namespace",
						lv_namespace_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Identifier");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_1='::'
		{
			newLeafNode(otherlv_1, grammarAccess.getQualifiedOperationRefAccess().getColonColonKeyword_1());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getQualifiedOperationRefAccess().getElementOperationRefParserRuleCall_2_0());
				}
				lv_element_2_0=ruleOperationRef
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getQualifiedOperationRefRule());
					}
					set(
						$current,
						"element",
						lv_element_2_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.OperationRef");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleQualifiedPropertyRef
entryRuleQualifiedPropertyRef returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getQualifiedPropertyRefRule()); }
	iv_ruleQualifiedPropertyRef=ruleQualifiedPropertyRef
	{ $current=$iv_ruleQualifiedPropertyRef.current; }
	EOF;

// Rule QualifiedPropertyRef
ruleQualifiedPropertyRef returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					newCompositeNode(grammarAccess.getQualifiedPropertyRefAccess().getNamespaceIdentifierParserRuleCall_0_0());
				}
				lv_namespace_0_0=ruleIdentifier
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getQualifiedPropertyRefRule());
					}
					set(
						$current,
						"namespace",
						lv_namespace_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Identifier");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_1='::'
		{
			newLeafNode(otherlv_1, grammarAccess.getQualifiedPropertyRefAccess().getColonColonKeyword_1());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getQualifiedPropertyRefAccess().getElementPropertyRefParserRuleCall_2_0());
				}
				lv_element_2_0=rulePropertyRef
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getQualifiedPropertyRefRule());
					}
					set(
						$current,
						"element",
						lv_element_2_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.PropertyRef");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleQualifiedPackageRef
entryRuleQualifiedPackageRef returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getQualifiedPackageRefRule()); }
	iv_ruleQualifiedPackageRef=ruleQualifiedPackageRef
	{ $current=$iv_ruleQualifiedPackageRef.current; }
	EOF;

// Rule QualifiedPackageRef
ruleQualifiedPackageRef returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					newCompositeNode(grammarAccess.getQualifiedPackageRefAccess().getNamespaceIdentifierParserRuleCall_0_0());
				}
				lv_namespace_0_0=ruleIdentifier
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getQualifiedPackageRefRule());
					}
					set(
						$current,
						"namespace",
						lv_namespace_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Identifier");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_1='::'
		{
			newLeafNode(otherlv_1, grammarAccess.getQualifiedPackageRefAccess().getColonColonKeyword_1());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getQualifiedPackageRefAccess().getElementPackageRefParserRuleCall_2_0());
				}
				lv_element_2_0=rulePackageRef
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getQualifiedPackageRefRule());
					}
					set(
						$current,
						"element",
						lv_element_2_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.PackageRef");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleSimpleClassifierRef
entryRuleSimpleClassifierRef returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getSimpleClassifierRefRule()); }
	iv_ruleSimpleClassifierRef=ruleSimpleClassifierRef
	{ $current=$iv_ruleSimpleClassifierRef.current; }
	EOF;

// Rule SimpleClassifierRef
ruleSimpleClassifierRef returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				newCompositeNode(grammarAccess.getSimpleClassifierRefAccess().getClassifierIdentifierParserRuleCall_0());
			}
			lv_classifier_0_0=ruleIdentifier
			{
				if ($current==null) {
					$current = createModelElementForParent(grammarAccess.getSimpleClassifierRefRule());
				}
				set(
					$current,
					"classifier",
					lv_classifier_0_0,
					"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Identifier");
				afterParserOrEnumRuleCall();
			}
		)
	)
;

// Entry rule entryRuleSimpleOperationRef
entryRuleSimpleOperationRef returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getSimpleOperationRefRule()); }
	iv_ruleSimpleOperationRef=ruleSimpleOperationRef
	{ $current=$iv_ruleSimpleOperationRef.current; }
	EOF;

// Rule SimpleOperationRef
ruleSimpleOperationRef returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				newCompositeNode(grammarAccess.getSimpleOperationRefAccess().getOperationIdentifierParserRuleCall_0());
			}
			lv_operation_0_0=ruleIdentifier
			{
				if ($current==null) {
					$current = createModelElementForParent(grammarAccess.getSimpleOperationRefRule());
				}
				set(
					$current,
					"operation",
					lv_operation_0_0,
					"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Identifier");
				afterParserOrEnumRuleCall();
			}
		)
	)
;

// Entry rule entryRuleSimplePackageRef
entryRuleSimplePackageRef returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getSimplePackageRefRule()); }
	iv_ruleSimplePackageRef=ruleSimplePackageRef
	{ $current=$iv_ruleSimplePackageRef.current; }
	EOF;

// Rule SimplePackageRef
ruleSimplePackageRef returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				newCompositeNode(grammarAccess.getSimplePackageRefAccess().getPackageIdentifierParserRuleCall_0());
			}
			lv_package_0_0=ruleIdentifier
			{
				if ($current==null) {
					$current = createModelElementForParent(grammarAccess.getSimplePackageRefRule());
				}
				set(
					$current,
					"package",
					lv_package_0_0,
					"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Identifier");
				afterParserOrEnumRuleCall();
			}
		)
	)
;

// Entry rule entryRuleSimplePropertyRef
entryRuleSimplePropertyRef returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getSimplePropertyRefRule()); }
	iv_ruleSimplePropertyRef=ruleSimplePropertyRef
	{ $current=$iv_ruleSimplePropertyRef.current; }
	EOF;

// Rule SimplePropertyRef
ruleSimplePropertyRef returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				newCompositeNode(grammarAccess.getSimplePropertyRefAccess().getFeatureIdentifierParserRuleCall_0());
			}
			lv_feature_0_0=ruleIdentifier
			{
				if ($current==null) {
					$current = createModelElementForParent(grammarAccess.getSimplePropertyRefRule());
				}
				set(
					$current,
					"feature",
					lv_feature_0_0,
					"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Identifier");
				afterParserOrEnumRuleCall();
			}
		)
	)
;

// Entry rule entryRuleNavigationExp
entryRuleNavigationExp returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getNavigationExpRule()); }
	iv_ruleNavigationExp=ruleNavigationExp
	{ $current=$iv_ruleNavigationExp.current; }
	EOF;

// Rule NavigationExp
ruleNavigationExp returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getNavigationExpAccess().getSubNavigationExpParserRuleCall_0());
		}
		this_SubNavigationExp_0=ruleSubNavigationExp
		{
			$current = $this_SubNavigationExp_0.current;
			afterParserOrEnumRuleCall();
		}
		(
			(
				(
					{
						/* */
					}
					{
						$current = forceCreateModelElementAndSet(
							grammarAccess.getNavigationExpAccess().getInfixExpSourceAction_1_0_0(),
							$current);
					}
				)
				(
					(
						(
							lv_op_2_1='.'
							{
								newLeafNode(lv_op_2_1, grammarAccess.getNavigationExpAccess().getOpFullStopKeyword_1_0_1_0_0());
							}
							{
								if ($current==null) {
									$current = createModelElement(grammarAccess.getNavigationExpRule());
								}
								setWithLastConsumed($current, "op", lv_op_2_1, null);
							}
							    |
							lv_op_2_2='->'
							{
								newLeafNode(lv_op_2_2, grammarAccess.getNavigationExpAccess().getOpHyphenMinusGreaterThanSignKeyword_1_0_1_0_1());
							}
							{
								if ($current==null) {
									$current = createModelElement(grammarAccess.getNavigationExpRule());
								}
								setWithLastConsumed($current, "op", lv_op_2_2, null);
							}
						)
					)
				)
				(
					(
						{
							newCompositeNode(grammarAccess.getNavigationExpAccess().getArgumentNavigatingExpParserRuleCall_1_0_2_0());
						}
						lv_argument_3_0=ruleNavigatingExp
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getNavigationExpRule());
							}
							set(
								$current,
								"argument",
								lv_argument_3_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.NavigatingExp");
							afterParserOrEnumRuleCall();
						}
					)
				)
			)
			    |
			(
				(
					{
						/* */
					}
					{
						$current = forceCreateModelElementAndSet(
							grammarAccess.getNavigationExpAccess().getOclMessageSourceAction_1_1_0(),
							$current);
					}
				)
				(
					(
						(
							lv_op_5_1='^^'
							{
								newLeafNode(lv_op_5_1, grammarAccess.getNavigationExpAccess().getOpCircumflexAccentCircumflexAccentKeyword_1_1_1_0_0());
							}
							{
								if ($current==null) {
									$current = createModelElement(grammarAccess.getNavigationExpRule());
								}
								setWithLastConsumed($current, "op", lv_op_5_1, null);
							}
							    |
							lv_op_5_2='^'
							{
								newLeafNode(lv_op_5_2, grammarAccess.getNavigationExpAccess().getOpCircumflexAccentKeyword_1_1_1_0_1());
							}
							{
								if ($current==null) {
									$current = createModelElement(grammarAccess.getNavigationExpRule());
								}
								setWithLastConsumed($current, "op", lv_op_5_2, null);
							}
						)
					)
				)
				(
					(
						{
							newCompositeNode(grammarAccess.getNavigationExpAccess().getMessageNameIdentifierParserRuleCall_1_1_2_0());
						}
						lv_messageName_6_0=ruleIdentifier
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getNavigationExpRule());
							}
							set(
								$current,
								"messageName",
								lv_messageName_6_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Identifier");
							afterParserOrEnumRuleCall();
						}
					)
				)
				otherlv_7='('
				{
					newLeafNode(otherlv_7, grammarAccess.getNavigationExpAccess().getLeftParenthesisKeyword_1_1_3());
				}
				(
					(
						(
							{
								newCompositeNode(grammarAccess.getNavigationExpAccess().getArgumentsOclMessageArgParserRuleCall_1_1_4_0_0());
							}
							lv_arguments_8_0=ruleOclMessageArg
							{
								if ($current==null) {
									$current = createModelElementForParent(grammarAccess.getNavigationExpRule());
								}
								add(
									$current,
									"arguments",
									lv_arguments_8_0,
									"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.OclMessageArg");
								afterParserOrEnumRuleCall();
							}
						)
					)
					(
						otherlv_9=','
						{
							newLeafNode(otherlv_9, grammarAccess.getNavigationExpAccess().getCommaKeyword_1_1_4_1_0());
						}
						(
							(
								{
									newCompositeNode(grammarAccess.getNavigationExpAccess().getArgumentsOclMessageArgParserRuleCall_1_1_4_1_1_0());
								}
								lv_arguments_10_0=ruleOclMessageArg
								{
									if ($current==null) {
										$current = createModelElementForParent(grammarAccess.getNavigationExpRule());
									}
									add(
										$current,
										"arguments",
										lv_arguments_10_0,
										"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.OclMessageArg");
									afterParserOrEnumRuleCall();
								}
							)
						)
					)*
				)?
				otherlv_11=')'
				{
					newLeafNode(otherlv_11, grammarAccess.getNavigationExpAccess().getRightParenthesisKeyword_1_1_5());
				}
			)
		)?
	)
;

// Entry rule entryRuleNavigatingExp
entryRuleNavigatingExp returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getNavigatingExpRule()); }
	iv_ruleNavigatingExp=ruleNavigatingExp
	{ $current=$iv_ruleNavigatingExp.current; }
	EOF;

// Rule NavigatingExp
ruleNavigatingExp returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getNavigatingExpAccess().getSubNavigatingExpParserRuleCall_0());
		}
		this_SubNavigatingExp_0=ruleSubNavigatingExp
		{
			$current = $this_SubNavigatingExp_0.current;
			afterParserOrEnumRuleCall();
		}
		(
			(
				(
					{
						/* */
					}
					{
						$current = forceCreateModelElementAndSet(
							grammarAccess.getNavigatingExpAccess().getInfixExpSourceAction_1_0_0(),
							$current);
					}
				)
				(
					(
						(
							lv_op_2_1='.'
							{
								newLeafNode(lv_op_2_1, grammarAccess.getNavigatingExpAccess().getOpFullStopKeyword_1_0_1_0_0());
							}
							{
								if ($current==null) {
									$current = createModelElement(grammarAccess.getNavigatingExpRule());
								}
								setWithLastConsumed($current, "op", lv_op_2_1, null);
							}
							    |
							lv_op_2_2='->'
							{
								newLeafNode(lv_op_2_2, grammarAccess.getNavigatingExpAccess().getOpHyphenMinusGreaterThanSignKeyword_1_0_1_0_1());
							}
							{
								if ($current==null) {
									$current = createModelElement(grammarAccess.getNavigatingExpRule());
								}
								setWithLastConsumed($current, "op", lv_op_2_2, null);
							}
						)
					)
				)
				(
					(
						{
							newCompositeNode(grammarAccess.getNavigatingExpAccess().getArgumentNavigatingExpParserRuleCall_1_0_2_0());
						}
						lv_argument_3_0=ruleNavigatingExp
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getNavigatingExpRule());
							}
							set(
								$current,
								"argument",
								lv_argument_3_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.NavigatingExp");
							afterParserOrEnumRuleCall();
						}
					)
				)
			)
			    |
			(
				(
					{
						/* */
					}
					{
						$current = forceCreateModelElementAndSet(
							grammarAccess.getNavigatingExpAccess().getOclMessageSourceAction_1_1_0(),
							$current);
					}
				)
				(
					(
						(
							lv_op_5_1='^^'
							{
								newLeafNode(lv_op_5_1, grammarAccess.getNavigatingExpAccess().getOpCircumflexAccentCircumflexAccentKeyword_1_1_1_0_0());
							}
							{
								if ($current==null) {
									$current = createModelElement(grammarAccess.getNavigatingExpRule());
								}
								setWithLastConsumed($current, "op", lv_op_5_1, null);
							}
							    |
							lv_op_5_2='^'
							{
								newLeafNode(lv_op_5_2, grammarAccess.getNavigatingExpAccess().getOpCircumflexAccentKeyword_1_1_1_0_1());
							}
							{
								if ($current==null) {
									$current = createModelElement(grammarAccess.getNavigatingExpRule());
								}
								setWithLastConsumed($current, "op", lv_op_5_2, null);
							}
						)
					)
				)
				(
					(
						{
							newCompositeNode(grammarAccess.getNavigatingExpAccess().getMessageNameIdentifierParserRuleCall_1_1_2_0());
						}
						lv_messageName_6_0=ruleIdentifier
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getNavigatingExpRule());
							}
							set(
								$current,
								"messageName",
								lv_messageName_6_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Identifier");
							afterParserOrEnumRuleCall();
						}
					)
				)
				otherlv_7='('
				{
					newLeafNode(otherlv_7, grammarAccess.getNavigatingExpAccess().getLeftParenthesisKeyword_1_1_3());
				}
				(
					(
						(
							{
								newCompositeNode(grammarAccess.getNavigatingExpAccess().getArgumentsOclMessageArgParserRuleCall_1_1_4_0_0());
							}
							lv_arguments_8_0=ruleOclMessageArg
							{
								if ($current==null) {
									$current = createModelElementForParent(grammarAccess.getNavigatingExpRule());
								}
								add(
									$current,
									"arguments",
									lv_arguments_8_0,
									"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.OclMessageArg");
								afterParserOrEnumRuleCall();
							}
						)
					)
					(
						otherlv_9=','
						{
							newLeafNode(otherlv_9, grammarAccess.getNavigatingExpAccess().getCommaKeyword_1_1_4_1_0());
						}
						(
							(
								{
									newCompositeNode(grammarAccess.getNavigatingExpAccess().getArgumentsOclMessageArgParserRuleCall_1_1_4_1_1_0());
								}
								lv_arguments_10_0=ruleOclMessageArg
								{
									if ($current==null) {
										$current = createModelElementForParent(grammarAccess.getNavigatingExpRule());
									}
									add(
										$current,
										"arguments",
										lv_arguments_10_0,
										"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.OclMessageArg");
									afterParserOrEnumRuleCall();
								}
							)
						)
					)*
				)?
				otherlv_11=')'
				{
					newLeafNode(otherlv_11, grammarAccess.getNavigatingExpAccess().getRightParenthesisKeyword_1_1_5());
				}
			)
		)?
	)
;

// Entry rule entryRuleOclMessageArg
entryRuleOclMessageArg returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getOclMessageArgRule()); }
	iv_ruleOclMessageArg=ruleOclMessageArg
	{ $current=$iv_ruleOclMessageArg.current; }
	EOF;

// Rule OclMessageArg
ruleOclMessageArg returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					/* */
				}
				{
					$current = forceCreateModelElement(
						grammarAccess.getOclMessageArgAccess().getOclMessageArgAction_0_0(),
						$current);
				}
			)
			otherlv_1='?'
			{
				newLeafNode(otherlv_1, grammarAccess.getOclMessageArgAccess().getQuestionMarkKeyword_0_1());
			}
			(
				otherlv_2=':'
				{
					newLeafNode(otherlv_2, grammarAccess.getOclMessageArgAccess().getColonKeyword_0_2_0());
				}
				(
					(
						{
							newCompositeNode(grammarAccess.getOclMessageArgAccess().getTypeTypeExpParserRuleCall_0_2_1_0());
						}
						lv_type_3_0=ruleTypeExp
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getOclMessageArgRule());
							}
							set(
								$current,
								"type",
								lv_type_3_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.TypeExp");
							afterParserOrEnumRuleCall();
						}
					)
				)
			)?
		)
		    |
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getOclMessageArgAccess().getExpressionParserRuleCall_1());
		}
		this_Expression_4=ruleExpression
		{
			$current = $this_Expression_4.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleNUMBER_LITERAL
entryRuleNUMBER_LITERAL returns [String current=null]:
	{ newCompositeNode(grammarAccess.getNUMBER_LITERALRule()); }
	iv_ruleNUMBER_LITERAL=ruleNUMBER_LITERAL
	{ $current=$iv_ruleNUMBER_LITERAL.current.getText(); }
	EOF;

// Rule NUMBER_LITERAL
ruleNUMBER_LITERAL returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		this_INT_0=RULE_INT
		{
			$current.merge(this_INT_0);
		}
		{
			newLeafNode(this_INT_0, grammarAccess.getNUMBER_LITERALAccess().getINTTerminalRuleCall_0());
		}
		(
			kw='.'
			{
				$current.merge(kw);
				newLeafNode(kw, grammarAccess.getNUMBER_LITERALAccess().getFullStopKeyword_1_0());
			}
			this_INT_2=RULE_INT
			{
				$current.merge(this_INT_2);
			}
			{
				newLeafNode(this_INT_2, grammarAccess.getNUMBER_LITERALAccess().getINTTerminalRuleCall_1_1());
			}
		)?
		(
			(
				kw='e'
				{
					$current.merge(kw);
					newLeafNode(kw, grammarAccess.getNUMBER_LITERALAccess().getEKeyword_2_0_0());
				}
				    |
				kw='E'
				{
					$current.merge(kw);
					newLeafNode(kw, grammarAccess.getNUMBER_LITERALAccess().getEKeyword_2_0_1());
				}
			)
			(
				kw='+'
				{
					$current.merge(kw);
					newLeafNode(kw, grammarAccess.getNUMBER_LITERALAccess().getPlusSignKeyword_2_1_0());
				}
				    |
				kw='-'
				{
					$current.merge(kw);
					newLeafNode(kw, grammarAccess.getNUMBER_LITERALAccess().getHyphenMinusKeyword_2_1_1());
				}
			)?
			this_INT_7=RULE_INT
			{
				$current.merge(this_INT_7);
			}
			{
				newLeafNode(this_INT_7, grammarAccess.getNUMBER_LITERALAccess().getINTTerminalRuleCall_2_2());
			}
		)?
	)
;

// Entry rule entryRuleEssentialOCLRestrictedKeywords
entryRuleEssentialOCLRestrictedKeywords returns [String current=null]:
	{ newCompositeNode(grammarAccess.getEssentialOCLRestrictedKeywordsRule()); }
	iv_ruleEssentialOCLRestrictedKeywords=ruleEssentialOCLRestrictedKeywords
	{ $current=$iv_ruleEssentialOCLRestrictedKeywords.current.getText(); }
	EOF;

// Rule EssentialOCLRestrictedKeywords
ruleEssentialOCLRestrictedKeywords returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		kw='e'
		{
			$current.merge(kw);
			newLeafNode(kw, grammarAccess.getEssentialOCLRestrictedKeywordsAccess().getEKeyword_0());
		}
		    |
		kw='E'
		{
			$current.merge(kw);
			newLeafNode(kw, grammarAccess.getEssentialOCLRestrictedKeywordsAccess().getEKeyword_1());
		}
	)
;

// Entry rule entryRuleRestrictedKeywords
entryRuleRestrictedKeywords returns [String current=null]:
	{ newCompositeNode(grammarAccess.getRestrictedKeywordsRule()); }
	iv_ruleRestrictedKeywords=ruleRestrictedKeywords
	{ $current=$iv_ruleRestrictedKeywords.current.getText(); }
	EOF;

// Rule RestrictedKeywords
ruleRestrictedKeywords returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	{
		newCompositeNode(grammarAccess.getRestrictedKeywordsAccess().getEssentialOCLRestrictedKeywordsParserRuleCall());
	}
	this_EssentialOCLRestrictedKeywords_0=ruleEssentialOCLRestrictedKeywords
	{
		$current.merge(this_EssentialOCLRestrictedKeywords_0);
	}
	{
		afterParserOrEnumRuleCall();
	}
;

// Entry rule entryRuleIdentifier
entryRuleIdentifier returns [String current=null]:
	{ newCompositeNode(grammarAccess.getIdentifierRule()); }
	iv_ruleIdentifier=ruleIdentifier
	{ $current=$iv_ruleIdentifier.current.getText(); }
	EOF;

// Rule Identifier
ruleIdentifier returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		this_ID_0=RULE_ID
		{
			$current.merge(this_ID_0);
		}
		{
			newLeafNode(this_ID_0, grammarAccess.getIdentifierAccess().getIDTerminalRuleCall_0());
		}
		    |
		{
			newCompositeNode(grammarAccess.getIdentifierAccess().getRestrictedKeywordsParserRuleCall_1());
		}
		this_RestrictedKeywords_1=ruleRestrictedKeywords
		{
			$current.merge(this_RestrictedKeywords_1);
		}
		{
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleStringLiteral
entryRuleStringLiteral returns [String current=null]:
	{ newCompositeNode(grammarAccess.getStringLiteralRule()); }
	iv_ruleStringLiteral=ruleStringLiteral
	{ $current=$iv_ruleStringLiteral.current.getText(); }
	EOF;

// Rule StringLiteral
ruleStringLiteral returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	this_STRING_0=RULE_STRING
	{
		$current.merge(this_STRING_0);
	}
	{
		newLeafNode(this_STRING_0, grammarAccess.getStringLiteralAccess().getSTRINGTerminalRuleCall());
	}
;

// Entry rule entryRulePrimitiveTypeIdentifier
entryRulePrimitiveTypeIdentifier returns [String current=null]:
	{ newCompositeNode(grammarAccess.getPrimitiveTypeIdentifierRule()); }
	iv_rulePrimitiveTypeIdentifier=rulePrimitiveTypeIdentifier
	{ $current=$iv_rulePrimitiveTypeIdentifier.current.getText(); }
	EOF;

// Rule PrimitiveTypeIdentifier
rulePrimitiveTypeIdentifier returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		kw='Boolean'
		{
			$current.merge(kw);
			newLeafNode(kw, grammarAccess.getPrimitiveTypeIdentifierAccess().getBooleanKeyword_0());
		}
		    |
		kw='Integer'
		{
			$current.merge(kw);
			newLeafNode(kw, grammarAccess.getPrimitiveTypeIdentifierAccess().getIntegerKeyword_1());
		}
		    |
		kw='Real'
		{
			$current.merge(kw);
			newLeafNode(kw, grammarAccess.getPrimitiveTypeIdentifierAccess().getRealKeyword_2());
		}
		    |
		kw='String'
		{
			$current.merge(kw);
			newLeafNode(kw, grammarAccess.getPrimitiveTypeIdentifierAccess().getStringKeyword_3());
		}
		    |
		kw='UnlimitedNatural'
		{
			$current.merge(kw);
			newLeafNode(kw, grammarAccess.getPrimitiveTypeIdentifierAccess().getUnlimitedNaturalKeyword_4());
		}
		    |
		kw='OclAny'
		{
			$current.merge(kw);
			newLeafNode(kw, grammarAccess.getPrimitiveTypeIdentifierAccess().getOclAnyKeyword_5());
		}
		    |
		kw='OclInvalid'
		{
			$current.merge(kw);
			newLeafNode(kw, grammarAccess.getPrimitiveTypeIdentifierAccess().getOclInvalidKeyword_6());
		}
		    |
		kw='OclVoid'
		{
			$current.merge(kw);
			newLeafNode(kw, grammarAccess.getPrimitiveTypeIdentifierAccess().getOclVoidKeyword_7());
		}
	)
;

// Entry rule entryRulePrimitiveType
entryRulePrimitiveType returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getPrimitiveTypeRule()); }
	iv_rulePrimitiveType=rulePrimitiveType
	{ $current=$iv_rulePrimitiveType.current; }
	EOF;

// Rule PrimitiveType
rulePrimitiveType returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				newCompositeNode(grammarAccess.getPrimitiveTypeAccess().getNamePrimitiveTypeIdentifierParserRuleCall_0());
			}
			lv_name_0_0=rulePrimitiveTypeIdentifier
			{
				if ($current==null) {
					$current = createModelElementForParent(grammarAccess.getPrimitiveTypeRule());
				}
				set(
					$current,
					"name",
					lv_name_0_0,
					"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.PrimitiveTypeIdentifier");
				afterParserOrEnumRuleCall();
			}
		)
	)
;

// Entry rule entryRuleCollectionTypeIdentifier
entryRuleCollectionTypeIdentifier returns [String current=null]:
	{ newCompositeNode(grammarAccess.getCollectionTypeIdentifierRule()); }
	iv_ruleCollectionTypeIdentifier=ruleCollectionTypeIdentifier
	{ $current=$iv_ruleCollectionTypeIdentifier.current.getText(); }
	EOF;

// Rule CollectionTypeIdentifier
ruleCollectionTypeIdentifier returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		kw='Set'
		{
			$current.merge(kw);
			newLeafNode(kw, grammarAccess.getCollectionTypeIdentifierAccess().getSetKeyword_0());
		}
		    |
		kw='Bag'
		{
			$current.merge(kw);
			newLeafNode(kw, grammarAccess.getCollectionTypeIdentifierAccess().getBagKeyword_1());
		}
		    |
		kw='Sequence'
		{
			$current.merge(kw);
			newLeafNode(kw, grammarAccess.getCollectionTypeIdentifierAccess().getSequenceKeyword_2());
		}
		    |
		kw='Collection'
		{
			$current.merge(kw);
			newLeafNode(kw, grammarAccess.getCollectionTypeIdentifierAccess().getCollectionKeyword_3());
		}
		    |
		kw='OrderedSet'
		{
			$current.merge(kw);
			newLeafNode(kw, grammarAccess.getCollectionTypeIdentifierAccess().getOrderedSetKeyword_4());
		}
	)
;

// Entry rule entryRuleTypeExp
entryRuleTypeExp returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getTypeExpRule()); }
	iv_ruleTypeExp=ruleTypeExp
	{ $current=$iv_ruleTypeExp.current; }
	EOF;

// Rule TypeExp
ruleTypeExp returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getTypeExpAccess().getPrimitiveTypeParserRuleCall_0());
		}
		this_PrimitiveType_0=rulePrimitiveType
		{
			$current = $this_PrimitiveType_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getTypeExpAccess().getNameExpParserRuleCall_1());
		}
		this_NameExp_1=ruleNameExp
		{
			$current = $this_NameExp_1.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getTypeExpAccess().getCollectionTypeParserRuleCall_2());
		}
		this_CollectionType_2=ruleCollectionType
		{
			$current = $this_CollectionType_2.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getTypeExpAccess().getTupleTypeParserRuleCall_3());
		}
		this_TupleType_3=ruleTupleType
		{
			$current = $this_TupleType_3.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleCollectionType
entryRuleCollectionType returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getCollectionTypeRule()); }
	iv_ruleCollectionType=ruleCollectionType
	{ $current=$iv_ruleCollectionType.current; }
	EOF;

// Rule CollectionType
ruleCollectionType returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					newCompositeNode(grammarAccess.getCollectionTypeAccess().getTypeIdentifierCollectionTypeIdentifierParserRuleCall_0_0());
				}
				lv_typeIdentifier_0_0=ruleCollectionTypeIdentifier
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getCollectionTypeRule());
					}
					set(
						$current,
						"typeIdentifier",
						lv_typeIdentifier_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.CollectionTypeIdentifier");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			otherlv_1='('
			{
				newLeafNode(otherlv_1, grammarAccess.getCollectionTypeAccess().getLeftParenthesisKeyword_1_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getCollectionTypeAccess().getTypeTypeExpParserRuleCall_1_1_0());
					}
					lv_type_2_0=ruleTypeExp
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getCollectionTypeRule());
						}
						set(
							$current,
							"type",
							lv_type_2_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.TypeExp");
						afterParserOrEnumRuleCall();
					}
				)
			)
			otherlv_3=')'
			{
				newLeafNode(otherlv_3, grammarAccess.getCollectionTypeAccess().getRightParenthesisKeyword_1_2());
			}
		)?
	)
;

// Entry rule entryRuleTupleType
entryRuleTupleType returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getTupleTypeRule()); }
	iv_ruleTupleType=ruleTupleType
	{ $current=$iv_ruleTupleType.current; }
	EOF;

// Rule TupleType
ruleTupleType returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				lv_name_0_0='Tuple'
				{
					newLeafNode(lv_name_0_0, grammarAccess.getTupleTypeAccess().getNameTupleKeyword_0_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getTupleTypeRule());
					}
					setWithLastConsumed($current, "name", lv_name_0_0, "Tuple");
				}
			)
		)
		otherlv_1='('
		{
			newLeafNode(otherlv_1, grammarAccess.getTupleTypeAccess().getLeftParenthesisKeyword_1());
		}
		(
			(
				(
					{
						newCompositeNode(grammarAccess.getTupleTypeAccess().getPartTuplePartParserRuleCall_2_0_0());
					}
					lv_part_2_0=ruletuplePart
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getTupleTypeRule());
						}
						add(
							$current,
							"part",
							lv_part_2_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.tuplePart");
						afterParserOrEnumRuleCall();
					}
				)
			)
			(
				otherlv_3=','
				{
					newLeafNode(otherlv_3, grammarAccess.getTupleTypeAccess().getCommaKeyword_2_1_0());
				}
				(
					(
						{
							newCompositeNode(grammarAccess.getTupleTypeAccess().getPartTuplePartParserRuleCall_2_1_1_0());
						}
						lv_part_4_0=ruletuplePart
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getTupleTypeRule());
							}
							add(
								$current,
								"part",
								lv_part_4_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.tuplePart");
							afterParserOrEnumRuleCall();
						}
					)
				)
			)*
		)?
		otherlv_5=')'
		{
			newLeafNode(otherlv_5, grammarAccess.getTupleTypeAccess().getRightParenthesisKeyword_3());
		}
	)
;

// Entry rule entryRuletuplePart
entryRuletuplePart returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getTuplePartRule()); }
	iv_ruletuplePart=ruletuplePart
	{ $current=$iv_ruletuplePart.current; }
	EOF;

// Rule tuplePart
ruletuplePart returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					newCompositeNode(grammarAccess.getTuplePartAccess().getNameIdentifierParserRuleCall_0_0());
				}
				lv_name_0_0=ruleIdentifier
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getTuplePartRule());
					}
					set(
						$current,
						"name",
						lv_name_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Identifier");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_1=':'
		{
			newLeafNode(otherlv_1, grammarAccess.getTuplePartAccess().getColonKeyword_1());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getTuplePartAccess().getTypeTypeExpParserRuleCall_2_0());
				}
				lv_type_2_0=ruleTypeExp
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getTuplePartRule());
					}
					set(
						$current,
						"type",
						lv_type_2_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.TypeExp");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleCollectionLiteralExp
entryRuleCollectionLiteralExp returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getCollectionLiteralExpRule()); }
	iv_ruleCollectionLiteralExp=ruleCollectionLiteralExp
	{ $current=$iv_ruleCollectionLiteralExp.current; }
	EOF;

// Rule CollectionLiteralExp
ruleCollectionLiteralExp returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getCollectionLiteralExpAccess().getCollectionTypeParserRuleCall_0());
		}
		this_CollectionType_0=ruleCollectionType
		{
			$current = $this_CollectionType_0.current;
			afterParserOrEnumRuleCall();
		}
		(
			(
				{
					/* */
				}
				{
					$current = forceCreateModelElementAndSet(
						grammarAccess.getCollectionLiteralExpAccess().getCollectionLiteralExpTypeAction_1_0(),
						$current);
				}
			)
			otherlv_2='{'
			{
				newLeafNode(otherlv_2, grammarAccess.getCollectionLiteralExpAccess().getLeftCurlyBracketKeyword_1_1());
			}
			(
				(
					(
						{
							newCompositeNode(grammarAccess.getCollectionLiteralExpAccess().getCollectionLiteralPartsCollectionLiteralPartParserRuleCall_1_2_0_0());
						}
						lv_collectionLiteralParts_3_0=ruleCollectionLiteralPart
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getCollectionLiteralExpRule());
							}
							add(
								$current,
								"collectionLiteralParts",
								lv_collectionLiteralParts_3_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.CollectionLiteralPart");
							afterParserOrEnumRuleCall();
						}
					)
				)
				(
					otherlv_4=','
					{
						newLeafNode(otherlv_4, grammarAccess.getCollectionLiteralExpAccess().getCommaKeyword_1_2_1_0());
					}
					(
						(
							{
								newCompositeNode(grammarAccess.getCollectionLiteralExpAccess().getCollectionLiteralPartsCollectionLiteralPartParserRuleCall_1_2_1_1_0());
							}
							lv_collectionLiteralParts_5_0=ruleCollectionLiteralPart
							{
								if ($current==null) {
									$current = createModelElementForParent(grammarAccess.getCollectionLiteralExpRule());
								}
								add(
									$current,
									"collectionLiteralParts",
									lv_collectionLiteralParts_5_0,
									"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.CollectionLiteralPart");
								afterParserOrEnumRuleCall();
							}
						)
					)
				)*
			)?
			otherlv_6='}'
			{
				newLeafNode(otherlv_6, grammarAccess.getCollectionLiteralExpAccess().getRightCurlyBracketKeyword_1_3());
			}
		)?
	)
;

// Entry rule entryRuleCollectionLiteralPart
entryRuleCollectionLiteralPart returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getCollectionLiteralPartRule()); }
	iv_ruleCollectionLiteralPart=ruleCollectionLiteralPart
	{ $current=$iv_ruleCollectionLiteralPart.current; }
	EOF;

// Rule CollectionLiteralPart
ruleCollectionLiteralPart returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					newCompositeNode(grammarAccess.getCollectionLiteralPartAccess().getExpressionExpressionParserRuleCall_0_0());
				}
				lv_expression_0_0=ruleExpression
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getCollectionLiteralPartRule());
					}
					set(
						$current,
						"expression",
						lv_expression_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Expression");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			otherlv_1='..'
			{
				newLeafNode(otherlv_1, grammarAccess.getCollectionLiteralPartAccess().getFullStopFullStopKeyword_1_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getCollectionLiteralPartAccess().getLastExpressionExpressionParserRuleCall_1_1_0());
					}
					lv_lastExpression_2_0=ruleExpression
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getCollectionLiteralPartRule());
						}
						set(
							$current,
							"lastExpression",
							lv_lastExpression_2_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Expression");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)?
	)
;

// Entry rule entryRulePrimitiveLiteralExp
entryRulePrimitiveLiteralExp returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getPrimitiveLiteralExpRule()); }
	iv_rulePrimitiveLiteralExp=rulePrimitiveLiteralExp
	{ $current=$iv_rulePrimitiveLiteralExp.current; }
	EOF;

// Rule PrimitiveLiteralExp
rulePrimitiveLiteralExp returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getPrimitiveLiteralExpAccess().getNumberLiteralExpParserRuleCall_0());
		}
		this_NumberLiteralExp_0=ruleNumberLiteralExp
		{
			$current = $this_NumberLiteralExp_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getPrimitiveLiteralExpAccess().getStringLiteralExpParserRuleCall_1());
		}
		this_StringLiteralExp_1=ruleStringLiteralExp
		{
			$current = $this_StringLiteralExp_1.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getPrimitiveLiteralExpAccess().getBooleanLiteralExpParserRuleCall_2());
		}
		this_BooleanLiteralExp_2=ruleBooleanLiteralExp
		{
			$current = $this_BooleanLiteralExp_2.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getPrimitiveLiteralExpAccess().getInvalidLiteralExpParserRuleCall_3());
		}
		this_InvalidLiteralExp_3=ruleInvalidLiteralExp
		{
			$current = $this_InvalidLiteralExp_3.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getPrimitiveLiteralExpAccess().getNullLiteralExpParserRuleCall_4());
		}
		this_NullLiteralExp_4=ruleNullLiteralExp
		{
			$current = $this_NullLiteralExp_4.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleTupleLiteralExp
entryRuleTupleLiteralExp returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getTupleLiteralExpRule()); }
	iv_ruleTupleLiteralExp=ruleTupleLiteralExp
	{ $current=$iv_ruleTupleLiteralExp.current; }
	EOF;

// Rule TupleLiteralExp
ruleTupleLiteralExp returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				/* */
			}
			{
				$current = forceCreateModelElement(
					grammarAccess.getTupleLiteralExpAccess().getTupleLiteralExpAction_0(),
					$current);
			}
		)
		otherlv_1='Tuple'
		{
			newLeafNode(otherlv_1, grammarAccess.getTupleLiteralExpAccess().getTupleKeyword_1());
		}
		(
			otherlv_2='{'
			{
				newLeafNode(otherlv_2, grammarAccess.getTupleLiteralExpAccess().getLeftCurlyBracketKeyword_2_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getTupleLiteralExpAccess().getPartTupleLiteralPartParserRuleCall_2_1_0());
					}
					lv_part_3_0=ruleTupleLiteralPart
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getTupleLiteralExpRule());
						}
						add(
							$current,
							"part",
							lv_part_3_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.TupleLiteralPart");
						afterParserOrEnumRuleCall();
					}
				)
			)
			(
				otherlv_4=','
				{
					newLeafNode(otherlv_4, grammarAccess.getTupleLiteralExpAccess().getCommaKeyword_2_2_0());
				}
				(
					(
						{
							newCompositeNode(grammarAccess.getTupleLiteralExpAccess().getPartTupleLiteralPartParserRuleCall_2_2_1_0());
						}
						lv_part_5_0=ruleTupleLiteralPart
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getTupleLiteralExpRule());
							}
							add(
								$current,
								"part",
								lv_part_5_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.TupleLiteralPart");
							afterParserOrEnumRuleCall();
						}
					)
				)
			)*
			otherlv_6='}'
			{
				newLeafNode(otherlv_6, grammarAccess.getTupleLiteralExpAccess().getRightCurlyBracketKeyword_2_3());
			}
		)?
	)
;

// Entry rule entryRuleTupleLiteralPart
entryRuleTupleLiteralPart returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getTupleLiteralPartRule()); }
	iv_ruleTupleLiteralPart=ruleTupleLiteralPart
	{ $current=$iv_ruleTupleLiteralPart.current; }
	EOF;

// Rule TupleLiteralPart
ruleTupleLiteralPart returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					newCompositeNode(grammarAccess.getTupleLiteralPartAccess().getNameIdentifierParserRuleCall_0_0());
				}
				lv_name_0_0=ruleIdentifier
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getTupleLiteralPartRule());
					}
					set(
						$current,
						"name",
						lv_name_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Identifier");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			otherlv_1=':'
			{
				newLeafNode(otherlv_1, grammarAccess.getTupleLiteralPartAccess().getColonKeyword_1_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getTupleLiteralPartAccess().getTypeTypeExpParserRuleCall_1_1_0());
					}
					lv_type_2_0=ruleTypeExp
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getTupleLiteralPartRule());
						}
						set(
							$current,
							"type",
							lv_type_2_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.TypeExp");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)?
		otherlv_3='='
		{
			newLeafNode(otherlv_3, grammarAccess.getTupleLiteralPartAccess().getEqualsSignKeyword_2());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getTupleLiteralPartAccess().getInitExpressionExpressionParserRuleCall_3_0());
				}
				lv_initExpression_4_0=ruleExpression
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getTupleLiteralPartRule());
					}
					set(
						$current,
						"initExpression",
						lv_initExpression_4_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Expression");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleNumberLiteralExp
entryRuleNumberLiteralExp returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getNumberLiteralExpRule()); }
	iv_ruleNumberLiteralExp=ruleNumberLiteralExp
	{ $current=$iv_ruleNumberLiteralExp.current; }
	EOF;

// Rule NumberLiteralExp
ruleNumberLiteralExp returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				newCompositeNode(grammarAccess.getNumberLiteralExpAccess().getNameNUMBER_LITERALParserRuleCall_0());
			}
			lv_name_0_0=ruleNUMBER_LITERAL
			{
				if ($current==null) {
					$current = createModelElementForParent(grammarAccess.getNumberLiteralExpRule());
				}
				set(
					$current,
					"name",
					lv_name_0_0,
					"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.NUMBER_LITERAL");
				afterParserOrEnumRuleCall();
			}
		)
	)
;

// Entry rule entryRuleStringLiteralExp
entryRuleStringLiteralExp returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getStringLiteralExpRule()); }
	iv_ruleStringLiteralExp=ruleStringLiteralExp
	{ $current=$iv_ruleStringLiteralExp.current; }
	EOF;

// Rule StringLiteralExp
ruleStringLiteralExp returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				newCompositeNode(grammarAccess.getStringLiteralExpAccess().getValuesStringLiteralParserRuleCall_0());
			}
			lv_values_0_0=ruleStringLiteral
			{
				if ($current==null) {
					$current = createModelElementForParent(grammarAccess.getStringLiteralExpRule());
				}
				add(
					$current,
					"values",
					lv_values_0_0,
					"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.StringLiteral");
				afterParserOrEnumRuleCall();
			}
		)
	)+
;

// Entry rule entryRuleBooleanLiteralExp
entryRuleBooleanLiteralExp returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getBooleanLiteralExpRule()); }
	iv_ruleBooleanLiteralExp=ruleBooleanLiteralExp
	{ $current=$iv_ruleBooleanLiteralExp.current; }
	EOF;

// Rule BooleanLiteralExp
ruleBooleanLiteralExp returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				/* */
			}
			{
				$current = forceCreateModelElement(
					grammarAccess.getBooleanLiteralExpAccess().getBooleanLiteralExpAction_0(),
					$current);
			}
		)
		(
			(
				(
					lv_isTrue_1_0='true'
					{
						newLeafNode(lv_isTrue_1_0, grammarAccess.getBooleanLiteralExpAccess().getIsTrueTrueKeyword_1_0_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getBooleanLiteralExpRule());
						}
						setWithLastConsumed($current, "isTrue", lv_isTrue_1_0 != null, "true");
					}
				)
			)
			    |
			otherlv_2='false'
			{
				newLeafNode(otherlv_2, grammarAccess.getBooleanLiteralExpAccess().getFalseKeyword_1_1());
			}
		)
	)
;

// Entry rule entryRuleInvalidLiteralExp
entryRuleInvalidLiteralExp returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getInvalidLiteralExpRule()); }
	iv_ruleInvalidLiteralExp=ruleInvalidLiteralExp
	{ $current=$iv_ruleInvalidLiteralExp.current; }
	EOF;

// Rule InvalidLiteralExp
ruleInvalidLiteralExp returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				/* */
			}
			{
				$current = forceCreateModelElement(
					grammarAccess.getInvalidLiteralExpAccess().getInvalidLiteralExpAction_0(),
					$current);
			}
		)
		otherlv_1='invalid'
		{
			newLeafNode(otherlv_1, grammarAccess.getInvalidLiteralExpAccess().getInvalidKeyword_1());
		}
	)
;

// Entry rule entryRuleNullLiteralExp
entryRuleNullLiteralExp returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getNullLiteralExpRule()); }
	iv_ruleNullLiteralExp=ruleNullLiteralExp
	{ $current=$iv_ruleNullLiteralExp.current; }
	EOF;

// Rule NullLiteralExp
ruleNullLiteralExp returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				/* */
			}
			{
				$current = forceCreateModelElement(
					grammarAccess.getNullLiteralExpAccess().getNullLiteralExpAction_0(),
					$current);
			}
		)
		otherlv_1='null'
		{
			newLeafNode(otherlv_1, grammarAccess.getNullLiteralExpAccess().getNullKeyword_1());
		}
	)
;

// Entry rule entryRuleExpression
entryRuleExpression returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getExpressionRule()); }
	iv_ruleExpression=ruleExpression
	{ $current=$iv_ruleExpression.current; }
	EOF;

// Rule Expression
ruleExpression returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getExpressionAccess().getImpliesParserRuleCall_0());
		}
		this_implies_0=ruleimplies
		{
			$current = $this_implies_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getExpressionAccess().getLetExpParserRuleCall_1());
		}
		this_LetExp_1=ruleLetExp
		{
			$current = $this_LetExp_1.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleimplies
entryRuleimplies returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getImpliesRule()); }
	iv_ruleimplies=ruleimplies
	{ $current=$iv_ruleimplies.current; }
	EOF;

// Rule implies
ruleimplies returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getImpliesAccess().getXorParserRuleCall_0());
		}
		this_xor_0=rulexor
		{
			$current = $this_xor_0.current;
			afterParserOrEnumRuleCall();
		}
		(
			(
				{
					/* */
				}
				{
					$current = forceCreateModelElementAndSet(
						grammarAccess.getImpliesAccess().getInfixExpSourceAction_1_0(),
						$current);
				}
			)
			(
				(
					lv_op_2_0='implies'
					{
						newLeafNode(lv_op_2_0, grammarAccess.getImpliesAccess().getOpImpliesKeyword_1_1_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getImpliesRule());
						}
						setWithLastConsumed($current, "op", lv_op_2_0, "implies");
					}
				)
			)
			(
				(
					(
						{
							newCompositeNode(grammarAccess.getImpliesAccess().getArgumentXorParserRuleCall_1_2_0_0());
						}
						lv_argument_3_1=rulexor
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getImpliesRule());
							}
							set(
								$current,
								"argument",
								lv_argument_3_1,
								"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.xor");
							afterParserOrEnumRuleCall();
						}
						    |
						{
							newCompositeNode(grammarAccess.getImpliesAccess().getArgumentLetExpParserRuleCall_1_2_0_1());
						}
						lv_argument_3_2=ruleLetExp
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getImpliesRule());
							}
							set(
								$current,
								"argument",
								lv_argument_3_2,
								"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.LetExp");
							afterParserOrEnumRuleCall();
						}
					)
				)
			)
		)*
	)
;

// Entry rule entryRulexor
entryRulexor returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getXorRule()); }
	iv_rulexor=rulexor
	{ $current=$iv_rulexor.current; }
	EOF;

// Rule xor
rulexor returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getXorAccess().getOrParserRuleCall_0());
		}
		this_or_0=ruleor
		{
			$current = $this_or_0.current;
			afterParserOrEnumRuleCall();
		}
		(
			(
				{
					/* */
				}
				{
					$current = forceCreateModelElementAndSet(
						grammarAccess.getXorAccess().getInfixExpSourceAction_1_0(),
						$current);
				}
			)
			(
				(
					lv_op_2_0='xor'
					{
						newLeafNode(lv_op_2_0, grammarAccess.getXorAccess().getOpXorKeyword_1_1_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getXorRule());
						}
						setWithLastConsumed($current, "op", lv_op_2_0, "xor");
					}
				)
			)
			(
				(
					(
						{
							newCompositeNode(grammarAccess.getXorAccess().getArgumentOrParserRuleCall_1_2_0_0());
						}
						lv_argument_3_1=ruleor
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getXorRule());
							}
							set(
								$current,
								"argument",
								lv_argument_3_1,
								"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.or");
							afterParserOrEnumRuleCall();
						}
						    |
						{
							newCompositeNode(grammarAccess.getXorAccess().getArgumentLetExpParserRuleCall_1_2_0_1());
						}
						lv_argument_3_2=ruleLetExp
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getXorRule());
							}
							set(
								$current,
								"argument",
								lv_argument_3_2,
								"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.LetExp");
							afterParserOrEnumRuleCall();
						}
					)
				)
			)
		)*
	)
;

// Entry rule entryRuleor
entryRuleor returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getOrRule()); }
	iv_ruleor=ruleor
	{ $current=$iv_ruleor.current; }
	EOF;

// Rule or
ruleor returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getOrAccess().getAndParserRuleCall_0());
		}
		this_and_0=ruleand
		{
			$current = $this_and_0.current;
			afterParserOrEnumRuleCall();
		}
		(
			(
				{
					/* */
				}
				{
					$current = forceCreateModelElementAndSet(
						grammarAccess.getOrAccess().getInfixExpSourceAction_1_0(),
						$current);
				}
			)
			(
				(
					lv_op_2_0='or'
					{
						newLeafNode(lv_op_2_0, grammarAccess.getOrAccess().getOpOrKeyword_1_1_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getOrRule());
						}
						setWithLastConsumed($current, "op", lv_op_2_0, "or");
					}
				)
			)
			(
				(
					(
						{
							newCompositeNode(grammarAccess.getOrAccess().getArgumentAndParserRuleCall_1_2_0_0());
						}
						lv_argument_3_1=ruleand
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getOrRule());
							}
							set(
								$current,
								"argument",
								lv_argument_3_1,
								"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.and");
							afterParserOrEnumRuleCall();
						}
						    |
						{
							newCompositeNode(grammarAccess.getOrAccess().getArgumentLetExpParserRuleCall_1_2_0_1());
						}
						lv_argument_3_2=ruleLetExp
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getOrRule());
							}
							set(
								$current,
								"argument",
								lv_argument_3_2,
								"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.LetExp");
							afterParserOrEnumRuleCall();
						}
					)
				)
			)
		)*
	)
;

// Entry rule entryRuleand
entryRuleand returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getAndRule()); }
	iv_ruleand=ruleand
	{ $current=$iv_ruleand.current; }
	EOF;

// Rule and
ruleand returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getAndAccess().getEqualityParserRuleCall_0());
		}
		this_equality_0=ruleequality
		{
			$current = $this_equality_0.current;
			afterParserOrEnumRuleCall();
		}
		(
			(
				{
					/* */
				}
				{
					$current = forceCreateModelElementAndSet(
						grammarAccess.getAndAccess().getInfixExpSourceAction_1_0(),
						$current);
				}
			)
			(
				(
					lv_op_2_0='and'
					{
						newLeafNode(lv_op_2_0, grammarAccess.getAndAccess().getOpAndKeyword_1_1_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getAndRule());
						}
						setWithLastConsumed($current, "op", lv_op_2_0, "and");
					}
				)
			)
			(
				(
					(
						{
							newCompositeNode(grammarAccess.getAndAccess().getArgumentEqualityParserRuleCall_1_2_0_0());
						}
						lv_argument_3_1=ruleequality
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getAndRule());
							}
							set(
								$current,
								"argument",
								lv_argument_3_1,
								"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.equality");
							afterParserOrEnumRuleCall();
						}
						    |
						{
							newCompositeNode(grammarAccess.getAndAccess().getArgumentLetExpParserRuleCall_1_2_0_1());
						}
						lv_argument_3_2=ruleLetExp
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getAndRule());
							}
							set(
								$current,
								"argument",
								lv_argument_3_2,
								"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.LetExp");
							afterParserOrEnumRuleCall();
						}
					)
				)
			)
		)*
	)
;

// Entry rule entryRuleequality
entryRuleequality returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getEqualityRule()); }
	iv_ruleequality=ruleequality
	{ $current=$iv_ruleequality.current; }
	EOF;

// Rule equality
ruleequality returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getEqualityAccess().getRelationalParserRuleCall_0());
		}
		this_relational_0=rulerelational
		{
			$current = $this_relational_0.current;
			afterParserOrEnumRuleCall();
		}
		(
			(
				{
					/* */
				}
				{
					$current = forceCreateModelElementAndSet(
						grammarAccess.getEqualityAccess().getInfixExpSourceAction_1_0(),
						$current);
				}
			)
			(
				(
					(
						lv_op_2_1='='
						{
							newLeafNode(lv_op_2_1, grammarAccess.getEqualityAccess().getOpEqualsSignKeyword_1_1_0_0());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getEqualityRule());
							}
							setWithLastConsumed($current, "op", lv_op_2_1, null);
						}
						    |
						lv_op_2_2='<>'
						{
							newLeafNode(lv_op_2_2, grammarAccess.getEqualityAccess().getOpLessThanSignGreaterThanSignKeyword_1_1_0_1());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getEqualityRule());
							}
							setWithLastConsumed($current, "op", lv_op_2_2, null);
						}
					)
				)
			)
			(
				(
					(
						{
							newCompositeNode(grammarAccess.getEqualityAccess().getArgumentRelationalParserRuleCall_1_2_0_0());
						}
						lv_argument_3_1=rulerelational
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getEqualityRule());
							}
							set(
								$current,
								"argument",
								lv_argument_3_1,
								"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.relational");
							afterParserOrEnumRuleCall();
						}
						    |
						{
							newCompositeNode(grammarAccess.getEqualityAccess().getArgumentLetExpParserRuleCall_1_2_0_1());
						}
						lv_argument_3_2=ruleLetExp
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getEqualityRule());
							}
							set(
								$current,
								"argument",
								lv_argument_3_2,
								"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.LetExp");
							afterParserOrEnumRuleCall();
						}
					)
				)
			)
		)*
	)
;

// Entry rule entryRulerelational
entryRulerelational returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getRelationalRule()); }
	iv_rulerelational=rulerelational
	{ $current=$iv_rulerelational.current; }
	EOF;

// Rule relational
rulerelational returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getRelationalAccess().getAdditiveParserRuleCall_0());
		}
		this_additive_0=ruleadditive
		{
			$current = $this_additive_0.current;
			afterParserOrEnumRuleCall();
		}
		(
			(
				{
					/* */
				}
				{
					$current = forceCreateModelElementAndSet(
						grammarAccess.getRelationalAccess().getInfixExpSourceAction_1_0(),
						$current);
				}
			)
			(
				(
					(
						lv_op_2_1='>'
						{
							newLeafNode(lv_op_2_1, grammarAccess.getRelationalAccess().getOpGreaterThanSignKeyword_1_1_0_0());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getRelationalRule());
							}
							setWithLastConsumed($current, "op", lv_op_2_1, null);
						}
						    |
						lv_op_2_2='<'
						{
							newLeafNode(lv_op_2_2, grammarAccess.getRelationalAccess().getOpLessThanSignKeyword_1_1_0_1());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getRelationalRule());
							}
							setWithLastConsumed($current, "op", lv_op_2_2, null);
						}
						    |
						lv_op_2_3='>='
						{
							newLeafNode(lv_op_2_3, grammarAccess.getRelationalAccess().getOpGreaterThanSignEqualsSignKeyword_1_1_0_2());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getRelationalRule());
							}
							setWithLastConsumed($current, "op", lv_op_2_3, null);
						}
						    |
						lv_op_2_4='<='
						{
							newLeafNode(lv_op_2_4, grammarAccess.getRelationalAccess().getOpLessThanSignEqualsSignKeyword_1_1_0_3());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getRelationalRule());
							}
							setWithLastConsumed($current, "op", lv_op_2_4, null);
						}
					)
				)
			)
			(
				(
					(
						{
							newCompositeNode(grammarAccess.getRelationalAccess().getArgumentAdditiveParserRuleCall_1_2_0_0());
						}
						lv_argument_3_1=ruleadditive
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getRelationalRule());
							}
							set(
								$current,
								"argument",
								lv_argument_3_1,
								"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.additive");
							afterParserOrEnumRuleCall();
						}
						    |
						{
							newCompositeNode(grammarAccess.getRelationalAccess().getArgumentLetExpParserRuleCall_1_2_0_1());
						}
						lv_argument_3_2=ruleLetExp
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getRelationalRule());
							}
							set(
								$current,
								"argument",
								lv_argument_3_2,
								"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.LetExp");
							afterParserOrEnumRuleCall();
						}
					)
				)
			)
		)*
	)
;

// Entry rule entryRuleadditive
entryRuleadditive returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getAdditiveRule()); }
	iv_ruleadditive=ruleadditive
	{ $current=$iv_ruleadditive.current; }
	EOF;

// Rule additive
ruleadditive returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getAdditiveAccess().getMultiplicativeParserRuleCall_0());
		}
		this_multiplicative_0=rulemultiplicative
		{
			$current = $this_multiplicative_0.current;
			afterParserOrEnumRuleCall();
		}
		(
			(
				{
					/* */
				}
				{
					$current = forceCreateModelElementAndSet(
						grammarAccess.getAdditiveAccess().getInfixExpSourceAction_1_0(),
						$current);
				}
			)
			(
				(
					(
						lv_op_2_1='+'
						{
							newLeafNode(lv_op_2_1, grammarAccess.getAdditiveAccess().getOpPlusSignKeyword_1_1_0_0());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getAdditiveRule());
							}
							setWithLastConsumed($current, "op", lv_op_2_1, null);
						}
						    |
						lv_op_2_2='-'
						{
							newLeafNode(lv_op_2_2, grammarAccess.getAdditiveAccess().getOpHyphenMinusKeyword_1_1_0_1());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getAdditiveRule());
							}
							setWithLastConsumed($current, "op", lv_op_2_2, null);
						}
					)
				)
			)
			(
				(
					(
						{
							newCompositeNode(grammarAccess.getAdditiveAccess().getArgumentMultiplicativeParserRuleCall_1_2_0_0());
						}
						lv_argument_3_1=rulemultiplicative
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getAdditiveRule());
							}
							set(
								$current,
								"argument",
								lv_argument_3_1,
								"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.multiplicative");
							afterParserOrEnumRuleCall();
						}
						    |
						{
							newCompositeNode(grammarAccess.getAdditiveAccess().getArgumentLetExpParserRuleCall_1_2_0_1());
						}
						lv_argument_3_2=ruleLetExp
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getAdditiveRule());
							}
							set(
								$current,
								"argument",
								lv_argument_3_2,
								"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.LetExp");
							afterParserOrEnumRuleCall();
						}
					)
				)
			)
		)*
	)
;

// Entry rule entryRulemultiplicative
entryRulemultiplicative returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getMultiplicativeRule()); }
	iv_rulemultiplicative=rulemultiplicative
	{ $current=$iv_rulemultiplicative.current; }
	EOF;

// Rule multiplicative
rulemultiplicative returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getMultiplicativeAccess().getUnaryParserRuleCall_0());
		}
		this_unary_0=ruleunary
		{
			$current = $this_unary_0.current;
			afterParserOrEnumRuleCall();
		}
		(
			(
				{
					/* */
				}
				{
					$current = forceCreateModelElementAndSet(
						grammarAccess.getMultiplicativeAccess().getInfixExpSourceAction_1_0(),
						$current);
				}
			)
			(
				(
					(
						lv_op_2_1='*'
						{
							newLeafNode(lv_op_2_1, grammarAccess.getMultiplicativeAccess().getOpAsteriskKeyword_1_1_0_0());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getMultiplicativeRule());
							}
							setWithLastConsumed($current, "op", lv_op_2_1, null);
						}
						    |
						lv_op_2_2='/'
						{
							newLeafNode(lv_op_2_2, grammarAccess.getMultiplicativeAccess().getOpSolidusKeyword_1_1_0_1());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getMultiplicativeRule());
							}
							setWithLastConsumed($current, "op", lv_op_2_2, null);
						}
					)
				)
			)
			(
				(
					(
						{
							newCompositeNode(grammarAccess.getMultiplicativeAccess().getArgumentUnaryParserRuleCall_1_2_0_0());
						}
						lv_argument_3_1=ruleunary
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getMultiplicativeRule());
							}
							set(
								$current,
								"argument",
								lv_argument_3_1,
								"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.unary");
							afterParserOrEnumRuleCall();
						}
						    |
						{
							newCompositeNode(grammarAccess.getMultiplicativeAccess().getArgumentLetExpParserRuleCall_1_2_0_1());
						}
						lv_argument_3_2=ruleLetExp
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getMultiplicativeRule());
							}
							set(
								$current,
								"argument",
								lv_argument_3_2,
								"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.LetExp");
							afterParserOrEnumRuleCall();
						}
					)
				)
			)
		)*
	)
;

// Entry rule entryRuleunary
entryRuleunary returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getUnaryRule()); }
	iv_ruleunary=ruleunary
	{ $current=$iv_ruleunary.current; }
	EOF;

// Rule unary
ruleunary returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getUnaryAccess().getNavigationExpParserRuleCall_0());
		}
		this_NavigationExp_0=ruleNavigationExp
		{
			$current = $this_NavigationExp_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		(
			(
				{
					/* */
				}
				{
					$current = forceCreateModelElement(
						grammarAccess.getUnaryAccess().getPrefixExpAction_1_0(),
						$current);
				}
			)
			(
				(
					(
						lv_op_2_1='-'
						{
							newLeafNode(lv_op_2_1, grammarAccess.getUnaryAccess().getOpHyphenMinusKeyword_1_1_0_0());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getUnaryRule());
							}
							setWithLastConsumed($current, "op", lv_op_2_1, null);
						}
						    |
						lv_op_2_2='not'
						{
							newLeafNode(lv_op_2_2, grammarAccess.getUnaryAccess().getOpNotKeyword_1_1_0_1());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getUnaryRule());
							}
							setWithLastConsumed($current, "op", lv_op_2_2, null);
						}
					)
				)
			)
			(
				(
					{
						newCompositeNode(grammarAccess.getUnaryAccess().getSourceUnaryParserRuleCall_1_2_0());
					}
					lv_source_3_0=ruleunary
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getUnaryRule());
						}
						set(
							$current,
							"source",
							lv_source_3_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.unary");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)
	)
;

// Entry rule entryRuleSubNavigationExp
entryRuleSubNavigationExp returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getSubNavigationExpRule()); }
	iv_ruleSubNavigationExp=ruleSubNavigationExp
	{ $current=$iv_ruleSubNavigationExp.current; }
	EOF;

// Rule SubNavigationExp
ruleSubNavigationExp returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getSubNavigationExpAccess().getRoundBracketExpParserRuleCall_0());
		}
		this_RoundBracketExp_0=ruleRoundBracketExp
		{
			$current = $this_RoundBracketExp_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getSubNavigationExpAccess().getSquareBracketExpParserRuleCall_1());
		}
		this_SquareBracketExp_1=ruleSquareBracketExp
		{
			$current = $this_SquareBracketExp_1.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getSubNavigationExpAccess().getSelfExpParserRuleCall_2());
		}
		this_SelfExp_2=ruleSelfExp
		{
			$current = $this_SelfExp_2.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getSubNavigationExpAccess().getPrimitiveLiteralExpParserRuleCall_3());
		}
		this_PrimitiveLiteralExp_3=rulePrimitiveLiteralExp
		{
			$current = $this_PrimitiveLiteralExp_3.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getSubNavigationExpAccess().getTupleLiteralExpParserRuleCall_4());
		}
		this_TupleLiteralExp_4=ruleTupleLiteralExp
		{
			$current = $this_TupleLiteralExp_4.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getSubNavigationExpAccess().getCollectionLiteralExpParserRuleCall_5());
		}
		this_CollectionLiteralExp_5=ruleCollectionLiteralExp
		{
			$current = $this_CollectionLiteralExp_5.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getSubNavigationExpAccess().getPreExpParserRuleCall_6());
		}
		this_PreExp_6=rulePreExp
		{
			$current = $this_PreExp_6.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getSubNavigationExpAccess().getTypeExpParserRuleCall_7());
		}
		this_TypeExp_7=ruleTypeExp
		{
			$current = $this_TypeExp_7.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getSubNavigationExpAccess().getIfExpParserRuleCall_8());
		}
		this_IfExp_8=ruleIfExp
		{
			$current = $this_IfExp_8.current;
			afterParserOrEnumRuleCall();
		}
		    |
		(
			otherlv_9='('
			{
				newLeafNode(otherlv_9, grammarAccess.getSubNavigationExpAccess().getLeftParenthesisKeyword_9_0());
			}
			(
				{
					/* */
				}
				{
					$current = forceCreateModelElement(
						grammarAccess.getSubNavigationExpAccess().getNestedExpAction_9_1(),
						$current);
				}
			)
			(
				(
					{
						newCompositeNode(grammarAccess.getSubNavigationExpAccess().getSourceExpressionParserRuleCall_9_2_0());
					}
					lv_source_11_0=ruleExpression
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getSubNavigationExpRule());
						}
						set(
							$current,
							"source",
							lv_source_11_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Expression");
						afterParserOrEnumRuleCall();
					}
				)
			)
			otherlv_12=')'
			{
				newLeafNode(otherlv_12, grammarAccess.getSubNavigationExpAccess().getRightParenthesisKeyword_9_3());
			}
		)
	)
;

// Entry rule entryRuleSubNavigatingExp
entryRuleSubNavigatingExp returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getSubNavigatingExpRule()); }
	iv_ruleSubNavigatingExp=ruleSubNavigatingExp
	{ $current=$iv_ruleSubNavigatingExp.current; }
	EOF;

// Rule SubNavigatingExp
ruleSubNavigatingExp returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getSubNavigatingExpAccess().getRoundBracketExpParserRuleCall_0());
		}
		this_RoundBracketExp_0=ruleRoundBracketExp
		{
			$current = $this_RoundBracketExp_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getSubNavigatingExpAccess().getSquareBracketExpParserRuleCall_1());
		}
		this_SquareBracketExp_1=ruleSquareBracketExp
		{
			$current = $this_SquareBracketExp_1.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getSubNavigatingExpAccess().getPreExpParserRuleCall_2());
		}
		this_PreExp_2=rulePreExp
		{
			$current = $this_PreExp_2.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getSubNavigatingExpAccess().getNameExpParserRuleCall_3());
		}
		this_NameExp_3=ruleNameExp
		{
			$current = $this_NameExp_3.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleiteratorVariable
entryRuleiteratorVariable returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getIteratorVariableRule()); }
	iv_ruleiteratorVariable=ruleiteratorVariable
	{ $current=$iv_ruleiteratorVariable.current; }
	EOF;

// Rule iteratorVariable
ruleiteratorVariable returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					newCompositeNode(grammarAccess.getIteratorVariableAccess().getNameIdentifierParserRuleCall_0_0());
				}
				lv_name_0_0=ruleIdentifier
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getIteratorVariableRule());
					}
					set(
						$current,
						"name",
						lv_name_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Identifier");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			otherlv_1=':'
			{
				newLeafNode(otherlv_1, grammarAccess.getIteratorVariableAccess().getColonKeyword_1_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getIteratorVariableAccess().getTypeTypeExpParserRuleCall_1_1_0());
					}
					lv_type_2_0=ruleTypeExp
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getIteratorVariableRule());
						}
						set(
							$current,
							"type",
							lv_type_2_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.TypeExp");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)?
	)
;

// Entry rule entryRuleiteratorAccumulator
entryRuleiteratorAccumulator returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getIteratorAccumulatorRule()); }
	iv_ruleiteratorAccumulator=ruleiteratorAccumulator
	{ $current=$iv_ruleiteratorAccumulator.current; }
	EOF;

// Rule iteratorAccumulator
ruleiteratorAccumulator returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					newCompositeNode(grammarAccess.getIteratorAccumulatorAccess().getNameIdentifierParserRuleCall_0_0());
				}
				lv_name_0_0=ruleIdentifier
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getIteratorAccumulatorRule());
					}
					set(
						$current,
						"name",
						lv_name_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Identifier");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_1=':'
		{
			newLeafNode(otherlv_1, grammarAccess.getIteratorAccumulatorAccess().getColonKeyword_1());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getIteratorAccumulatorAccess().getTypeTypeExpParserRuleCall_2_0());
				}
				lv_type_2_0=ruleTypeExp
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getIteratorAccumulatorRule());
					}
					set(
						$current,
						"type",
						lv_type_2_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.TypeExp");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_3='='
		{
			newLeafNode(otherlv_3, grammarAccess.getIteratorAccumulatorAccess().getEqualsSignKeyword_3());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getIteratorAccumulatorAccess().getInitExpressionExpressionParserRuleCall_4_0());
				}
				lv_initExpression_4_0=ruleExpression
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getIteratorAccumulatorRule());
					}
					set(
						$current,
						"initExpression",
						lv_initExpression_4_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Expression");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleRoundBracketExp
entryRuleRoundBracketExp returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getRoundBracketExpRule()); }
	iv_ruleRoundBracketExp=ruleRoundBracketExp
	{ $current=$iv_ruleRoundBracketExp.current; }
	EOF;

// Rule RoundBracketExp
ruleRoundBracketExp returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					newCompositeNode(grammarAccess.getRoundBracketExpAccess().getNameNameExpParserRuleCall_0_0());
				}
				lv_name_0_0=ruleNameExp
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getRoundBracketExpRule());
					}
					set(
						$current,
						"name",
						lv_name_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.NameExp");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			otherlv_1='@'
			{
				newLeafNode(otherlv_1, grammarAccess.getRoundBracketExpAccess().getCommercialAtKeyword_1_0());
			}
			(
				(
					lv_pre_2_0='pre'
					{
						newLeafNode(lv_pre_2_0, grammarAccess.getRoundBracketExpAccess().getPrePreKeyword_1_1_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getRoundBracketExpRule());
						}
						setWithLastConsumed($current, "pre", lv_pre_2_0 != null, "pre");
					}
				)
			)
		)?
		otherlv_3='('
		{
			newLeafNode(otherlv_3, grammarAccess.getRoundBracketExpAccess().getLeftParenthesisKeyword_2());
		}
		(
			(
				(
					{
						newCompositeNode(grammarAccess.getRoundBracketExpAccess().getVariable1IteratorVariableParserRuleCall_3_0_0());
					}
					lv_variable1_4_0=ruleiteratorVariable
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getRoundBracketExpRule());
						}
						set(
							$current,
							"variable1",
							lv_variable1_4_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.iteratorVariable");
						afterParserOrEnumRuleCall();
					}
				)
			)
			(
				(
					otherlv_5=','
					{
						newLeafNode(otherlv_5, grammarAccess.getRoundBracketExpAccess().getCommaKeyword_3_1_0_0());
					}
					(
						(
							{
								newCompositeNode(grammarAccess.getRoundBracketExpAccess().getVariable2IteratorVariableParserRuleCall_3_1_0_1_0());
							}
							lv_variable2_6_0=ruleiteratorVariable
							{
								if ($current==null) {
									$current = createModelElementForParent(grammarAccess.getRoundBracketExpRule());
								}
								set(
									$current,
									"variable2",
									lv_variable2_6_0,
									"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.iteratorVariable");
								afterParserOrEnumRuleCall();
							}
						)
					)
				)
				    |
				(
					otherlv_7=';'
					{
						newLeafNode(otherlv_7, grammarAccess.getRoundBracketExpAccess().getSemicolonKeyword_3_1_1_0());
					}
					(
						(
							{
								newCompositeNode(grammarAccess.getRoundBracketExpAccess().getVariable2IteratorAccumulatorParserRuleCall_3_1_1_1_0());
							}
							lv_variable2_8_0=ruleiteratorAccumulator
							{
								if ($current==null) {
									$current = createModelElementForParent(grammarAccess.getRoundBracketExpRule());
								}
								set(
									$current,
									"variable2",
									lv_variable2_8_0,
									"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.iteratorAccumulator");
								afterParserOrEnumRuleCall();
							}
						)
					)
				)
			)?
			otherlv_9='|'
			{
				newLeafNode(otherlv_9, grammarAccess.getRoundBracketExpAccess().getVerticalLineKeyword_3_2());
			}
		)?
		(
			(
				(
					{
						newCompositeNode(grammarAccess.getRoundBracketExpAccess().getArgumentsExpressionParserRuleCall_4_0_0());
					}
					lv_arguments_10_0=ruleExpression
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getRoundBracketExpRule());
						}
						add(
							$current,
							"arguments",
							lv_arguments_10_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Expression");
						afterParserOrEnumRuleCall();
					}
				)
			)
			(
				otherlv_11=','
				{
					newLeafNode(otherlv_11, grammarAccess.getRoundBracketExpAccess().getCommaKeyword_4_1_0());
				}
				(
					(
						{
							newCompositeNode(grammarAccess.getRoundBracketExpAccess().getArgumentsExpressionParserRuleCall_4_1_1_0());
						}
						lv_arguments_12_0=ruleExpression
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getRoundBracketExpRule());
							}
							add(
								$current,
								"arguments",
								lv_arguments_12_0,
								"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Expression");
							afterParserOrEnumRuleCall();
						}
					)
				)
			)*
		)?
		otherlv_13=')'
		{
			newLeafNode(otherlv_13, grammarAccess.getRoundBracketExpAccess().getRightParenthesisKeyword_5());
		}
	)
;

// Entry rule entryRuleSquareBracketExp
entryRuleSquareBracketExp returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getSquareBracketExpRule()); }
	iv_ruleSquareBracketExp=ruleSquareBracketExp
	{ $current=$iv_ruleSquareBracketExp.current; }
	EOF;

// Rule SquareBracketExp
ruleSquareBracketExp returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					newCompositeNode(grammarAccess.getSquareBracketExpAccess().getNameNameExpParserRuleCall_0_0());
				}
				lv_name_0_0=ruleNameExp
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getSquareBracketExpRule());
					}
					set(
						$current,
						"name",
						lv_name_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.NameExp");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_1='['
		{
			newLeafNode(otherlv_1, grammarAccess.getSquareBracketExpAccess().getLeftSquareBracketKeyword_1());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getSquareBracketExpAccess().getArgumentsExpressionParserRuleCall_2_0());
				}
				lv_arguments_2_0=ruleExpression
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getSquareBracketExpRule());
					}
					add(
						$current,
						"arguments",
						lv_arguments_2_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Expression");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			otherlv_3=','
			{
				newLeafNode(otherlv_3, grammarAccess.getSquareBracketExpAccess().getCommaKeyword_3_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getSquareBracketExpAccess().getArgumentsExpressionParserRuleCall_3_1_0());
					}
					lv_arguments_4_0=ruleExpression
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getSquareBracketExpRule());
						}
						add(
							$current,
							"arguments",
							lv_arguments_4_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Expression");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)*
		otherlv_5=']'
		{
			newLeafNode(otherlv_5, grammarAccess.getSquareBracketExpAccess().getRightSquareBracketKeyword_4());
		}
		(
			otherlv_6='@'
			{
				newLeafNode(otherlv_6, grammarAccess.getSquareBracketExpAccess().getCommercialAtKeyword_5_0());
			}
			(
				(
					lv_pre_7_0='pre'
					{
						newLeafNode(lv_pre_7_0, grammarAccess.getSquareBracketExpAccess().getPrePreKeyword_5_1_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getSquareBracketExpRule());
						}
						setWithLastConsumed($current, "pre", lv_pre_7_0 != null, "pre");
					}
				)
			)
		)?
	)
;

// Entry rule entryRulePreExp
entryRulePreExp returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getPreExpRule()); }
	iv_rulePreExp=rulePreExp
	{ $current=$iv_rulePreExp.current; }
	EOF;

// Rule PreExp
rulePreExp returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					newCompositeNode(grammarAccess.getPreExpAccess().getNameNameExpParserRuleCall_0_0());
				}
				lv_name_0_0=ruleNameExp
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getPreExpRule());
					}
					set(
						$current,
						"name",
						lv_name_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.NameExp");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_1='@'
		{
			newLeafNode(otherlv_1, grammarAccess.getPreExpAccess().getCommercialAtKeyword_1());
		}
		otherlv_2='pre'
		{
			newLeafNode(otherlv_2, grammarAccess.getPreExpAccess().getPreKeyword_2());
		}
	)
;

// Entry rule entryRuleSelfExp
entryRuleSelfExp returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getSelfExpRule()); }
	iv_ruleSelfExp=ruleSelfExp
	{ $current=$iv_ruleSelfExp.current; }
	EOF;

// Rule SelfExp
ruleSelfExp returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				/* */
			}
			{
				$current = forceCreateModelElement(
					grammarAccess.getSelfExpAccess().getSelfExpAction_0(),
					$current);
			}
		)
		otherlv_1='self'
		{
			newLeafNode(otherlv_1, grammarAccess.getSelfExpAccess().getSelfKeyword_1());
		}
	)
;

// Entry rule entryRuleNameExp
entryRuleNameExp returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getNameExpRule()); }
	iv_ruleNameExp=ruleNameExp
	{ $current=$iv_ruleNameExp.current; }
	EOF;

// Rule NameExp
ruleNameExp returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getNameExpAccess().getPathNameExpParserRuleCall_0());
		}
		this_PathNameExp_0=rulePathNameExp
		{
			$current = $this_PathNameExp_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			/* */
		}
		{
			newCompositeNode(grammarAccess.getNameExpAccess().getSimpleNameExpParserRuleCall_1());
		}
		this_SimpleNameExp_1=ruleSimpleNameExp
		{
			$current = $this_SimpleNameExp_1.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRulePathNameExp
entryRulePathNameExp returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getPathNameExpRule()); }
	iv_rulePathNameExp=rulePathNameExp
	{ $current=$iv_rulePathNameExp.current; }
	EOF;

// Rule PathNameExp
rulePathNameExp returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					newCompositeNode(grammarAccess.getPathNameExpAccess().getNamespaceIdentifierParserRuleCall_0_0());
				}
				lv_namespace_0_0=ruleIdentifier
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getPathNameExpRule());
					}
					set(
						$current,
						"namespace",
						lv_namespace_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Identifier");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_1='::'
		{
			newLeafNode(otherlv_1, grammarAccess.getPathNameExpAccess().getColonColonKeyword_1());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getPathNameExpAccess().getElementNameExpParserRuleCall_2_0());
				}
				lv_element_2_0=ruleNameExp
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getPathNameExpRule());
					}
					set(
						$current,
						"element",
						lv_element_2_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.NameExp");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleSimpleNameExp
entryRuleSimpleNameExp returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getSimpleNameExpRule()); }
	iv_ruleSimpleNameExp=ruleSimpleNameExp
	{ $current=$iv_ruleSimpleNameExp.current; }
	EOF;

// Rule SimpleNameExp
ruleSimpleNameExp returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				newCompositeNode(grammarAccess.getSimpleNameExpAccess().getElementIdentifierParserRuleCall_0());
			}
			lv_element_0_0=ruleIdentifier
			{
				if ($current==null) {
					$current = createModelElementForParent(grammarAccess.getSimpleNameExpRule());
				}
				set(
					$current,
					"element",
					lv_element_0_0,
					"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Identifier");
				afterParserOrEnumRuleCall();
			}
		)
	)
;

// Entry rule entryRuleIfExp
entryRuleIfExp returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getIfExpRule()); }
	iv_ruleIfExp=ruleIfExp
	{ $current=$iv_ruleIfExp.current; }
	EOF;

// Rule IfExp
ruleIfExp returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='if'
		{
			newLeafNode(otherlv_0, grammarAccess.getIfExpAccess().getIfKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getIfExpAccess().getConditionExpressionParserRuleCall_1_0());
				}
				lv_condition_1_0=ruleExpression
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getIfExpRule());
					}
					set(
						$current,
						"condition",
						lv_condition_1_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Expression");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_2='then'
		{
			newLeafNode(otherlv_2, grammarAccess.getIfExpAccess().getThenKeyword_2());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getIfExpAccess().getThenExpressionExpressionParserRuleCall_3_0());
				}
				lv_thenExpression_3_0=ruleExpression
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getIfExpRule());
					}
					set(
						$current,
						"thenExpression",
						lv_thenExpression_3_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Expression");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_4='else'
		{
			newLeafNode(otherlv_4, grammarAccess.getIfExpAccess().getElseKeyword_4());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getIfExpAccess().getElseExpressionExpressionParserRuleCall_5_0());
				}
				lv_elseExpression_5_0=ruleExpression
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getIfExpRule());
					}
					set(
						$current,
						"elseExpression",
						lv_elseExpression_5_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Expression");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_6='endif'
		{
			newLeafNode(otherlv_6, grammarAccess.getIfExpAccess().getEndifKeyword_6());
		}
	)
;

// Entry rule entryRuleLetExp
entryRuleLetExp returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getLetExpRule()); }
	iv_ruleLetExp=ruleLetExp
	{ $current=$iv_ruleLetExp.current; }
	EOF;

// Rule LetExp
ruleLetExp returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='let'
		{
			newLeafNode(otherlv_0, grammarAccess.getLetExpAccess().getLetKeyword_0());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getLetExpAccess().getVariableLetVariableParserRuleCall_1_0());
				}
				lv_variable_1_0=ruleLetVariable
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getLetExpRule());
					}
					add(
						$current,
						"variable",
						lv_variable_1_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.LetVariable");
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			otherlv_2=','
			{
				newLeafNode(otherlv_2, grammarAccess.getLetExpAccess().getCommaKeyword_2_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getLetExpAccess().getVariableLetVariableParserRuleCall_2_1_0());
					}
					lv_variable_3_0=ruleLetVariable
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getLetExpRule());
						}
						add(
							$current,
							"variable",
							lv_variable_3_0,
							"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.LetVariable");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)*
		otherlv_4='in'
		{
			newLeafNode(otherlv_4, grammarAccess.getLetExpAccess().getInKeyword_3());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getLetExpAccess().getInExpressionParserRuleCall_4_0());
				}
				lv_in_5_0=ruleExpression
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getLetExpRule());
					}
					set(
						$current,
						"in",
						lv_in_5_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Expression");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleLetVariable
entryRuleLetVariable returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getLetVariableRule()); }
	iv_ruleLetVariable=ruleLetVariable
	{ $current=$iv_ruleLetVariable.current; }
	EOF;

// Rule LetVariable
ruleLetVariable returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					newCompositeNode(grammarAccess.getLetVariableAccess().getNameIdentifierParserRuleCall_0_0());
				}
				lv_name_0_0=ruleIdentifier
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getLetVariableRule());
					}
					set(
						$current,
						"name",
						lv_name_0_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Identifier");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_1=':'
		{
			newLeafNode(otherlv_1, grammarAccess.getLetVariableAccess().getColonKeyword_1());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getLetVariableAccess().getTypeTypeExpParserRuleCall_2_0());
				}
				lv_type_2_0=ruleTypeExp
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getLetVariableRule());
					}
					set(
						$current,
						"type",
						lv_type_2_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.TypeExp");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_3='='
		{
			newLeafNode(otherlv_3, grammarAccess.getLetVariableAccess().getEqualsSignKeyword_3());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getLetVariableAccess().getInitExpressionExpressionParserRuleCall_4_0());
				}
				lv_initExpression_4_0=ruleExpression
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getLetVariableRule());
					}
					set(
						$current,
						"initExpression",
						lv_initExpression_4_0,
						"org.eclipse.xtext.ui.tests.editor.contentassist.BacktrackingContentAssistTestLanguage.Expression");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;

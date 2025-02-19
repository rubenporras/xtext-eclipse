package org.eclipse.xtext.ui.tests.parser.antlr.internal;

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.eclipse.xtext.ui.tests.services.FoldingTestLanguageGrammarAccess;



import org.antlr.runtime.*;
import java.util.Stack;
import java.util.List;
import java.util.ArrayList;

/*******************************************************************************
 * Copyright (c) 2010, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
@SuppressWarnings("all")
public class InternalFoldingTestLanguageParser extends AbstractInternalAntlrParser {
    public static final String[] tokenNames = new String[] {
        "<invalid>", "<EOR>", "<DOWN>", "<UP>", "RULE_ID", "RULE_INT", "RULE_STRING", "RULE_ML_COMMENT", "RULE_SL_COMMENT", "RULE_WS", "RULE_ANY_OTHER", "'element'", "'end'"
    };
    public static final int RULE_ID=4;
    public static final int RULE_WS=9;
    public static final int RULE_STRING=6;
    public static final int RULE_ANY_OTHER=10;
    public static final int RULE_SL_COMMENT=8;
    public static final int RULE_INT=5;
    public static final int T__11=11;
    public static final int RULE_ML_COMMENT=7;
    public static final int T__12=12;
    public static final int EOF=-1;

    // delegates
    // delegators


        public InternalFoldingTestLanguageParser(TokenStream input) {
            this(input, new RecognizerSharedState());
        }
        public InternalFoldingTestLanguageParser(TokenStream input, RecognizerSharedState state) {
            super(input, state);
             
        }
        

    public String[] getTokenNames() { return InternalFoldingTestLanguageParser.tokenNames; }
    public String getGrammarFileName() { return "InternalFoldingTestLanguage.g"; }



     	private FoldingTestLanguageGrammarAccess grammarAccess;

        public InternalFoldingTestLanguageParser(TokenStream input, FoldingTestLanguageGrammarAccess grammarAccess) {
            this(input);
            this.grammarAccess = grammarAccess;
            registerRules(grammarAccess.getGrammar());
        }

        @Override
        protected String getFirstRuleName() {
        	return "FoldingModel";
       	}

       	@Override
       	protected FoldingTestLanguageGrammarAccess getGrammarAccess() {
       		return grammarAccess;
       	}




    // $ANTLR start "entryRuleFoldingModel"
    // InternalFoldingTestLanguage.g:69:1: entryRuleFoldingModel returns [EObject current=null] : iv_ruleFoldingModel= ruleFoldingModel EOF ;
    public final EObject entryRuleFoldingModel() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleFoldingModel = null;


        try {
            // InternalFoldingTestLanguage.g:69:53: (iv_ruleFoldingModel= ruleFoldingModel EOF )
            // InternalFoldingTestLanguage.g:70:2: iv_ruleFoldingModel= ruleFoldingModel EOF
            {
             newCompositeNode(grammarAccess.getFoldingModelRule()); 
            pushFollow(FollowSets000.FOLLOW_1);
            iv_ruleFoldingModel=ruleFoldingModel();

            state._fsp--;

             current =iv_ruleFoldingModel; 
            match(input,EOF,FollowSets000.FOLLOW_2); 

            }

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleFoldingModel"


    // $ANTLR start "ruleFoldingModel"
    // InternalFoldingTestLanguage.g:76:1: ruleFoldingModel returns [EObject current=null] : ( (lv_elements_0_0= ruleElement ) )* ;
    public final EObject ruleFoldingModel() throws RecognitionException {
        EObject current = null;

        EObject lv_elements_0_0 = null;



        	enterRule();

        try {
            // InternalFoldingTestLanguage.g:82:2: ( ( (lv_elements_0_0= ruleElement ) )* )
            // InternalFoldingTestLanguage.g:83:2: ( (lv_elements_0_0= ruleElement ) )*
            {
            // InternalFoldingTestLanguage.g:83:2: ( (lv_elements_0_0= ruleElement ) )*
            loop1:
            do {
                int alt1=2;
                int LA1_0 = input.LA(1);

                if ( (LA1_0==11) ) {
                    alt1=1;
                }


                switch (alt1) {
            	case 1 :
            	    // InternalFoldingTestLanguage.g:84:3: (lv_elements_0_0= ruleElement )
            	    {
            	    // InternalFoldingTestLanguage.g:84:3: (lv_elements_0_0= ruleElement )
            	    // InternalFoldingTestLanguage.g:85:4: lv_elements_0_0= ruleElement
            	    {

            	    				newCompositeNode(grammarAccess.getFoldingModelAccess().getElementsElementParserRuleCall_0());
            	    			
            	    pushFollow(FollowSets000.FOLLOW_3);
            	    lv_elements_0_0=ruleElement();

            	    state._fsp--;


            	    				if (current==null) {
            	    					current = createModelElementForParent(grammarAccess.getFoldingModelRule());
            	    				}
            	    				add(
            	    					current,
            	    					"elements",
            	    					lv_elements_0_0,
            	    					"org.eclipse.xtext.ui.tests.FoldingTestLanguage.Element");
            	    				afterParserOrEnumRuleCall();
            	    			

            	    }


            	    }
            	    break;

            	default :
            	    break loop1;
                }
            } while (true);


            }


            	leaveRule();

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleFoldingModel"


    // $ANTLR start "entryRuleElement"
    // InternalFoldingTestLanguage.g:105:1: entryRuleElement returns [EObject current=null] : iv_ruleElement= ruleElement EOF ;
    public final EObject entryRuleElement() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleElement = null;


        try {
            // InternalFoldingTestLanguage.g:105:48: (iv_ruleElement= ruleElement EOF )
            // InternalFoldingTestLanguage.g:106:2: iv_ruleElement= ruleElement EOF
            {
             newCompositeNode(grammarAccess.getElementRule()); 
            pushFollow(FollowSets000.FOLLOW_1);
            iv_ruleElement=ruleElement();

            state._fsp--;

             current =iv_ruleElement; 
            match(input,EOF,FollowSets000.FOLLOW_2); 

            }

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "entryRuleElement"


    // $ANTLR start "ruleElement"
    // InternalFoldingTestLanguage.g:112:1: ruleElement returns [EObject current=null] : (otherlv_0= 'element' ( (lv_name_1_0= RULE_ID ) ) ( (lv_subelements_2_0= ruleElement ) )* otherlv_3= 'end' ) ;
    public final EObject ruleElement() throws RecognitionException {
        EObject current = null;

        Token otherlv_0=null;
        Token lv_name_1_0=null;
        Token otherlv_3=null;
        EObject lv_subelements_2_0 = null;



        	enterRule();

        try {
            // InternalFoldingTestLanguage.g:118:2: ( (otherlv_0= 'element' ( (lv_name_1_0= RULE_ID ) ) ( (lv_subelements_2_0= ruleElement ) )* otherlv_3= 'end' ) )
            // InternalFoldingTestLanguage.g:119:2: (otherlv_0= 'element' ( (lv_name_1_0= RULE_ID ) ) ( (lv_subelements_2_0= ruleElement ) )* otherlv_3= 'end' )
            {
            // InternalFoldingTestLanguage.g:119:2: (otherlv_0= 'element' ( (lv_name_1_0= RULE_ID ) ) ( (lv_subelements_2_0= ruleElement ) )* otherlv_3= 'end' )
            // InternalFoldingTestLanguage.g:120:3: otherlv_0= 'element' ( (lv_name_1_0= RULE_ID ) ) ( (lv_subelements_2_0= ruleElement ) )* otherlv_3= 'end'
            {
            otherlv_0=(Token)match(input,11,FollowSets000.FOLLOW_4); 

            			newLeafNode(otherlv_0, grammarAccess.getElementAccess().getElementKeyword_0());
            		
            // InternalFoldingTestLanguage.g:124:3: ( (lv_name_1_0= RULE_ID ) )
            // InternalFoldingTestLanguage.g:125:4: (lv_name_1_0= RULE_ID )
            {
            // InternalFoldingTestLanguage.g:125:4: (lv_name_1_0= RULE_ID )
            // InternalFoldingTestLanguage.g:126:5: lv_name_1_0= RULE_ID
            {
            lv_name_1_0=(Token)match(input,RULE_ID,FollowSets000.FOLLOW_5); 

            					newLeafNode(lv_name_1_0, grammarAccess.getElementAccess().getNameIDTerminalRuleCall_1_0());
            				

            					if (current==null) {
            						current = createModelElement(grammarAccess.getElementRule());
            					}
            					setWithLastConsumed(
            						current,
            						"name",
            						lv_name_1_0,
            						"org.eclipse.xtext.common.Terminals.ID");
            				

            }


            }

            // InternalFoldingTestLanguage.g:142:3: ( (lv_subelements_2_0= ruleElement ) )*
            loop2:
            do {
                int alt2=2;
                int LA2_0 = input.LA(1);

                if ( (LA2_0==11) ) {
                    alt2=1;
                }


                switch (alt2) {
            	case 1 :
            	    // InternalFoldingTestLanguage.g:143:4: (lv_subelements_2_0= ruleElement )
            	    {
            	    // InternalFoldingTestLanguage.g:143:4: (lv_subelements_2_0= ruleElement )
            	    // InternalFoldingTestLanguage.g:144:5: lv_subelements_2_0= ruleElement
            	    {

            	    					newCompositeNode(grammarAccess.getElementAccess().getSubelementsElementParserRuleCall_2_0());
            	    				
            	    pushFollow(FollowSets000.FOLLOW_5);
            	    lv_subelements_2_0=ruleElement();

            	    state._fsp--;


            	    					if (current==null) {
            	    						current = createModelElementForParent(grammarAccess.getElementRule());
            	    					}
            	    					add(
            	    						current,
            	    						"subelements",
            	    						lv_subelements_2_0,
            	    						"org.eclipse.xtext.ui.tests.FoldingTestLanguage.Element");
            	    					afterParserOrEnumRuleCall();
            	    				

            	    }


            	    }
            	    break;

            	default :
            	    break loop2;
                }
            } while (true);

            otherlv_3=(Token)match(input,12,FollowSets000.FOLLOW_2); 

            			newLeafNode(otherlv_3, grammarAccess.getElementAccess().getEndKeyword_3());
            		

            }


            }


            	leaveRule();

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {
        }
        return current;
    }
    // $ANTLR end "ruleElement"

    // Delegated rules


 

    
    private static class FollowSets000 {
        public static final BitSet FOLLOW_1 = new BitSet(new long[]{0x0000000000000000L});
        public static final BitSet FOLLOW_2 = new BitSet(new long[]{0x0000000000000002L});
        public static final BitSet FOLLOW_3 = new BitSet(new long[]{0x0000000000000802L});
        public static final BitSet FOLLOW_4 = new BitSet(new long[]{0x0000000000000010L});
        public static final BitSet FOLLOW_5 = new BitSet(new long[]{0x0000000000001800L});
    }


}
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
import org.eclipse.xtext.ui.tests.editor.contentassist.services.TwoContextsTestLanguageGrammarAccess;



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
public class InternalTwoContextsTestLanguageParser extends AbstractInternalAntlrParser {
    public static final String[] tokenNames = new String[] {
        "<invalid>", "<EOR>", "<DOWN>", "<UP>", "RULE_ID", "RULE_INT", "RULE_STRING", "RULE_ML_COMMENT", "RULE_SL_COMMENT", "RULE_WS", "RULE_ANY_OTHER", "'refersTo'", "';'"
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


        public InternalTwoContextsTestLanguageParser(TokenStream input) {
            this(input, new RecognizerSharedState());
        }
        public InternalTwoContextsTestLanguageParser(TokenStream input, RecognizerSharedState state) {
            super(input, state);
             
        }
        

    public String[] getTokenNames() { return InternalTwoContextsTestLanguageParser.tokenNames; }
    public String getGrammarFileName() { return "InternalTwoContextsTestLanguage.g"; }



     	private TwoContextsTestLanguageGrammarAccess grammarAccess;

        public InternalTwoContextsTestLanguageParser(TokenStream input, TwoContextsTestLanguageGrammarAccess grammarAccess) {
            this(input);
            this.grammarAccess = grammarAccess;
            registerRules(grammarAccess.getGrammar());
        }

        @Override
        protected String getFirstRuleName() {
        	return "MainModel";
       	}

       	@Override
       	protected TwoContextsTestLanguageGrammarAccess getGrammarAccess() {
       		return grammarAccess;
       	}




    // $ANTLR start "entryRuleMainModel"
    // InternalTwoContextsTestLanguage.g:69:1: entryRuleMainModel returns [EObject current=null] : iv_ruleMainModel= ruleMainModel EOF ;
    public final EObject entryRuleMainModel() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleMainModel = null;


        try {
            // InternalTwoContextsTestLanguage.g:69:50: (iv_ruleMainModel= ruleMainModel EOF )
            // InternalTwoContextsTestLanguage.g:70:2: iv_ruleMainModel= ruleMainModel EOF
            {
             newCompositeNode(grammarAccess.getMainModelRule()); 
            pushFollow(FollowSets000.FOLLOW_1);
            iv_ruleMainModel=ruleMainModel();

            state._fsp--;

             current =iv_ruleMainModel; 
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
    // $ANTLR end "entryRuleMainModel"


    // $ANTLR start "ruleMainModel"
    // InternalTwoContextsTestLanguage.g:76:1: ruleMainModel returns [EObject current=null] : ( (lv_elements_0_0= ruleAnElement ) )* ;
    public final EObject ruleMainModel() throws RecognitionException {
        EObject current = null;

        EObject lv_elements_0_0 = null;



        	enterRule();

        try {
            // InternalTwoContextsTestLanguage.g:82:2: ( ( (lv_elements_0_0= ruleAnElement ) )* )
            // InternalTwoContextsTestLanguage.g:83:2: ( (lv_elements_0_0= ruleAnElement ) )*
            {
            // InternalTwoContextsTestLanguage.g:83:2: ( (lv_elements_0_0= ruleAnElement ) )*
            loop1:
            do {
                int alt1=2;
                int LA1_0 = input.LA(1);

                if ( (LA1_0==RULE_ID) ) {
                    alt1=1;
                }


                switch (alt1) {
            	case 1 :
            	    // InternalTwoContextsTestLanguage.g:84:3: (lv_elements_0_0= ruleAnElement )
            	    {
            	    // InternalTwoContextsTestLanguage.g:84:3: (lv_elements_0_0= ruleAnElement )
            	    // InternalTwoContextsTestLanguage.g:85:4: lv_elements_0_0= ruleAnElement
            	    {

            	    				newCompositeNode(grammarAccess.getMainModelAccess().getElementsAnElementParserRuleCall_0());
            	    			
            	    pushFollow(FollowSets000.FOLLOW_3);
            	    lv_elements_0_0=ruleAnElement();

            	    state._fsp--;


            	    				if (current==null) {
            	    					current = createModelElementForParent(grammarAccess.getMainModelRule());
            	    				}
            	    				add(
            	    					current,
            	    					"elements",
            	    					lv_elements_0_0,
            	    					"org.eclipse.xtext.ui.tests.editor.contentassist.TwoContextsTestLanguage.AnElement");
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
    // $ANTLR end "ruleMainModel"


    // $ANTLR start "entryRuleAnElement"
    // InternalTwoContextsTestLanguage.g:105:1: entryRuleAnElement returns [EObject current=null] : iv_ruleAnElement= ruleAnElement EOF ;
    public final EObject entryRuleAnElement() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleAnElement = null;


        try {
            // InternalTwoContextsTestLanguage.g:105:50: (iv_ruleAnElement= ruleAnElement EOF )
            // InternalTwoContextsTestLanguage.g:106:2: iv_ruleAnElement= ruleAnElement EOF
            {
             newCompositeNode(grammarAccess.getAnElementRule()); 
            pushFollow(FollowSets000.FOLLOW_1);
            iv_ruleAnElement=ruleAnElement();

            state._fsp--;

             current =iv_ruleAnElement; 
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
    // $ANTLR end "entryRuleAnElement"


    // $ANTLR start "ruleAnElement"
    // InternalTwoContextsTestLanguage.g:112:1: ruleAnElement returns [EObject current=null] : ( ( (lv_name_0_0= RULE_ID ) ) (otherlv_1= 'refersTo' ( (otherlv_2= RULE_ID ) ) )? otherlv_3= ';' ) ;
    public final EObject ruleAnElement() throws RecognitionException {
        EObject current = null;

        Token lv_name_0_0=null;
        Token otherlv_1=null;
        Token otherlv_2=null;
        Token otherlv_3=null;


        	enterRule();

        try {
            // InternalTwoContextsTestLanguage.g:118:2: ( ( ( (lv_name_0_0= RULE_ID ) ) (otherlv_1= 'refersTo' ( (otherlv_2= RULE_ID ) ) )? otherlv_3= ';' ) )
            // InternalTwoContextsTestLanguage.g:119:2: ( ( (lv_name_0_0= RULE_ID ) ) (otherlv_1= 'refersTo' ( (otherlv_2= RULE_ID ) ) )? otherlv_3= ';' )
            {
            // InternalTwoContextsTestLanguage.g:119:2: ( ( (lv_name_0_0= RULE_ID ) ) (otherlv_1= 'refersTo' ( (otherlv_2= RULE_ID ) ) )? otherlv_3= ';' )
            // InternalTwoContextsTestLanguage.g:120:3: ( (lv_name_0_0= RULE_ID ) ) (otherlv_1= 'refersTo' ( (otherlv_2= RULE_ID ) ) )? otherlv_3= ';'
            {
            // InternalTwoContextsTestLanguage.g:120:3: ( (lv_name_0_0= RULE_ID ) )
            // InternalTwoContextsTestLanguage.g:121:4: (lv_name_0_0= RULE_ID )
            {
            // InternalTwoContextsTestLanguage.g:121:4: (lv_name_0_0= RULE_ID )
            // InternalTwoContextsTestLanguage.g:122:5: lv_name_0_0= RULE_ID
            {
            lv_name_0_0=(Token)match(input,RULE_ID,FollowSets000.FOLLOW_4); 

            					newLeafNode(lv_name_0_0, grammarAccess.getAnElementAccess().getNameIDTerminalRuleCall_0_0());
            				

            					if (current==null) {
            						current = createModelElement(grammarAccess.getAnElementRule());
            					}
            					setWithLastConsumed(
            						current,
            						"name",
            						lv_name_0_0,
            						"org.eclipse.xtext.common.Terminals.ID");
            				

            }


            }

            // InternalTwoContextsTestLanguage.g:138:3: (otherlv_1= 'refersTo' ( (otherlv_2= RULE_ID ) ) )?
            int alt2=2;
            int LA2_0 = input.LA(1);

            if ( (LA2_0==11) ) {
                alt2=1;
            }
            switch (alt2) {
                case 1 :
                    // InternalTwoContextsTestLanguage.g:139:4: otherlv_1= 'refersTo' ( (otherlv_2= RULE_ID ) )
                    {
                    otherlv_1=(Token)match(input,11,FollowSets000.FOLLOW_5); 

                    				newLeafNode(otherlv_1, grammarAccess.getAnElementAccess().getRefersToKeyword_1_0());
                    			
                    // InternalTwoContextsTestLanguage.g:143:4: ( (otherlv_2= RULE_ID ) )
                    // InternalTwoContextsTestLanguage.g:144:5: (otherlv_2= RULE_ID )
                    {
                    // InternalTwoContextsTestLanguage.g:144:5: (otherlv_2= RULE_ID )
                    // InternalTwoContextsTestLanguage.g:145:6: otherlv_2= RULE_ID
                    {

                    						if (current==null) {
                    							current = createModelElement(grammarAccess.getAnElementRule());
                    						}
                    					
                    otherlv_2=(Token)match(input,RULE_ID,FollowSets000.FOLLOW_6); 

                    						newLeafNode(otherlv_2, grammarAccess.getAnElementAccess().getReferredAnElementCrossReference_1_1_0());
                    					

                    }


                    }


                    }
                    break;

            }

            otherlv_3=(Token)match(input,12,FollowSets000.FOLLOW_2); 

            			newLeafNode(otherlv_3, grammarAccess.getAnElementAccess().getSemicolonKeyword_2());
            		

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
    // $ANTLR end "ruleAnElement"

    // Delegated rules


 

    
    private static class FollowSets000 {
        public static final BitSet FOLLOW_1 = new BitSet(new long[]{0x0000000000000000L});
        public static final BitSet FOLLOW_2 = new BitSet(new long[]{0x0000000000000002L});
        public static final BitSet FOLLOW_3 = new BitSet(new long[]{0x0000000000000012L});
        public static final BitSet FOLLOW_4 = new BitSet(new long[]{0x0000000000001800L});
        public static final BitSet FOLLOW_5 = new BitSet(new long[]{0x0000000000000010L});
        public static final BitSet FOLLOW_6 = new BitSet(new long[]{0x0000000000001000L});
    }


}
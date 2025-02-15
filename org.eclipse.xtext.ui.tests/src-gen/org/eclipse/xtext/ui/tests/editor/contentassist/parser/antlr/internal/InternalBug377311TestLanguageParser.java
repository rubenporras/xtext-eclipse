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
import org.eclipse.xtext.ui.tests.editor.contentassist.services.Bug377311TestLanguageGrammarAccess;



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
public class InternalBug377311TestLanguageParser extends AbstractInternalAntlrParser {
    public static final String[] tokenNames = new String[] {
        "<invalid>", "<EOR>", "<DOWN>", "<UP>", "RULE_STRING", "RULE_WS", "RULE_NEWLINE", "RULE_ID", "RULE_INT", "RULE_ML_COMMENT", "RULE_SL_COMMENT", "RULE_ANY_OTHER", "'child'"
    };
    public static final int RULE_ID=7;
    public static final int RULE_WS=5;
    public static final int RULE_NEWLINE=6;
    public static final int RULE_STRING=4;
    public static final int RULE_ANY_OTHER=11;
    public static final int RULE_SL_COMMENT=10;
    public static final int RULE_INT=8;
    public static final int RULE_ML_COMMENT=9;
    public static final int T__12=12;
    public static final int EOF=-1;

    // delegates
    // delegators


        public InternalBug377311TestLanguageParser(TokenStream input) {
            this(input, new RecognizerSharedState());
        }
        public InternalBug377311TestLanguageParser(TokenStream input, RecognizerSharedState state) {
            super(input, state);
             
        }
        

    public String[] getTokenNames() { return InternalBug377311TestLanguageParser.tokenNames; }
    public String getGrammarFileName() { return "InternalBug377311TestLanguage.g"; }



     	private Bug377311TestLanguageGrammarAccess grammarAccess;

        public InternalBug377311TestLanguageParser(TokenStream input, Bug377311TestLanguageGrammarAccess grammarAccess) {
            this(input);
            this.grammarAccess = grammarAccess;
            registerRules(grammarAccess.getGrammar());
        }

        @Override
        protected String getFirstRuleName() {
        	return "Root";
       	}

       	@Override
       	protected Bug377311TestLanguageGrammarAccess getGrammarAccess() {
       		return grammarAccess;
       	}




    // $ANTLR start "entryRuleRoot"
    // InternalBug377311TestLanguage.g:69:1: entryRuleRoot returns [EObject current=null] : iv_ruleRoot= ruleRoot EOF ;
    public final EObject entryRuleRoot() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleRoot = null;


        try {
            // InternalBug377311TestLanguage.g:69:45: (iv_ruleRoot= ruleRoot EOF )
            // InternalBug377311TestLanguage.g:70:2: iv_ruleRoot= ruleRoot EOF
            {
             newCompositeNode(grammarAccess.getRootRule()); 
            pushFollow(FollowSets000.FOLLOW_1);
            iv_ruleRoot=ruleRoot();

            state._fsp--;

             current =iv_ruleRoot; 
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
    // $ANTLR end "entryRuleRoot"


    // $ANTLR start "ruleRoot"
    // InternalBug377311TestLanguage.g:76:1: ruleRoot returns [EObject current=null] : ( (lv_childs_0_0= ruleChild ) )* ;
    public final EObject ruleRoot() throws RecognitionException {
        EObject current = null;

        EObject lv_childs_0_0 = null;



        	enterRule();

        try {
            // InternalBug377311TestLanguage.g:82:2: ( ( (lv_childs_0_0= ruleChild ) )* )
            // InternalBug377311TestLanguage.g:83:2: ( (lv_childs_0_0= ruleChild ) )*
            {
            // InternalBug377311TestLanguage.g:83:2: ( (lv_childs_0_0= ruleChild ) )*
            loop1:
            do {
                int alt1=2;
                int LA1_0 = input.LA(1);

                if ( (LA1_0==12) ) {
                    alt1=1;
                }


                switch (alt1) {
            	case 1 :
            	    // InternalBug377311TestLanguage.g:84:3: (lv_childs_0_0= ruleChild )
            	    {
            	    // InternalBug377311TestLanguage.g:84:3: (lv_childs_0_0= ruleChild )
            	    // InternalBug377311TestLanguage.g:85:4: lv_childs_0_0= ruleChild
            	    {

            	    				newCompositeNode(grammarAccess.getRootAccess().getChildsChildParserRuleCall_0());
            	    			
            	    pushFollow(FollowSets000.FOLLOW_3);
            	    lv_childs_0_0=ruleChild();

            	    state._fsp--;


            	    				if (current==null) {
            	    					current = createModelElementForParent(grammarAccess.getRootRule());
            	    				}
            	    				add(
            	    					current,
            	    					"childs",
            	    					lv_childs_0_0,
            	    					"org.eclipse.xtext.ui.tests.editor.contentassist.Bug377311TestLanguage.Child");
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
    // $ANTLR end "ruleRoot"


    // $ANTLR start "entryRuleChild"
    // InternalBug377311TestLanguage.g:105:1: entryRuleChild returns [EObject current=null] : iv_ruleChild= ruleChild EOF ;
    public final EObject entryRuleChild() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleChild = null;



        	HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens("RULE_WS", "RULE_ID");

        try {
            // InternalBug377311TestLanguage.g:107:2: (iv_ruleChild= ruleChild EOF )
            // InternalBug377311TestLanguage.g:108:2: iv_ruleChild= ruleChild EOF
            {
             newCompositeNode(grammarAccess.getChildRule()); 
            pushFollow(FollowSets000.FOLLOW_1);
            iv_ruleChild=ruleChild();

            state._fsp--;

             current =iv_ruleChild; 
            match(input,EOF,FollowSets000.FOLLOW_2); 

            }

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {

            	myHiddenTokenState.restore();

        }
        return current;
    }
    // $ANTLR end "entryRuleChild"


    // $ANTLR start "ruleChild"
    // InternalBug377311TestLanguage.g:117:1: ruleChild returns [EObject current=null] : (otherlv_0= 'child' ( (lv_name_1_0= RULE_STRING ) ) ) ;
    public final EObject ruleChild() throws RecognitionException {
        EObject current = null;

        Token otherlv_0=null;
        Token lv_name_1_0=null;


        	enterRule();
        	HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens("RULE_WS", "RULE_ID");

        try {
            // InternalBug377311TestLanguage.g:124:2: ( (otherlv_0= 'child' ( (lv_name_1_0= RULE_STRING ) ) ) )
            // InternalBug377311TestLanguage.g:125:2: (otherlv_0= 'child' ( (lv_name_1_0= RULE_STRING ) ) )
            {
            // InternalBug377311TestLanguage.g:125:2: (otherlv_0= 'child' ( (lv_name_1_0= RULE_STRING ) ) )
            // InternalBug377311TestLanguage.g:126:3: otherlv_0= 'child' ( (lv_name_1_0= RULE_STRING ) )
            {
            otherlv_0=(Token)match(input,12,FollowSets000.FOLLOW_4); 

            			newLeafNode(otherlv_0, grammarAccess.getChildAccess().getChildKeyword_0());
            		
            // InternalBug377311TestLanguage.g:130:3: ( (lv_name_1_0= RULE_STRING ) )
            // InternalBug377311TestLanguage.g:131:4: (lv_name_1_0= RULE_STRING )
            {
            // InternalBug377311TestLanguage.g:131:4: (lv_name_1_0= RULE_STRING )
            // InternalBug377311TestLanguage.g:132:5: lv_name_1_0= RULE_STRING
            {
            lv_name_1_0=(Token)match(input,RULE_STRING,FollowSets000.FOLLOW_2); 

            					newLeafNode(lv_name_1_0, grammarAccess.getChildAccess().getNameSTRINGTerminalRuleCall_1_0());
            				

            					if (current==null) {
            						current = createModelElement(grammarAccess.getChildRule());
            					}
            					setWithLastConsumed(
            						current,
            						"name",
            						lv_name_1_0,
            						"org.eclipse.xtext.common.Terminals.STRING");
            				

            }


            }


            }


            }


            	leaveRule();

        }

            catch (RecognitionException re) {
                recover(input,re);
                appendSkippedTokens();
            }
        finally {

            	myHiddenTokenState.restore();

        }
        return current;
    }
    // $ANTLR end "ruleChild"

    // Delegated rules


 

    
    private static class FollowSets000 {
        public static final BitSet FOLLOW_1 = new BitSet(new long[]{0x0000000000000000L});
        public static final BitSet FOLLOW_2 = new BitSet(new long[]{0x0000000000000002L});
        public static final BitSet FOLLOW_3 = new BitSet(new long[]{0x0000000000001002L});
        public static final BitSet FOLLOW_4 = new BitSet(new long[]{0x0000000000000010L});
    }


}
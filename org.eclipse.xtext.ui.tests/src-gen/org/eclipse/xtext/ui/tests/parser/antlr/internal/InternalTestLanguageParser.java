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
import org.eclipse.xtext.ui.tests.services.TestLanguageGrammarAccess;



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
public class InternalTestLanguageParser extends AbstractInternalAntlrParser {
    public static final String[] tokenNames = new String[] {
        "<invalid>", "<EOR>", "<DOWN>", "<UP>", "RULE_ID", "RULE_INT", "RULE_STRING", "RULE_ML_COMMENT", "RULE_SL_COMMENT", "RULE_WS", "RULE_ANY_OTHER", "'stuff'", "'refs'"
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


        public InternalTestLanguageParser(TokenStream input) {
            this(input, new RecognizerSharedState());
        }
        public InternalTestLanguageParser(TokenStream input, RecognizerSharedState state) {
            super(input, state);
             
        }
        

    public String[] getTokenNames() { return InternalTestLanguageParser.tokenNames; }
    public String getGrammarFileName() { return "InternalTestLanguage.g"; }



     	private TestLanguageGrammarAccess grammarAccess;

        public InternalTestLanguageParser(TokenStream input, TestLanguageGrammarAccess grammarAccess) {
            this(input);
            this.grammarAccess = grammarAccess;
            registerRules(grammarAccess.getGrammar());
        }

        @Override
        protected String getFirstRuleName() {
        	return "File";
       	}

       	@Override
       	protected TestLanguageGrammarAccess getGrammarAccess() {
       		return grammarAccess;
       	}




    // $ANTLR start "entryRuleFile"
    // InternalTestLanguage.g:69:1: entryRuleFile returns [EObject current=null] : iv_ruleFile= ruleFile EOF ;
    public final EObject entryRuleFile() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleFile = null;


        try {
            // InternalTestLanguage.g:69:45: (iv_ruleFile= ruleFile EOF )
            // InternalTestLanguage.g:70:2: iv_ruleFile= ruleFile EOF
            {
             newCompositeNode(grammarAccess.getFileRule()); 
            pushFollow(FollowSets000.FOLLOW_1);
            iv_ruleFile=ruleFile();

            state._fsp--;

             current =iv_ruleFile; 
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
    // $ANTLR end "entryRuleFile"


    // $ANTLR start "ruleFile"
    // InternalTestLanguage.g:76:1: ruleFile returns [EObject current=null] : ( (lv_stuff_0_0= ruleStuff ) )* ;
    public final EObject ruleFile() throws RecognitionException {
        EObject current = null;

        EObject lv_stuff_0_0 = null;



        	enterRule();

        try {
            // InternalTestLanguage.g:82:2: ( ( (lv_stuff_0_0= ruleStuff ) )* )
            // InternalTestLanguage.g:83:2: ( (lv_stuff_0_0= ruleStuff ) )*
            {
            // InternalTestLanguage.g:83:2: ( (lv_stuff_0_0= ruleStuff ) )*
            loop1:
            do {
                int alt1=2;
                int LA1_0 = input.LA(1);

                if ( (LA1_0==11) ) {
                    alt1=1;
                }


                switch (alt1) {
            	case 1 :
            	    // InternalTestLanguage.g:84:3: (lv_stuff_0_0= ruleStuff )
            	    {
            	    // InternalTestLanguage.g:84:3: (lv_stuff_0_0= ruleStuff )
            	    // InternalTestLanguage.g:85:4: lv_stuff_0_0= ruleStuff
            	    {

            	    				newCompositeNode(grammarAccess.getFileAccess().getStuffStuffParserRuleCall_0());
            	    			
            	    pushFollow(FollowSets000.FOLLOW_3);
            	    lv_stuff_0_0=ruleStuff();

            	    state._fsp--;


            	    				if (current==null) {
            	    					current = createModelElementForParent(grammarAccess.getFileRule());
            	    				}
            	    				add(
            	    					current,
            	    					"stuff",
            	    					lv_stuff_0_0,
            	    					"org.eclipse.xtext.ui.tests.TestLanguage.Stuff");
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
    // $ANTLR end "ruleFile"


    // $ANTLR start "entryRuleStuff"
    // InternalTestLanguage.g:105:1: entryRuleStuff returns [EObject current=null] : iv_ruleStuff= ruleStuff EOF ;
    public final EObject entryRuleStuff() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleStuff = null;


        try {
            // InternalTestLanguage.g:105:46: (iv_ruleStuff= ruleStuff EOF )
            // InternalTestLanguage.g:106:2: iv_ruleStuff= ruleStuff EOF
            {
             newCompositeNode(grammarAccess.getStuffRule()); 
            pushFollow(FollowSets000.FOLLOW_1);
            iv_ruleStuff=ruleStuff();

            state._fsp--;

             current =iv_ruleStuff; 
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
    // $ANTLR end "entryRuleStuff"


    // $ANTLR start "ruleStuff"
    // InternalTestLanguage.g:112:1: ruleStuff returns [EObject current=null] : (otherlv_0= 'stuff' ( (lv_name_1_0= RULE_ID ) ) (otherlv_2= 'refs' ( (otherlv_3= RULE_ID ) ) )? ) ;
    public final EObject ruleStuff() throws RecognitionException {
        EObject current = null;

        Token otherlv_0=null;
        Token lv_name_1_0=null;
        Token otherlv_2=null;
        Token otherlv_3=null;


        	enterRule();

        try {
            // InternalTestLanguage.g:118:2: ( (otherlv_0= 'stuff' ( (lv_name_1_0= RULE_ID ) ) (otherlv_2= 'refs' ( (otherlv_3= RULE_ID ) ) )? ) )
            // InternalTestLanguage.g:119:2: (otherlv_0= 'stuff' ( (lv_name_1_0= RULE_ID ) ) (otherlv_2= 'refs' ( (otherlv_3= RULE_ID ) ) )? )
            {
            // InternalTestLanguage.g:119:2: (otherlv_0= 'stuff' ( (lv_name_1_0= RULE_ID ) ) (otherlv_2= 'refs' ( (otherlv_3= RULE_ID ) ) )? )
            // InternalTestLanguage.g:120:3: otherlv_0= 'stuff' ( (lv_name_1_0= RULE_ID ) ) (otherlv_2= 'refs' ( (otherlv_3= RULE_ID ) ) )?
            {
            otherlv_0=(Token)match(input,11,FollowSets000.FOLLOW_4); 

            			newLeafNode(otherlv_0, grammarAccess.getStuffAccess().getStuffKeyword_0());
            		
            // InternalTestLanguage.g:124:3: ( (lv_name_1_0= RULE_ID ) )
            // InternalTestLanguage.g:125:4: (lv_name_1_0= RULE_ID )
            {
            // InternalTestLanguage.g:125:4: (lv_name_1_0= RULE_ID )
            // InternalTestLanguage.g:126:5: lv_name_1_0= RULE_ID
            {
            lv_name_1_0=(Token)match(input,RULE_ID,FollowSets000.FOLLOW_5); 

            					newLeafNode(lv_name_1_0, grammarAccess.getStuffAccess().getNameIDTerminalRuleCall_1_0());
            				

            					if (current==null) {
            						current = createModelElement(grammarAccess.getStuffRule());
            					}
            					setWithLastConsumed(
            						current,
            						"name",
            						lv_name_1_0,
            						"org.eclipse.xtext.common.Terminals.ID");
            				

            }


            }

            // InternalTestLanguage.g:142:3: (otherlv_2= 'refs' ( (otherlv_3= RULE_ID ) ) )?
            int alt2=2;
            int LA2_0 = input.LA(1);

            if ( (LA2_0==12) ) {
                alt2=1;
            }
            switch (alt2) {
                case 1 :
                    // InternalTestLanguage.g:143:4: otherlv_2= 'refs' ( (otherlv_3= RULE_ID ) )
                    {
                    otherlv_2=(Token)match(input,12,FollowSets000.FOLLOW_4); 

                    				newLeafNode(otherlv_2, grammarAccess.getStuffAccess().getRefsKeyword_2_0());
                    			
                    // InternalTestLanguage.g:147:4: ( (otherlv_3= RULE_ID ) )
                    // InternalTestLanguage.g:148:5: (otherlv_3= RULE_ID )
                    {
                    // InternalTestLanguage.g:148:5: (otherlv_3= RULE_ID )
                    // InternalTestLanguage.g:149:6: otherlv_3= RULE_ID
                    {

                    						if (current==null) {
                    							current = createModelElement(grammarAccess.getStuffRule());
                    						}
                    					
                    otherlv_3=(Token)match(input,RULE_ID,FollowSets000.FOLLOW_2); 

                    						newLeafNode(otherlv_3, grammarAccess.getStuffAccess().getRefsStuffCrossReference_2_1_0());
                    					

                    }


                    }


                    }
                    break;

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
        }
        return current;
    }
    // $ANTLR end "ruleStuff"

    // Delegated rules


 

    
    private static class FollowSets000 {
        public static final BitSet FOLLOW_1 = new BitSet(new long[]{0x0000000000000000L});
        public static final BitSet FOLLOW_2 = new BitSet(new long[]{0x0000000000000002L});
        public static final BitSet FOLLOW_3 = new BitSet(new long[]{0x0000000000000802L});
        public static final BitSet FOLLOW_4 = new BitSet(new long[]{0x0000000000000010L});
        public static final BitSet FOLLOW_5 = new BitSet(new long[]{0x0000000000001002L});
    }


}
package org.eclipse.xtext.xtext.ui.ecore2xtext.parser.antlr.internal;

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import org.eclipse.xtext.xtext.ui.ecore2xtext.services.Ecore2XtextTestGrammarAccess;



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
public class InternalEcore2XtextTestParser extends AbstractInternalAntlrParser {
    public static final String[] tokenNames = new String[] {
        "<invalid>", "<EOR>", "<DOWN>", "<UP>", "RULE_STRING", "RULE_ID", "RULE_INT", "RULE_ML_COMMENT", "RULE_SL_COMMENT", "RULE_WS", "RULE_ANY_OTHER", "'Root'", "'{'", "'classes'", "','", "'}'", "'concrete0'", "'INT'", "'Concrete0'", "'Concrete1'", "'DiamondInheritance'"
    };
    public static final int RULE_STRING=4;
    public static final int RULE_SL_COMMENT=8;
    public static final int T__19=19;
    public static final int T__15=15;
    public static final int T__16=16;
    public static final int T__17=17;
    public static final int T__18=18;
    public static final int T__11=11;
    public static final int T__12=12;
    public static final int T__13=13;
    public static final int T__14=14;
    public static final int EOF=-1;
    public static final int RULE_ID=5;
    public static final int RULE_WS=9;
    public static final int RULE_ANY_OTHER=10;
    public static final int RULE_INT=6;
    public static final int RULE_ML_COMMENT=7;
    public static final int T__20=20;

    // delegates
    // delegators


        public InternalEcore2XtextTestParser(TokenStream input) {
            this(input, new RecognizerSharedState());
        }
        public InternalEcore2XtextTestParser(TokenStream input, RecognizerSharedState state) {
            super(input, state);
             
        }
        

    public String[] getTokenNames() { return InternalEcore2XtextTestParser.tokenNames; }
    public String getGrammarFileName() { return "InternalEcore2XtextTest.g"; }



     	private Ecore2XtextTestGrammarAccess grammarAccess;

        public InternalEcore2XtextTestParser(TokenStream input, Ecore2XtextTestGrammarAccess grammarAccess) {
            this(input);
            this.grammarAccess = grammarAccess;
            registerRules(grammarAccess.getGrammar());
        }

        @Override
        protected String getFirstRuleName() {
        	return "Root";
       	}

       	@Override
       	protected Ecore2XtextTestGrammarAccess getGrammarAccess() {
       		return grammarAccess;
       	}




    // $ANTLR start "entryRuleRoot"
    // InternalEcore2XtextTest.g:69:1: entryRuleRoot returns [EObject current=null] : iv_ruleRoot= ruleRoot EOF ;
    public final EObject entryRuleRoot() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleRoot = null;


        try {
            // InternalEcore2XtextTest.g:69:45: (iv_ruleRoot= ruleRoot EOF )
            // InternalEcore2XtextTest.g:70:2: iv_ruleRoot= ruleRoot EOF
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
    // InternalEcore2XtextTest.g:76:1: ruleRoot returns [EObject current=null] : ( () otherlv_1= 'Root' ( (lv_name_2_0= ruleINT0 ) ) otherlv_3= '{' (otherlv_4= 'classes' otherlv_5= '{' ( (lv_classes_6_0= ruleAbstract ) ) (otherlv_7= ',' ( (lv_classes_8_0= ruleAbstract ) ) )* otherlv_9= '}' )? (otherlv_10= 'concrete0' ( (lv_concrete0_11_0= ruleConcrete0 ) ) )? otherlv_12= '}' ) ;
    public final EObject ruleRoot() throws RecognitionException {
        EObject current = null;

        Token otherlv_1=null;
        Token otherlv_3=null;
        Token otherlv_4=null;
        Token otherlv_5=null;
        Token otherlv_7=null;
        Token otherlv_9=null;
        Token otherlv_10=null;
        Token otherlv_12=null;
        AntlrDatatypeRuleToken lv_name_2_0 = null;

        EObject lv_classes_6_0 = null;

        EObject lv_classes_8_0 = null;

        EObject lv_concrete0_11_0 = null;



        	enterRule();

        try {
            // InternalEcore2XtextTest.g:82:2: ( ( () otherlv_1= 'Root' ( (lv_name_2_0= ruleINT0 ) ) otherlv_3= '{' (otherlv_4= 'classes' otherlv_5= '{' ( (lv_classes_6_0= ruleAbstract ) ) (otherlv_7= ',' ( (lv_classes_8_0= ruleAbstract ) ) )* otherlv_9= '}' )? (otherlv_10= 'concrete0' ( (lv_concrete0_11_0= ruleConcrete0 ) ) )? otherlv_12= '}' ) )
            // InternalEcore2XtextTest.g:83:2: ( () otherlv_1= 'Root' ( (lv_name_2_0= ruleINT0 ) ) otherlv_3= '{' (otherlv_4= 'classes' otherlv_5= '{' ( (lv_classes_6_0= ruleAbstract ) ) (otherlv_7= ',' ( (lv_classes_8_0= ruleAbstract ) ) )* otherlv_9= '}' )? (otherlv_10= 'concrete0' ( (lv_concrete0_11_0= ruleConcrete0 ) ) )? otherlv_12= '}' )
            {
            // InternalEcore2XtextTest.g:83:2: ( () otherlv_1= 'Root' ( (lv_name_2_0= ruleINT0 ) ) otherlv_3= '{' (otherlv_4= 'classes' otherlv_5= '{' ( (lv_classes_6_0= ruleAbstract ) ) (otherlv_7= ',' ( (lv_classes_8_0= ruleAbstract ) ) )* otherlv_9= '}' )? (otherlv_10= 'concrete0' ( (lv_concrete0_11_0= ruleConcrete0 ) ) )? otherlv_12= '}' )
            // InternalEcore2XtextTest.g:84:3: () otherlv_1= 'Root' ( (lv_name_2_0= ruleINT0 ) ) otherlv_3= '{' (otherlv_4= 'classes' otherlv_5= '{' ( (lv_classes_6_0= ruleAbstract ) ) (otherlv_7= ',' ( (lv_classes_8_0= ruleAbstract ) ) )* otherlv_9= '}' )? (otherlv_10= 'concrete0' ( (lv_concrete0_11_0= ruleConcrete0 ) ) )? otherlv_12= '}'
            {
            // InternalEcore2XtextTest.g:84:3: ()
            // InternalEcore2XtextTest.g:85:4: 
            {

            				current = forceCreateModelElement(
            					grammarAccess.getRootAccess().getRootAction_0(),
            					current);
            			

            }

            otherlv_1=(Token)match(input,11,FollowSets000.FOLLOW_3); 

            			newLeafNode(otherlv_1, grammarAccess.getRootAccess().getRootKeyword_1());
            		
            // InternalEcore2XtextTest.g:95:3: ( (lv_name_2_0= ruleINT0 ) )
            // InternalEcore2XtextTest.g:96:4: (lv_name_2_0= ruleINT0 )
            {
            // InternalEcore2XtextTest.g:96:4: (lv_name_2_0= ruleINT0 )
            // InternalEcore2XtextTest.g:97:5: lv_name_2_0= ruleINT0
            {

            					newCompositeNode(grammarAccess.getRootAccess().getNameINT0ParserRuleCall_2_0());
            				
            pushFollow(FollowSets000.FOLLOW_4);
            lv_name_2_0=ruleINT0();

            state._fsp--;


            					if (current==null) {
            						current = createModelElementForParent(grammarAccess.getRootRule());
            					}
            					set(
            						current,
            						"name",
            						lv_name_2_0,
            						"org.eclipse.xtext.xtext.ui.ecore2xtext.Ecore2XtextTest.INT0");
            					afterParserOrEnumRuleCall();
            				

            }


            }

            otherlv_3=(Token)match(input,12,FollowSets000.FOLLOW_5); 

            			newLeafNode(otherlv_3, grammarAccess.getRootAccess().getLeftCurlyBracketKeyword_3());
            		
            // InternalEcore2XtextTest.g:118:3: (otherlv_4= 'classes' otherlv_5= '{' ( (lv_classes_6_0= ruleAbstract ) ) (otherlv_7= ',' ( (lv_classes_8_0= ruleAbstract ) ) )* otherlv_9= '}' )?
            int alt2=2;
            int LA2_0 = input.LA(1);

            if ( (LA2_0==13) ) {
                alt2=1;
            }
            switch (alt2) {
                case 1 :
                    // InternalEcore2XtextTest.g:119:4: otherlv_4= 'classes' otherlv_5= '{' ( (lv_classes_6_0= ruleAbstract ) ) (otherlv_7= ',' ( (lv_classes_8_0= ruleAbstract ) ) )* otherlv_9= '}'
                    {
                    otherlv_4=(Token)match(input,13,FollowSets000.FOLLOW_4); 

                    				newLeafNode(otherlv_4, grammarAccess.getRootAccess().getClassesKeyword_4_0());
                    			
                    otherlv_5=(Token)match(input,12,FollowSets000.FOLLOW_6); 

                    				newLeafNode(otherlv_5, grammarAccess.getRootAccess().getLeftCurlyBracketKeyword_4_1());
                    			
                    // InternalEcore2XtextTest.g:127:4: ( (lv_classes_6_0= ruleAbstract ) )
                    // InternalEcore2XtextTest.g:128:5: (lv_classes_6_0= ruleAbstract )
                    {
                    // InternalEcore2XtextTest.g:128:5: (lv_classes_6_0= ruleAbstract )
                    // InternalEcore2XtextTest.g:129:6: lv_classes_6_0= ruleAbstract
                    {

                    						newCompositeNode(grammarAccess.getRootAccess().getClassesAbstractParserRuleCall_4_2_0());
                    					
                    pushFollow(FollowSets000.FOLLOW_7);
                    lv_classes_6_0=ruleAbstract();

                    state._fsp--;


                    						if (current==null) {
                    							current = createModelElementForParent(grammarAccess.getRootRule());
                    						}
                    						add(
                    							current,
                    							"classes",
                    							lv_classes_6_0,
                    							"org.eclipse.xtext.xtext.ui.ecore2xtext.Ecore2XtextTest.Abstract");
                    						afterParserOrEnumRuleCall();
                    					

                    }


                    }

                    // InternalEcore2XtextTest.g:146:4: (otherlv_7= ',' ( (lv_classes_8_0= ruleAbstract ) ) )*
                    loop1:
                    do {
                        int alt1=2;
                        int LA1_0 = input.LA(1);

                        if ( (LA1_0==14) ) {
                            alt1=1;
                        }


                        switch (alt1) {
                    	case 1 :
                    	    // InternalEcore2XtextTest.g:147:5: otherlv_7= ',' ( (lv_classes_8_0= ruleAbstract ) )
                    	    {
                    	    otherlv_7=(Token)match(input,14,FollowSets000.FOLLOW_6); 

                    	    					newLeafNode(otherlv_7, grammarAccess.getRootAccess().getCommaKeyword_4_3_0());
                    	    				
                    	    // InternalEcore2XtextTest.g:151:5: ( (lv_classes_8_0= ruleAbstract ) )
                    	    // InternalEcore2XtextTest.g:152:6: (lv_classes_8_0= ruleAbstract )
                    	    {
                    	    // InternalEcore2XtextTest.g:152:6: (lv_classes_8_0= ruleAbstract )
                    	    // InternalEcore2XtextTest.g:153:7: lv_classes_8_0= ruleAbstract
                    	    {

                    	    							newCompositeNode(grammarAccess.getRootAccess().getClassesAbstractParserRuleCall_4_3_1_0());
                    	    						
                    	    pushFollow(FollowSets000.FOLLOW_7);
                    	    lv_classes_8_0=ruleAbstract();

                    	    state._fsp--;


                    	    							if (current==null) {
                    	    								current = createModelElementForParent(grammarAccess.getRootRule());
                    	    							}
                    	    							add(
                    	    								current,
                    	    								"classes",
                    	    								lv_classes_8_0,
                    	    								"org.eclipse.xtext.xtext.ui.ecore2xtext.Ecore2XtextTest.Abstract");
                    	    							afterParserOrEnumRuleCall();
                    	    						

                    	    }


                    	    }


                    	    }
                    	    break;

                    	default :
                    	    break loop1;
                        }
                    } while (true);

                    otherlv_9=(Token)match(input,15,FollowSets000.FOLLOW_8); 

                    				newLeafNode(otherlv_9, grammarAccess.getRootAccess().getRightCurlyBracketKeyword_4_4());
                    			

                    }
                    break;

            }

            // InternalEcore2XtextTest.g:176:3: (otherlv_10= 'concrete0' ( (lv_concrete0_11_0= ruleConcrete0 ) ) )?
            int alt3=2;
            int LA3_0 = input.LA(1);

            if ( (LA3_0==16) ) {
                alt3=1;
            }
            switch (alt3) {
                case 1 :
                    // InternalEcore2XtextTest.g:177:4: otherlv_10= 'concrete0' ( (lv_concrete0_11_0= ruleConcrete0 ) )
                    {
                    otherlv_10=(Token)match(input,16,FollowSets000.FOLLOW_6); 

                    				newLeafNode(otherlv_10, grammarAccess.getRootAccess().getConcrete0Keyword_5_0());
                    			
                    // InternalEcore2XtextTest.g:181:4: ( (lv_concrete0_11_0= ruleConcrete0 ) )
                    // InternalEcore2XtextTest.g:182:5: (lv_concrete0_11_0= ruleConcrete0 )
                    {
                    // InternalEcore2XtextTest.g:182:5: (lv_concrete0_11_0= ruleConcrete0 )
                    // InternalEcore2XtextTest.g:183:6: lv_concrete0_11_0= ruleConcrete0
                    {

                    						newCompositeNode(grammarAccess.getRootAccess().getConcrete0Concrete0ParserRuleCall_5_1_0());
                    					
                    pushFollow(FollowSets000.FOLLOW_9);
                    lv_concrete0_11_0=ruleConcrete0();

                    state._fsp--;


                    						if (current==null) {
                    							current = createModelElementForParent(grammarAccess.getRootRule());
                    						}
                    						set(
                    							current,
                    							"concrete0",
                    							lv_concrete0_11_0,
                    							"org.eclipse.xtext.xtext.ui.ecore2xtext.Ecore2XtextTest.Concrete0");
                    						afterParserOrEnumRuleCall();
                    					

                    }


                    }


                    }
                    break;

            }

            otherlv_12=(Token)match(input,15,FollowSets000.FOLLOW_2); 

            			newLeafNode(otherlv_12, grammarAccess.getRootAccess().getRightCurlyBracketKeyword_6());
            		

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
    // $ANTLR end "ruleRoot"


    // $ANTLR start "entryRuleAbstract"
    // InternalEcore2XtextTest.g:209:1: entryRuleAbstract returns [EObject current=null] : iv_ruleAbstract= ruleAbstract EOF ;
    public final EObject entryRuleAbstract() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleAbstract = null;


        try {
            // InternalEcore2XtextTest.g:209:49: (iv_ruleAbstract= ruleAbstract EOF )
            // InternalEcore2XtextTest.g:210:2: iv_ruleAbstract= ruleAbstract EOF
            {
             newCompositeNode(grammarAccess.getAbstractRule()); 
            pushFollow(FollowSets000.FOLLOW_1);
            iv_ruleAbstract=ruleAbstract();

            state._fsp--;

             current =iv_ruleAbstract; 
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
    // $ANTLR end "entryRuleAbstract"


    // $ANTLR start "ruleAbstract"
    // InternalEcore2XtextTest.g:216:1: ruleAbstract returns [EObject current=null] : (this_Concrete0_Impl_0= ruleConcrete0_Impl | this_Concrete1_Impl_1= ruleConcrete1_Impl | this_DiamondInheritance_2= ruleDiamondInheritance ) ;
    public final EObject ruleAbstract() throws RecognitionException {
        EObject current = null;

        EObject this_Concrete0_Impl_0 = null;

        EObject this_Concrete1_Impl_1 = null;

        EObject this_DiamondInheritance_2 = null;



        	enterRule();

        try {
            // InternalEcore2XtextTest.g:222:2: ( (this_Concrete0_Impl_0= ruleConcrete0_Impl | this_Concrete1_Impl_1= ruleConcrete1_Impl | this_DiamondInheritance_2= ruleDiamondInheritance ) )
            // InternalEcore2XtextTest.g:223:2: (this_Concrete0_Impl_0= ruleConcrete0_Impl | this_Concrete1_Impl_1= ruleConcrete1_Impl | this_DiamondInheritance_2= ruleDiamondInheritance )
            {
            // InternalEcore2XtextTest.g:223:2: (this_Concrete0_Impl_0= ruleConcrete0_Impl | this_Concrete1_Impl_1= ruleConcrete1_Impl | this_DiamondInheritance_2= ruleDiamondInheritance )
            int alt4=3;
            switch ( input.LA(1) ) {
            case 18:
                {
                alt4=1;
                }
                break;
            case 19:
                {
                alt4=2;
                }
                break;
            case 20:
                {
                alt4=3;
                }
                break;
            default:
                NoViableAltException nvae =
                    new NoViableAltException("", 4, 0, input);

                throw nvae;
            }

            switch (alt4) {
                case 1 :
                    // InternalEcore2XtextTest.g:224:3: this_Concrete0_Impl_0= ruleConcrete0_Impl
                    {

                    			newCompositeNode(grammarAccess.getAbstractAccess().getConcrete0_ImplParserRuleCall_0());
                    		
                    pushFollow(FollowSets000.FOLLOW_2);
                    this_Concrete0_Impl_0=ruleConcrete0_Impl();

                    state._fsp--;


                    			current = this_Concrete0_Impl_0;
                    			afterParserOrEnumRuleCall();
                    		

                    }
                    break;
                case 2 :
                    // InternalEcore2XtextTest.g:233:3: this_Concrete1_Impl_1= ruleConcrete1_Impl
                    {

                    			newCompositeNode(grammarAccess.getAbstractAccess().getConcrete1_ImplParserRuleCall_1());
                    		
                    pushFollow(FollowSets000.FOLLOW_2);
                    this_Concrete1_Impl_1=ruleConcrete1_Impl();

                    state._fsp--;


                    			current = this_Concrete1_Impl_1;
                    			afterParserOrEnumRuleCall();
                    		

                    }
                    break;
                case 3 :
                    // InternalEcore2XtextTest.g:242:3: this_DiamondInheritance_2= ruleDiamondInheritance
                    {

                    			newCompositeNode(grammarAccess.getAbstractAccess().getDiamondInheritanceParserRuleCall_2());
                    		
                    pushFollow(FollowSets000.FOLLOW_2);
                    this_DiamondInheritance_2=ruleDiamondInheritance();

                    state._fsp--;


                    			current = this_DiamondInheritance_2;
                    			afterParserOrEnumRuleCall();
                    		

                    }
                    break;

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
    // $ANTLR end "ruleAbstract"


    // $ANTLR start "entryRuleConcrete0"
    // InternalEcore2XtextTest.g:254:1: entryRuleConcrete0 returns [EObject current=null] : iv_ruleConcrete0= ruleConcrete0 EOF ;
    public final EObject entryRuleConcrete0() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleConcrete0 = null;


        try {
            // InternalEcore2XtextTest.g:254:50: (iv_ruleConcrete0= ruleConcrete0 EOF )
            // InternalEcore2XtextTest.g:255:2: iv_ruleConcrete0= ruleConcrete0 EOF
            {
             newCompositeNode(grammarAccess.getConcrete0Rule()); 
            pushFollow(FollowSets000.FOLLOW_1);
            iv_ruleConcrete0=ruleConcrete0();

            state._fsp--;

             current =iv_ruleConcrete0; 
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
    // $ANTLR end "entryRuleConcrete0"


    // $ANTLR start "ruleConcrete0"
    // InternalEcore2XtextTest.g:261:1: ruleConcrete0 returns [EObject current=null] : (this_Concrete0_Impl_0= ruleConcrete0_Impl | this_DiamondInheritance_1= ruleDiamondInheritance ) ;
    public final EObject ruleConcrete0() throws RecognitionException {
        EObject current = null;

        EObject this_Concrete0_Impl_0 = null;

        EObject this_DiamondInheritance_1 = null;



        	enterRule();

        try {
            // InternalEcore2XtextTest.g:267:2: ( (this_Concrete0_Impl_0= ruleConcrete0_Impl | this_DiamondInheritance_1= ruleDiamondInheritance ) )
            // InternalEcore2XtextTest.g:268:2: (this_Concrete0_Impl_0= ruleConcrete0_Impl | this_DiamondInheritance_1= ruleDiamondInheritance )
            {
            // InternalEcore2XtextTest.g:268:2: (this_Concrete0_Impl_0= ruleConcrete0_Impl | this_DiamondInheritance_1= ruleDiamondInheritance )
            int alt5=2;
            int LA5_0 = input.LA(1);

            if ( (LA5_0==18) ) {
                alt5=1;
            }
            else if ( (LA5_0==20) ) {
                alt5=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 5, 0, input);

                throw nvae;
            }
            switch (alt5) {
                case 1 :
                    // InternalEcore2XtextTest.g:269:3: this_Concrete0_Impl_0= ruleConcrete0_Impl
                    {

                    			newCompositeNode(grammarAccess.getConcrete0Access().getConcrete0_ImplParserRuleCall_0());
                    		
                    pushFollow(FollowSets000.FOLLOW_2);
                    this_Concrete0_Impl_0=ruleConcrete0_Impl();

                    state._fsp--;


                    			current = this_Concrete0_Impl_0;
                    			afterParserOrEnumRuleCall();
                    		

                    }
                    break;
                case 2 :
                    // InternalEcore2XtextTest.g:278:3: this_DiamondInheritance_1= ruleDiamondInheritance
                    {

                    			newCompositeNode(grammarAccess.getConcrete0Access().getDiamondInheritanceParserRuleCall_1());
                    		
                    pushFollow(FollowSets000.FOLLOW_2);
                    this_DiamondInheritance_1=ruleDiamondInheritance();

                    state._fsp--;


                    			current = this_DiamondInheritance_1;
                    			afterParserOrEnumRuleCall();
                    		

                    }
                    break;

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
    // $ANTLR end "ruleConcrete0"


    // $ANTLR start "entryRuleINT0"
    // InternalEcore2XtextTest.g:290:1: entryRuleINT0 returns [String current=null] : iv_ruleINT0= ruleINT0 EOF ;
    public final String entryRuleINT0() throws RecognitionException {
        String current = null;

        AntlrDatatypeRuleToken iv_ruleINT0 = null;


        try {
            // InternalEcore2XtextTest.g:290:44: (iv_ruleINT0= ruleINT0 EOF )
            // InternalEcore2XtextTest.g:291:2: iv_ruleINT0= ruleINT0 EOF
            {
             newCompositeNode(grammarAccess.getINT0Rule()); 
            pushFollow(FollowSets000.FOLLOW_1);
            iv_ruleINT0=ruleINT0();

            state._fsp--;

             current =iv_ruleINT0.getText(); 
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
    // $ANTLR end "entryRuleINT0"


    // $ANTLR start "ruleINT0"
    // InternalEcore2XtextTest.g:297:1: ruleINT0 returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] : kw= 'INT' ;
    public final AntlrDatatypeRuleToken ruleINT0() throws RecognitionException {
        AntlrDatatypeRuleToken current = new AntlrDatatypeRuleToken();

        Token kw=null;


        	enterRule();

        try {
            // InternalEcore2XtextTest.g:303:2: (kw= 'INT' )
            // InternalEcore2XtextTest.g:304:2: kw= 'INT'
            {
            kw=(Token)match(input,17,FollowSets000.FOLLOW_2); 

            		current.merge(kw);
            		newLeafNode(kw, grammarAccess.getINT0Access().getINTKeyword());
            	

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
    // $ANTLR end "ruleINT0"


    // $ANTLR start "entryRuleConcrete0_Impl"
    // InternalEcore2XtextTest.g:312:1: entryRuleConcrete0_Impl returns [EObject current=null] : iv_ruleConcrete0_Impl= ruleConcrete0_Impl EOF ;
    public final EObject entryRuleConcrete0_Impl() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleConcrete0_Impl = null;


        try {
            // InternalEcore2XtextTest.g:312:55: (iv_ruleConcrete0_Impl= ruleConcrete0_Impl EOF )
            // InternalEcore2XtextTest.g:313:2: iv_ruleConcrete0_Impl= ruleConcrete0_Impl EOF
            {
             newCompositeNode(grammarAccess.getConcrete0_ImplRule()); 
            pushFollow(FollowSets000.FOLLOW_1);
            iv_ruleConcrete0_Impl=ruleConcrete0_Impl();

            state._fsp--;

             current =iv_ruleConcrete0_Impl; 
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
    // $ANTLR end "entryRuleConcrete0_Impl"


    // $ANTLR start "ruleConcrete0_Impl"
    // InternalEcore2XtextTest.g:319:1: ruleConcrete0_Impl returns [EObject current=null] : ( () otherlv_1= 'Concrete0' ( (lv_name_2_0= ruleEString ) ) ) ;
    public final EObject ruleConcrete0_Impl() throws RecognitionException {
        EObject current = null;

        Token otherlv_1=null;
        AntlrDatatypeRuleToken lv_name_2_0 = null;



        	enterRule();

        try {
            // InternalEcore2XtextTest.g:325:2: ( ( () otherlv_1= 'Concrete0' ( (lv_name_2_0= ruleEString ) ) ) )
            // InternalEcore2XtextTest.g:326:2: ( () otherlv_1= 'Concrete0' ( (lv_name_2_0= ruleEString ) ) )
            {
            // InternalEcore2XtextTest.g:326:2: ( () otherlv_1= 'Concrete0' ( (lv_name_2_0= ruleEString ) ) )
            // InternalEcore2XtextTest.g:327:3: () otherlv_1= 'Concrete0' ( (lv_name_2_0= ruleEString ) )
            {
            // InternalEcore2XtextTest.g:327:3: ()
            // InternalEcore2XtextTest.g:328:4: 
            {

            				current = forceCreateModelElement(
            					grammarAccess.getConcrete0_ImplAccess().getConcrete0Action_0(),
            					current);
            			

            }

            otherlv_1=(Token)match(input,18,FollowSets000.FOLLOW_10); 

            			newLeafNode(otherlv_1, grammarAccess.getConcrete0_ImplAccess().getConcrete0Keyword_1());
            		
            // InternalEcore2XtextTest.g:338:3: ( (lv_name_2_0= ruleEString ) )
            // InternalEcore2XtextTest.g:339:4: (lv_name_2_0= ruleEString )
            {
            // InternalEcore2XtextTest.g:339:4: (lv_name_2_0= ruleEString )
            // InternalEcore2XtextTest.g:340:5: lv_name_2_0= ruleEString
            {

            					newCompositeNode(grammarAccess.getConcrete0_ImplAccess().getNameEStringParserRuleCall_2_0());
            				
            pushFollow(FollowSets000.FOLLOW_2);
            lv_name_2_0=ruleEString();

            state._fsp--;


            					if (current==null) {
            						current = createModelElementForParent(grammarAccess.getConcrete0_ImplRule());
            					}
            					set(
            						current,
            						"name",
            						lv_name_2_0,
            						"org.eclipse.xtext.xtext.ui.ecore2xtext.Ecore2XtextTest.EString");
            					afterParserOrEnumRuleCall();
            				

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
        }
        return current;
    }
    // $ANTLR end "ruleConcrete0_Impl"


    // $ANTLR start "entryRuleEString"
    // InternalEcore2XtextTest.g:361:1: entryRuleEString returns [String current=null] : iv_ruleEString= ruleEString EOF ;
    public final String entryRuleEString() throws RecognitionException {
        String current = null;

        AntlrDatatypeRuleToken iv_ruleEString = null;


        try {
            // InternalEcore2XtextTest.g:361:47: (iv_ruleEString= ruleEString EOF )
            // InternalEcore2XtextTest.g:362:2: iv_ruleEString= ruleEString EOF
            {
             newCompositeNode(grammarAccess.getEStringRule()); 
            pushFollow(FollowSets000.FOLLOW_1);
            iv_ruleEString=ruleEString();

            state._fsp--;

             current =iv_ruleEString.getText(); 
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
    // $ANTLR end "entryRuleEString"


    // $ANTLR start "ruleEString"
    // InternalEcore2XtextTest.g:368:1: ruleEString returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()] : (this_STRING_0= RULE_STRING | this_ID_1= RULE_ID ) ;
    public final AntlrDatatypeRuleToken ruleEString() throws RecognitionException {
        AntlrDatatypeRuleToken current = new AntlrDatatypeRuleToken();

        Token this_STRING_0=null;
        Token this_ID_1=null;


        	enterRule();

        try {
            // InternalEcore2XtextTest.g:374:2: ( (this_STRING_0= RULE_STRING | this_ID_1= RULE_ID ) )
            // InternalEcore2XtextTest.g:375:2: (this_STRING_0= RULE_STRING | this_ID_1= RULE_ID )
            {
            // InternalEcore2XtextTest.g:375:2: (this_STRING_0= RULE_STRING | this_ID_1= RULE_ID )
            int alt6=2;
            int LA6_0 = input.LA(1);

            if ( (LA6_0==RULE_STRING) ) {
                alt6=1;
            }
            else if ( (LA6_0==RULE_ID) ) {
                alt6=2;
            }
            else {
                NoViableAltException nvae =
                    new NoViableAltException("", 6, 0, input);

                throw nvae;
            }
            switch (alt6) {
                case 1 :
                    // InternalEcore2XtextTest.g:376:3: this_STRING_0= RULE_STRING
                    {
                    this_STRING_0=(Token)match(input,RULE_STRING,FollowSets000.FOLLOW_2); 

                    			current.merge(this_STRING_0);
                    		

                    			newLeafNode(this_STRING_0, grammarAccess.getEStringAccess().getSTRINGTerminalRuleCall_0());
                    		

                    }
                    break;
                case 2 :
                    // InternalEcore2XtextTest.g:384:3: this_ID_1= RULE_ID
                    {
                    this_ID_1=(Token)match(input,RULE_ID,FollowSets000.FOLLOW_2); 

                    			current.merge(this_ID_1);
                    		

                    			newLeafNode(this_ID_1, grammarAccess.getEStringAccess().getIDTerminalRuleCall_1());
                    		

                    }
                    break;

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
    // $ANTLR end "ruleEString"


    // $ANTLR start "entryRuleConcrete1_Impl"
    // InternalEcore2XtextTest.g:395:1: entryRuleConcrete1_Impl returns [EObject current=null] : iv_ruleConcrete1_Impl= ruleConcrete1_Impl EOF ;
    public final EObject entryRuleConcrete1_Impl() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleConcrete1_Impl = null;


        try {
            // InternalEcore2XtextTest.g:395:55: (iv_ruleConcrete1_Impl= ruleConcrete1_Impl EOF )
            // InternalEcore2XtextTest.g:396:2: iv_ruleConcrete1_Impl= ruleConcrete1_Impl EOF
            {
             newCompositeNode(grammarAccess.getConcrete1_ImplRule()); 
            pushFollow(FollowSets000.FOLLOW_1);
            iv_ruleConcrete1_Impl=ruleConcrete1_Impl();

            state._fsp--;

             current =iv_ruleConcrete1_Impl; 
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
    // $ANTLR end "entryRuleConcrete1_Impl"


    // $ANTLR start "ruleConcrete1_Impl"
    // InternalEcore2XtextTest.g:402:1: ruleConcrete1_Impl returns [EObject current=null] : ( () otherlv_1= 'Concrete1' ( (lv_name_2_0= ruleEString ) ) ) ;
    public final EObject ruleConcrete1_Impl() throws RecognitionException {
        EObject current = null;

        Token otherlv_1=null;
        AntlrDatatypeRuleToken lv_name_2_0 = null;



        	enterRule();

        try {
            // InternalEcore2XtextTest.g:408:2: ( ( () otherlv_1= 'Concrete1' ( (lv_name_2_0= ruleEString ) ) ) )
            // InternalEcore2XtextTest.g:409:2: ( () otherlv_1= 'Concrete1' ( (lv_name_2_0= ruleEString ) ) )
            {
            // InternalEcore2XtextTest.g:409:2: ( () otherlv_1= 'Concrete1' ( (lv_name_2_0= ruleEString ) ) )
            // InternalEcore2XtextTest.g:410:3: () otherlv_1= 'Concrete1' ( (lv_name_2_0= ruleEString ) )
            {
            // InternalEcore2XtextTest.g:410:3: ()
            // InternalEcore2XtextTest.g:411:4: 
            {

            				current = forceCreateModelElement(
            					grammarAccess.getConcrete1_ImplAccess().getConcrete1Action_0(),
            					current);
            			

            }

            otherlv_1=(Token)match(input,19,FollowSets000.FOLLOW_10); 

            			newLeafNode(otherlv_1, grammarAccess.getConcrete1_ImplAccess().getConcrete1Keyword_1());
            		
            // InternalEcore2XtextTest.g:421:3: ( (lv_name_2_0= ruleEString ) )
            // InternalEcore2XtextTest.g:422:4: (lv_name_2_0= ruleEString )
            {
            // InternalEcore2XtextTest.g:422:4: (lv_name_2_0= ruleEString )
            // InternalEcore2XtextTest.g:423:5: lv_name_2_0= ruleEString
            {

            					newCompositeNode(grammarAccess.getConcrete1_ImplAccess().getNameEStringParserRuleCall_2_0());
            				
            pushFollow(FollowSets000.FOLLOW_2);
            lv_name_2_0=ruleEString();

            state._fsp--;


            					if (current==null) {
            						current = createModelElementForParent(grammarAccess.getConcrete1_ImplRule());
            					}
            					set(
            						current,
            						"name",
            						lv_name_2_0,
            						"org.eclipse.xtext.xtext.ui.ecore2xtext.Ecore2XtextTest.EString");
            					afterParserOrEnumRuleCall();
            				

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
        }
        return current;
    }
    // $ANTLR end "ruleConcrete1_Impl"


    // $ANTLR start "entryRuleDiamondInheritance"
    // InternalEcore2XtextTest.g:444:1: entryRuleDiamondInheritance returns [EObject current=null] : iv_ruleDiamondInheritance= ruleDiamondInheritance EOF ;
    public final EObject entryRuleDiamondInheritance() throws RecognitionException {
        EObject current = null;

        EObject iv_ruleDiamondInheritance = null;


        try {
            // InternalEcore2XtextTest.g:444:59: (iv_ruleDiamondInheritance= ruleDiamondInheritance EOF )
            // InternalEcore2XtextTest.g:445:2: iv_ruleDiamondInheritance= ruleDiamondInheritance EOF
            {
             newCompositeNode(grammarAccess.getDiamondInheritanceRule()); 
            pushFollow(FollowSets000.FOLLOW_1);
            iv_ruleDiamondInheritance=ruleDiamondInheritance();

            state._fsp--;

             current =iv_ruleDiamondInheritance; 
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
    // $ANTLR end "entryRuleDiamondInheritance"


    // $ANTLR start "ruleDiamondInheritance"
    // InternalEcore2XtextTest.g:451:1: ruleDiamondInheritance returns [EObject current=null] : ( () otherlv_1= 'DiamondInheritance' ( (lv_name_2_0= ruleEString ) ) ) ;
    public final EObject ruleDiamondInheritance() throws RecognitionException {
        EObject current = null;

        Token otherlv_1=null;
        AntlrDatatypeRuleToken lv_name_2_0 = null;



        	enterRule();

        try {
            // InternalEcore2XtextTest.g:457:2: ( ( () otherlv_1= 'DiamondInheritance' ( (lv_name_2_0= ruleEString ) ) ) )
            // InternalEcore2XtextTest.g:458:2: ( () otherlv_1= 'DiamondInheritance' ( (lv_name_2_0= ruleEString ) ) )
            {
            // InternalEcore2XtextTest.g:458:2: ( () otherlv_1= 'DiamondInheritance' ( (lv_name_2_0= ruleEString ) ) )
            // InternalEcore2XtextTest.g:459:3: () otherlv_1= 'DiamondInheritance' ( (lv_name_2_0= ruleEString ) )
            {
            // InternalEcore2XtextTest.g:459:3: ()
            // InternalEcore2XtextTest.g:460:4: 
            {

            				current = forceCreateModelElement(
            					grammarAccess.getDiamondInheritanceAccess().getDiamondInheritanceAction_0(),
            					current);
            			

            }

            otherlv_1=(Token)match(input,20,FollowSets000.FOLLOW_10); 

            			newLeafNode(otherlv_1, grammarAccess.getDiamondInheritanceAccess().getDiamondInheritanceKeyword_1());
            		
            // InternalEcore2XtextTest.g:470:3: ( (lv_name_2_0= ruleEString ) )
            // InternalEcore2XtextTest.g:471:4: (lv_name_2_0= ruleEString )
            {
            // InternalEcore2XtextTest.g:471:4: (lv_name_2_0= ruleEString )
            // InternalEcore2XtextTest.g:472:5: lv_name_2_0= ruleEString
            {

            					newCompositeNode(grammarAccess.getDiamondInheritanceAccess().getNameEStringParserRuleCall_2_0());
            				
            pushFollow(FollowSets000.FOLLOW_2);
            lv_name_2_0=ruleEString();

            state._fsp--;


            					if (current==null) {
            						current = createModelElementForParent(grammarAccess.getDiamondInheritanceRule());
            					}
            					set(
            						current,
            						"name",
            						lv_name_2_0,
            						"org.eclipse.xtext.xtext.ui.ecore2xtext.Ecore2XtextTest.EString");
            					afterParserOrEnumRuleCall();
            				

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
        }
        return current;
    }
    // $ANTLR end "ruleDiamondInheritance"

    // Delegated rules


 

    
    private static class FollowSets000 {
        public static final BitSet FOLLOW_1 = new BitSet(new long[]{0x0000000000000000L});
        public static final BitSet FOLLOW_2 = new BitSet(new long[]{0x0000000000000002L});
        public static final BitSet FOLLOW_3 = new BitSet(new long[]{0x0000000000020000L});
        public static final BitSet FOLLOW_4 = new BitSet(new long[]{0x0000000000001000L});
        public static final BitSet FOLLOW_5 = new BitSet(new long[]{0x000000000001A000L});
        public static final BitSet FOLLOW_6 = new BitSet(new long[]{0x00000000001C0000L});
        public static final BitSet FOLLOW_7 = new BitSet(new long[]{0x000000000000C000L});
        public static final BitSet FOLLOW_8 = new BitSet(new long[]{0x0000000000018000L});
        public static final BitSet FOLLOW_9 = new BitSet(new long[]{0x0000000000008000L});
        public static final BitSet FOLLOW_10 = new BitSet(new long[]{0x0000000000000030L});
    }


}
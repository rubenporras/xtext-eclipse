package org.eclipse.xtext.ui.tests.editor.contentassist.ide.contentassist.antlr.internal;

import java.io.InputStream;
import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.AbstractInternalContentAssistParser;
import org.eclipse.xtext.ide.editor.contentassist.antlr.internal.DFA;
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
public class InternalBug377311TestLanguageParser extends AbstractInternalContentAssistParser {
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

    	public void setGrammarAccess(Bug377311TestLanguageGrammarAccess grammarAccess) {
    		this.grammarAccess = grammarAccess;
    	}

    	@Override
    	protected Grammar getGrammar() {
    		return grammarAccess.getGrammar();
    	}

    	@Override
    	protected String getValueForTokenName(String tokenName) {
    		return tokenName;
    	}



    // $ANTLR start "entryRuleRoot"
    // InternalBug377311TestLanguage.g:58:1: entryRuleRoot : ruleRoot EOF ;
    public final void entryRuleRoot() throws RecognitionException {
        try {
            // InternalBug377311TestLanguage.g:59:1: ( ruleRoot EOF )
            // InternalBug377311TestLanguage.g:60:1: ruleRoot EOF
            {
             before(grammarAccess.getRootRule()); 
            pushFollow(FollowSets000.FOLLOW_1);
            ruleRoot();

            state._fsp--;

             after(grammarAccess.getRootRule()); 
            match(input,EOF,FollowSets000.FOLLOW_2); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {
        }
        return ;
    }
    // $ANTLR end "entryRuleRoot"


    // $ANTLR start "ruleRoot"
    // InternalBug377311TestLanguage.g:67:1: ruleRoot : ( ( rule__Root__ChildsAssignment )* ) ;
    public final void ruleRoot() throws RecognitionException {

        		int stackSize = keepStackSize();
        	
        try {
            // InternalBug377311TestLanguage.g:71:2: ( ( ( rule__Root__ChildsAssignment )* ) )
            // InternalBug377311TestLanguage.g:72:2: ( ( rule__Root__ChildsAssignment )* )
            {
            // InternalBug377311TestLanguage.g:72:2: ( ( rule__Root__ChildsAssignment )* )
            // InternalBug377311TestLanguage.g:73:3: ( rule__Root__ChildsAssignment )*
            {
             before(grammarAccess.getRootAccess().getChildsAssignment()); 
            // InternalBug377311TestLanguage.g:74:3: ( rule__Root__ChildsAssignment )*
            loop1:
            do {
                int alt1=2;
                int LA1_0 = input.LA(1);

                if ( (LA1_0==12) ) {
                    alt1=1;
                }


                switch (alt1) {
            	case 1 :
            	    // InternalBug377311TestLanguage.g:74:4: rule__Root__ChildsAssignment
            	    {
            	    pushFollow(FollowSets000.FOLLOW_3);
            	    rule__Root__ChildsAssignment();

            	    state._fsp--;


            	    }
            	    break;

            	default :
            	    break loop1;
                }
            } while (true);

             after(grammarAccess.getRootAccess().getChildsAssignment()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "ruleRoot"


    // $ANTLR start "entryRuleChild"
    // InternalBug377311TestLanguage.g:83:1: entryRuleChild : ruleChild EOF ;
    public final void entryRuleChild() throws RecognitionException {
         
        	HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens("RULE_WS", "RULE_ID");

        try {
            // InternalBug377311TestLanguage.g:87:1: ( ruleChild EOF )
            // InternalBug377311TestLanguage.g:88:1: ruleChild EOF
            {
             before(grammarAccess.getChildRule()); 
            pushFollow(FollowSets000.FOLLOW_1);
            ruleChild();

            state._fsp--;

             after(grammarAccess.getChildRule()); 
            match(input,EOF,FollowSets000.FOLLOW_2); 

            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	myHiddenTokenState.restore();

        }
        return ;
    }
    // $ANTLR end "entryRuleChild"


    // $ANTLR start "ruleChild"
    // InternalBug377311TestLanguage.g:98:1: ruleChild : ( ( rule__Child__Group__0 ) ) ;
    public final void ruleChild() throws RecognitionException {

        		HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens("RULE_WS", "RULE_ID");
        		int stackSize = keepStackSize();
        	
        try {
            // InternalBug377311TestLanguage.g:103:2: ( ( ( rule__Child__Group__0 ) ) )
            // InternalBug377311TestLanguage.g:104:2: ( ( rule__Child__Group__0 ) )
            {
            // InternalBug377311TestLanguage.g:104:2: ( ( rule__Child__Group__0 ) )
            // InternalBug377311TestLanguage.g:105:3: ( rule__Child__Group__0 )
            {
             before(grammarAccess.getChildAccess().getGroup()); 
            // InternalBug377311TestLanguage.g:106:3: ( rule__Child__Group__0 )
            // InternalBug377311TestLanguage.g:106:4: rule__Child__Group__0
            {
            pushFollow(FollowSets000.FOLLOW_2);
            rule__Child__Group__0();

            state._fsp--;


            }

             after(grammarAccess.getChildAccess().getGroup()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);
            	myHiddenTokenState.restore();

        }
        return ;
    }
    // $ANTLR end "ruleChild"


    // $ANTLR start "rule__Child__Group__0"
    // InternalBug377311TestLanguage.g:115:1: rule__Child__Group__0 : rule__Child__Group__0__Impl rule__Child__Group__1 ;
    public final void rule__Child__Group__0() throws RecognitionException {

        		int stackSize = keepStackSize();
        	
        try {
            // InternalBug377311TestLanguage.g:119:1: ( rule__Child__Group__0__Impl rule__Child__Group__1 )
            // InternalBug377311TestLanguage.g:120:2: rule__Child__Group__0__Impl rule__Child__Group__1
            {
            pushFollow(FollowSets000.FOLLOW_4);
            rule__Child__Group__0__Impl();

            state._fsp--;

            pushFollow(FollowSets000.FOLLOW_2);
            rule__Child__Group__1();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Child__Group__0"


    // $ANTLR start "rule__Child__Group__0__Impl"
    // InternalBug377311TestLanguage.g:127:1: rule__Child__Group__0__Impl : ( 'child' ) ;
    public final void rule__Child__Group__0__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
        	
        try {
            // InternalBug377311TestLanguage.g:131:1: ( ( 'child' ) )
            // InternalBug377311TestLanguage.g:132:1: ( 'child' )
            {
            // InternalBug377311TestLanguage.g:132:1: ( 'child' )
            // InternalBug377311TestLanguage.g:133:2: 'child'
            {
             before(grammarAccess.getChildAccess().getChildKeyword_0()); 
            match(input,12,FollowSets000.FOLLOW_2); 
             after(grammarAccess.getChildAccess().getChildKeyword_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Child__Group__0__Impl"


    // $ANTLR start "rule__Child__Group__1"
    // InternalBug377311TestLanguage.g:142:1: rule__Child__Group__1 : rule__Child__Group__1__Impl ;
    public final void rule__Child__Group__1() throws RecognitionException {

        		int stackSize = keepStackSize();
        	
        try {
            // InternalBug377311TestLanguage.g:146:1: ( rule__Child__Group__1__Impl )
            // InternalBug377311TestLanguage.g:147:2: rule__Child__Group__1__Impl
            {
            pushFollow(FollowSets000.FOLLOW_2);
            rule__Child__Group__1__Impl();

            state._fsp--;


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Child__Group__1"


    // $ANTLR start "rule__Child__Group__1__Impl"
    // InternalBug377311TestLanguage.g:153:1: rule__Child__Group__1__Impl : ( ( rule__Child__NameAssignment_1 ) ) ;
    public final void rule__Child__Group__1__Impl() throws RecognitionException {

        		int stackSize = keepStackSize();
        	
        try {
            // InternalBug377311TestLanguage.g:157:1: ( ( ( rule__Child__NameAssignment_1 ) ) )
            // InternalBug377311TestLanguage.g:158:1: ( ( rule__Child__NameAssignment_1 ) )
            {
            // InternalBug377311TestLanguage.g:158:1: ( ( rule__Child__NameAssignment_1 ) )
            // InternalBug377311TestLanguage.g:159:2: ( rule__Child__NameAssignment_1 )
            {
             before(grammarAccess.getChildAccess().getNameAssignment_1()); 
            // InternalBug377311TestLanguage.g:160:2: ( rule__Child__NameAssignment_1 )
            // InternalBug377311TestLanguage.g:160:3: rule__Child__NameAssignment_1
            {
            pushFollow(FollowSets000.FOLLOW_2);
            rule__Child__NameAssignment_1();

            state._fsp--;


            }

             after(grammarAccess.getChildAccess().getNameAssignment_1()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Child__Group__1__Impl"


    // $ANTLR start "rule__Root__ChildsAssignment"
    // InternalBug377311TestLanguage.g:169:1: rule__Root__ChildsAssignment : ( ruleChild ) ;
    public final void rule__Root__ChildsAssignment() throws RecognitionException {

        		int stackSize = keepStackSize();
        	
        try {
            // InternalBug377311TestLanguage.g:173:1: ( ( ruleChild ) )
            // InternalBug377311TestLanguage.g:174:2: ( ruleChild )
            {
            // InternalBug377311TestLanguage.g:174:2: ( ruleChild )
            // InternalBug377311TestLanguage.g:175:3: ruleChild
            {
             before(grammarAccess.getRootAccess().getChildsChildParserRuleCall_0()); 
            pushFollow(FollowSets000.FOLLOW_2);
            ruleChild();

            state._fsp--;

             after(grammarAccess.getRootAccess().getChildsChildParserRuleCall_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Root__ChildsAssignment"


    // $ANTLR start "rule__Child__NameAssignment_1"
    // InternalBug377311TestLanguage.g:184:1: rule__Child__NameAssignment_1 : ( RULE_STRING ) ;
    public final void rule__Child__NameAssignment_1() throws RecognitionException {

        		int stackSize = keepStackSize();
        	
        try {
            // InternalBug377311TestLanguage.g:188:1: ( ( RULE_STRING ) )
            // InternalBug377311TestLanguage.g:189:2: ( RULE_STRING )
            {
            // InternalBug377311TestLanguage.g:189:2: ( RULE_STRING )
            // InternalBug377311TestLanguage.g:190:3: RULE_STRING
            {
             before(grammarAccess.getChildAccess().getNameSTRINGTerminalRuleCall_1_0()); 
            match(input,RULE_STRING,FollowSets000.FOLLOW_2); 
             after(grammarAccess.getChildAccess().getNameSTRINGTerminalRuleCall_1_0()); 

            }


            }

        }
        catch (RecognitionException re) {
            reportError(re);
            recover(input,re);
        }
        finally {

            	restoreStackSize(stackSize);

        }
        return ;
    }
    // $ANTLR end "rule__Child__NameAssignment_1"

    // Delegated rules


 

    
    private static class FollowSets000 {
        public static final BitSet FOLLOW_1 = new BitSet(new long[]{0x0000000000000000L});
        public static final BitSet FOLLOW_2 = new BitSet(new long[]{0x0000000000000002L});
        public static final BitSet FOLLOW_3 = new BitSet(new long[]{0x0000000000001002L});
        public static final BitSet FOLLOW_4 = new BitSet(new long[]{0x0000000000000010L});
    }


}
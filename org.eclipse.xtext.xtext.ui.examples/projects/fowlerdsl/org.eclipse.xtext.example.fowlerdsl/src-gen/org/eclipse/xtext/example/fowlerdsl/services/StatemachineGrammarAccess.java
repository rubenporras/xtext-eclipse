/*******************************************************************************
 * Copyright (c) 2011, 2022 itemis AG (http://www.itemis.eu) and others.
 * This program and the accompanying materials are made available under the
 * terms of the Eclipse Public License 2.0 which is available at
 * http://www.eclipse.org/legal/epl-2.0.
 *
 * SPDX-License-Identifier: EPL-2.0
 *******************************************************************************/
package org.eclipse.xtext.example.fowlerdsl.services;

import com.google.inject.Inject;
import com.google.inject.Singleton;
import java.util.List;
import org.eclipse.xtext.Action;
import org.eclipse.xtext.Assignment;
import org.eclipse.xtext.CrossReference;
import org.eclipse.xtext.Grammar;
import org.eclipse.xtext.GrammarUtil;
import org.eclipse.xtext.Group;
import org.eclipse.xtext.Keyword;
import org.eclipse.xtext.ParserRule;
import org.eclipse.xtext.RuleCall;
import org.eclipse.xtext.TerminalRule;
import org.eclipse.xtext.common.services.TerminalsGrammarAccess;
import org.eclipse.xtext.service.AbstractElementFinder;
import org.eclipse.xtext.service.GrammarProvider;

@Singleton
public class StatemachineGrammarAccess extends AbstractElementFinder.AbstractGrammarElementFinder {
	
	public class StatemachineElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.example.fowlerdsl.Statemachine.Statemachine");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Action cStatemachineAction_0 = (Action)cGroup.eContents().get(0);
		private final Group cGroup_1 = (Group)cGroup.eContents().get(1);
		private final Keyword cEventsKeyword_1_0 = (Keyword)cGroup_1.eContents().get(0);
		private final Assignment cEventsAssignment_1_1 = (Assignment)cGroup_1.eContents().get(1);
		private final RuleCall cEventsEventParserRuleCall_1_1_0 = (RuleCall)cEventsAssignment_1_1.eContents().get(0);
		private final Keyword cEndKeyword_1_2 = (Keyword)cGroup_1.eContents().get(2);
		private final Group cGroup_2 = (Group)cGroup.eContents().get(2);
		private final Keyword cResetEventsKeyword_2_0 = (Keyword)cGroup_2.eContents().get(0);
		private final Assignment cResetEventsAssignment_2_1 = (Assignment)cGroup_2.eContents().get(1);
		private final CrossReference cResetEventsEventCrossReference_2_1_0 = (CrossReference)cResetEventsAssignment_2_1.eContents().get(0);
		private final RuleCall cResetEventsEventIDTerminalRuleCall_2_1_0_1 = (RuleCall)cResetEventsEventCrossReference_2_1_0.eContents().get(1);
		private final Keyword cEndKeyword_2_2 = (Keyword)cGroup_2.eContents().get(2);
		private final Group cGroup_3 = (Group)cGroup.eContents().get(3);
		private final Keyword cCommandsKeyword_3_0 = (Keyword)cGroup_3.eContents().get(0);
		private final Assignment cCommandsAssignment_3_1 = (Assignment)cGroup_3.eContents().get(1);
		private final RuleCall cCommandsCommandParserRuleCall_3_1_0 = (RuleCall)cCommandsAssignment_3_1.eContents().get(0);
		private final Keyword cEndKeyword_3_2 = (Keyword)cGroup_3.eContents().get(2);
		private final Assignment cStatesAssignment_4 = (Assignment)cGroup.eContents().get(4);
		private final RuleCall cStatesStateParserRuleCall_4_0 = (RuleCall)cStatesAssignment_4.eContents().get(0);
		
		//Statemachine :
		//    {Statemachine}
		//    ('events'
		//        events+=Event+
		//    'end')?
		//    ('resetEvents'
		//        resetEvents+=[Event]+
		//    'end')?
		//    ('commands'
		//        commands+=Command+
		//    'end')?
		//    states+=State*
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//{Statemachine}
		//('events'
		//    events+=Event+
		//'end')?
		//('resetEvents'
		//    resetEvents+=[Event]+
		//'end')?
		//('commands'
		//    commands+=Command+
		//'end')?
		//states+=State*
		public Group getGroup() { return cGroup; }
		
		//{Statemachine}
		public Action getStatemachineAction_0() { return cStatemachineAction_0; }
		
		//('events'
		//    events+=Event+
		//'end')?
		public Group getGroup_1() { return cGroup_1; }
		
		//'events'
		public Keyword getEventsKeyword_1_0() { return cEventsKeyword_1_0; }
		
		//events+=Event+
		public Assignment getEventsAssignment_1_1() { return cEventsAssignment_1_1; }
		
		//Event
		public RuleCall getEventsEventParserRuleCall_1_1_0() { return cEventsEventParserRuleCall_1_1_0; }
		
		//'end'
		public Keyword getEndKeyword_1_2() { return cEndKeyword_1_2; }
		
		//('resetEvents'
		//    resetEvents+=[Event]+
		//'end')?
		public Group getGroup_2() { return cGroup_2; }
		
		//'resetEvents'
		public Keyword getResetEventsKeyword_2_0() { return cResetEventsKeyword_2_0; }
		
		//resetEvents+=[Event]+
		public Assignment getResetEventsAssignment_2_1() { return cResetEventsAssignment_2_1; }
		
		//[Event]
		public CrossReference getResetEventsEventCrossReference_2_1_0() { return cResetEventsEventCrossReference_2_1_0; }
		
		//ID
		public RuleCall getResetEventsEventIDTerminalRuleCall_2_1_0_1() { return cResetEventsEventIDTerminalRuleCall_2_1_0_1; }
		
		//'end'
		public Keyword getEndKeyword_2_2() { return cEndKeyword_2_2; }
		
		//('commands'
		//    commands+=Command+
		//'end')?
		public Group getGroup_3() { return cGroup_3; }
		
		//'commands'
		public Keyword getCommandsKeyword_3_0() { return cCommandsKeyword_3_0; }
		
		//commands+=Command+
		public Assignment getCommandsAssignment_3_1() { return cCommandsAssignment_3_1; }
		
		//Command
		public RuleCall getCommandsCommandParserRuleCall_3_1_0() { return cCommandsCommandParserRuleCall_3_1_0; }
		
		//'end'
		public Keyword getEndKeyword_3_2() { return cEndKeyword_3_2; }
		
		//states+=State*
		public Assignment getStatesAssignment_4() { return cStatesAssignment_4; }
		
		//State
		public RuleCall getStatesStateParserRuleCall_4_0() { return cStatesStateParserRuleCall_4_0; }
	}
	public class EventElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.example.fowlerdsl.Statemachine.Event");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cNameAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cNameIDTerminalRuleCall_0_0 = (RuleCall)cNameAssignment_0.eContents().get(0);
		private final Assignment cCodeAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cCodeIDTerminalRuleCall_1_0 = (RuleCall)cCodeAssignment_1.eContents().get(0);
		
		//Event:
		//    name=ID code=ID
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//name=ID code=ID
		public Group getGroup() { return cGroup; }
		
		//name=ID
		public Assignment getNameAssignment_0() { return cNameAssignment_0; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_0_0() { return cNameIDTerminalRuleCall_0_0; }
		
		//code=ID
		public Assignment getCodeAssignment_1() { return cCodeAssignment_1; }
		
		//ID
		public RuleCall getCodeIDTerminalRuleCall_1_0() { return cCodeIDTerminalRuleCall_1_0; }
	}
	public class CommandElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.example.fowlerdsl.Statemachine.Command");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cNameAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final RuleCall cNameIDTerminalRuleCall_0_0 = (RuleCall)cNameAssignment_0.eContents().get(0);
		private final Assignment cCodeAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cCodeIDTerminalRuleCall_1_0 = (RuleCall)cCodeAssignment_1.eContents().get(0);
		
		//Command:
		//    name=ID code=ID
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//name=ID code=ID
		public Group getGroup() { return cGroup; }
		
		//name=ID
		public Assignment getNameAssignment_0() { return cNameAssignment_0; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_0_0() { return cNameIDTerminalRuleCall_0_0; }
		
		//code=ID
		public Assignment getCodeAssignment_1() { return cCodeAssignment_1; }
		
		//ID
		public RuleCall getCodeIDTerminalRuleCall_1_0() { return cCodeIDTerminalRuleCall_1_0; }
	}
	public class StateElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.example.fowlerdsl.Statemachine.State");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Keyword cStateKeyword_0 = (Keyword)cGroup.eContents().get(0);
		private final Assignment cNameAssignment_1 = (Assignment)cGroup.eContents().get(1);
		private final RuleCall cNameIDTerminalRuleCall_1_0 = (RuleCall)cNameAssignment_1.eContents().get(0);
		private final Group cGroup_2 = (Group)cGroup.eContents().get(2);
		private final Keyword cActionsKeyword_2_0 = (Keyword)cGroup_2.eContents().get(0);
		private final Keyword cLeftCurlyBracketKeyword_2_1 = (Keyword)cGroup_2.eContents().get(1);
		private final Assignment cActionsAssignment_2_2 = (Assignment)cGroup_2.eContents().get(2);
		private final CrossReference cActionsCommandCrossReference_2_2_0 = (CrossReference)cActionsAssignment_2_2.eContents().get(0);
		private final RuleCall cActionsCommandIDTerminalRuleCall_2_2_0_1 = (RuleCall)cActionsCommandCrossReference_2_2_0.eContents().get(1);
		private final Keyword cRightCurlyBracketKeyword_2_3 = (Keyword)cGroup_2.eContents().get(3);
		private final Assignment cTransitionsAssignment_3 = (Assignment)cGroup.eContents().get(3);
		private final RuleCall cTransitionsTransitionParserRuleCall_3_0 = (RuleCall)cTransitionsAssignment_3.eContents().get(0);
		private final Keyword cEndKeyword_4 = (Keyword)cGroup.eContents().get(4);
		
		//State:
		//    'state' name=ID
		//        ('actions' '{' actions+=[Command]+ '}')?
		//        transitions+=Transition*
		//    'end'
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//'state' name=ID
		//    ('actions' '{' actions+=[Command]+ '}')?
		//    transitions+=Transition*
		//'end'
		public Group getGroup() { return cGroup; }
		
		//'state'
		public Keyword getStateKeyword_0() { return cStateKeyword_0; }
		
		//name=ID
		public Assignment getNameAssignment_1() { return cNameAssignment_1; }
		
		//ID
		public RuleCall getNameIDTerminalRuleCall_1_0() { return cNameIDTerminalRuleCall_1_0; }
		
		//('actions' '{' actions+=[Command]+ '}')?
		public Group getGroup_2() { return cGroup_2; }
		
		//'actions'
		public Keyword getActionsKeyword_2_0() { return cActionsKeyword_2_0; }
		
		//'{'
		public Keyword getLeftCurlyBracketKeyword_2_1() { return cLeftCurlyBracketKeyword_2_1; }
		
		//actions+=[Command]+
		public Assignment getActionsAssignment_2_2() { return cActionsAssignment_2_2; }
		
		//[Command]
		public CrossReference getActionsCommandCrossReference_2_2_0() { return cActionsCommandCrossReference_2_2_0; }
		
		//ID
		public RuleCall getActionsCommandIDTerminalRuleCall_2_2_0_1() { return cActionsCommandIDTerminalRuleCall_2_2_0_1; }
		
		//'}'
		public Keyword getRightCurlyBracketKeyword_2_3() { return cRightCurlyBracketKeyword_2_3; }
		
		//transitions+=Transition*
		public Assignment getTransitionsAssignment_3() { return cTransitionsAssignment_3; }
		
		//Transition
		public RuleCall getTransitionsTransitionParserRuleCall_3_0() { return cTransitionsTransitionParserRuleCall_3_0; }
		
		//'end'
		public Keyword getEndKeyword_4() { return cEndKeyword_4; }
	}
	public class TransitionElements extends AbstractParserRuleElementFinder {
		private final ParserRule rule = (ParserRule) GrammarUtil.findRuleForName(getGrammar(), "org.eclipse.xtext.example.fowlerdsl.Statemachine.Transition");
		private final Group cGroup = (Group)rule.eContents().get(1);
		private final Assignment cEventAssignment_0 = (Assignment)cGroup.eContents().get(0);
		private final CrossReference cEventEventCrossReference_0_0 = (CrossReference)cEventAssignment_0.eContents().get(0);
		private final RuleCall cEventEventIDTerminalRuleCall_0_0_1 = (RuleCall)cEventEventCrossReference_0_0.eContents().get(1);
		private final Keyword cEqualsSignGreaterThanSignKeyword_1 = (Keyword)cGroup.eContents().get(1);
		private final Assignment cStateAssignment_2 = (Assignment)cGroup.eContents().get(2);
		private final CrossReference cStateStateCrossReference_2_0 = (CrossReference)cStateAssignment_2.eContents().get(0);
		private final RuleCall cStateStateIDTerminalRuleCall_2_0_1 = (RuleCall)cStateStateCrossReference_2_0.eContents().get(1);
		
		//Transition:
		//    event=[Event] '=>' state=[State]
		//;
		@Override public ParserRule getRule() { return rule; }
		
		//event=[Event] '=>' state=[State]
		public Group getGroup() { return cGroup; }
		
		//event=[Event]
		public Assignment getEventAssignment_0() { return cEventAssignment_0; }
		
		//[Event]
		public CrossReference getEventEventCrossReference_0_0() { return cEventEventCrossReference_0_0; }
		
		//ID
		public RuleCall getEventEventIDTerminalRuleCall_0_0_1() { return cEventEventIDTerminalRuleCall_0_0_1; }
		
		//'=>'
		public Keyword getEqualsSignGreaterThanSignKeyword_1() { return cEqualsSignGreaterThanSignKeyword_1; }
		
		//state=[State]
		public Assignment getStateAssignment_2() { return cStateAssignment_2; }
		
		//[State]
		public CrossReference getStateStateCrossReference_2_0() { return cStateStateCrossReference_2_0; }
		
		//ID
		public RuleCall getStateStateIDTerminalRuleCall_2_0_1() { return cStateStateIDTerminalRuleCall_2_0_1; }
	}
	
	
	private final StatemachineElements pStatemachine;
	private final EventElements pEvent;
	private final CommandElements pCommand;
	private final StateElements pState;
	private final TransitionElements pTransition;
	
	private final Grammar grammar;
	
	private final TerminalsGrammarAccess gaTerminals;

	@Inject
	public StatemachineGrammarAccess(GrammarProvider grammarProvider,
			TerminalsGrammarAccess gaTerminals) {
		this.grammar = internalFindGrammar(grammarProvider);
		this.gaTerminals = gaTerminals;
		this.pStatemachine = new StatemachineElements();
		this.pEvent = new EventElements();
		this.pCommand = new CommandElements();
		this.pState = new StateElements();
		this.pTransition = new TransitionElements();
	}
	
	protected Grammar internalFindGrammar(GrammarProvider grammarProvider) {
		Grammar grammar = grammarProvider.getGrammar(this);
		while (grammar != null) {
			if ("org.eclipse.xtext.example.fowlerdsl.Statemachine".equals(grammar.getName())) {
				return grammar;
			}
			List<Grammar> grammars = grammar.getUsedGrammars();
			if (!grammars.isEmpty()) {
				grammar = grammars.iterator().next();
			} else {
				return null;
			}
		}
		return grammar;
	}
	
	@Override
	public Grammar getGrammar() {
		return grammar;
	}
	
	
	public TerminalsGrammarAccess getTerminalsGrammarAccess() {
		return gaTerminals;
	}

	
	//Statemachine :
	//    {Statemachine}
	//    ('events'
	//        events+=Event+
	//    'end')?
	//    ('resetEvents'
	//        resetEvents+=[Event]+
	//    'end')?
	//    ('commands'
	//        commands+=Command+
	//    'end')?
	//    states+=State*
	//;
	public StatemachineElements getStatemachineAccess() {
		return pStatemachine;
	}
	
	public ParserRule getStatemachineRule() {
		return getStatemachineAccess().getRule();
	}
	
	//Event:
	//    name=ID code=ID
	//;
	public EventElements getEventAccess() {
		return pEvent;
	}
	
	public ParserRule getEventRule() {
		return getEventAccess().getRule();
	}
	
	//Command:
	//    name=ID code=ID
	//;
	public CommandElements getCommandAccess() {
		return pCommand;
	}
	
	public ParserRule getCommandRule() {
		return getCommandAccess().getRule();
	}
	
	//State:
	//    'state' name=ID
	//        ('actions' '{' actions+=[Command]+ '}')?
	//        transitions+=Transition*
	//    'end'
	//;
	public StateElements getStateAccess() {
		return pState;
	}
	
	public ParserRule getStateRule() {
		return getStateAccess().getRule();
	}
	
	//Transition:
	//    event=[Event] '=>' state=[State]
	//;
	public TransitionElements getTransitionAccess() {
		return pTransition;
	}
	
	public ParserRule getTransitionRule() {
		return getTransitionAccess().getRule();
	}
	
	//terminal ID: '^'?('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;
	public TerminalRule getIDRule() {
		return gaTerminals.getIDRule();
	}
	
	//terminal INT returns ecore::EInt: ('0'..'9')+;
	public TerminalRule getINTRule() {
		return gaTerminals.getINTRule();
	}
	
	//terminal STRING:
	//            '"' ( '\\' . /* 'b'|'t'|'n'|'f'|'r'|'u'|'"'|"'"|'\\' */ | !('\\'|'"') )* '"' |
	//            "'" ( '\\' . /* 'b'|'t'|'n'|'f'|'r'|'u'|'"'|"'"|'\\' */ | !('\\'|"'") )* "'"
	//        ;
	public TerminalRule getSTRINGRule() {
		return gaTerminals.getSTRINGRule();
	}
	
	//terminal ML_COMMENT : '/*' -> '*/';
	public TerminalRule getML_COMMENTRule() {
		return gaTerminals.getML_COMMENTRule();
	}
	
	//terminal SL_COMMENT : '//' !('\n'|'\r')* ('\r'? '\n')?;
	public TerminalRule getSL_COMMENTRule() {
		return gaTerminals.getSL_COMMENTRule();
	}
	
	//terminal WS         : (' '|'\t'|'\r'|'\n')+;
	public TerminalRule getWSRule() {
		return gaTerminals.getWSRule();
	}
	
	//terminal ANY_OTHER: .;
	public TerminalRule getANY_OTHERRule() {
		return gaTerminals.getANY_OTHERRule();
	}
}

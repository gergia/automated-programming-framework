( DEFINE ( DOMAIN SUMMATORY )
( :REQUIREMENTS :ACTION-COSTS :CONDITIONAL-EFFECTS :TYPING )
( :TYPES
	VALUE - OBJECT
	STACKROW - OBJECT
	STACKSTATE - OBJECT
)
( :CONSTANTS
	V1 V0 V2 V3 V4 V5 V6 - VALUE
	ROW-0 - STACKROW
	STATE-0 STATE-1 STATE-2 - STACKSTATE
)
( :PREDICATES
	( VAR0 ?VALUE0 - VALUE )
	( VAR1 ?VALUE0 - VALUE )
	( SUM ?VALUE0 - VALUE ?VALUE1 - VALUE ?VALUE2 - VALUE )
	( EMPTY-COND-STACK ?STACKSTATE0 - STACKSTATE )
	( EMPTY-TRUE-GOTO-STACK ?STACKSTATE0 - STACKSTATE )
	( EMPTY-FALSE-GOTO-STACK ?STACKSTATE0 - STACKSTATE )
	( EMPTY-TACT-STACK ?STACKSTATE0 - STACKSTATE )
	( EMPTY-FACT-STACK ?STACKSTATE0 - STACKSTATE )
	( TRUE-NO-ACT-0 ?STACKSTATE0 - STACKSTATE )
	( FALSE-NO-ACT-0 ?STACKSTATE0 - STACKSTATE )
	( STATE-STACK ?STACKSTATE0 - STACKSTATE ?STACKROW1 - STACKROW )
	( NEXT-STACK-ROW ?STACKROW0 - STACKROW ?STACKROW1 - STACKROW )
	( TOP-STACK ?STACKROW0 - STACKROW )
	( STACK-PROCEDURE-0 ?STACKROW0 - STACKROW )
	( TEST-0 )
	( TEST-1 )
	( TEST-2 )
	( TEST-3 )
	( TRUE-CALL-0-0 ?STACKSTATE0 - STACKSTATE )
	( FALSE-CALL-0-0 ?STACKSTATE0 - STACKSTATE )
	( ACCUMULATOR-0 ?STACKROW0 - STACKROW )
	( DONE-EVALUATING-0 ?STACKROW0 - STACKROW )
	( DONE-APPLYING-0 ?STACKROW0 - STACKROW )
	( DONE-PROGRAMMING )
	( AVAILABLE-STATE ?STACKSTATE0 - STACKSTATE )
	( NEXT-STATE ?STACKSTATE0 - STACKSTATE ?STACKSTATE1 - STACKSTATE )
	( NCOND-0 ?STACKSTATE0 - STACKSTATE )
	( TRUE-GOTO-0 ?STACKSTATE0 - STACKSTATE ?STACKSTATE1 - STACKSTATE )
	( FALSE-GOTO-0 ?STACKSTATE0 - STACKSTATE ?STACKSTATE1 - STACKSTATE )
	( COND-VAR0-0 ?VALUE0 - VALUE ?STACKSTATE1 - STACKSTATE )
	( COND-VAR1-0 ?VALUE0 - VALUE ?STACKSTATE1 - STACKSTATE )
	( TRUE-INC-VAR0-0 ?STACKSTATE0 - STACKSTATE )
	( FALSE-INC-VAR0-0 ?STACKSTATE0 - STACKSTATE )
	( TRUE-DEC-VAR0-0 ?STACKSTATE0 - STACKSTATE )
	( FALSE-DEC-VAR0-0 ?STACKSTATE0 - STACKSTATE )
	( TRUE-INC-VAR1-0 ?STACKSTATE0 - STACKSTATE )
	( FALSE-INC-VAR1-0 ?STACKSTATE0 - STACKSTATE )
	( TRUE-DEC-VAR1-0 ?STACKSTATE0 - STACKSTATE )
	( FALSE-DEC-VAR1-0 ?STACKSTATE0 - STACKSTATE )
	( TRUE-ADD-VAR1-TO-VAR0-0 ?STACKSTATE0 - STACKSTATE )
	( FALSE-ADD-VAR1-TO-VAR0-0 ?STACKSTATE0 - STACKSTATE )
	( END-COND-0-0 )
	( END-COND-0-1 )
	( END-COND-0-2 )
)
( :FUNCTIONS
	( TOTAL-COST )
)
( :ACTION PROGRAM-TRUE-NO-ACT-0
  :PARAMETERS ( ?STACKSTATE0 - STACKSTATE ?STACKROW1 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW1 )
		( TOP-STACK ?STACKROW1 )
		( STACK-PROCEDURE-0 ?STACKROW1 )
		( STATE-STACK ?STACKSTATE0 ?STACKROW1 )
		( EMPTY-TACT-STACK ?STACKSTATE0 )
		( DONE-EVALUATING-0 ?STACKROW1 )
		( ACCUMULATOR-0 ?STACKROW1 )
	)
  :EFFECT
	( AND
		( NOT ( EMPTY-TACT-STACK ?STACKSTATE0 ) )
		( TRUE-NO-ACT-0 ?STACKSTATE0 )
	)
)
( :ACTION PROGRAM-FALSE-NO-ACT-0
  :PARAMETERS ( ?STACKSTATE0 - STACKSTATE ?STACKROW1 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW1 )
		( STACK-PROCEDURE-0 ?STACKROW1 )
		( STATE-STACK ?STACKSTATE0 ?STACKROW1 )
		( EMPTY-FACT-STACK ?STACKSTATE0 )
		( DONE-EVALUATING-0 ?STACKROW1 )
		( NOT ( ACCUMULATOR-0 ?STACKROW1 ) )
	)
  :EFFECT
	( AND
		( NOT ( EMPTY-FACT-STACK ?STACKSTATE0 ) )
		( FALSE-NO-ACT-0 ?STACKSTATE0 )
	)
)
( :ACTION PROGRAM-TRUE-INC-VAR0-0
  :PARAMETERS ( ?STACKSTATE0 - STACKSTATE ?STACKROW1 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW1 )
		( STACK-PROCEDURE-0 ?STACKROW1 )
		( STATE-STACK ?STACKSTATE0 ?STACKROW1 )
		( EMPTY-TACT-STACK ?STACKSTATE0 )
		( DONE-EVALUATING-0 ?STACKROW1 )
		( ACCUMULATOR-0 ?STACKROW1 )
	)
  :EFFECT
	( AND
		( NOT ( EMPTY-TACT-STACK ?STACKSTATE0 ) )
		( TRUE-INC-VAR0-0 ?STACKSTATE0 )
	)
)
( :ACTION PROGRAM-FALSE-INC-VAR0-0
  :PARAMETERS ( ?STACKSTATE0 - STACKSTATE ?STACKROW1 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW1 )
		( STACK-PROCEDURE-0 ?STACKROW1 )
		( STATE-STACK ?STACKSTATE0 ?STACKROW1 )
		( EMPTY-FACT-STACK ?STACKSTATE0 )
		( DONE-EVALUATING-0 ?STACKROW1 )
		( NOT ( ACCUMULATOR-0 ?STACKROW1 ) )
	)
  :EFFECT
	( AND
		( NOT ( EMPTY-FACT-STACK ?STACKSTATE0 ) )
		( FALSE-INC-VAR0-0 ?STACKSTATE0 )
	)
)
( :ACTION PROGRAM-TRUE-DEC-VAR0-0
  :PARAMETERS ( ?STACKSTATE0 - STACKSTATE ?STACKROW1 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW1 )
		( STACK-PROCEDURE-0 ?STACKROW1 )
		( STATE-STACK ?STACKSTATE0 ?STACKROW1 )
		( EMPTY-TACT-STACK ?STACKSTATE0 )
		( DONE-EVALUATING-0 ?STACKROW1 )
		( ACCUMULATOR-0 ?STACKROW1 )
	)
  :EFFECT
	( AND
		( NOT ( EMPTY-TACT-STACK ?STACKSTATE0 ) )
		( TRUE-DEC-VAR0-0 ?STACKSTATE0 )
	)
)
( :ACTION PROGRAM-FALSE-DEC-VAR0-0
  :PARAMETERS ( ?STACKSTATE0 - STACKSTATE ?STACKROW1 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW1 )
		( STACK-PROCEDURE-0 ?STACKROW1 )
		( STATE-STACK ?STACKSTATE0 ?STACKROW1 )
		( EMPTY-FACT-STACK ?STACKSTATE0 )
		( DONE-EVALUATING-0 ?STACKROW1 )
		( NOT ( ACCUMULATOR-0 ?STACKROW1 ) )
	)
  :EFFECT
	( AND
		( NOT ( EMPTY-FACT-STACK ?STACKSTATE0 ) )
		( FALSE-DEC-VAR0-0 ?STACKSTATE0 )
	)
)
( :ACTION PROGRAM-TRUE-INC-VAR1-0
  :PARAMETERS ( ?STACKSTATE0 - STACKSTATE ?STACKROW1 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW1 )
		( STACK-PROCEDURE-0 ?STACKROW1 )
		( STATE-STACK ?STACKSTATE0 ?STACKROW1 )
		( EMPTY-TACT-STACK ?STACKSTATE0 )
		( DONE-EVALUATING-0 ?STACKROW1 )
		( ACCUMULATOR-0 ?STACKROW1 )
	)
  :EFFECT
	( AND
		( NOT ( EMPTY-TACT-STACK ?STACKSTATE0 ) )
		( TRUE-INC-VAR1-0 ?STACKSTATE0 )
	)
)
( :ACTION PROGRAM-FALSE-INC-VAR1-0
  :PARAMETERS ( ?STACKSTATE0 - STACKSTATE ?STACKROW1 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW1 )
		( STACK-PROCEDURE-0 ?STACKROW1 )
		( STATE-STACK ?STACKSTATE0 ?STACKROW1 )
		( EMPTY-FACT-STACK ?STACKSTATE0 )
		( DONE-EVALUATING-0 ?STACKROW1 )
		( NOT ( ACCUMULATOR-0 ?STACKROW1 ) )
	)
  :EFFECT
	( AND
		( NOT ( EMPTY-FACT-STACK ?STACKSTATE0 ) )
		( FALSE-INC-VAR1-0 ?STACKSTATE0 )
	)
)
( :ACTION PROGRAM-TRUE-DEC-VAR1-0
  :PARAMETERS ( ?STACKSTATE0 - STACKSTATE ?STACKROW1 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW1 )
		( STACK-PROCEDURE-0 ?STACKROW1 )
		( STATE-STACK ?STACKSTATE0 ?STACKROW1 )
		( EMPTY-TACT-STACK ?STACKSTATE0 )
		( DONE-EVALUATING-0 ?STACKROW1 )
		( ACCUMULATOR-0 ?STACKROW1 )
	)
  :EFFECT
	( AND
		( NOT ( EMPTY-TACT-STACK ?STACKSTATE0 ) )
		( TRUE-DEC-VAR1-0 ?STACKSTATE0 )
	)
)
( :ACTION PROGRAM-FALSE-DEC-VAR1-0
  :PARAMETERS ( ?STACKSTATE0 - STACKSTATE ?STACKROW1 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW1 )
		( STACK-PROCEDURE-0 ?STACKROW1 )
		( STATE-STACK ?STACKSTATE0 ?STACKROW1 )
		( EMPTY-FACT-STACK ?STACKSTATE0 )
		( DONE-EVALUATING-0 ?STACKROW1 )
		( NOT ( ACCUMULATOR-0 ?STACKROW1 ) )
	)
  :EFFECT
	( AND
		( NOT ( EMPTY-FACT-STACK ?STACKSTATE0 ) )
		( FALSE-DEC-VAR1-0 ?STACKSTATE0 )
	)
)
( :ACTION PROGRAM-TRUE-ADD-VAR1-TO-VAR0-0
  :PARAMETERS ( ?STACKSTATE0 - STACKSTATE ?STACKROW1 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW1 )
		( STACK-PROCEDURE-0 ?STACKROW1 )
		( STATE-STACK ?STACKSTATE0 ?STACKROW1 )
		( EMPTY-TACT-STACK ?STACKSTATE0 )
		( DONE-EVALUATING-0 ?STACKROW1 )
		( ACCUMULATOR-0 ?STACKROW1 )
	)
  :EFFECT
	( AND
		( NOT ( EMPTY-TACT-STACK ?STACKSTATE0 ) )
		( TRUE-ADD-VAR1-TO-VAR0-0 ?STACKSTATE0 )
	)
)
( :ACTION PROGRAM-FALSE-ADD-VAR1-TO-VAR0-0
  :PARAMETERS ( ?STACKSTATE0 - STACKSTATE ?STACKROW1 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW1 )
		( STACK-PROCEDURE-0 ?STACKROW1 )
		( STATE-STACK ?STACKSTATE0 ?STACKROW1 )
		( EMPTY-FACT-STACK ?STACKSTATE0 )
		( DONE-EVALUATING-0 ?STACKROW1 )
		( NOT ( ACCUMULATOR-0 ?STACKROW1 ) )
	)
  :EFFECT
	( AND
		( NOT ( EMPTY-FACT-STACK ?STACKSTATE0 ) )
		( FALSE-ADD-VAR1-TO-VAR0-0 ?STACKSTATE0 )
	)
)
( :ACTION PROGRAM-END-2
  :PARAMETERS ( ?STACKROW0 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW0 )
		( STACK-PROCEDURE-0 ?STACKROW0 )
		( STATE-STACK STATE-2 ?STACKROW0 )
		( EMPTY-COND-STACK STATE-2 )
	)
  :EFFECT
	( AND
		( NOT ( EMPTY-COND-STACK STATE-2 ) )
		( END-COND-0-2 )
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION PROGRAM-NOCOND-0
  :PARAMETERS ( ?STACKSTATE0 - STACKSTATE ?STACKROW1 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW1 )
		( STACK-PROCEDURE-0 ?STACKROW1 )
		( STATE-STACK ?STACKSTATE0 ?STACKROW1 )
		( EMPTY-COND-STACK ?STACKSTATE0 )
	)
  :EFFECT
	( AND
		( NOT ( EMPTY-COND-STACK ?STACKSTATE0 ) )
		( NCOND-0 ?STACKSTATE0 )
	)
)
( :ACTION PROGRAM-COND-VAR0-0
  :PARAMETERS ( ?VALUE0 - VALUE ?STACKSTATE1 - STACKSTATE ?STACKROW2 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW2 )
		( STACK-PROCEDURE-0 ?STACKROW2 )
		( STATE-STACK ?STACKSTATE1 ?STACKROW2 )
		( EMPTY-COND-STACK ?STACKSTATE1 )
	)
  :EFFECT
	( AND
		( NOT ( EMPTY-COND-STACK ?STACKSTATE1 ) )
		( COND-VAR0-0 ?VALUE0 ?STACKSTATE1 )
	)
)
( :ACTION PROGRAM-COND-VAR1-0
  :PARAMETERS ( ?VALUE0 - VALUE ?STACKSTATE1 - STACKSTATE ?STACKROW2 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW2 )
		( STACK-PROCEDURE-0 ?STACKROW2 )
		( STATE-STACK ?STACKSTATE1 ?STACKROW2 )
		( EMPTY-COND-STACK ?STACKSTATE1 )
	)
  :EFFECT
	( AND
		( NOT ( EMPTY-COND-STACK ?STACKSTATE1 ) )
		( COND-VAR1-0 ?VALUE0 ?STACKSTATE1 )
	)
)
( :ACTION PROGRAM-TRUE-GOTO-0
  :PARAMETERS ( ?STACKSTATE0 - STACKSTATE ?STACKSTATE1 - STACKSTATE ?STACKROW2 - STACKROW )
  :PRECONDITION
	( AND
		( DONE-EVALUATING-0 ?STACKROW2 )
		( ACCUMULATOR-0 ?STACKROW2 )
		( DONE-APPLYING-0 ?STACKROW2 )
		( TOP-STACK ?STACKROW2 )
		( STACK-PROCEDURE-0 ?STACKROW2 )
		( STATE-STACK ?STACKSTATE0 ?STACKROW2 )
		( EMPTY-TRUE-GOTO-STACK ?STACKSTATE0 )
		( AVAILABLE-STATE ?STACKSTATE1 )
	)
  :EFFECT
	( AND
		( NOT ( EMPTY-TRUE-GOTO-STACK ?STACKSTATE0 ) )
		( TRUE-GOTO-0 ?STACKSTATE0 ?STACKSTATE1 )
		( FORALL
			( ?STACKSTATE3 - STACKSTATE )
			( WHEN
				( NEXT-STATE ?STACKSTATE1 ?STACKSTATE3 )
				( AVAILABLE-STATE ?STACKSTATE3 )
			)
		)
	)
)
( :ACTION PROGRAM-FALSE-GOTO-0
  :PARAMETERS ( ?STACKSTATE0 - STACKSTATE ?STACKSTATE1 - STACKSTATE ?STACKROW2 - STACKROW )
  :PRECONDITION
	( AND
		( DONE-EVALUATING-0 ?STACKROW2 )
		( NOT ( ACCUMULATOR-0 ?STACKROW2 ) )
		( DONE-APPLYING-0 ?STACKROW2 )
		( TOP-STACK ?STACKROW2 )
		( STACK-PROCEDURE-0 ?STACKROW2 )
		( STATE-STACK ?STACKSTATE0 ?STACKROW2 )
		( EMPTY-FALSE-GOTO-STACK ?STACKSTATE0 )
		( AVAILABLE-STATE ?STACKSTATE1 )
	)
  :EFFECT
	( AND
		( NOT ( EMPTY-FALSE-GOTO-STACK ?STACKSTATE0 ) )
		( FALSE-GOTO-0 ?STACKSTATE0 ?STACKSTATE1 )
		( FORALL
			( ?STACKSTATE3 - STACKSTATE )
			( WHEN
				( NEXT-STATE ?STACKSTATE1 ?STACKSTATE3 )
				( AVAILABLE-STATE ?STACKSTATE3 )
			)
		)
	)
)
( :ACTION PROGRAM-TRUE-CALL-0-0
  :PARAMETERS ( ?STACKSTATE0 - STACKSTATE ?STACKROW1 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW1 )
		( STACK-PROCEDURE-0 ?STACKROW1 )
		( STATE-STACK ?STACKSTATE0 ?STACKROW1 )
		( EMPTY-TACT-STACK ?STACKSTATE0 )
		( DONE-EVALUATING-0 ?STACKROW1 )
		( ACCUMULATOR-0 ?STACKROW1 )
	)
  :EFFECT
	( AND
		( NOT ( EMPTY-TACT-STACK ?STACKSTATE0 ) )
		( TRUE-CALL-0-0 ?STACKSTATE0 )
	)
)
( :ACTION PROGRAM-FALSE-CALL-0-0
  :PARAMETERS ( ?STACKSTATE0 - STACKSTATE ?STACKROW1 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW1 )
		( STACK-PROCEDURE-0 ?STACKROW1 )
		( STATE-STACK ?STACKSTATE0 ?STACKROW1 )
		( EMPTY-FACT-STACK ?STACKSTATE0 )
		( DONE-EVALUATING-0 ?STACKROW1 )
		( NOT ( ACCUMULATOR-0 ?STACKROW1 ) )
	)
  :EFFECT
	( AND
		( NOT ( EMPTY-FACT-STACK ?STACKSTATE0 ) )
		( FALSE-CALL-0-0 ?STACKSTATE0 )
	)
)
( :ACTION REPEAT-TRUE-NO-ACT-0
  :PARAMETERS ( ?STACKSTATE0 - STACKSTATE ?STACKROW1 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW1 )
		( STACK-PROCEDURE-0 ?STACKROW1 )
		( STATE-STACK ?STACKSTATE0 ?STACKROW1 )
		( DONE-EVALUATING-0 ?STACKROW1 )
		( NOT ( DONE-APPLYING-0 ?STACKROW1 ) )
		( ACCUMULATOR-0 ?STACKROW1 )
		( TRUE-NO-ACT-0 ?STACKSTATE0 )
	)
  :EFFECT
	( AND
		( DONE-APPLYING-0 ?STACKROW1 )
	)
)
( :ACTION REPEAT-FALSE-NO-ACT-0
  :PARAMETERS ( ?STACKSTATE0 - STACKSTATE ?STACKROW1 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW1 )
		( STACK-PROCEDURE-0 ?STACKROW1 )
		( STATE-STACK ?STACKSTATE0 ?STACKROW1 )
		( DONE-EVALUATING-0 ?STACKROW1 )
		( NOT ( DONE-APPLYING-0 ?STACKROW1 ) )
		( NOT ( ACCUMULATOR-0 ?STACKROW1 ) )
		( FALSE-NO-ACT-0 ?STACKSTATE0 )
	)
  :EFFECT
	( AND
		( DONE-APPLYING-0 ?STACKROW1 )
	)
)
( :ACTION REPEAT-TRUE-INC-VAR0-0
  :PARAMETERS ( ?STACKSTATE0 - STACKSTATE ?STACKROW1 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW1 )
		( STACK-PROCEDURE-0 ?STACKROW1 )
		( STATE-STACK ?STACKSTATE0 ?STACKROW1 )
		( DONE-EVALUATING-0 ?STACKROW1 )
		( NOT ( DONE-APPLYING-0 ?STACKROW1 ) )
		( ACCUMULATOR-0 ?STACKROW1 )
		( TRUE-INC-VAR0-0 ?STACKSTATE0 )
	)
  :EFFECT
	( AND
		( FORALL
			( ?VALUE2 - VALUE ?VALUE3 - VALUE )
			( WHEN
				( AND
					( VAR0 ?VALUE2 )
					( SUM V1 ?VALUE2 ?VALUE3 )
				)
				( AND
					( NOT ( VAR0 ?VALUE2 ) )
					( VAR0 ?VALUE3 )
				)
			)
		)
		( DONE-APPLYING-0 ?STACKROW1 )
	)
)
( :ACTION REPEAT-FALSE-INC-VAR0-0
  :PARAMETERS ( ?STACKSTATE0 - STACKSTATE ?STACKROW1 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW1 )
		( STACK-PROCEDURE-0 ?STACKROW1 )
		( STATE-STACK ?STACKSTATE0 ?STACKROW1 )
		( DONE-EVALUATING-0 ?STACKROW1 )
		( NOT ( DONE-APPLYING-0 ?STACKROW1 ) )
		( NOT ( ACCUMULATOR-0 ?STACKROW1 ) )
		( FALSE-INC-VAR0-0 ?STACKSTATE0 )
	)
  :EFFECT
	( AND
		( FORALL
			( ?VALUE2 - VALUE ?VALUE3 - VALUE )
			( WHEN
				( AND
					( VAR0 ?VALUE2 )
					( SUM V1 ?VALUE2 ?VALUE3 )
				)
				( AND
					( NOT ( VAR0 ?VALUE2 ) )
					( VAR0 ?VALUE3 )
				)
			)
		)
		( DONE-APPLYING-0 ?STACKROW1 )
	)
)
( :ACTION REPEAT-TRUE-DEC-VAR0-0
  :PARAMETERS ( ?STACKSTATE0 - STACKSTATE ?STACKROW1 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW1 )
		( STACK-PROCEDURE-0 ?STACKROW1 )
		( STATE-STACK ?STACKSTATE0 ?STACKROW1 )
		( DONE-EVALUATING-0 ?STACKROW1 )
		( NOT ( DONE-APPLYING-0 ?STACKROW1 ) )
		( ACCUMULATOR-0 ?STACKROW1 )
		( TRUE-DEC-VAR0-0 ?STACKSTATE0 )
	)
  :EFFECT
	( AND
		( FORALL
			( ?VALUE2 - VALUE ?VALUE3 - VALUE )
			( WHEN
				( AND
					( VAR0 ?VALUE2 )
					( SUM V1 ?VALUE3 ?VALUE2 )
				)
				( AND
					( NOT ( VAR0 ?VALUE2 ) )
					( VAR0 ?VALUE3 )
				)
			)
		)
		( DONE-APPLYING-0 ?STACKROW1 )
	)
)
( :ACTION REPEAT-FALSE-DEC-VAR0-0
  :PARAMETERS ( ?STACKSTATE0 - STACKSTATE ?STACKROW1 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW1 )
		( STACK-PROCEDURE-0 ?STACKROW1 )
		( STATE-STACK ?STACKSTATE0 ?STACKROW1 )
		( DONE-EVALUATING-0 ?STACKROW1 )
		( NOT ( DONE-APPLYING-0 ?STACKROW1 ) )
		( NOT ( ACCUMULATOR-0 ?STACKROW1 ) )
		( FALSE-DEC-VAR0-0 ?STACKSTATE0 )
	)
  :EFFECT
	( AND
		( FORALL
			( ?VALUE2 - VALUE ?VALUE3 - VALUE )
			( WHEN
				( AND
					( VAR0 ?VALUE2 )
					( SUM V1 ?VALUE3 ?VALUE2 )
				)
				( AND
					( NOT ( VAR0 ?VALUE2 ) )
					( VAR0 ?VALUE3 )
				)
			)
		)
		( DONE-APPLYING-0 ?STACKROW1 )
	)
)
( :ACTION REPEAT-TRUE-INC-VAR1-0
  :PARAMETERS ( ?STACKSTATE0 - STACKSTATE ?STACKROW1 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW1 )
		( STACK-PROCEDURE-0 ?STACKROW1 )
		( STATE-STACK ?STACKSTATE0 ?STACKROW1 )
		( DONE-EVALUATING-0 ?STACKROW1 )
		( NOT ( DONE-APPLYING-0 ?STACKROW1 ) )
		( ACCUMULATOR-0 ?STACKROW1 )
		( TRUE-INC-VAR1-0 ?STACKSTATE0 )
	)
  :EFFECT
	( AND
		( FORALL
			( ?VALUE2 - VALUE ?VALUE3 - VALUE )
			( WHEN
				( AND
					( VAR1 ?VALUE2 )
					( SUM V1 ?VALUE2 ?VALUE3 )
				)
				( AND
					( NOT ( VAR1 ?VALUE2 ) )
					( VAR1 ?VALUE3 )
				)
			)
		)
		( DONE-APPLYING-0 ?STACKROW1 )
	)
)
( :ACTION REPEAT-FALSE-INC-VAR1-0
  :PARAMETERS ( ?STACKSTATE0 - STACKSTATE ?STACKROW1 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW1 )
		( STACK-PROCEDURE-0 ?STACKROW1 )
		( STATE-STACK ?STACKSTATE0 ?STACKROW1 )
		( DONE-EVALUATING-0 ?STACKROW1 )
		( NOT ( DONE-APPLYING-0 ?STACKROW1 ) )
		( NOT ( ACCUMULATOR-0 ?STACKROW1 ) )
		( FALSE-INC-VAR1-0 ?STACKSTATE0 )
	)
  :EFFECT
	( AND
		( FORALL
			( ?VALUE2 - VALUE ?VALUE3 - VALUE )
			( WHEN
				( AND
					( VAR1 ?VALUE2 )
					( SUM V1 ?VALUE2 ?VALUE3 )
				)
				( AND
					( NOT ( VAR1 ?VALUE2 ) )
					( VAR1 ?VALUE3 )
				)
			)
		)
		( DONE-APPLYING-0 ?STACKROW1 )
	)
)
( :ACTION REPEAT-TRUE-DEC-VAR1-0
  :PARAMETERS ( ?STACKSTATE0 - STACKSTATE ?STACKROW1 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW1 )
		( STACK-PROCEDURE-0 ?STACKROW1 )
		( STATE-STACK ?STACKSTATE0 ?STACKROW1 )
		( DONE-EVALUATING-0 ?STACKROW1 )
		( NOT ( DONE-APPLYING-0 ?STACKROW1 ) )
		( ACCUMULATOR-0 ?STACKROW1 )
		( TRUE-DEC-VAR1-0 ?STACKSTATE0 )
	)
  :EFFECT
	( AND
		( FORALL
			( ?VALUE2 - VALUE ?VALUE3 - VALUE )
			( WHEN
				( AND
					( VAR1 ?VALUE2 )
					( SUM V1 ?VALUE3 ?VALUE2 )
				)
				( AND
					( NOT ( VAR1 ?VALUE2 ) )
					( VAR1 ?VALUE3 )
				)
			)
		)
		( DONE-APPLYING-0 ?STACKROW1 )
	)
)
( :ACTION REPEAT-FALSE-DEC-VAR1-0
  :PARAMETERS ( ?STACKSTATE0 - STACKSTATE ?STACKROW1 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW1 )
		( STACK-PROCEDURE-0 ?STACKROW1 )
		( STATE-STACK ?STACKSTATE0 ?STACKROW1 )
		( DONE-EVALUATING-0 ?STACKROW1 )
		( NOT ( DONE-APPLYING-0 ?STACKROW1 ) )
		( NOT ( ACCUMULATOR-0 ?STACKROW1 ) )
		( FALSE-DEC-VAR1-0 ?STACKSTATE0 )
	)
  :EFFECT
	( AND
		( FORALL
			( ?VALUE2 - VALUE ?VALUE3 - VALUE )
			( WHEN
				( AND
					( VAR1 ?VALUE2 )
					( SUM V1 ?VALUE3 ?VALUE2 )
				)
				( AND
					( NOT ( VAR1 ?VALUE2 ) )
					( VAR1 ?VALUE3 )
				)
			)
		)
		( DONE-APPLYING-0 ?STACKROW1 )
	)
)
( :ACTION REPEAT-TRUE-ADD-VAR1-TO-VAR0-0
  :PARAMETERS ( ?STACKSTATE0 - STACKSTATE ?STACKROW1 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW1 )
		( STACK-PROCEDURE-0 ?STACKROW1 )
		( STATE-STACK ?STACKSTATE0 ?STACKROW1 )
		( DONE-EVALUATING-0 ?STACKROW1 )
		( NOT ( DONE-APPLYING-0 ?STACKROW1 ) )
		( ACCUMULATOR-0 ?STACKROW1 )
		( TRUE-ADD-VAR1-TO-VAR0-0 ?STACKSTATE0 )
	)
  :EFFECT
	( AND
		( FORALL
			( ?VALUE2 - VALUE ?VALUE3 - VALUE ?VALUE4 - VALUE )
			( WHEN
				( AND
					( VAR0 ?VALUE2 )
					( VAR1 ?VALUE3 )
					( SUM ?VALUE2 ?VALUE3 ?VALUE4 )
				)
				( AND
					( NOT ( VAR0 ?VALUE2 ) )
					( VAR0 ?VALUE4 )
				)
			)
		)
		( DONE-APPLYING-0 ?STACKROW1 )
	)
)
( :ACTION REPEAT-FALSE-ADD-VAR1-TO-VAR0-0
  :PARAMETERS ( ?STACKSTATE0 - STACKSTATE ?STACKROW1 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW1 )
		( STACK-PROCEDURE-0 ?STACKROW1 )
		( STATE-STACK ?STACKSTATE0 ?STACKROW1 )
		( DONE-EVALUATING-0 ?STACKROW1 )
		( NOT ( DONE-APPLYING-0 ?STACKROW1 ) )
		( NOT ( ACCUMULATOR-0 ?STACKROW1 ) )
		( FALSE-ADD-VAR1-TO-VAR0-0 ?STACKSTATE0 )
	)
  :EFFECT
	( AND
		( FORALL
			( ?VALUE2 - VALUE ?VALUE3 - VALUE ?VALUE4 - VALUE )
			( WHEN
				( AND
					( VAR0 ?VALUE2 )
					( VAR1 ?VALUE3 )
					( SUM ?VALUE2 ?VALUE3 ?VALUE4 )
				)
				( AND
					( NOT ( VAR0 ?VALUE2 ) )
					( VAR0 ?VALUE4 )
				)
			)
		)
		( DONE-APPLYING-0 ?STACKROW1 )
	)
)
( :ACTION REPEAT-TRUE-GOTO-0
  :PARAMETERS ( ?STACKSTATE0 - STACKSTATE ?STACKSTATE1 - STACKSTATE ?STACKROW2 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW2 )
		( STACK-PROCEDURE-0 ?STACKROW2 )
		( TRUE-GOTO-0 ?STACKSTATE0 ?STACKSTATE1 )
		( STATE-STACK ?STACKSTATE0 ?STACKROW2 )
		( DONE-EVALUATING-0 ?STACKROW2 )
		( ACCUMULATOR-0 ?STACKROW2 )
		( DONE-APPLYING-0 ?STACKROW2 )
	)
  :EFFECT
	( AND
		( NOT ( DONE-EVALUATING-0 ?STACKROW2 ) )
		( NOT ( DONE-APPLYING-0 ?STACKROW2 ) )
		( NOT ( ACCUMULATOR-0 ?STACKROW2 ) )
		( NOT ( STATE-STACK ?STACKSTATE0 ?STACKROW2 ) )
		( STATE-STACK ?STACKSTATE1 ?STACKROW2 )
	)
)
( :ACTION REPEAT-FALSE-GOTO-0
  :PARAMETERS ( ?STACKSTATE0 - STACKSTATE ?STACKSTATE1 - STACKSTATE ?STACKROW2 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW2 )
		( STACK-PROCEDURE-0 ?STACKROW2 )
		( FALSE-GOTO-0 ?STACKSTATE0 ?STACKSTATE1 )
		( STATE-STACK ?STACKSTATE0 ?STACKROW2 )
		( DONE-EVALUATING-0 ?STACKROW2 )
		( NOT ( ACCUMULATOR-0 ?STACKROW2 ) )
		( DONE-APPLYING-0 ?STACKROW2 )
	)
  :EFFECT
	( AND
		( NOT ( DONE-EVALUATING-0 ?STACKROW2 ) )
		( NOT ( DONE-APPLYING-0 ?STACKROW2 ) )
		( NOT ( STATE-STACK ?STACKSTATE0 ?STACKROW2 ) )
		( STATE-STACK ?STACKSTATE1 ?STACKROW2 )
	)
)
( :ACTION EVAL-NOCOND-0
  :PARAMETERS ( ?STACKSTATE0 - STACKSTATE ?STACKROW1 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW1 )
		( STACK-PROCEDURE-0 ?STACKROW1 )
		( STATE-STACK ?STACKSTATE0 ?STACKROW1 )
		( NCOND-0 ?STACKSTATE0 )
		( NOT ( DONE-EVALUATING-0 ?STACKROW1 ) )
	)
  :EFFECT
	( AND
		( DONE-EVALUATING-0 ?STACKROW1 )
		( ACCUMULATOR-0 ?STACKROW1 )
	)
)
( :ACTION EVAL-COND-VAR0-0
  :PARAMETERS ( ?VALUE0 - VALUE ?STACKSTATE1 - STACKSTATE ?STACKROW2 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW2 )
		( STACK-PROCEDURE-0 ?STACKROW2 )
		( STATE-STACK ?STACKSTATE1 ?STACKROW2 )
		( COND-VAR0-0 ?VALUE0 ?STACKSTATE1 )
		( NOT ( DONE-EVALUATING-0 ?STACKROW2 ) )
	)
  :EFFECT
	( AND
		( DONE-EVALUATING-0 ?STACKROW2 )
		( WHEN
			( VAR0 ?VALUE0 )
			( AND
				( ACCUMULATOR-0 ?STACKROW2 )
			)
		)
	)
)
( :ACTION EVAL-COND-VAR1-0
  :PARAMETERS ( ?VALUE0 - VALUE ?STACKSTATE1 - STACKSTATE ?STACKROW2 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW2 )
		( STACK-PROCEDURE-0 ?STACKROW2 )
		( STATE-STACK ?STACKSTATE1 ?STACKROW2 )
		( COND-VAR1-0 ?VALUE0 ?STACKSTATE1 )
		( NOT ( DONE-EVALUATING-0 ?STACKROW2 ) )
	)
  :EFFECT
	( AND
		( DONE-EVALUATING-0 ?STACKROW2 )
		( WHEN
			( VAR1 ?VALUE0 )
			( AND
				( ACCUMULATOR-0 ?STACKROW2 )
			)
		)
	)
)
( :ACTION REPEAT-END-MAIN-0-0-1
  :PARAMETERS ( )
  :PRECONDITION
	( AND
		( TEST-0 )
		( TOP-STACK ROW-0 )
		( STATE-STACK STATE-1 ROW-0 )
		( END-COND-0-1 )
		( VAR0 V6 )
		( VAR1 V0 )
	)
  :EFFECT
	( AND
		( NOT ( TEST-0 ) )
		( TEST-1 )
		( NOT ( STATE-STACK STATE-1 ROW-0 ) )
		( STATE-STACK STATE-0 ROW-0 )
		( FORALL
			( ?VALUE0 - VALUE )
			( NOT ( VAR0 ?VALUE0 ) )
		)
		( FORALL
			( ?VALUE0 - VALUE )
			( NOT ( VAR1 ?VALUE0 ) )
		)
		( FORALL
			( ?VALUE0 - VALUE ?VALUE1 - VALUE ?VALUE2 - VALUE )
			( NOT ( SUM ?VALUE0 ?VALUE1 ?VALUE2 ) )
		)
		( VAR0 V0 )
		( VAR1 V2 )
		( SUM V0 V0 V0 )
		( SUM V0 V1 V1 )
		( SUM V0 V2 V2 )
		( SUM V0 V3 V3 )
		( SUM V1 V0 V1 )
		( SUM V1 V1 V2 )
		( SUM V1 V2 V3 )
		( SUM V2 V0 V2 )
		( SUM V2 V1 V3 )
		( SUM V3 V0 V3 )
	)
)
( :ACTION REPEAT-END-MAIN-0-0-2
  :PARAMETERS ( )
  :PRECONDITION
	( AND
		( TEST-0 )
		( TOP-STACK ROW-0 )
		( STATE-STACK STATE-2 ROW-0 )
		( END-COND-0-2 )
		( VAR0 V6 )
		( VAR1 V0 )
	)
  :EFFECT
	( AND
		( NOT ( TEST-0 ) )
		( TEST-1 )
		( NOT ( STATE-STACK STATE-2 ROW-0 ) )
		( STATE-STACK STATE-0 ROW-0 )
		( FORALL
			( ?VALUE0 - VALUE )
			( NOT ( VAR0 ?VALUE0 ) )
		)
		( FORALL
			( ?VALUE0 - VALUE )
			( NOT ( VAR1 ?VALUE0 ) )
		)
		( FORALL
			( ?VALUE0 - VALUE ?VALUE1 - VALUE ?VALUE2 - VALUE )
			( NOT ( SUM ?VALUE0 ?VALUE1 ?VALUE2 ) )
		)
		( VAR0 V0 )
		( VAR1 V2 )
		( SUM V0 V0 V0 )
		( SUM V0 V1 V1 )
		( SUM V0 V2 V2 )
		( SUM V0 V3 V3 )
		( SUM V1 V0 V1 )
		( SUM V1 V1 V2 )
		( SUM V1 V2 V3 )
		( SUM V2 V0 V2 )
		( SUM V2 V1 V3 )
		( SUM V3 V0 V3 )
	)
)
( :ACTION REPEAT-END-MAIN-1-0-1
  :PARAMETERS ( )
  :PRECONDITION
	( AND
		( TEST-1 )
		( TOP-STACK ROW-0 )
		( STATE-STACK STATE-1 ROW-0 )
		( END-COND-0-1 )
		( VAR0 V3 )
		( VAR1 V0 )
	)
  :EFFECT
	( AND
		( NOT ( TEST-1 ) )
		( TEST-2 )
		( NOT ( STATE-STACK STATE-1 ROW-0 ) )
		( STATE-STACK STATE-0 ROW-0 )
		( FORALL
			( ?VALUE0 - VALUE )
			( NOT ( VAR0 ?VALUE0 ) )
		)
		( FORALL
			( ?VALUE0 - VALUE )
			( NOT ( VAR1 ?VALUE0 ) )
		)
		( FORALL
			( ?VALUE0 - VALUE ?VALUE1 - VALUE ?VALUE2 - VALUE )
			( NOT ( SUM ?VALUE0 ?VALUE1 ?VALUE2 ) )
		)
		( VAR0 V0 )
		( VAR1 V1 )
		( SUM V0 V0 V0 )
		( SUM V0 V1 V1 )
		( SUM V0 V2 V2 )
		( SUM V0 V3 V3 )
		( SUM V1 V0 V1 )
		( SUM V1 V1 V2 )
		( SUM V1 V2 V3 )
		( SUM V2 V0 V2 )
		( SUM V2 V1 V3 )
		( SUM V3 V0 V3 )
	)
)
( :ACTION REPEAT-END-MAIN-1-0-2
  :PARAMETERS ( )
  :PRECONDITION
	( AND
		( TEST-1 )
		( TOP-STACK ROW-0 )
		( STATE-STACK STATE-2 ROW-0 )
		( END-COND-0-2 )
		( VAR0 V3 )
		( VAR1 V0 )
	)
  :EFFECT
	( AND
		( NOT ( TEST-1 ) )
		( TEST-2 )
		( NOT ( STATE-STACK STATE-2 ROW-0 ) )
		( STATE-STACK STATE-0 ROW-0 )
		( FORALL
			( ?VALUE0 - VALUE )
			( NOT ( VAR0 ?VALUE0 ) )
		)
		( FORALL
			( ?VALUE0 - VALUE )
			( NOT ( VAR1 ?VALUE0 ) )
		)
		( FORALL
			( ?VALUE0 - VALUE ?VALUE1 - VALUE ?VALUE2 - VALUE )
			( NOT ( SUM ?VALUE0 ?VALUE1 ?VALUE2 ) )
		)
		( VAR0 V0 )
		( VAR1 V1 )
		( SUM V0 V0 V0 )
		( SUM V0 V1 V1 )
		( SUM V0 V2 V2 )
		( SUM V0 V3 V3 )
		( SUM V1 V0 V1 )
		( SUM V1 V1 V2 )
		( SUM V1 V2 V3 )
		( SUM V2 V0 V2 )
		( SUM V2 V1 V3 )
		( SUM V3 V0 V3 )
	)
)
( :ACTION REPEAT-END-MAIN-2-0-1
  :PARAMETERS ( )
  :PRECONDITION
	( AND
		( TEST-2 )
		( TOP-STACK ROW-0 )
		( STATE-STACK STATE-1 ROW-0 )
		( END-COND-0-1 )
		( VAR0 V1 )
		( VAR1 V0 )
	)
  :EFFECT
	( AND
		( NOT ( TEST-2 ) )
		( TEST-3 )
		( NOT ( STATE-STACK STATE-1 ROW-0 ) )
		( STATE-STACK STATE-0 ROW-0 )
		( FORALL
			( ?VALUE0 - VALUE )
			( NOT ( VAR0 ?VALUE0 ) )
		)
		( FORALL
			( ?VALUE0 - VALUE )
			( NOT ( VAR1 ?VALUE0 ) )
		)
		( FORALL
			( ?VALUE0 - VALUE ?VALUE1 - VALUE ?VALUE2 - VALUE )
			( NOT ( SUM ?VALUE0 ?VALUE1 ?VALUE2 ) )
		)
		( VAR0 V0 )
		( VAR1 V0 )
		( SUM V0 V0 V0 )
		( SUM V0 V1 V1 )
		( SUM V0 V2 V2 )
		( SUM V0 V3 V3 )
		( SUM V1 V0 V1 )
		( SUM V1 V1 V2 )
		( SUM V1 V2 V3 )
		( SUM V2 V0 V2 )
		( SUM V2 V1 V3 )
		( SUM V3 V0 V3 )
	)
)
( :ACTION REPEAT-END-MAIN-2-0-2
  :PARAMETERS ( )
  :PRECONDITION
	( AND
		( TEST-2 )
		( TOP-STACK ROW-0 )
		( STATE-STACK STATE-2 ROW-0 )
		( END-COND-0-2 )
		( VAR0 V1 )
		( VAR1 V0 )
	)
  :EFFECT
	( AND
		( NOT ( TEST-2 ) )
		( TEST-3 )
		( NOT ( STATE-STACK STATE-2 ROW-0 ) )
		( STATE-STACK STATE-0 ROW-0 )
		( FORALL
			( ?VALUE0 - VALUE )
			( NOT ( VAR0 ?VALUE0 ) )
		)
		( FORALL
			( ?VALUE0 - VALUE )
			( NOT ( VAR1 ?VALUE0 ) )
		)
		( FORALL
			( ?VALUE0 - VALUE ?VALUE1 - VALUE ?VALUE2 - VALUE )
			( NOT ( SUM ?VALUE0 ?VALUE1 ?VALUE2 ) )
		)
		( VAR0 V0 )
		( VAR1 V0 )
		( SUM V0 V0 V0 )
		( SUM V0 V1 V1 )
		( SUM V0 V2 V2 )
		( SUM V0 V3 V3 )
		( SUM V1 V0 V1 )
		( SUM V1 V1 V2 )
		( SUM V1 V2 V3 )
		( SUM V2 V0 V2 )
		( SUM V2 V1 V3 )
		( SUM V3 V0 V3 )
	)
)
( :ACTION REPEAT-END-MAIN-3-0-1
  :PARAMETERS ( )
  :PRECONDITION
	( AND
		( TEST-3 )
		( TOP-STACK ROW-0 )
		( STATE-STACK STATE-1 ROW-0 )
		( END-COND-0-1 )
		( VAR0 V0 )
		( VAR1 V0 )
	)
  :EFFECT
	( AND
		( DONE-PROGRAMMING )
	)
)
( :ACTION REPEAT-END-MAIN-3-0-2
  :PARAMETERS ( )
  :PRECONDITION
	( AND
		( TEST-3 )
		( TOP-STACK ROW-0 )
		( STATE-STACK STATE-2 ROW-0 )
		( END-COND-0-2 )
		( VAR0 V0 )
		( VAR1 V0 )
	)
  :EFFECT
	( AND
		( DONE-PROGRAMMING )
	)
)
( :ACTION REPEAT-END-0-0-1
  :PARAMETERS ( ?STACKROW0 - STACKROW ?STACKROW1 - STACKROW )
  :PRECONDITION
	( AND
		( TEST-0 )
		( NEXT-STACK-ROW ?STACKROW0 ?STACKROW1 )
		( TOP-STACK ?STACKROW1 )
		( STACK-PROCEDURE-0 ?STACKROW1 )
		( STATE-STACK STATE-1 ?STACKROW1 )
		( END-COND-0-1 )
	)
  :EFFECT
	( AND
		( NOT ( TOP-STACK ?STACKROW1 ) )
		( TOP-STACK ?STACKROW0 )
		( NOT ( STATE-STACK STATE-1 ?STACKROW1 ) )
		( NOT ( STACK-PROCEDURE-0 ?STACKROW1 ) )
	)
)
( :ACTION REPEAT-END-0-0-2
  :PARAMETERS ( ?STACKROW0 - STACKROW ?STACKROW1 - STACKROW )
  :PRECONDITION
	( AND
		( TEST-0 )
		( NEXT-STACK-ROW ?STACKROW0 ?STACKROW1 )
		( TOP-STACK ?STACKROW1 )
		( STACK-PROCEDURE-0 ?STACKROW1 )
		( STATE-STACK STATE-2 ?STACKROW1 )
		( END-COND-0-2 )
	)
  :EFFECT
	( AND
		( NOT ( TOP-STACK ?STACKROW1 ) )
		( TOP-STACK ?STACKROW0 )
		( NOT ( STATE-STACK STATE-2 ?STACKROW1 ) )
		( NOT ( STACK-PROCEDURE-0 ?STACKROW1 ) )
	)
)
( :ACTION REPEAT-END-1-0-1
  :PARAMETERS ( ?STACKROW0 - STACKROW ?STACKROW1 - STACKROW )
  :PRECONDITION
	( AND
		( TEST-1 )
		( NEXT-STACK-ROW ?STACKROW0 ?STACKROW1 )
		( TOP-STACK ?STACKROW1 )
		( STACK-PROCEDURE-0 ?STACKROW1 )
		( STATE-STACK STATE-1 ?STACKROW1 )
		( END-COND-0-1 )
	)
  :EFFECT
	( AND
		( NOT ( TOP-STACK ?STACKROW1 ) )
		( TOP-STACK ?STACKROW0 )
		( NOT ( STATE-STACK STATE-1 ?STACKROW1 ) )
		( NOT ( STACK-PROCEDURE-0 ?STACKROW1 ) )
	)
)
( :ACTION REPEAT-END-1-0-2
  :PARAMETERS ( ?STACKROW0 - STACKROW ?STACKROW1 - STACKROW )
  :PRECONDITION
	( AND
		( TEST-1 )
		( NEXT-STACK-ROW ?STACKROW0 ?STACKROW1 )
		( TOP-STACK ?STACKROW1 )
		( STACK-PROCEDURE-0 ?STACKROW1 )
		( STATE-STACK STATE-2 ?STACKROW1 )
		( END-COND-0-2 )
	)
  :EFFECT
	( AND
		( NOT ( TOP-STACK ?STACKROW1 ) )
		( TOP-STACK ?STACKROW0 )
		( NOT ( STATE-STACK STATE-2 ?STACKROW1 ) )
		( NOT ( STACK-PROCEDURE-0 ?STACKROW1 ) )
	)
)
( :ACTION REPEAT-END-2-0-1
  :PARAMETERS ( ?STACKROW0 - STACKROW ?STACKROW1 - STACKROW )
  :PRECONDITION
	( AND
		( TEST-2 )
		( NEXT-STACK-ROW ?STACKROW0 ?STACKROW1 )
		( TOP-STACK ?STACKROW1 )
		( STACK-PROCEDURE-0 ?STACKROW1 )
		( STATE-STACK STATE-1 ?STACKROW1 )
		( END-COND-0-1 )
	)
  :EFFECT
	( AND
		( NOT ( TOP-STACK ?STACKROW1 ) )
		( TOP-STACK ?STACKROW0 )
		( NOT ( STATE-STACK STATE-1 ?STACKROW1 ) )
		( NOT ( STACK-PROCEDURE-0 ?STACKROW1 ) )
	)
)
( :ACTION REPEAT-END-2-0-2
  :PARAMETERS ( ?STACKROW0 - STACKROW ?STACKROW1 - STACKROW )
  :PRECONDITION
	( AND
		( TEST-2 )
		( NEXT-STACK-ROW ?STACKROW0 ?STACKROW1 )
		( TOP-STACK ?STACKROW1 )
		( STACK-PROCEDURE-0 ?STACKROW1 )
		( STATE-STACK STATE-2 ?STACKROW1 )
		( END-COND-0-2 )
	)
  :EFFECT
	( AND
		( NOT ( TOP-STACK ?STACKROW1 ) )
		( TOP-STACK ?STACKROW0 )
		( NOT ( STATE-STACK STATE-2 ?STACKROW1 ) )
		( NOT ( STACK-PROCEDURE-0 ?STACKROW1 ) )
	)
)
( :ACTION REPEAT-END-3-0-1
  :PARAMETERS ( ?STACKROW0 - STACKROW ?STACKROW1 - STACKROW )
  :PRECONDITION
	( AND
		( TEST-3 )
		( NEXT-STACK-ROW ?STACKROW0 ?STACKROW1 )
		( TOP-STACK ?STACKROW1 )
		( STACK-PROCEDURE-0 ?STACKROW1 )
		( STATE-STACK STATE-1 ?STACKROW1 )
		( END-COND-0-1 )
	)
  :EFFECT
	( AND
		( NOT ( TOP-STACK ?STACKROW1 ) )
		( TOP-STACK ?STACKROW0 )
		( NOT ( STATE-STACK STATE-1 ?STACKROW1 ) )
		( NOT ( STACK-PROCEDURE-0 ?STACKROW1 ) )
	)
)
( :ACTION REPEAT-END-3-0-2
  :PARAMETERS ( ?STACKROW0 - STACKROW ?STACKROW1 - STACKROW )
  :PRECONDITION
	( AND
		( TEST-3 )
		( NEXT-STACK-ROW ?STACKROW0 ?STACKROW1 )
		( TOP-STACK ?STACKROW1 )
		( STACK-PROCEDURE-0 ?STACKROW1 )
		( STATE-STACK STATE-2 ?STACKROW1 )
		( END-COND-0-2 )
	)
  :EFFECT
	( AND
		( NOT ( TOP-STACK ?STACKROW1 ) )
		( TOP-STACK ?STACKROW0 )
		( NOT ( STATE-STACK STATE-2 ?STACKROW1 ) )
		( NOT ( STACK-PROCEDURE-0 ?STACKROW1 ) )
	)
)
( :ACTION REPEAT-TRUE-CALL-0-0
  :PARAMETERS ( ?STACKSTATE0 - STACKSTATE ?STACKROW1 - STACKROW ?STACKROW2 - STACKROW )
  :PRECONDITION
	( AND
		( ACCUMULATOR-0 ?STACKROW1 )
		( TRUE-CALL-0-0 ?STACKSTATE0 )
		( NEXT-STACK-ROW ?STACKROW1 ?STACKROW2 )
		( TOP-STACK ?STACKROW1 )
		( STACK-PROCEDURE-0 ?STACKROW1 )
		( STATE-STACK ?STACKSTATE0 ?STACKROW1 )
		( DONE-EVALUATING-0 ?STACKROW1 )
		( NOT ( DONE-APPLYING-0 ?STACKROW1 ) )
	)
  :EFFECT
	( AND
		( NOT ( TOP-STACK ?STACKROW1 ) )
		( TOP-STACK ?STACKROW2 )
		( STACK-PROCEDURE-0 ?STACKROW2 )
		( STATE-STACK STATE-0 ?STACKROW2 )
		( DONE-APPLYING-0 ?STACKROW1 )
	)
)
( :ACTION REPEAT-FALSE-CALL-0-0
  :PARAMETERS ( ?STACKSTATE0 - STACKSTATE ?STACKROW1 - STACKROW ?STACKROW2 - STACKROW )
  :PRECONDITION
	( AND
		( NOT ( ACCUMULATOR-0 ?STACKROW1 ) )
		( FALSE-CALL-0-0 ?STACKSTATE0 )
		( NEXT-STACK-ROW ?STACKROW1 ?STACKROW2 )
		( TOP-STACK ?STACKROW1 )
		( STACK-PROCEDURE-0 ?STACKROW1 )
		( STATE-STACK ?STACKSTATE0 ?STACKROW1 )
		( DONE-EVALUATING-0 ?STACKROW1 )
		( NOT ( DONE-APPLYING-0 ?STACKROW1 ) )
	)
  :EFFECT
	( AND
		( NOT ( TOP-STACK ?STACKROW1 ) )
		( TOP-STACK ?STACKROW2 )
		( STACK-PROCEDURE-0 ?STACKROW2 )
		( STATE-STACK STATE-0 ?STACKROW2 )
		( DONE-APPLYING-0 ?STACKROW1 )
	)
)
)

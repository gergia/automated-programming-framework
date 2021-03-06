( DEFINE ( DOMAIN VARIABLES )
( :REQUIREMENTS :ACTION-COSTS :CONDITIONAL-EFFECTS :TYPING )
( :TYPES
	VARIABLE - OBJECT
	VALUE - OBJECT
	STACKROW - OBJECT
)
( :CONSTANTS
	A B C D - VARIABLE
	V0 V1 V2 V3 V4 V5 V6 V7 V8 V9 V10 V11 V12 V13 V14 V15 V16 V17 V18 V19 V20 V21 V22 V23 V24 V25 V26 V27 V28 V29 V30 V31 V32 V33 V34 V35 V36 V37 V38 V39 V40 V41 V42 V43 V44 V45 V46 V47 V48 V49 V50 V51 V52 V53 V54 V55 V56 V57 V58 V59 V60 V61 V62 V63 V64 V65 V66 V67 V68 V69 V70 V71 V72 V73 V74 V75 V76 V77 V78 V79 V80 V81 V82 V83 V84 V85 V86 V87 V88 V89 V90 V91 V92 V93 V94 V95 V96 V97 V98 V99 V100 V101 V102 V103 V104 V105 V106 V107 V108 V109 V110 V111 V112 V113 V114 V115 V116 V117 V118 V119 V120 - VALUE
	ROW-0 - STACKROW
)
( :PREDICATES
	( ASSIGNMENT ?VARIABLE0 - VARIABLE ?VALUE1 - VALUE )
	( SUM ?VALUE0 - VALUE ?VALUE1 - VALUE ?VALUE2 - VALUE )
	( EMPTY-STACK )
	( NEXT-STACK-ROW ?STACKROW0 - STACKROW ?STACKROW1 - STACKROW )
	( TOP-STACK ?STACKROW0 - STACKROW )
	( ACCUMULATOR )
	( DONE-EVALUATING )
	( DONE-PROGRAMMING )
	( STACK-MAIN ?STACKROW0 - STACKROW )
	( STACK-LINE-0 ?STACKROW0 - STACKROW )
	( STACK-LINE-1 ?STACKROW0 - STACKROW )
	( STACK-LINE-2 ?STACKROW0 - STACKROW )
	( STACK-LINE-3 ?STACKROW0 - STACKROW )
	( TEST-0 )
	( EMPTY-0 )
	( EMPTY-1 )
	( EMPTY-2 )
	( EMPTY-3 )
	( INS-END-1 )
	( INS-END-2 )
	( INS-END-3 )
	( CALL-0-0-0 )
	( CALL-0-0-1 )
	( CALL-0-0-2 )
	( INS-INC-A-0 )
	( INS-INC-A-1 )
	( INS-INC-A-2 )
	( INS-DEC-A-0 )
	( INS-DEC-A-1 )
	( INS-DEC-A-2 )
	( INS-INC-B-0 )
	( INS-INC-B-1 )
	( INS-INC-B-2 )
	( INS-DEC-B-0 )
	( INS-DEC-B-1 )
	( INS-DEC-B-2 )
	( INS-ADD-A-B-0 )
	( INS-ADD-A-B-1 )
	( INS-ADD-A-B-2 )
	( INS-ADD-A-D-0 )
	( INS-ADD-A-D-1 )
	( INS-ADD-A-D-2 )
	( INS-ASSIGN-C-TO-D-0 )
	( INS-ASSIGN-C-TO-D-1 )
	( INS-ASSIGN-C-TO-D-2 )
	( INS-ASSIGN-A-TO-C-0 )
	( INS-ASSIGN-A-TO-C-1 )
	( INS-ASSIGN-A-TO-C-2 )
	( GOTO-0-0-0 )
	( GOTO-0-0-1 )
	( GOTO-0-0-2 )
	( GOTO-0-0-3 )
	( GOTO-0-1-0 )
	( GOTO-0-1-1 )
	( GOTO-0-1-2 )
	( GOTO-0-1-3 )
	( GOTO-0-2-0 )
	( GOTO-0-2-1 )
	( GOTO-0-2-2 )
	( GOTO-0-2-3 )
	( COND-ASSIGNMENT-0-0 ?VARIABLE0 - VARIABLE ?VALUE1 - VALUE )
	( COND-ASSIGNMENT-0-1 ?VARIABLE0 - VARIABLE ?VALUE1 - VALUE )
	( COND-ASSIGNMENT-0-2 ?VARIABLE0 - VARIABLE ?VALUE1 - VALUE )
)
( :FUNCTIONS
	( TOTAL-COST )
)
( :ACTION REPEAT-INC-A-0-0
  :PARAMETERS ( ?STACKROW0 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW0 )
		( STACK-MAIN ?STACKROW0 )
		( STACK-LINE-0 ?STACKROW0 )
		( INS-INC-A-0 )
	)
  :EFFECT
	( AND
		( FORALL
			( ?VALUE1 - VALUE ?VALUE2 - VALUE )
			( WHEN
				( AND
					( ASSIGNMENT A ?VALUE1 )
					( SUM V1 ?VALUE1 ?VALUE2 )
				)
				( AND
					( NOT ( ASSIGNMENT A ?VALUE1 ) )
					( ASSIGNMENT A ?VALUE2 )
				)
			)
		)
		( NOT ( STACK-LINE-0 ?STACKROW0 ) )
		( STACK-LINE-1 ?STACKROW0 )
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION REPEAT-INC-A-0-1
  :PARAMETERS ( ?STACKROW0 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW0 )
		( STACK-MAIN ?STACKROW0 )
		( STACK-LINE-1 ?STACKROW0 )
		( INS-INC-A-1 )
	)
  :EFFECT
	( AND
		( FORALL
			( ?VALUE1 - VALUE ?VALUE2 - VALUE )
			( WHEN
				( AND
					( ASSIGNMENT A ?VALUE1 )
					( SUM V1 ?VALUE1 ?VALUE2 )
				)
				( AND
					( NOT ( ASSIGNMENT A ?VALUE1 ) )
					( ASSIGNMENT A ?VALUE2 )
				)
			)
		)
		( NOT ( STACK-LINE-1 ?STACKROW0 ) )
		( STACK-LINE-2 ?STACKROW0 )
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION REPEAT-INC-A-0-2
  :PARAMETERS ( ?STACKROW0 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW0 )
		( STACK-MAIN ?STACKROW0 )
		( STACK-LINE-2 ?STACKROW0 )
		( INS-INC-A-2 )
	)
  :EFFECT
	( AND
		( FORALL
			( ?VALUE1 - VALUE ?VALUE2 - VALUE )
			( WHEN
				( AND
					( ASSIGNMENT A ?VALUE1 )
					( SUM V1 ?VALUE1 ?VALUE2 )
				)
				( AND
					( NOT ( ASSIGNMENT A ?VALUE1 ) )
					( ASSIGNMENT A ?VALUE2 )
				)
			)
		)
		( NOT ( STACK-LINE-2 ?STACKROW0 ) )
		( STACK-LINE-3 ?STACKROW0 )
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION REPEAT-DEC-A-0-0
  :PARAMETERS ( ?STACKROW0 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW0 )
		( STACK-MAIN ?STACKROW0 )
		( STACK-LINE-0 ?STACKROW0 )
		( INS-DEC-A-0 )
	)
  :EFFECT
	( AND
		( FORALL
			( ?VALUE1 - VALUE ?VALUE2 - VALUE )
			( WHEN
				( AND
					( ASSIGNMENT A ?VALUE2 )
					( SUM V1 ?VALUE1 ?VALUE2 )
				)
				( AND
					( NOT ( ASSIGNMENT A ?VALUE2 ) )
					( ASSIGNMENT A ?VALUE1 )
				)
			)
		)
		( NOT ( STACK-LINE-0 ?STACKROW0 ) )
		( STACK-LINE-1 ?STACKROW0 )
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION REPEAT-DEC-A-0-1
  :PARAMETERS ( ?STACKROW0 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW0 )
		( STACK-MAIN ?STACKROW0 )
		( STACK-LINE-1 ?STACKROW0 )
		( INS-DEC-A-1 )
	)
  :EFFECT
	( AND
		( FORALL
			( ?VALUE1 - VALUE ?VALUE2 - VALUE )
			( WHEN
				( AND
					( ASSIGNMENT A ?VALUE2 )
					( SUM V1 ?VALUE1 ?VALUE2 )
				)
				( AND
					( NOT ( ASSIGNMENT A ?VALUE2 ) )
					( ASSIGNMENT A ?VALUE1 )
				)
			)
		)
		( NOT ( STACK-LINE-1 ?STACKROW0 ) )
		( STACK-LINE-2 ?STACKROW0 )
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION REPEAT-DEC-A-0-2
  :PARAMETERS ( ?STACKROW0 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW0 )
		( STACK-MAIN ?STACKROW0 )
		( STACK-LINE-2 ?STACKROW0 )
		( INS-DEC-A-2 )
	)
  :EFFECT
	( AND
		( FORALL
			( ?VALUE1 - VALUE ?VALUE2 - VALUE )
			( WHEN
				( AND
					( ASSIGNMENT A ?VALUE2 )
					( SUM V1 ?VALUE1 ?VALUE2 )
				)
				( AND
					( NOT ( ASSIGNMENT A ?VALUE2 ) )
					( ASSIGNMENT A ?VALUE1 )
				)
			)
		)
		( NOT ( STACK-LINE-2 ?STACKROW0 ) )
		( STACK-LINE-3 ?STACKROW0 )
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION REPEAT-INC-B-0-0
  :PARAMETERS ( ?STACKROW0 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW0 )
		( STACK-MAIN ?STACKROW0 )
		( STACK-LINE-0 ?STACKROW0 )
		( INS-INC-B-0 )
	)
  :EFFECT
	( AND
		( FORALL
			( ?VALUE1 - VALUE ?VALUE2 - VALUE )
			( WHEN
				( AND
					( ASSIGNMENT B ?VALUE1 )
					( SUM V1 ?VALUE1 ?VALUE2 )
				)
				( AND
					( NOT ( ASSIGNMENT B ?VALUE1 ) )
					( ASSIGNMENT B ?VALUE2 )
				)
			)
		)
		( NOT ( STACK-LINE-0 ?STACKROW0 ) )
		( STACK-LINE-1 ?STACKROW0 )
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION REPEAT-INC-B-0-1
  :PARAMETERS ( ?STACKROW0 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW0 )
		( STACK-MAIN ?STACKROW0 )
		( STACK-LINE-1 ?STACKROW0 )
		( INS-INC-B-1 )
	)
  :EFFECT
	( AND
		( FORALL
			( ?VALUE1 - VALUE ?VALUE2 - VALUE )
			( WHEN
				( AND
					( ASSIGNMENT B ?VALUE1 )
					( SUM V1 ?VALUE1 ?VALUE2 )
				)
				( AND
					( NOT ( ASSIGNMENT B ?VALUE1 ) )
					( ASSIGNMENT B ?VALUE2 )
				)
			)
		)
		( NOT ( STACK-LINE-1 ?STACKROW0 ) )
		( STACK-LINE-2 ?STACKROW0 )
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION REPEAT-INC-B-0-2
  :PARAMETERS ( ?STACKROW0 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW0 )
		( STACK-MAIN ?STACKROW0 )
		( STACK-LINE-2 ?STACKROW0 )
		( INS-INC-B-2 )
	)
  :EFFECT
	( AND
		( FORALL
			( ?VALUE1 - VALUE ?VALUE2 - VALUE )
			( WHEN
				( AND
					( ASSIGNMENT B ?VALUE1 )
					( SUM V1 ?VALUE1 ?VALUE2 )
				)
				( AND
					( NOT ( ASSIGNMENT B ?VALUE1 ) )
					( ASSIGNMENT B ?VALUE2 )
				)
			)
		)
		( NOT ( STACK-LINE-2 ?STACKROW0 ) )
		( STACK-LINE-3 ?STACKROW0 )
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION REPEAT-DEC-B-0-0
  :PARAMETERS ( ?STACKROW0 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW0 )
		( STACK-MAIN ?STACKROW0 )
		( STACK-LINE-0 ?STACKROW0 )
		( INS-DEC-B-0 )
	)
  :EFFECT
	( AND
		( FORALL
			( ?VALUE1 - VALUE ?VALUE2 - VALUE )
			( WHEN
				( AND
					( ASSIGNMENT B ?VALUE2 )
					( SUM V1 ?VALUE1 ?VALUE2 )
				)
				( AND
					( NOT ( ASSIGNMENT B ?VALUE2 ) )
					( ASSIGNMENT B ?VALUE1 )
				)
			)
		)
		( NOT ( STACK-LINE-0 ?STACKROW0 ) )
		( STACK-LINE-1 ?STACKROW0 )
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION REPEAT-DEC-B-0-1
  :PARAMETERS ( ?STACKROW0 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW0 )
		( STACK-MAIN ?STACKROW0 )
		( STACK-LINE-1 ?STACKROW0 )
		( INS-DEC-B-1 )
	)
  :EFFECT
	( AND
		( FORALL
			( ?VALUE1 - VALUE ?VALUE2 - VALUE )
			( WHEN
				( AND
					( ASSIGNMENT B ?VALUE2 )
					( SUM V1 ?VALUE1 ?VALUE2 )
				)
				( AND
					( NOT ( ASSIGNMENT B ?VALUE2 ) )
					( ASSIGNMENT B ?VALUE1 )
				)
			)
		)
		( NOT ( STACK-LINE-1 ?STACKROW0 ) )
		( STACK-LINE-2 ?STACKROW0 )
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION REPEAT-DEC-B-0-2
  :PARAMETERS ( ?STACKROW0 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW0 )
		( STACK-MAIN ?STACKROW0 )
		( STACK-LINE-2 ?STACKROW0 )
		( INS-DEC-B-2 )
	)
  :EFFECT
	( AND
		( FORALL
			( ?VALUE1 - VALUE ?VALUE2 - VALUE )
			( WHEN
				( AND
					( ASSIGNMENT B ?VALUE2 )
					( SUM V1 ?VALUE1 ?VALUE2 )
				)
				( AND
					( NOT ( ASSIGNMENT B ?VALUE2 ) )
					( ASSIGNMENT B ?VALUE1 )
				)
			)
		)
		( NOT ( STACK-LINE-2 ?STACKROW0 ) )
		( STACK-LINE-3 ?STACKROW0 )
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION REPEAT-ADD-A-B-0-0
  :PARAMETERS ( ?STACKROW0 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW0 )
		( STACK-MAIN ?STACKROW0 )
		( STACK-LINE-0 ?STACKROW0 )
		( INS-ADD-A-B-0 )
	)
  :EFFECT
	( AND
		( FORALL
			( ?VALUE1 - VALUE ?VALUE2 - VALUE ?VALUE3 - VALUE )
			( WHEN
				( AND
					( ASSIGNMENT A ?VALUE1 )
					( ASSIGNMENT B ?VALUE2 )
					( SUM ?VALUE1 ?VALUE2 ?VALUE3 )
				)
				( AND
					( NOT ( ASSIGNMENT A ?VALUE1 ) )
					( ASSIGNMENT A ?VALUE3 )
				)
			)
		)
		( NOT ( STACK-LINE-0 ?STACKROW0 ) )
		( STACK-LINE-1 ?STACKROW0 )
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION REPEAT-ADD-A-B-0-1
  :PARAMETERS ( ?STACKROW0 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW0 )
		( STACK-MAIN ?STACKROW0 )
		( STACK-LINE-1 ?STACKROW0 )
		( INS-ADD-A-B-1 )
	)
  :EFFECT
	( AND
		( FORALL
			( ?VALUE1 - VALUE ?VALUE2 - VALUE ?VALUE3 - VALUE )
			( WHEN
				( AND
					( ASSIGNMENT A ?VALUE1 )
					( ASSIGNMENT B ?VALUE2 )
					( SUM ?VALUE1 ?VALUE2 ?VALUE3 )
				)
				( AND
					( NOT ( ASSIGNMENT A ?VALUE1 ) )
					( ASSIGNMENT A ?VALUE3 )
				)
			)
		)
		( NOT ( STACK-LINE-1 ?STACKROW0 ) )
		( STACK-LINE-2 ?STACKROW0 )
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION REPEAT-ADD-A-B-0-2
  :PARAMETERS ( ?STACKROW0 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW0 )
		( STACK-MAIN ?STACKROW0 )
		( STACK-LINE-2 ?STACKROW0 )
		( INS-ADD-A-B-2 )
	)
  :EFFECT
	( AND
		( FORALL
			( ?VALUE1 - VALUE ?VALUE2 - VALUE ?VALUE3 - VALUE )
			( WHEN
				( AND
					( ASSIGNMENT A ?VALUE1 )
					( ASSIGNMENT B ?VALUE2 )
					( SUM ?VALUE1 ?VALUE2 ?VALUE3 )
				)
				( AND
					( NOT ( ASSIGNMENT A ?VALUE1 ) )
					( ASSIGNMENT A ?VALUE3 )
				)
			)
		)
		( NOT ( STACK-LINE-2 ?STACKROW0 ) )
		( STACK-LINE-3 ?STACKROW0 )
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION REPEAT-ADD-A-D-0-0
  :PARAMETERS ( ?STACKROW0 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW0 )
		( STACK-MAIN ?STACKROW0 )
		( STACK-LINE-0 ?STACKROW0 )
		( INS-ADD-A-D-0 )
	)
  :EFFECT
	( AND
		( FORALL
			( ?VALUE1 - VALUE ?VALUE2 - VALUE ?VALUE3 - VALUE )
			( WHEN
				( AND
					( ASSIGNMENT A ?VALUE1 )
					( ASSIGNMENT D ?VALUE2 )
					( SUM ?VALUE1 ?VALUE2 ?VALUE3 )
				)
				( AND
					( NOT ( ASSIGNMENT A ?VALUE1 ) )
					( ASSIGNMENT A ?VALUE3 )
				)
			)
		)
		( NOT ( STACK-LINE-0 ?STACKROW0 ) )
		( STACK-LINE-1 ?STACKROW0 )
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION REPEAT-ADD-A-D-0-1
  :PARAMETERS ( ?STACKROW0 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW0 )
		( STACK-MAIN ?STACKROW0 )
		( STACK-LINE-1 ?STACKROW0 )
		( INS-ADD-A-D-1 )
	)
  :EFFECT
	( AND
		( FORALL
			( ?VALUE1 - VALUE ?VALUE2 - VALUE ?VALUE3 - VALUE )
			( WHEN
				( AND
					( ASSIGNMENT A ?VALUE1 )
					( ASSIGNMENT D ?VALUE2 )
					( SUM ?VALUE1 ?VALUE2 ?VALUE3 )
				)
				( AND
					( NOT ( ASSIGNMENT A ?VALUE1 ) )
					( ASSIGNMENT A ?VALUE3 )
				)
			)
		)
		( NOT ( STACK-LINE-1 ?STACKROW0 ) )
		( STACK-LINE-2 ?STACKROW0 )
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION REPEAT-ADD-A-D-0-2
  :PARAMETERS ( ?STACKROW0 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW0 )
		( STACK-MAIN ?STACKROW0 )
		( STACK-LINE-2 ?STACKROW0 )
		( INS-ADD-A-D-2 )
	)
  :EFFECT
	( AND
		( FORALL
			( ?VALUE1 - VALUE ?VALUE2 - VALUE ?VALUE3 - VALUE )
			( WHEN
				( AND
					( ASSIGNMENT A ?VALUE1 )
					( ASSIGNMENT D ?VALUE2 )
					( SUM ?VALUE1 ?VALUE2 ?VALUE3 )
				)
				( AND
					( NOT ( ASSIGNMENT A ?VALUE1 ) )
					( ASSIGNMENT A ?VALUE3 )
				)
			)
		)
		( NOT ( STACK-LINE-2 ?STACKROW0 ) )
		( STACK-LINE-3 ?STACKROW0 )
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION REPEAT-ASSIGN-C-TO-D-0-0
  :PARAMETERS ( ?STACKROW0 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW0 )
		( STACK-MAIN ?STACKROW0 )
		( STACK-LINE-0 ?STACKROW0 )
		( INS-ASSIGN-C-TO-D-0 )
	)
  :EFFECT
	( AND
		( FORALL
			( ?VALUE1 - VALUE ?VALUE2 - VALUE )
			( WHEN
				( AND
					( ASSIGNMENT C ?VALUE1 )
					( ASSIGNMENT D ?VALUE2 )
				)
				( AND
					( NOT ( ASSIGNMENT D ?VALUE2 ) )
					( ASSIGNMENT D ?VALUE1 )
				)
			)
		)
		( NOT ( STACK-LINE-0 ?STACKROW0 ) )
		( STACK-LINE-1 ?STACKROW0 )
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION REPEAT-ASSIGN-C-TO-D-0-1
  :PARAMETERS ( ?STACKROW0 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW0 )
		( STACK-MAIN ?STACKROW0 )
		( STACK-LINE-1 ?STACKROW0 )
		( INS-ASSIGN-C-TO-D-1 )
	)
  :EFFECT
	( AND
		( FORALL
			( ?VALUE1 - VALUE ?VALUE2 - VALUE )
			( WHEN
				( AND
					( ASSIGNMENT C ?VALUE1 )
					( ASSIGNMENT D ?VALUE2 )
				)
				( AND
					( NOT ( ASSIGNMENT D ?VALUE2 ) )
					( ASSIGNMENT D ?VALUE1 )
				)
			)
		)
		( NOT ( STACK-LINE-1 ?STACKROW0 ) )
		( STACK-LINE-2 ?STACKROW0 )
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION REPEAT-ASSIGN-C-TO-D-0-2
  :PARAMETERS ( ?STACKROW0 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW0 )
		( STACK-MAIN ?STACKROW0 )
		( STACK-LINE-2 ?STACKROW0 )
		( INS-ASSIGN-C-TO-D-2 )
	)
  :EFFECT
	( AND
		( FORALL
			( ?VALUE1 - VALUE ?VALUE2 - VALUE )
			( WHEN
				( AND
					( ASSIGNMENT C ?VALUE1 )
					( ASSIGNMENT D ?VALUE2 )
				)
				( AND
					( NOT ( ASSIGNMENT D ?VALUE2 ) )
					( ASSIGNMENT D ?VALUE1 )
				)
			)
		)
		( NOT ( STACK-LINE-2 ?STACKROW0 ) )
		( STACK-LINE-3 ?STACKROW0 )
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION REPEAT-ASSIGN-A-TO-C-0-0
  :PARAMETERS ( ?STACKROW0 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW0 )
		( STACK-MAIN ?STACKROW0 )
		( STACK-LINE-0 ?STACKROW0 )
		( INS-ASSIGN-A-TO-C-0 )
	)
  :EFFECT
	( AND
		( FORALL
			( ?VALUE1 - VALUE ?VALUE2 - VALUE )
			( WHEN
				( AND
					( ASSIGNMENT A ?VALUE1 )
					( ASSIGNMENT C ?VALUE2 )
				)
				( AND
					( NOT ( ASSIGNMENT C ?VALUE2 ) )
					( ASSIGNMENT C ?VALUE1 )
				)
			)
		)
		( NOT ( STACK-LINE-0 ?STACKROW0 ) )
		( STACK-LINE-1 ?STACKROW0 )
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION REPEAT-ASSIGN-A-TO-C-0-1
  :PARAMETERS ( ?STACKROW0 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW0 )
		( STACK-MAIN ?STACKROW0 )
		( STACK-LINE-1 ?STACKROW0 )
		( INS-ASSIGN-A-TO-C-1 )
	)
  :EFFECT
	( AND
		( FORALL
			( ?VALUE1 - VALUE ?VALUE2 - VALUE )
			( WHEN
				( AND
					( ASSIGNMENT A ?VALUE1 )
					( ASSIGNMENT C ?VALUE2 )
				)
				( AND
					( NOT ( ASSIGNMENT C ?VALUE2 ) )
					( ASSIGNMENT C ?VALUE1 )
				)
			)
		)
		( NOT ( STACK-LINE-1 ?STACKROW0 ) )
		( STACK-LINE-2 ?STACKROW0 )
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION REPEAT-ASSIGN-A-TO-C-0-2
  :PARAMETERS ( ?STACKROW0 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW0 )
		( STACK-MAIN ?STACKROW0 )
		( STACK-LINE-2 ?STACKROW0 )
		( INS-ASSIGN-A-TO-C-2 )
	)
  :EFFECT
	( AND
		( FORALL
			( ?VALUE1 - VALUE ?VALUE2 - VALUE )
			( WHEN
				( AND
					( ASSIGNMENT A ?VALUE1 )
					( ASSIGNMENT C ?VALUE2 )
				)
				( AND
					( NOT ( ASSIGNMENT C ?VALUE2 ) )
					( ASSIGNMENT C ?VALUE1 )
				)
			)
		)
		( NOT ( STACK-LINE-2 ?STACKROW0 ) )
		( STACK-LINE-3 ?STACKROW0 )
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION DO-GOTO-0-0-2
  :PARAMETERS ( ?STACKROW0 - STACKROW )
  :PRECONDITION
	( AND
		( GOTO-0-0-2 )
		( DONE-EVALUATING )
		( NOT ( ACCUMULATOR ) )
		( TOP-STACK ?STACKROW0 )
		( STACK-MAIN ?STACKROW0 )
		( STACK-LINE-0 ?STACKROW0 )
	)
  :EFFECT
	( AND
		( NOT ( DONE-EVALUATING ) )
		( NOT ( STACK-LINE-0 ?STACKROW0 ) )
		( STACK-LINE-2 ?STACKROW0 )
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION DO-GOTO-0-0-3
  :PARAMETERS ( ?STACKROW0 - STACKROW )
  :PRECONDITION
	( AND
		( GOTO-0-0-3 )
		( DONE-EVALUATING )
		( NOT ( ACCUMULATOR ) )
		( TOP-STACK ?STACKROW0 )
		( STACK-MAIN ?STACKROW0 )
		( STACK-LINE-0 ?STACKROW0 )
	)
  :EFFECT
	( AND
		( NOT ( DONE-EVALUATING ) )
		( NOT ( STACK-LINE-0 ?STACKROW0 ) )
		( STACK-LINE-3 ?STACKROW0 )
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION DO-GOTO-0-1-0
  :PARAMETERS ( ?STACKROW0 - STACKROW )
  :PRECONDITION
	( AND
		( GOTO-0-1-0 )
		( DONE-EVALUATING )
		( NOT ( ACCUMULATOR ) )
		( TOP-STACK ?STACKROW0 )
		( STACK-MAIN ?STACKROW0 )
		( STACK-LINE-1 ?STACKROW0 )
	)
  :EFFECT
	( AND
		( NOT ( DONE-EVALUATING ) )
		( NOT ( STACK-LINE-1 ?STACKROW0 ) )
		( STACK-LINE-0 ?STACKROW0 )
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION DO-GOTO-0-1-3
  :PARAMETERS ( ?STACKROW0 - STACKROW )
  :PRECONDITION
	( AND
		( GOTO-0-1-3 )
		( DONE-EVALUATING )
		( NOT ( ACCUMULATOR ) )
		( TOP-STACK ?STACKROW0 )
		( STACK-MAIN ?STACKROW0 )
		( STACK-LINE-1 ?STACKROW0 )
	)
  :EFFECT
	( AND
		( NOT ( DONE-EVALUATING ) )
		( NOT ( STACK-LINE-1 ?STACKROW0 ) )
		( STACK-LINE-3 ?STACKROW0 )
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION DO-GOTO-0-2-0
  :PARAMETERS ( ?STACKROW0 - STACKROW )
  :PRECONDITION
	( AND
		( GOTO-0-2-0 )
		( DONE-EVALUATING )
		( NOT ( ACCUMULATOR ) )
		( TOP-STACK ?STACKROW0 )
		( STACK-MAIN ?STACKROW0 )
		( STACK-LINE-2 ?STACKROW0 )
	)
  :EFFECT
	( AND
		( NOT ( DONE-EVALUATING ) )
		( NOT ( STACK-LINE-2 ?STACKROW0 ) )
		( STACK-LINE-0 ?STACKROW0 )
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION DO-GOTO-0-2-1
  :PARAMETERS ( ?STACKROW0 - STACKROW )
  :PRECONDITION
	( AND
		( GOTO-0-2-1 )
		( DONE-EVALUATING )
		( NOT ( ACCUMULATOR ) )
		( TOP-STACK ?STACKROW0 )
		( STACK-MAIN ?STACKROW0 )
		( STACK-LINE-2 ?STACKROW0 )
	)
  :EFFECT
	( AND
		( NOT ( DONE-EVALUATING ) )
		( NOT ( STACK-LINE-2 ?STACKROW0 ) )
		( STACK-LINE-1 ?STACKROW0 )
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION DONT-GOTO-0-0-2
  :PARAMETERS ( ?STACKROW0 - STACKROW )
  :PRECONDITION
	( AND
		( GOTO-0-0-2 )
		( DONE-EVALUATING )
		( ACCUMULATOR )
		( TOP-STACK ?STACKROW0 )
		( STACK-MAIN ?STACKROW0 )
		( STACK-LINE-0 ?STACKROW0 )
	)
  :EFFECT
	( AND
		( NOT ( DONE-EVALUATING ) )
		( NOT ( STACK-LINE-0 ?STACKROW0 ) )
		( NOT ( ACCUMULATOR ) )
		( STACK-LINE-1 ?STACKROW0 )
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION DONT-GOTO-0-0-3
  :PARAMETERS ( ?STACKROW0 - STACKROW )
  :PRECONDITION
	( AND
		( GOTO-0-0-3 )
		( DONE-EVALUATING )
		( ACCUMULATOR )
		( TOP-STACK ?STACKROW0 )
		( STACK-MAIN ?STACKROW0 )
		( STACK-LINE-0 ?STACKROW0 )
	)
  :EFFECT
	( AND
		( NOT ( DONE-EVALUATING ) )
		( NOT ( STACK-LINE-0 ?STACKROW0 ) )
		( NOT ( ACCUMULATOR ) )
		( STACK-LINE-1 ?STACKROW0 )
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION DONT-GOTO-0-1-0
  :PARAMETERS ( ?STACKROW0 - STACKROW )
  :PRECONDITION
	( AND
		( GOTO-0-1-0 )
		( DONE-EVALUATING )
		( ACCUMULATOR )
		( TOP-STACK ?STACKROW0 )
		( STACK-MAIN ?STACKROW0 )
		( STACK-LINE-1 ?STACKROW0 )
	)
  :EFFECT
	( AND
		( NOT ( DONE-EVALUATING ) )
		( NOT ( STACK-LINE-1 ?STACKROW0 ) )
		( NOT ( ACCUMULATOR ) )
		( STACK-LINE-2 ?STACKROW0 )
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION DONT-GOTO-0-1-3
  :PARAMETERS ( ?STACKROW0 - STACKROW )
  :PRECONDITION
	( AND
		( GOTO-0-1-3 )
		( DONE-EVALUATING )
		( ACCUMULATOR )
		( TOP-STACK ?STACKROW0 )
		( STACK-MAIN ?STACKROW0 )
		( STACK-LINE-1 ?STACKROW0 )
	)
  :EFFECT
	( AND
		( NOT ( DONE-EVALUATING ) )
		( NOT ( STACK-LINE-1 ?STACKROW0 ) )
		( NOT ( ACCUMULATOR ) )
		( STACK-LINE-2 ?STACKROW0 )
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION DONT-GOTO-0-2-0
  :PARAMETERS ( ?STACKROW0 - STACKROW )
  :PRECONDITION
	( AND
		( GOTO-0-2-0 )
		( DONE-EVALUATING )
		( ACCUMULATOR )
		( TOP-STACK ?STACKROW0 )
		( STACK-MAIN ?STACKROW0 )
		( STACK-LINE-2 ?STACKROW0 )
	)
  :EFFECT
	( AND
		( NOT ( DONE-EVALUATING ) )
		( NOT ( STACK-LINE-2 ?STACKROW0 ) )
		( NOT ( ACCUMULATOR ) )
		( STACK-LINE-3 ?STACKROW0 )
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION DONT-GOTO-0-2-1
  :PARAMETERS ( ?STACKROW0 - STACKROW )
  :PRECONDITION
	( AND
		( GOTO-0-2-1 )
		( DONE-EVALUATING )
		( ACCUMULATOR )
		( TOP-STACK ?STACKROW0 )
		( STACK-MAIN ?STACKROW0 )
		( STACK-LINE-2 ?STACKROW0 )
	)
  :EFFECT
	( AND
		( NOT ( DONE-EVALUATING ) )
		( NOT ( STACK-LINE-2 ?STACKROW0 ) )
		( NOT ( ACCUMULATOR ) )
		( STACK-LINE-3 ?STACKROW0 )
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION EVAL-COND-ASSIGNMENT-0-0
  :PARAMETERS ( ?VARIABLE0 - VARIABLE ?VALUE1 - VALUE ?STACKROW2 - STACKROW )
  :PRECONDITION
	( AND
		( COND-ASSIGNMENT-0-0 ?VARIABLE0 ?VALUE1 )
		( TOP-STACK ?STACKROW2 )
		( STACK-MAIN ?STACKROW2 )
		( STACK-LINE-0 ?STACKROW2 )
	)
  :EFFECT
	( AND
		( DONE-EVALUATING )
		( WHEN
			( ASSIGNMENT ?VARIABLE0 ?VALUE1 )
			( AND
				( ACCUMULATOR )
			)
		)
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION EVAL-COND-ASSIGNMENT-0-1
  :PARAMETERS ( ?VARIABLE0 - VARIABLE ?VALUE1 - VALUE ?STACKROW2 - STACKROW )
  :PRECONDITION
	( AND
		( COND-ASSIGNMENT-0-1 ?VARIABLE0 ?VALUE1 )
		( TOP-STACK ?STACKROW2 )
		( STACK-MAIN ?STACKROW2 )
		( STACK-LINE-1 ?STACKROW2 )
	)
  :EFFECT
	( AND
		( DONE-EVALUATING )
		( WHEN
			( ASSIGNMENT ?VARIABLE0 ?VALUE1 )
			( AND
				( ACCUMULATOR )
			)
		)
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION EVAL-COND-ASSIGNMENT-0-2
  :PARAMETERS ( ?VARIABLE0 - VARIABLE ?VALUE1 - VALUE ?STACKROW2 - STACKROW )
  :PRECONDITION
	( AND
		( COND-ASSIGNMENT-0-2 ?VARIABLE0 ?VALUE1 )
		( TOP-STACK ?STACKROW2 )
		( STACK-MAIN ?STACKROW2 )
		( STACK-LINE-2 ?STACKROW2 )
	)
  :EFFECT
	( AND
		( DONE-EVALUATING )
		( WHEN
			( ASSIGNMENT ?VARIABLE0 ?VALUE1 )
			( AND
				( ACCUMULATOR )
			)
		)
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION REPEAT-END-MAIN-0-1
  :PARAMETERS ( ?STACKROW0 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW0 )
		( TOP-STACK ROW-0 )
		( STACK-MAIN ROW-0 )
		( STACK-LINE-1 ROW-0 )
		( INS-END-1 )
		( TEST-0 )
		( ASSIGNMENT A V120 )
		( ASSIGNMENT B V0 )
	)
  :EFFECT
	( AND
		( DONE-PROGRAMMING )
	)
)
( :ACTION REPEAT-END-MAIN-0-2
  :PARAMETERS ( ?STACKROW0 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW0 )
		( TOP-STACK ROW-0 )
		( STACK-MAIN ROW-0 )
		( STACK-LINE-2 ROW-0 )
		( INS-END-2 )
		( TEST-0 )
		( ASSIGNMENT A V120 )
		( ASSIGNMENT B V0 )
	)
  :EFFECT
	( AND
		( DONE-PROGRAMMING )
	)
)
( :ACTION REPEAT-END-MAIN-0-3
  :PARAMETERS ( ?STACKROW0 - STACKROW )
  :PRECONDITION
	( AND
		( TOP-STACK ?STACKROW0 )
		( TOP-STACK ROW-0 )
		( STACK-MAIN ROW-0 )
		( STACK-LINE-3 ROW-0 )
		( INS-END-3 )
		( TEST-0 )
		( ASSIGNMENT A V120 )
		( ASSIGNMENT B V0 )
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
		( INS-END-1 )
		( TEST-0 )
		( NEXT-STACK-ROW ?STACKROW0 ?STACKROW1 )
		( TOP-STACK ?STACKROW1 )
		( STACK-MAIN ?STACKROW1 )
		( STACK-LINE-1 ?STACKROW1 )
	)
  :EFFECT
	( AND
		( NOT ( TOP-STACK ?STACKROW1 ) )
		( TOP-STACK ?STACKROW0 )
		( NOT ( STACK-MAIN ?STACKROW1 ) )
		( NOT ( STACK-LINE-1 ?STACKROW1 ) )
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION REPEAT-END-0-0-2
  :PARAMETERS ( ?STACKROW0 - STACKROW ?STACKROW1 - STACKROW )
  :PRECONDITION
	( AND
		( INS-END-2 )
		( TEST-0 )
		( NEXT-STACK-ROW ?STACKROW0 ?STACKROW1 )
		( TOP-STACK ?STACKROW1 )
		( STACK-MAIN ?STACKROW1 )
		( STACK-LINE-2 ?STACKROW1 )
	)
  :EFFECT
	( AND
		( NOT ( TOP-STACK ?STACKROW1 ) )
		( TOP-STACK ?STACKROW0 )
		( NOT ( STACK-MAIN ?STACKROW1 ) )
		( NOT ( STACK-LINE-2 ?STACKROW1 ) )
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION REPEAT-END-0-0-3
  :PARAMETERS ( ?STACKROW0 - STACKROW ?STACKROW1 - STACKROW )
  :PRECONDITION
	( AND
		( INS-END-3 )
		( TEST-0 )
		( NEXT-STACK-ROW ?STACKROW0 ?STACKROW1 )
		( TOP-STACK ?STACKROW1 )
		( STACK-MAIN ?STACKROW1 )
		( STACK-LINE-3 ?STACKROW1 )
	)
  :EFFECT
	( AND
		( NOT ( TOP-STACK ?STACKROW1 ) )
		( TOP-STACK ?STACKROW0 )
		( NOT ( STACK-MAIN ?STACKROW1 ) )
		( NOT ( STACK-LINE-3 ?STACKROW1 ) )
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION REPEAT-CALL-0-0-0
  :PARAMETERS ( ?STACKROW0 - STACKROW ?STACKROW1 - STACKROW )
  :PRECONDITION
	( AND
		( CALL-0-0-0 )
		( NEXT-STACK-ROW ?STACKROW0 ?STACKROW1 )
		( TOP-STACK ?STACKROW0 )
		( STACK-MAIN ?STACKROW0 )
		( STACK-LINE-0 ?STACKROW0 )
	)
  :EFFECT
	( AND
		( NOT ( TOP-STACK ?STACKROW0 ) )
		( TOP-STACK ?STACKROW1 )
		( STACK-MAIN ?STACKROW1 )
		( STACK-LINE-0 ?STACKROW1 )
		( NOT ( STACK-LINE-0 ?STACKROW0 ) )
		( STACK-LINE-1 ?STACKROW0 )
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION REPEAT-CALL-0-0-1
  :PARAMETERS ( ?STACKROW0 - STACKROW ?STACKROW1 - STACKROW )
  :PRECONDITION
	( AND
		( CALL-0-0-1 )
		( NEXT-STACK-ROW ?STACKROW0 ?STACKROW1 )
		( TOP-STACK ?STACKROW0 )
		( STACK-MAIN ?STACKROW0 )
		( STACK-LINE-1 ?STACKROW0 )
	)
  :EFFECT
	( AND
		( NOT ( TOP-STACK ?STACKROW0 ) )
		( TOP-STACK ?STACKROW1 )
		( STACK-MAIN ?STACKROW1 )
		( STACK-LINE-0 ?STACKROW1 )
		( NOT ( STACK-LINE-1 ?STACKROW0 ) )
		( STACK-LINE-2 ?STACKROW0 )
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
( :ACTION REPEAT-CALL-0-0-2
  :PARAMETERS ( ?STACKROW0 - STACKROW ?STACKROW1 - STACKROW )
  :PRECONDITION
	( AND
		( CALL-0-0-2 )
		( NEXT-STACK-ROW ?STACKROW0 ?STACKROW1 )
		( TOP-STACK ?STACKROW0 )
		( STACK-MAIN ?STACKROW0 )
		( STACK-LINE-2 ?STACKROW0 )
	)
  :EFFECT
	( AND
		( NOT ( TOP-STACK ?STACKROW0 ) )
		( TOP-STACK ?STACKROW1 )
		( STACK-MAIN ?STACKROW1 )
		( STACK-LINE-0 ?STACKROW1 )
		( NOT ( STACK-LINE-2 ?STACKROW0 ) )
		( STACK-LINE-3 ?STACKROW0 )
		( INCREASE ( TOTAL-COST ) 1 )
	)
)
)

( DEFINE ( PROBLEM P5 )
( :DOMAIN REVERSE )
( :OBJECTS
)
( :INIT
	( CONSEC I0 I1 )
	( CONSEC I1 I2 )
	( CONSEC I2 I3 )
	( CONSEC I3 I4 )
	( GREATEREQ-THAN I4 I3 )
	( GREATEREQ-THAN I4 I2 )
	( GREATEREQ-THAN I1 I0 )
	( GREATEREQ-THAN I4 I4 )
	( GREATEREQ-THAN I3 I0 )
	( GREATEREQ-THAN I1 I1 )
	( GREATEREQ-THAN I3 I1 )
	( GREATEREQ-THAN I3 I2 )
	( GREATEREQ-THAN I4 I1 )
	( GREATEREQ-THAN I3 I3 )
	( GREATEREQ-THAN I2 I2 )
	( GREATEREQ-THAN I4 I0 )
	( GREATEREQ-THAN I2 I1 )
	( GREATEREQ-THAN I0 I0 )
	( GREATEREQ-THAN I2 I0 )
	( ASSIGNMENT I0 V2 )
	( ASSIGNMENT I1 V3 )
	( ASSIGNMENT I2 V4 )
	( ASSIGNMENT I3 V0 )
	( ASSIGNMENT I4 V1 )
	( ITERATOR1 I0 )
	( ITERATOR2 I4 )
	( I1VAL V2 )
	( I2VAL V1 )
	( TEST-0 )
	( STATE-STACK STATE-0 ROW-0 )
	( STACK-PROCEDURE-0 ROW-0 )
	( TOP-STACK ROW-0 )
	( EMPTY-COND-STACK STATE-0 )
	( EMPTY-TRUE-GOTO-STACK STATE-0 )
	( EMPTY-FALSE-GOTO-STACK STATE-0 )
	( EMPTY-TACT-STACK STATE-0 )
	( EMPTY-FACT-STACK STATE-0 )
	( EMPTY-COND-STACK STATE-1 )
	( EMPTY-TRUE-GOTO-STACK STATE-1 )
	( EMPTY-FALSE-GOTO-STACK STATE-1 )
	( EMPTY-TACT-STACK STATE-1 )
	( EMPTY-FACT-STACK STATE-1 )
	( EMPTY-COND-STACK STATE-2 )
	( EMPTY-TRUE-GOTO-STACK STATE-2 )
	( EMPTY-FALSE-GOTO-STACK STATE-2 )
	( EMPTY-TACT-STACK STATE-2 )
	( EMPTY-FACT-STACK STATE-2 )
	( EMPTY-COND-STACK STATE-3 )
	( AVAILABLE-STATE STATE-0 )
	( AVAILABLE-STATE STATE-1 )
	( NEXT-STATE STATE-0 STATE-1 )
	( NEXT-STATE STATE-1 STATE-2 )
	( NEXT-STATE STATE-2 STATE-3 )
)
( :GOAL
	( AND
		( DONE-PROGRAMMING )
	)
)
( :METRIC MINIMIZE ( TOTAL-COST ) )
)
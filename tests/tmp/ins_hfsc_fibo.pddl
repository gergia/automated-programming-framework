( DEFINE ( PROBLEM P5-10092015145347 )
( :DOMAIN FIBONACCI )
( :OBJECTS
)
( :INIT
	( FN1 V1 )
	( FN2 V1 )
	( FN V2 )
	( NTH V3 )
	( SUC-V V0 V1 )
	( SUC-V V1 V2 )
	( SUC-V V2 V3 )
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
	( NEXT-STACK-ROW ROW-0 ROW-1 )
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
( DEFINE ( PROBLEM P5-10092015145347 )
( :DOMAIN FIBONACCI )
( :OBJECTS
)
( :INIT
	( FN1 V0 )
	( FN2 V0 )
	( FN V1 )
	( NTH V6 )
	( SUC-V V0 V1 )
	( SUC-V V1 V2 )
	( SUC-V V2 V3 )
	( SUC-V V3 V4 )
	( SUC-V V4 V5 )
	( SUC-V V5 V6 )
	( SUM V0 V0 V0 )
	( SUM V0 V1 V1 )
	( SUM V0 V2 V2 )
	( SUM V0 V3 V3 )
	( SUM V0 V4 V4 )
	( SUM V0 V5 V5 )
	( SUM V0 V6 V6 )
	( SUM V0 V7 V7 )
	( SUM V0 V8 V8 )
	( SUM V0 V9 V9 )
	( SUM V0 V10 V10 )
	( SUM V0 V11 V11 )
	( SUM V0 V12 V12 )
	( SUM V0 V13 V13 )
	( SUM V1 V0 V1 )
	( SUM V1 V1 V2 )
	( SUM V1 V2 V3 )
	( SUM V1 V3 V4 )
	( SUM V1 V4 V5 )
	( SUM V1 V5 V6 )
	( SUM V1 V6 V7 )
	( SUM V1 V7 V8 )
	( SUM V1 V9 V10 )
	( SUM V1 V10 V11 )
	( SUM V1 V11 V12 )
	( SUM V1 V12 V13 )
	( SUM V2 V0 V2 )
	( SUM V2 V1 V3 )
	( SUM V2 V2 V4 )
	( SUM V2 V3 V5 )
	( SUM V2 V4 V6 )
	( SUM V2 V5 V7 )
	( SUM V2 V6 V8 )
	( SUM V2 V7 V9 )
	( SUM V2 V8 V10 )
	( SUM V2 V9 V11 )
	( SUM V2 V10 V12 )
	( SUM V2 V11 V13 )
	( SUM V3 V0 V3 )
	( SUM V3 V1 V4 )
	( SUM V3 V2 V5 )
	( SUM V3 V3 V6 )
	( SUM V3 V4 V7 )
	( SUM V3 V5 V8 )
	( SUM V3 V6 V9 )
	( SUM V3 V7 V10 )
	( SUM V3 V8 V11 )
	( SUM V3 V9 V12 )
	( SUM V3 V10 V13 )
	( SUM V4 V0 V4 )
	( SUM V4 V1 V5 )
	( SUM V4 V2 V6 )
	( SUM V4 V3 V7 )
	( SUM V4 V4 V8 )
	( SUM V4 V5 V9 )
	( SUM V4 V6 V10 )
	( SUM V4 V7 V11 )
	( SUM V4 V8 V12 )
	( SUM V4 V9 V13 )
	( SUM V5 V0 V5 )
	( SUM V5 V1 V6 )
	( SUM V5 V2 V7 )
	( SUM V5 V3 V8 )
	( SUM V5 V4 V9 )
	( SUM V5 V5 V10 )
	( SUM V5 V6 V11 )
	( SUM V5 V7 V12 )
	( SUM V5 V8 V13 )
	( SUM V6 V0 V6 )
	( SUM V6 V1 V7 )
	( SUM V6 V2 V8 )
	( SUM V6 V3 V9 )
	( SUM V6 V4 V10 )
	( SUM V6 V5 V11 )
	( SUM V6 V6 V12 )
	( SUM V6 V7 V13 )
	( SUM V7 V0 V7 )
	( SUM V7 V1 V8 )
	( SUM V7 V2 V9 )
	( SUM V7 V3 V10 )
	( SUM V7 V4 V11 )
	( SUM V7 V5 V12 )
	( SUM V7 V6 V13 )
	( SUM V8 V0 V8 )
	( SUM V8 V1 V9 )
	( SUM V8 V2 V10 )
	( SUM V8 V3 V11 )
	( SUM V8 V4 V12 )
	( SUM V8 V5 V13 )
	( SUM V9 V0 V9 )
	( SUM V9 V1 V10 )
	( SUM V9 V2 V11 )
	( SUM V9 V3 V12 )
	( SUM V9 V4 V13 )
	( SUM V10 V0 V10 )
	( SUM V10 V1 V11 )
	( SUM V10 V2 V12 )
	( SUM V10 V3 V13 )
	( SUM V11 V0 V11 )
	( SUM V11 V1 V12 )
	( SUM V11 V2 V13 )
	( SUM V12 V0 V12 )
	( SUM V12 V1 V13 )
	( SUM V13 V0 V13 )
	( TEST-0 )
	( STATE-STACK STATE-0 ROW-0 )
	( STACK-PROCEDURE-1 ROW-0 )
	( TOP-STACK ROW-0 )
	( NEXT-STACK-ROW ROW-0 ROW-1 )
	( AVAILABLE-STATE STATE-0 )
	( AVAILABLE-STATE STATE-1 )
	( NEXT-STATE STATE-0 STATE-1 )
	( NEXT-STATE STATE-1 STATE-2 )
	( NEXT-STATE STATE-2 STATE-3 )
	( NCOND-0 STATE-0 )
	( TRUE-ASSIGN-FN1-TO-FN2-0 STATE-0 )
	( TRUE-GOTO-0 STATE-0 STATE-1 )
	( NCOND-0 STATE-1 )
	( TRUE-ASSIGN-FN-TO-FN1-0 STATE-1 )
	( TRUE-GOTO-0 STATE-1 STATE-2 )
	( NCOND-0 STATE-2 )
	( TRUE-ADD-FN2-TO-FN-0 STATE-2 )
	( TRUE-GOTO-0 STATE-2 STATE-3 )
	( END-COND-0-3 )
	( NCOND-1 STATE-0 )
	( TRUE-DEC-N-1 STATE-0 )
	( TRUE-GOTO-1 STATE-0 STATE-1 )
	( COND-NTH-1 V0 STATE-1 )
	( TRUE-CALL-0-1 STATE-1 )
	( TRUE-GOTO-1 STATE-1 STATE-2 )
	( END-COND-1-2 )
	( FALSE-CALL-0-1 STATE-1 )
	( FALSE-GOTO-1 STATE-1 STATE-0 )
)
( :GOAL
	( AND
		( DONE-PROGRAMMING )
	)
)
( :METRIC MINIMIZE ( TOTAL-COST ) )
)
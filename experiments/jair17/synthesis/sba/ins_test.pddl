( DEFINE ( PROBLEM P1 )
( :DOMAIN SERIALBINARYADDER )
( :OBJECTS
)
( :INIT
	( AT I0 )
	( NEXT I0 I1 )
	( NEXT I1 I2 )
	( NEXT I2 I3 )
	( NEXT I3 I4 )
	( NEXT I4 I5 )
	( NEXT I5 I6 )
	( NEXT I6 I7 )
	( NEXT I7 LAST )
	( ONE C1 I0 )
	( ZERO C1 I1 )
	( ONE C1 I2 )
	( ONE C1 I3 )
	( ONE C1 I4 )
	( ONE C1 I5 )
	( ZERO C1 I6 )
	( ZERO C1 I7 )
	( ZERO C2 I0 )
	( ZERO C2 I1 )
	( ONE C2 I2 )
	( ZERO C2 I3 )
	( ONE C2 I4 )
	( ZERO C2 I5 )
	( ONE C2 I6 )
	( ZERO C2 I7 )
	( TEST-0 )
	( STATE-STACK STATE-0 ROW-0 )
	( STACK-PROCEDURE-6 ROW-0 )
	( TOP-STACK ROW-0 )
	( NEXT-STACK-ROW ROW-0 ROW-1 )
	( NEXT-STACK-ROW ROW-1 ROW-2 )
	( AVAILABLE-STATE STATE-0 )
	( AVAILABLE-STATE STATE-1 )
	( NEXT-STATE STATE-0 STATE-1 )
	( NEXT-STATE STATE-1 STATE-2 )
	( COND-CURRENT-C2-ONE-0 STATE-0 )
	( FALSE-ADD-00-NO-CARRY-0 STATE-0 )
	( FALSE-GOTO-0 STATE-0 STATE-1 )
	( END-COND-0-1 )
	( TRUE-ADD-10-NO-CARRY-0 STATE-0 )
	( TRUE-GOTO-0 STATE-0 STATE-1 )
	( COND-CURRENT-C2-ONE-1 STATE-0 )
	( FALSE-ADD-01-NO-CARRY-1 STATE-0 )
	( FALSE-GOTO-1 STATE-0 STATE-1 )
	( END-COND-1-1 )
	( TRUE-ADD-11-NO-CARRY-1 STATE-0 )
	( TRUE-GOTO-1 STATE-0 STATE-1 )
	( COND-CURRENT-C2-ONE-2 STATE-0 )
	( FALSE-ADD-00-CARRY-2 STATE-0 )
	( FALSE-GOTO-2 STATE-0 STATE-1 )
	( END-COND-2-1 )
	( TRUE-ADD-10-CARRY-2 STATE-0 )
	( TRUE-GOTO-2 STATE-0 STATE-1 )
	( COND-CURRENT-C2-ONE-3 STATE-0 )
	( FALSE-ADD-01-CARRY-3 STATE-0 )
	( FALSE-GOTO-3 STATE-0 STATE-1 )
	( END-COND-3-1 )
	( TRUE-ADD-11-CARRY-3 STATE-0 )
	( TRUE-GOTO-3 STATE-0 STATE-1 )
	( COND-CURRENT-C1-ONE-4 STATE-0 )
	( FALSE-CALL-0-4 STATE-0 )
	( FALSE-GOTO-4 STATE-0 STATE-1 )
	( END-COND-4-1 )
	( TRUE-CALL-1-4 STATE-0 )
	( TRUE-GOTO-4 STATE-0 STATE-1 )
	( COND-CURRENT-C1-ONE-5 STATE-0 )
	( FALSE-CALL-2-5 STATE-0 )
	( FALSE-GOTO-5 STATE-0 STATE-1 )
	( END-COND-5-1 )
	( TRUE-CALL-3-5 STATE-0 )
	( TRUE-GOTO-5 STATE-0 STATE-1 )
	( COND-AT-6 LAST STATE-0 )
	( FALSE-NO-ACT-6 STATE-0 )
	( FALSE-GOTO-6 STATE-0 STATE-1 )
	( COND-CARRY-6 STATE-1 )
	( FALSE-CALL-4-6 STATE-1 )
	( FALSE-GOTO-6 STATE-1 STATE-0 )
	( TRUE-ADD-00-NO-CARRY-6 STATE-0 )
	( TRUE-GOTO-6 STATE-0 STATE-2 )
	( END-COND-6-2 )
	( TRUE-CALL-5-6 STATE-1 )
	( TRUE-GOTO-6 STATE-1 STATE-0 )
)
( :GOAL
	( AND
		( DONE-PROGRAMMING )
	)
)
( :METRIC MINIMIZE ( TOTAL-COST ) )
)
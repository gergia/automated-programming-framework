( DEFINE ( PROBLEM FILL02 )
( :DOMAIN EXCEL )
( :OBJECTS
)
( :INIT
	( ASSIGNMENT STR I0 N1 )
	( ASSIGNMENT STR I1 COLON )
	( ASSIGNMENT STR I2 N5 )
	( ASSIGNMENT STR I3 N9 )
	( ASSIGNMENT STR I4 DOT )
	( ASSIGNMENT STR I5 N2 )
	( ASSIGNMENT STR I6 N3 )
	( LOINDEX STR I0 )
	( HIINDEX STR I7 )
	( SIZE STR I7 )
	( SIZE RES I0 )
	( NEXT I0 I1 )
	( NEXT I1 I2 )
	( NEXT I2 I3 )
	( NEXT I3 I4 )
	( NEXT I4 I5 )
	( NEXT I5 I6 )
	( NEXT I6 I7 )
	( INPUT-ASSIGNMENT STR-VAR STR ROW-0 )
	( TEST-0 )
	( NEXT-STACK-ROW ROW-0 ROW-1 )
	( STACK-MAIN ROW-0 )
	( STACK-LINE-0 ROW-0 )
	( TOP-STACK ROW-0 )
	( INS-APPEND-STR-0-0 RES STR-VAR )
	( INS-INC-LOINDEX-0-1 STR-VAR )
	( GOTO-0-2-0 )
	( COND-EMPTY-0-2 STR-VAR )
	( INS-END-0-3 )
	( INS-GET-SUBSTR-0 STR-VAR COLON DOT )
	( CALL-0-1-1 STR-VAR )
	( INS-END-2 )
)
( :GOAL
	( AND
		( DONE-PROGRAMMING )
	)
)
( :METRIC MINIMIZE ( TOTAL-COST ) )
)
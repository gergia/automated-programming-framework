( DEFINE ( PROBLEM PROB1 )
( :DOMAIN BLOCKSWORLD )
( :OBJECTS
	B1 B2 B3 - BLOCK
	B1-VAR B2-VAR B3-VAR - BLOCK-VARIABLE
)
( :INIT
	( HANDEMPTY )
	( ON B3 B2 )
	( ON B2 B1 )
	( ONTABLE B1 )
	( CLEAR B3 )
	( BLOCK-ASSIGNMENT B1-VAR B1 )
	( BLOCK-ASSIGNMENT B2-VAR B2 )
	( BLOCK-ASSIGNMENT B3-VAR B3 )
)
( :GOAL
	( AND
		( ONTABLE B1 )
		( ONTABLE B2 )
		( ONTABLE B3 )
		( CLEAR B1 )
		( CLEAR B2 )
		( CLEAR B3 )
	)
)
)
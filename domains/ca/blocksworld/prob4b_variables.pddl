( DEFINE ( PROBLEM PROB4 )
( :DOMAIN BLOCKSWORLD )
( :OBJECTS
	B4 B1 B3 B2 - BLOCK
	B4-VAR B1-VAR B3-VAR B2-VAR - BLOCK-VARIABLE
)
( :INIT
	( HANDEMPTY )
	( ON B3 B2 )
	( ONTABLE B2 )
	( CLEAR B3 )
	( ON B1 B4 )
	( ONTABLE B4 )
	( CLEAR B1 )
	( BLOCK-ASSIGNMENT B4-VAR B4 )
	( BLOCK-ASSIGNMENT B1-VAR B1 )
	( BLOCK-ASSIGNMENT B3-VAR B3 )
	( BLOCK-ASSIGNMENT B2-VAR B2 )
)
( :GOAL
	( AND
		( ONTABLE B1 )
		( ONTABLE B2 )
		( ONTABLE B3 )
		( ONTABLE B4 )
		( CLEAR B1 )
		( CLEAR B2 )
		( CLEAR B3 )
		( CLEAR B4 )
	)
)
)